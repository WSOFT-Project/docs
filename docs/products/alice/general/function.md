---
title: function
summary: この記事では、AliceScriptでの関数について説明します。
date : 2023-11-22
---


## 概要
**関数**とは、特定の操作やタスクを実行するためにまとまった処理のかたまりのことです。
関数を使用すると、何度も同じ処理を行う部分を再利用することができるうえ、コードを構造化し、保守性を向上させるのに役立ちます。

!!!tip "推奨事項"
    AliceScriptを用いたプログラミングでは、何度も使用する処理でなくても、特定の処理単位で関数にすることをオススメしています。

この記事では、AliceScript 3.0以降を対象に説明しています。Alice2.3以前を使用されている場合は、「[function](../general/function.md)」をご覧ください。

## 関数の定義
関数は、コード中でキーワードとともに、関数の名前および引数を指定して定義します。
まずは次の例を参照してください。この関数は`a`と`b`の和を求めます。

```cs title="AliceScript"
number Add(number a,number b)
{
   var c = a + b;
   return c;
}
```

この例では、1行目の先頭から関数の出力する値(=戻り値)の種類、関数の名前、関数に入力する値(=引数)を定義しています。(関数に値を入力することを「渡す」ということがあります。)この例にある関数の場合関数の戻り値の種類は`number`、関数の名前は`Add`、関数に入力する値は`number a`(種類は`number`)と`number b`(こっちも`number`)です。

関数名には、アルファベットや漢字、ひらがななどの文字と、`_`(アンダーバー)、数字や一部の記号(先頭以外で使用可能)が使用できます。詳細については、[識別子](../api/alice/function.md)を参照してください。

関数が行う処理は、`{ }`の中に書きます。また、関数の出力にしたい値(=戻り値)は、[return](../alice/return.md)の後に書きます。

<details>
<summary>従来の方式</summary>

Alice2.3以前のバージョンでは、以下のように`function`関数を使って記述することで関数を定義します。

```cs title="AliceScript"
function Add(number a,number b)
{
   var c = a + b;
   return c;
}
```

この方法はAlice3.0以降でも使用できますが、なるべく最新の記述方法を使用することをオススメします。
</details>

## 関数の呼び出し
定義した関数の処理を実際に実行する(=呼び出す)には、`変数 = 関数名(入力)`のように記述します。また、AliceScriptでは関数名に大文字小文字の区別はありません。

次の例を参照してください。

```cs title="AliceScript"
var x = 1;
var y = 2;

var result = Add(x,y);

print(result);
// 出力 : 3

// 大文字小文字が一致していなくても呼び出せる
result = add(result,x);
// 出力 : 4
```

関数は、定義されるより前に呼び出すことはできません。
たとえば、次の例ではエラーが発生します。

```cs title="AliceScript"
var x = 2;
var y = 1;

var result = Sub(x,y);//まだ定義されていないためエラー

number Sub(number x,number y)
{
  return x - y;
}
```

また関数は、定義されたスコープの範囲内でのみ呼び出せます。
次の例を参照してください。

```cs title="AliceScript"
string input = read();

if(input != "")
{
  string addPeriod(string str)
  {
    return str + ".";
  }
  print(addPeriod(input));//これは呼び出せる
}

print(addPeriod(input));//これは呼び出せない
```
## 引数
「関数の定義」で説明したように、引数は関数に入力する値を指します。引数には「引数として渡す値」と「引数を受け取るための変数」のふたつの意味があり、前者を**実引数**、後者を**仮引数**といいます。次の例をご覧ください。

```cs title="AliceScript"
// xが仮引数
number F(number x)
{
  return x * 2 + 4;
}

// 2が実引数
F(2);
```

すでに前の例で示したように、関数には複数の引数を設定できます。
複数の引数を指定するには、次の例のように引数を`,`で区切って並べます。

```cs title="AliceScript"
// x,y,zがそれぞれ仮引数
number Norm(number x,number y,number z)
{
  return x ** 2 + y ** 2 + z ** 2;
}

// 2,3,4がそれぞれ実引数
print(Norm(2,3,4));
```

次のように、引数のない関数を定義することもできます。
引数のない関数を定義するには、引数リストを空にします。

```cs title="AliceScript"
// 常に3.14を返す関数
number Pi()
{
  return 3.14;
}
```

### オプション引数
引数に規定値を設定することで、呼び出し時にその引数の設定を省略するでき、この機能を**オプション引数**といいます。
まずは次の例をご覧ください。

