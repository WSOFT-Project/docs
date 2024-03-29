---
title : AliceScriptで安全にパスワードを保存する
summary : この記事ではAliceScriptのライブラリを使用して安全にパスワードを保存する方法について説明します。
---

ログインなどの認証機構を実装するとき、どうしても何らかの形でユーザー情報を保存する必要があります。

このとき、もしパスワードを平文でファイルに保存していたとしたら、どうなるでしょうか。
万が一、悪意のあるユーザーにファイルアクセスを許してしまった場合、パスワードが盗まれシステムに不正にアクセスできてしまいます。

また、パスワードは複数のシステムで使いまわす人も少なくありませんから、そのシステムだけでなく、よそのシステムにも不正にログインされてしまう恐れがあります。

このような理由から、パスワードをそのまま保存してはいけません。この記事ではパスワードの安全な保管方法を、実際にAliceScriptを用いて説明します。

### パスワードのハッシュを保存する
まず、パスワードは保存しない、ということが重要です。

パスワードは保存せず、認証するのに十分な情報だけを保存し、さらにその情報から元のパスワードを推測されないようにするとういう方針が、基本的な考え方です。

しかし、「ユーザー認証の際にパスワードを確認する」ことと、「パスワードを保存しない」ことは両立できるでしょうか？答えはYesです。方法はあります。パスワードではなく、パスワードのハッシュを保存すればよいのです。

ハッシュ関数とは何でしょうか？たとえば下の式は、簡単な一次関数です。この関数には、ある決まった数$x$と定数$a$を与えてやれば、決まった値$y$が出力されます。
$$
\operatorname{hash} y = ax (aは定数)
$$

たとえばあなたの設定したパスワードが`1234`だとしましょう。パスワードを保存するときにそのまま保存するのではなく、$a=75$を与えて関数$hash$に代入し、その値を保存します。すると、結果は次のようになります。

|元のパスワード|関数の結果|
|---|---|
|1234|92550|

次に攻撃者の側に立ってみます。データセンターにハッキングしたあなたは、`password.txt`というファイルを運よく見つけました。そこには`92550`という数値が書いてありました。やりました！パスワードを見つけたのです。早速そのパスワードでログインしてみると、どういうわけかログインできません。攻撃者は先ほど決めた$\operatorname{hash} y = ax (aは定数)$と、$a=75$を使ってパスワードが保存されていることを攻撃者は知らなかったからです。

しかしこのハッカー、パスワードがハッシュ化されて保存されていることに気付きました。運よくデータセンターにアクセスしていることはバレていないので、ハッカーはいろいろとパスワードを登録して、どのように保存されているかを調べました。

|元のパスワード|保存されているパスワード|
|---|---|
|1234|92550|
|1235|92564|
|1236|92700|

この表を見れば、パスワードが$\operatorname{hash} y = ax (a=75)$に通されていることは明らかです。そこで今度は新しいハッシュ化の方法を考えました。次の式で$b$は毎回変わり、性懲りもなく$a=75$とします。
$$
\operatorname{hash} y = a(x+b)^2 (aは定数、bは変数)
$$

ハッカーが来ました。ハッシュ関数が変わったらしい、という噂は聞いているので、小手調べにパスワードをいろいろ登録して、保存されている値を調べました。

|元のパスワード|保存されているパスワード|
|---|---|
|1234|21242881|
|1235|6300100|

元のパスワードと保存されているパスワードに規則性が見出せません。どうやらハッシュ関数は推測できなさそうです。運営側の勝利に終わったのには、毎回変わる変数$b$を定めていたからです。これが、**ソルト**です。

|元のパスワード|保存されているパスワード|$b$の値|
|---|---|---|
|1234|21242881|45|
|1235|6300100|17|

ええ、実際にはもっと難しいアルゴリズムがあります。たとえば$a$には、ものすごく大きい素数$p$を代入していたりします。それはさておき、このように、パスワードとハッシュ関数、ソルトを用いてパスワードを安全に保存することに成功しました。

### ソルトの生成
安全にパスワードを保存するためには、ソルトの値も安全である必要があります。安全な値というのは簡単に人間の頭で思いついては困りますから、コンピューターに計算させましょう。AliceScriptでは`password_getSalt`関数で簡単にソルトを生成できます。

```cs title="AliceScript"
using Alice.Security;

byte[] salt = password_getSalt();
```
### パスワードのハッシュ化
ソルトができたら、実際にパスワードをハッシュ化してみましょう。`password_hash`関数でパスワードをハッシュ化できます。`password`はもちろん、推測されにくいパスワードを使ってください。

```cs title="AliceScript"
using Alice.Security;

byte[] hash = password_hash("password",salt);
```

### パスワードの検証
パスワードはハッシュ化できたので、実際にパスワードを検証してみましょう。`password_verify`関数はパスワードか正しければ`true`が、間違っていれば`false`が返ります。

```cs title="AliceScript"
using Alice.Security;

print(password_verify('password',hash,salt));
```

### まとめ
まとめとして、実行するたびにパスワードを求め、認証に成功したらパスワードの変更を促して終わるプログラムを作成します。

```cs title="login.alice"
using Alice.IO;
using Alice.Security;
using Alice.Console;

const HASH_FILE_NAME = "user_data.bin";
const SALT_FILE_NAME = "user_sub.bin";

function checkExistsData()
{
    return file_exists(HASH_FILE_NAME) && file_exists(SALT_FILE_NAME);
}

function changePassword()
{
    print("新しいパスワードを入力してください。");
    var passwd = console_readline();

    var salt = password_getSalt();
    var hash = password_hash(passwd,salt);
    
    file_write_data(HASH_FILE_NAME,hash);
    file_write_data(SALT_FILE_NAME,salt);
    
    print("パスワードを保存しました。終了します。");
    exit;
}

function login()
{
    print("パスワードを入力してください。");
    var passwd = console_readline();

    var salt = file_read_data(SALT_FILE_NAME);
    var hash = file_read_data(HASH_FILE_NAME);

    if(password_verify(passwd,salt,hash)){
        print("ログインに成功しました。");
        changePassword();
        return;
    }

    print("ログインに失敗しました。終了します。");
    exit;
}

if(checkExistsData()){
    login();
}else{
    changePassword();
}
```

実行してみると、「新しいパスワードを入力してください。」とパスワードの作成を求められ、作成すると、次回からの起動にそのパスワードが必要になります。パスワードのハッシュとソルトはそれぞれ、`user_data.bin`と`user_sub.bin`に保存されています。盗まれないようにしてください。