---
title: delegate
summary: この記事ではdelegateキーワードまたはラムダ式によって提供される機能、delegate型に実装される機能を説明します。
date : 2022-02-15
---
デリゲートは、AliceScriptにおける"匿名関数"のメカニズムです。デリゲートは匿名関数として、その場ですぐに実行したり、変数に代入したり、関数に引数として渡すことができます。

例えば、蔵書検索アプリケーションを作成することを考えてみましょう。この検索の条件は、それと完全に一致する、それを含む、それを含まない、の3つが用意されています。いずれの場合も、Seartch()関数が行うことは基本的に同じです。つまり、なんらかの条件に基づいて一連の蔵書から項目を検索します。しかし、条件に基づいて検索するコードはそれぞれの条件によって異なります。

そのような場面でデリゲートを使うと、変数のように値を変更することでプログラムの実行中に処理内容を切り替えることができます。Seartch関数に関連づけられているデリゲートを変更すればよいのです。

ソフトウェアには、この種の手法が半世紀にわたって使用されてきました。AliceScriptのデリゲートは、さらに思い通りのプログラミングを実現します。

デリゲートには次の特徴があります。

- デリゲートを使用すると、関数を引数として渡すことができます。
- デリゲートは、コールバック関数の仕組みを実現するのに使用できます。
- デリゲートは連結でき、たとえば、複数の関数を一度の呼び出しで実行することができます。

この記事ではdelegateキーワードまたはラムダ式によって提供される機能、delegate型に実装される機能を説明します。

### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数の区切りの空白をサポート、言語構造

指定された引数と処理を含むデリゲートを生成します。

```cs title="AliceScript"
namespace Alice;
delegate delegate(params type args);
```

|引数| |
|-|-|
|`params type args`| デリゲートに与える引数の名前と型（必要な場合）|

|戻り値| |
|-|-|
|`delegate`| 生成されたデリゲート|

### 基本
デリゲート型は、`delegate`キーワードと、そのデリゲートの実行に必要な引数を指定して宣言されます。

引数はかっこで囲み、各引数をコンマで区切ります。括弧内を空にすると、デリゲートは引数が不要なことを意味します。

デリゲートを同期的に呼び出すには関数のように丸括弧を使用して呼び出すか、[Invoke](#invoke)メソッド使用し、非同期的に呼び出すには[BeginInvoke](#begininvoke)メソッドを使用します。 また基本的には、引数の指定方法や戻り値に関する詳細は関数と同じです。詳しく知るには関数の記事も参照してください。

次の例にはデリゲートを生成し、それを`SayHello`として定義します。`SayHello`が呼び出されたとき、標準出力にHello,World!を書き込みます。

```cs title="AliceScript"
var SayHello = delegate()
 {
   print("Hello,World!");
 }
SayHello();//出力例:Hello,World!
```

### ラムダ式
ラムダ式を用いてデリゲートを生成することもできます。ラムダ演算子=>は、引数指定部と式本体を分割する役割を持ちます。

ラムダ式には、次の2つの形式があります。

#### 式形式のラムダ
式形式のラムダは、次の形です。

```cs title="AliceScript"
(input-parameters) => expression
```

式形式のラムダは、呼び出された時にその式の値を返します。 例えば、次のような関数が定義されていたとします。この関数は、与えられた数`num`を二乗した結果を返します。

```cs title="AliceScript"
function pow(number num)
 {
   return num ** 2;
 }
print(pow(2));//出力例:4
```

次の例は、この関数と等価な結果を返すデリゲートをラムダ式で定義する例です。

```cs title="AliceScript"
var pow = (number num) => num ** 2;
print(pow(2));//出力例:4
```

#### ステートメント形式のラムダ
ステートメント形式のラムダは次の形です。

```cs title="AliceScript"
(input-parameters) => { <sequence-of-statements> }
```

式形式のラムダとの違いは、ステートメント形式のラムダの本体が任意の数のステートメントで構成できる点と、`return`キーワードを使用することでのみ値を返すことができることです。次の例では、xを二乗した値を出力するデリゲートを`powoutput`という名前で宣言します。

```cs title="AliceScript"
var powoutput = (x) =>
 {
   var powed = x*x;
   print(x);
 };
powoutput(2);//出力例:4
```

### 関数からの暗黙的な変換
ほとんどのネイティブ関数とユーザー定義関数は、デリゲート型の変数へと暗黙的に変換できます。ユーザー定義関数を丸括弧なしで呼び出すと、それはその関数をデリゲート型に変換されたオペランドと認識されます。次に例を示します。

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

関数の属性について詳しく知るには、[関数](./function.md)を参照してください。

### デリゲートの組み合わせ
デリゲート型は、複数のデリゲートを一つに結合することができます。組み合わされたデリゲートの各ステートメントは、順番に実行され、`foreach`文を使用して一つずつに分解することも可能です。上記の例ですでに`SayHello`を定義しましたから、もう一つ、`SayBonjur`デリゲートを定義し、それらを結合して実行する例を示します。

```cs title="AliceScript"
var SayBonjur = delegate()
 {
    print("Bonjur");
 }
var Say = SayHello+SayBonjur;
Say();
//出力例:Hello,World!
//     :Bonjur
```

### イベント駆動型プログラム
イベント駆動型プログラムは例えば「キーボードが押下された」とか、「マウスが移動した」などの受動的なイベントの発生によってコードが実行されるプログラムです。AliceScriptでは、デリゲート型とその組み合わせによって実現できます。ここでは簡単なサンプルとして、1秒おきにHello,Worldを表示し続け、それをeキーが押下されたときに停止するプログラムを作成します。このコードでは非同期的に1秒前にHello,Worldを表示し続け、同時に同期的にキーの押下を待機し続け、なんらかのキーが押下されたときに`OnkeyDown`にキーの情報を渡して呼び出します。

```cs title="AliceScript"
var OnKeyDown;
(()=>{
  //非同期に実行されるコード
  while(true)
   {
      OnKeyDown(Console_ReadKey());
   }
}).BeginInvoke();

//OnKeyDownに次のコードをイベントハンドラとして登録します
OnKeyDown+=(key)=>
 {
    if(key=="e")
     {
         exit;
     }
 }
 while(true)
  {
     print("Hello,World");
     delay(1000);
  }
```

実際に実行すると次のように動作します。

```sh
Hello,World
Hello,World
Hello,World
Hello,World
eキーを押下すると終了します
```

### Invoke
```cs title="AliceScript"
variable delegate.Invoke(params args);
```

現在のデリゲートに指定された引数を渡して実行し、その戻り値を返します。

### BeginInvoke
```cs title="AliceScript"
void delegate.BeginInvoke(params args);
```

現在のデリゲートをすべて非同期で実行します。

### Length/Count

```cs title="AliceScript"
number delegate.Length;
number delegate.Count;
```
現在のデリゲートに含まれる要素の数を返します。