```cs title="AliceScript"
number Sum(number x,number y = 0,number z = 0)
{
  return x + y + z;
}

Sum(1);     // 結果 : 1  Sum(1,0,0); と同じ意味
Sum(1,2);   // 結果 : 3  Sum(1,2,0); と同じ意味
Sum(1,2,3); // 結果 : 6

Sum();// [x]は省略できないためエラー
```

このように、オプション引数を省略すると規定値が使用されます。

オプション引数を使用できるのは、必須引数より後ろの引数のみです。
オプション引数の後に必須引数を設定するとエラーが発生します。
```cs title="AliceScript"
number Sum(number x = 0,number y)//オプション引数が必須引数の前にあるためエラー
```

### 可変長引数
たとえば、いくつかの数値のうち最大の数値を求める関数を作成するとき、愚直に実装すると次のようになるでしょう。

```cs title="AliceScript"
number Max(array items)
{
  number max = 0;

  foreach(number n in items)
  {
    if(max > n)
    {
        max = n;
    }
  }
  return max;
}

var a = 10;
var b = 15;
var c = 5;

var nums = [a,b,c];

Max(nums); // 結果 : 15
```

この方法では、引数を一度配列に格納してから関数に渡す作業が必要です。このような方法では関数を使う人の負担になってしまうため、この作業を自動化するために可変長引数を導入しました。
前の例を、可変長引数を使用して書き直した例を示します。

```cs title="AliceScript"
number Max(params items)
{
  
  foreach(number n in items)
  {
    if(max > n)
    {
        max = n;
    }
  }
  return max;
}

var a = 10;
var b = 15;
var c = 5;

Max(a,b,c); // 結果 : 15
Max();      // 結果 : 0
```

可変長引数を使用するには、関数の定義時に可変長引数に設定したい引数に`params`キーワードをつけます。また、このキーワードがついた引数は自動的に[配列](../api/array/index.md)になります。
呼び出し側では、関数に可変長個の引数を指定して呼び出します。

また、可変長引数は呼び出し時に省略することもできます。上記の例では、`Max();`のように`items`にひとつも指定しなくてもエラーにはなりません。

可変長引数を使用できるのは、すべての引数の末尾のみです。
また、ひとつの関数に複数の可変長引数を指定することはできません。
可変長引数の後に引数を設定するとエラーが発生します。
```cs title="AliceScript"
number Max(params items,number y)//可変長引数の後に引数があるためエラー
```
### 参照渡し
通常、関数内で仮引数に別の値を代入しても、実引数への影響はありません。次の例をご覧ください。

```cs title="AliceScript"
void ModifyParam(number x)
{
  x = 10;
  print($"x = {x}");
}

var n = 2;

ModifyParam(n);
// 出力 : x = 10
print($"n = {n}");
// 出力 : n = 2
```

この例で実際には、`ModifyParam`には`n`の値の**コピーが**渡されています。そのため、`ModifyParam`内で`x`の値を書き換えても`n`の値が変わることはありません。

引数としてオブジェクトを渡す場合も同様です。関数にオブジェクトを渡す際にはオブジェクトへの参照情報がコピーされます。**オブジェクト自体がコピーされるわけではないことにご注意ください。**

しかしこのような仕様では、関数から呼び出し元の値を書き換える機能がないため、複数の値を返すときなどに不便です。

そこで、次のように引数に`ref`キーワードをつけて参照渡しを行うことで、関数に値ではなくその変数への参照を渡すことができます。次の例をご覧ください。

```cs title="AliceScript"
void AddFive(ref number x)
{
  x += 5;
}

var a = 2;
print($"a = {a}");
// 出力 : a = 2

AddFive(ref a);
print($"a = {a}");
// 出力 : a = 7
```

注目すべき点は、**呼び出し時にも`ref`キーワードをつける必要がある**ことです。参照渡しを行うと、関数の呼び出し前と呼び出し後で変数の値が変わる可能性があります。AliceScriptでは、プログラマーの意図しない場所で値が書き変わってしまうことを防ぐため、参照渡しを行う際には必ず`ref`キーワードをつける必要があります。

### 拡張メソッド
拡張メソッドは、関数をオブジェクトのメソッドと同じ形式で呼び出せるようにするものです。

たとえば、英文を読むのにかかる時間を簡易的に推測する関数を作成することを考えましょう。次の例をご覧ください。

```cs title="AliceScript"
number ReadingTime(string str)
{
  // 一秒間に1.2単語読めると仮定
  // GTECでこういうの測れるよね
  const WPS = 70;

  // 要は、文中の空白の数を数えている
  var words = str.Split(' ');
  return words.Length / WPS;
}

string text = "Feugiat dolores in duo sanctus clita et blandit accusam ea luptatum ea no eleifend eirmod duo in erat.";

WordCount(text); // 結果 : 14.1666666667
```

