---
title: function
summary: 関数を定義します。
date : 2022-01-15
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数の区切りの空白をサポート、言語構造

指定された引数と処理を含む関数を定義します。

```cs title="AliceScript"
namespace Alice;
.command void function string funcName(params type args);
```

|引数| |
|-|-|
|`funcName`| 定義する関数の識別子。|
|`params type args`| 定義する関数に付与する引数と型（必要な場合）|

### 概要
**関数**とは、特定の操作やタスクを実行するためにまとまった処理のかたまりのことです。
関数を使用すると、何度も同じ処理を行う部分を再利用することができるうえ、コードを構造化し、保守性を向上させるのに役立ちます。

!!!tip "推奨事項"
    AliceScriptを用いたプログラミングでは、何度も使用する処理でなくても、特定の処理単位で関数にすることをオススメしています。

この記事では、名前付き関数について説明します。匿名関数について知るには、「[デリゲート](../delegate/index.md)」を参照してください。

### 関数の定義
関数は、コード中でキーワードとともに、関数の名前および引数を指定して定義します。
まずは次の例を参照してください。この関数は`a`と`b`の和を求めます。

<span class="badge bg-success">対応バージョン>=Alice3.0</span>

```cs title="AliceScript"
number Add(number a,number b)
{
   var c = a + b;
   return c;
}
```

この例では、1行目の先頭から関数の出力する値(=戻り値)の種類、関数の名前、関数に入力する値(=引数)を定義しています。この例にある関数の場合関数の戻り値の種類は`number`、関数の名前は`Add`、関数に入力する値は`number a`(種類は`number`)と`number b`(こっちも`number`)です。

関数名には、アルファベットや漢字、ひらがななどの文字と、`_`(アンダーバー)、数字や一部の記号(先頭以外で使用可能)が使用できます。詳細については、[識別子](../../general/identifier.md)を参照してください。

関数が行う処理は、`{ }`の中に書きます。また、関数の出力にしたい値(=戻り値)は、[return](../alice/return.md)の後に書きます。

※Alice2.3以前のバージョンでは、以下のように`function`関数を使って記述することで関数を定義します。

```cs title="AliceScript"
function Add(number a,number b)
{
   var c = a + b;
   return c;
}
```

この方法はAlice3.0以降でも使用できますが、なるべく最新の記述方法を使用することをオススメします。
### 関数の呼び出し
定義した関数の処理を実際に実行する(=呼び出す)には、`変数 = 関数名(入力)`のように記述します。次の例を参照してください。

```cs title="AliceScript"
var x = 1;
var y = 2;

var result = Add(x,y);

print(result);
// 出力 : 3
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

また関数は、定義されたときと同じスコープ
### 基本
関数は、クラスやスコープ内で修飾子（overrideやvirtualなど）とともに、関数の名前および引数を指定して宣言されます。

引数はかっこで囲み、各引数をコンマで区切ります。括弧内を空にすると、関数で引数が不要なことを意味します。

定義された関数は、関数の定義された後で使用できるようになります。

次の例には`SayHello`関数が定義されています。これをユーザー定義関数といいます。SayHelloが呼び出されたとき、標準出力にHello,World!を書き込みます。

```cs title="AliceScript"
function SayHello(){
    print("Hello,World");
}
SayHello();//出力例:Hello,World
```

関数は、定義されるまで使用できません。次の例を参照してください。

```cs title="AliceScript" hl_line="1"
SayHello();//例外発生:0x01
function SayHello(){
    print("Hello,World");
}
```

AliceScriptでは関数の名前を、識別子と呼びます。識別子の名前付けルールなどについては、[識別子](./identifier.md)を参照してください。
### 戻り値
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

### 引数
関数を定義する際には、必要な引数の名前を指定します。呼び出し元のコードから関数を呼び出すときに引数に具体的な値を指定します。次に例を示します。

```cs title="AliceScript"
function AddNumber(numA,numB)
 {
   return numA + numB;
 }
AddNumber(1,2);//戻り値:3
```

また、引数に`number`や`string`などの型指定修飾子を使用すると、その型の値のみを引数として受け入れるようになり、予期しない型を使用した呼び出しを防ぐことができます。次に例を示します。

```cs title="AliceScript"
function Add(number a,number b)
{
   return a+b;
}
Add(1,2);//戻り値:3
Add("1","2");//例外発生
```

さらに、引数に`params`キーワードを使用すると、可変長個の引数を受け取る引数を指定できます。`params`の型は常に`ARRAY`となります。 ひとつの関数内では、`params`キーワードより後に引数を指定することができません。次に例を示します。

```cs title="AliceScript"
function PrintAllArgs(params args)
 {
   foreach(arg in args)
   {
     print(arg);
   }
 }
PrintAllArgs("Hello","World");
//出力:Hello
       World
PrintAllArgs();
//出力:(何も出力されません)
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
