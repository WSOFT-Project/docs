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
command void function string funcName(params type args);
```

|引数| |
|-|-|
|`funcName`| 定義する関数の識別子。|
|`params type args`| 定義する関数に付与する引数と型（必要な場合）|

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

また、`return`キーワードは、関数の実行をその時点で終了します。任意の場面で関数の実行を中止したい場合、 値を持たない`return`キーワードを使用することができます。次に例を示します。

```cs title="AliceScript"
function ShowHello()
 {
   print("Hello");
   return;
   print("Hello,(again)");//この行は、returnキーワードよりも後にあるため実行されません
 }
//出力:Hello
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

さらに、引数に`params`キーワードを使用すると、可変長個の引数を受け取る引数を指定できます。`params`の型は常に`ARRAY`となります。 一つの関数内では、`params`キーワードより後に引数を指定することができません。次に例を示します。

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
|単一の引数のみ関数の区切り文字の空白をサポート|指定不可|関数の引数が一つのみの場合に関数の呼び出し時に丸括弧の代わりに空白文字が使用できます。|
|言語構造|指定不可|言語構造です。さまざまな形で使用できるため引数の自動チェックや最適化が実行されません。|
|オーバーライド可能|virtual|オーバーライド可能な関数です。|
|オーバーライド|override|既存の関数をオーバーライドします。この関数をオーバーライドすることもできます。|
|グローバル関数|public|すべてのスコープで使用可能な関数です。|