私が`text`を読むのにはだいたい14秒かかるみたいです。

これを拡張メソッドを使用すると、次のように呼び出すことができます。

```cs title="AliceScript"
number ReadingTime(this string str)
{
  // 一秒間に1.2単語読めると仮定
  const WPS = 70;

  // 要は、文中の空白の数を数えている
  var words = str.Split(' ');
  return words.Length / WPS;
}

string text = "Feugiat dolores in duo sanctus clita et blandit accusam ea luptatum ea no eleifend eirmod duo in erat.";

text.ReadingTime(); // 結果 : 14.1666666667
```

拡張メソッドを定義するには、次のように**第一引数に`this`キーワード**をつけます。このとき、`this`キーワードがついた引数を**レシーバー**といいます。

```cs title="AliceScript"
number WordCount(this string str)
```

これまでの例では、`this`キーワードの後に型キーワードをつけてきましたが、省略するとすべての型で拡張メソッドが呼び出せるようになります。逆に、型キーワードをつけると、その型の変数からのみ呼び出せます。

```cs title="AliceScript"
void Output(this v) //this variableと同じ意味
{
  print(v);
}
```

また、先ほどの参照渡しを拡張メソッドに使うことはできません。

```cs title="AliceScript"
void Assign(ref this value,variable other) //これはエラー
```

このようにして定義した関数は、通常通り関数として呼び出すこともできますし、オブジェクトのメソッドのように呼び出すこともできます。

```cs title="AliceScript"
string text = "This is a pen.";

WordCount(text);  //通常の呼び出し方
text.WordCount(); //拡張メソッドとして呼び出し
```

この性質が逆にあだとなる場合があります。たとえば、`string`型に`Add`メソッドを追加したとすると、その`Add`という名前の関数が通常の方法でも呼び出せてしまいます。この問題を回避するために、関数の定義時に`extension`キーワードをつけると、拡張メソッド専用の関数になります。次の例をご覧ください。

```cs
extension number WordCount(this string str)
{
  // 要は、文中の空白の数を数えている
  var words = str.Split(' ');
  return words.Length;
}

string text = "This is a pen.";

text.WordCount(); //これはできる
WordCount(text);  //これはエラー
```
## 戻り値
関数は、呼び出し元に[return](./return.md)キーワードを使用して値を返すことができます。関数の戻り値は呼び出し元でそのまま値として使用できます。次に例を示します。

```cs title="AliceScript"
function ReturnHello()
 {
   return "Hello,World!";
 }
print(ReturnHello());
//出力:Hello,World!
```

また、`return`キーワードは、関数の実行をその時点で終了します。任意の場面で関数の実行を中止したい場合、 値を持たない`return`キーワードを使用できます。次に例を示します。

```cs title="AliceScript"
function ShowHello()
 {
   print("Hello");
   return;
   print("Hello,(again)");//この行は、returnキーワードよりも後にあるため実行されません
 }
//出力:Hello
```

<span class="badge bg-success">対応バージョン>=Alice3.0</span>

次の例のように、戻り値の型を指定すると、関数がその型以外の値を返した場合にエラーが発生します。

```cs title="AliceScript"
void function ShowHello()
{
    print("Hello");
}
```

### スコープ
関数は、変数と同じように、そのスコープ内で一意な名前である必要があります。スコープの範囲内では、基本的に同じ名前の関数を宣言することはできませんし、反対にスコープの外に出ると、その範囲内で定義した関数は使用できません。しかし、すでに定義された関数がオーバーライド可能属性を持っている場合は、`override`修飾子を使ってその関数を上書きできます。次に例を示します。

```cs title="AliceScript"
virtual function SayHello()
 {
    print("Hello,World");
 }
SayHello();//出力例:Hello,World
override function SayHello()
 {
    print("Hello,Bonjur");
 }
SayHello();//出力例:Hello,Bonjur
```

その関数を、現在のスコープの範囲外で使用できるようにするには、その関数にpublic修飾子を使用することそれをグローバル関数として宣言する必要があります。次に例を示します。

```cs title="AliceScript"
function RegisterGlobalFunction()
 {
     public function SayHello()
      {
          print("Hello,World");
      }
 }
RegisterGlobalFunction();
SayHello();//出力例:Hello,World
```

### 関数の上書き
AliceScriptでは、通常同じ名前を持つ関数を複数回定義したり、処理内容を再定義することはできません。

そこで、再定義される可能性のある関数を`virtual`キーワードを使用して仮想関数とすることで、関数が上書きされることを宣言でき、
実際に関数を上書きするには`override`キーワードを使用します。

