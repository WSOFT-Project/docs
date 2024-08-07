---
title: AliceScriptのコーディング規約
summary: この記事では、AliceScriptでプログラミングを行う際に参考となるコーディング規約を紹介します。
date : 2022-02-03
---
コーディング規約は、よりよいプログラムを作るために推奨されるルールのことです。コーディング規約には、次の目的があります。

- コードの見た目が統一されるため、コードを読むときに、内容が理解しやすくなります。
- コードの複製、変更、および保守が容易になります。

> [!IMPORTANT]
> この記事のガイドラインは、AliceScriptで開発するプログラマに一定の指針を示す目的でWSOFTによって使用されます。
> これらは、[C#のコーディング規約](https://learn.microsoft.com/ja-jp/dotnet/csharp/fundamentals/coding-style/coding-conventions)を参考に検討されました。
> これを採用することも、ニーズに合わせて各自のものを採用することもできます。
> 大切なことは、チーム内でのコードの一貫性と読みやすさを優先することです。

### 名前付け規則
AliceScriptコードを記述するときに考慮するべき名前付け規則がいくつかあります。

#### パスカルケース
パスカルケースとは、語間の空白を取り除いて連結し、構成語の先頭を大文字にする記法を指します。AliceScriptでは、classの名前付けにパスカルケースを使用することを推奨します。

```cs title="AliceScript"
class TestClass
{
    
}
```

インターフェイスに名前をつけるときには、パスカルケースを使用するだけでなく、その名前の先頭にIを付けます。これにより、コードの読み手にそれがinterfaceであることが伝わります。


!!!note "未実装"
    インターフェイスは2022年春のドラフトで実装されていましたが、いくつかの問題からAlice2.0に実装されることはありませんでした。ここでは、それらのビルドを使用するユーザーのために情報を残しておきます。

```cs title="AliceScript"
interface ITestInterface
{

}
```

#### 定数
定数名はすべて大文字で定義し、区切り文字はアンダースコアで記述します。これにより、定義部を確認しなくても定数であることが一目でわかります。

```cs title="AliceScript"
const VERSION = "1.0";
const FULL_VERSION = "1.0(falcon)";
```

### コメント規則

- コメントは、行の末尾ではなく別の行に喜寿るします。
- コメントのテキストが英文の場合、大文字で開始します。
- コメントのテキストは。やピリオドで終了します。
- 次の例のように、コメントデリミター(//)とテキストの間に空白をひとつ挿入します。

```cs title="AliceScript"
// これはコメントです。
```

### コーディングベストプラクティス
不要な比較をスキップして比較のパフォーマンスを向上させるには、`&`の代わりに`&&`演算子を、`|`の代わりに`||`演算子を使用します。

```cs title="AliceScript"
bool b = false;
bool b2 = true;

bool result = b || b2;
```

#### null許容な文脈と非許容な文脈を明確にする
null許容な文脈と非許容な文脈を明確に分けることで、想定外のnull関連エラーを事前に防ぐことができます。まずは次のユーザーに数値を入力してもらうコードをご覧ください。

```cs title="AliceScript"
number? input = read() as number;

print($"入力数値の2乗は {input ** 2} です。");
```

このコードで、右辺はnullになる可能性があります。これは、nullを返す可能性がある演算子[as](./operators/type-operators.md)を使用しているからです。null許容な値をそのまま計算に使用すると、万が一nullになった場合にエラーになります。このため、`input`をそのまま計算に使用すべきではありません。

次に、より良いコードを示します。


```cs title="AliceScript"
number? input = read() as number;
number num = 0;

if(input.HasValue)
{
    num = input.Value;
}

print($"入力数値の2乗は {num ** 2} です。");
```

このコードでは、ユーザーが有効な数値を入力しなかった場合(つまり、`input`がnullである場合)に、代わりに規定値として0を使用します。
このようにコードを書くことで、`input`はnull許容な変数、`num`はnull安全な変数だと一目でわかります。`num`を使用することでnull関連のエラーが起こることは基本的にありません。