次の例では、`Hoge`関数を定義したあとそれを上書きしています。
```cs title="AliceScript"
virtual void Hoge()
{
    print("Hoge!");
}

Hoge();//出力:Hoge!

if(true)
{
    override void Hoge()
    {
        print("Hoge!Overrided!!");
    }
    Hoge();//出力:Hoge!Overrided!!
}

// ここは上書きスコープの外
Hoge();//出力:Hoge!
```

また、仮想関数は定義時に処理内容を定義する必要がありません。
処理内容が定義されていない関数を呼び出すには、必ず関数を上書きして処理内容を定義する必要があります。
次の例を参照してください。

```cs title="AliceScript"
virtual void Hoge2();

Hoge();//これはエラー

override void Hoge2()
{
  print("Hoge2!");
}
```

### 拡張メソッド

拡張メソッドを使用すると、新規に型を作成することなく既存の型にメソッドを追加できます。拡張メソッドに使用する関数はグローバル関数である必要があり、現在の型の変数が代入される引数に`this`キーワードを使用します。

次の例は、現在の文字列の語数を数える(正確には、スペースで区切られた語の数を数える)`WorldCount`メソッドを`string`型に登録します。

```cs title="AliceScript"
public function WordCount(this string str)
 {
    return str.Split(" ").Length;
 }
var text = "Hello Extension Methods";
print(text.WordCount());//出力例:3
```

登録したい引数の型指定修飾子を`this`キーワードの後に記述します。これを省略すると、`variable`型に登録されます。複数の`this`キーワードを使用することはできません。拡張メソッドには`virtual`属性および`override`属性を付与することもできます。標準の型メソッドのオーバーライド可否については[変数](../../general/variable.md)を参照してください。

### 関数の外部実装

<span class="badge bg-success">対応バージョン>=Alice3.0</span>

関数の宣言時に`extern`キーワードを使用すると、外部で実装されている関数を宣言できます。
`extern`は主に、相互運用機能を使用して.NETやそれ以外のコードを呼び出すときに、`#libimport`や`#netimport`指令と使用します。

次の例では、.NETで定義されている[System.Console.WriteLine](https://learn.microsoft.com/en-us/dotnet/api/system.console.writeline)メソッドを使用してコンソールにメッセージを表示します。

```cs title="AliceScript"
#netimport "System.Console","System.Console"
extern void WriteLine(string value);

WriteLine("Hello,World!");
```

また、次の例では、Win32APIで定義されている[MessageBox](https://learn.microsoft.com/en-us/windows/win32/api/winuser/nf-winuser-messagebox)関数を使用してメッセージボックスを表示します。

```cs title="AliceScript"
#libimport "user32.dll"
extern int MessageBox(HWND hwnd,LPCTSTR lpText,LPCTSTR lpCaption,UINT uType);

MessageBox(0,"Hello,World!","TestMessage",0);
```

### デリゲートへの暗黙的な変換
ほとんどのネイティブ関数とユーザー定義関数は、[デリゲート](../delegate/index.md)型の変数へと暗黙的に変換できます。ユーザー定義関数を丸括弧なしで呼び出すと、それはその関数をデリゲート型に変換されたオペランドと認識されます。次に例を示します。

```cs title="AliceScript"
function SayHello()
 {
    print("Hello,World");
 }
var hello=SayHello;//helloは、DELEGATE型を表します
hello();//出力:Hello,World
```
ただし、以下の属性を持っている関数を暗黙的に変換することはできません。

- 言語構造
- 関数の区切り文字の空白をサポート
- 単一の引数のみ関数の区切り文字の空白をサポート

また、FunctionBase型を継承しない関数も、この機能をサポートしません。

### 属性
AliceScriptではさまざまな機能や構造が関数で設計されているため、必要に応じて関数に特別な機能を持たせることが可能です。属性の一覧を以下に示します。

|属性の名前|修飾子|概要|
|---|---|---|
|一般|指定不要|通常の関数です。引数などは自動的にチェックされ実行されます。|
|関数の区切り文字の空白をサポート|command|関数の呼び出し時に丸括弧の代わりに空白文字が使用できます。|
|単一の引数のみ関数の区切り文字の空白をサポート|指定不可|関数の引数がひとつのみの場合に関数の呼び出し時に丸括弧の代わりに空白文字が使用できます。|
|言語構造|指定不可|言語構造です。さまざまな形で使用できるため引数の自動チェックや最適化が実行されません。|
|オーバーライド可能|virtual|オーバーライド可能な関数です。|
|オーバーライド|override|既存の関数をオーバーライドします。この関数をオーバーライドすることもできます。|
|グローバル関数|public|すべてのスコープで使用可能な関数です。|
