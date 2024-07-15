---
title: delegate
summary: デリゲート型は、匿名関数のように一連のステートメントのまとまりを表します。
mt_type: type
---
## delegate型
### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.dll

デリゲートは、関数を参照する型です。デリゲート型は結合、比較、等値演算子をサポートしています。 デリゲート型の既定値は空の関数です。デリゲート型への暗黙的な変換と明示的な変換の両方はサポートされていません。この型の型指定修飾子は`delegate`です。

デリゲート型は、配列のように複数の要素を持つことができます。しかし、デリゲート型にはデリゲート型以外の要素を含めることはできません。

```cs title="AliceScript"
namespace Alice;
public class delegate
```

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

## 説明

==デリゲート== は、AliceScriptにおける"匿名関数"のメカニズムです。デリゲート型は匿名関数として、その場ですぐに実行したり、変数に代入したり、関数に引数として渡すことができます。

あなたがもし、C言語やC++言語のプログラマーであれば、「デリゲートは関数ポインターと似たようなものである」と説明できます。

たとえば、蔵書検索アプリケーションを作成することを考えてみましょう。この検索の条件は、それと完全に一致するかそれを含むかの2つが用意されています。これを実装すると以下のようになるでしょう。

```cs title="AliceScript"
var library = ["ねこ図鑑","いぬ図鑑","料理本"];

// 完全一致検索
array SearchEquals(string name)
{
   var result = [];
   foreach(string book in library)
   {
      if(book == name)
      {
         result.Add(book);
      }
   }
   return result;
}

// 部分一致検索
array SearchContains(string name)
{
   var result = [];
   foreach(string book in library)
   {
      if(book.Contains(name))
      {
         result.Add(book);
      }
   }
   return result;
}
```

ここで、これらの操作をひとつの`Search`関数を使って実行できるようにすることを考えます。いずれの場合も、本の名前を比較する部分以外はコードが同一なので、本の名前を比較する部分のみを入れ替えることができればよいはずです。
そのような場面でデリゲートを使うと、変数のように値を変更することでプログラムの実行中に処理内容を切り替えることができます。次の例をご覧ください。

```cs title="AliceScript"
var library = ["ねこ図鑑","いぬ図鑑","料理本"];

array Search(string name, delegate predicate)
{
   var result = [];
   foreach(string book in library)
   {
      if(predicate(book,name))
      {
         result.Add(book);
      }
   }
   return result;
}

// 完全一致検索用のデリゲート(匿名関数式を使用)
var equals = delegate(book,name){ return book == name; };

// 部分一致検索のデリゲート(ラムダ式を使用)
var contains = book,name => book.Contains(name);

// 完全一致で検索する場合
Search(equals, "ねこ図鑑");

// 部分一致で検索する場合
Search(contains, "図鑑");
```

この方法によるメリットはほかにもあります。
この方法で検索関数を定義すると、あとからほかの検索条件を追加することが簡単になります。たとえば、次の例では**含まない**検索をしています。

```cs title="AliceScript"
// 部分一致"しない"検索(containsの論理反転)
var not_contains = book,name => !contains(book,name);

// 部分不一致で検索
Search(not_contains,"図鑑");
```

ソフトウェアには、この種の手法が半世紀にわたって使用されてきました。AliceScriptのデリゲートは、さらに思い通りで柔軟なプログラミングを実現します。

デリゲートには次の特徴があります。

- デリゲートを使用すると、関数を引数として渡すことができます
- デリゲートは、コールバック関数の仕組みを実現するのに使用できます
- デリゲートは連結できます。たとえば、複数の関数を一度の呼び出しで実行できます。

この記事では、`delegate`キーワードとそれによって生成されるデリゲート型について説明します。

#### 基本
デリゲート型は、delegateキーワードと、そのデリゲートの実行に必要な引数を指定して宣言されます。

引数はかっこで囲み、各引数をコンマで区切ります。括弧内を空にすると、デリゲートは引数が不要なことを意味します。

デリゲートを同期的に呼び出すには関数のように丸括弧を使用して呼び出すか、Invokeメソッド使用し、非同期的に呼び出すには`BeginInvoke`メソッドを使用します。 また基本的には、引数の指定方法や戻り値に関する詳細は関数と同じです。詳しく知るには関数の記事も参照してください。

次の例にはデリゲートを生成し、それを`SayHello`として定義します。SayHelloが呼び出されたとき、標準出力にHello,World!を書き込みます。

```cs title="AliceScript"
var SayHello = delegate()
 {
   print("Hello,World!");
 }
SayHello();//出力例:Hello,World!
```

#### ラムダ式
ラムダ式を用いてデリゲートを生成することもできます。ラムダ演算子`=>`は、引数指定部と式本体を分割する役割を持ちます。

ラムダ式には、次の2つの形式があります。

##### 式形式のラムダ
式形式のラムダは、次の形式をとります。

```txt title="AliceScript"
input-parameters => expression
```

式形式のラムダは、呼び出された時にその式の値を返します。 たとえば、次のような関数が定義されていたとします。この関数は、与えられた数numを二乗した結果を返します。

```cs title="AliceScript"
number pow(number num)
{
   return num ** 2;
}
print(pow(2));//出力例:4
```

次の例は、この関数と等価な結果を返すデリゲートをラムダ式で定義する例です。

```cs title="AliceScript"
var pow= number num => num ** 2;
print(pow(2));//出力例:4
```

##### ステートメント形式のラムダ
ステートメント形式のラムダは、次のような形をとります。

```txt title="AliceScript"
input-parameters => { <sequence-of-statements> }
```

式形式のラムダとの違いは、ステートメント形式のラムダの本体が任意の数のステートメントで構成できる点と、returnキーワードを使用することでのみ値を返すことができることです。次の例では、xを二乗した値を出力するデリゲートをpowoutputという名前で宣言します。

```cs title="AliceScript"
var powoutput= x =>
 {
   var powed = x*x;
   print(x);
 };
powoutput(2);//出力例:4
```

#### 関数からの暗黙的な変換
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
関数の属性について詳しく知るには、[関数](../alice/function.md)の記事を参照してください。

#### デリゲートの組み合わせ
デリゲート型は、複数のデリゲートをひとつに結合できます。組み合わされたデリゲートの各ステートメントは、順番に実行され、`foreach`文を使用してひとつずつに分解することも可能です。上記の例ですでに`SayHello`を定義しましたから、もうひとつ、`SayBonjur`デリゲートを定義し、それらを結合して実行する例を示します。

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

#### 配列操作とデリゲート
デリゲートはよく、配列から特定の条件を満たすものについて操作を行うときに使用されます。

ここでは例として、配列の中から特定の条件を満たすものだけを抽出することを考えます。

配列`nums`には`1`から`10`までの自然数が入っています。ここではこの配列から偶数(=2で割った余りが0のもの)を[array.Where](../array/where.md)メソッドを使って抽出します。

```cs title="AliceScript"
var nums = [1,2,3,4,5,6,7,8,9,10];

// 抽出される要素が満たす条件
var predicate = delegate(number x){ return x % 2 == 0; }

var evens = nums.Where(predicate);

print(evens);
```
#### イベント駆動型プログラム
イベント駆動型プログラムはたとえば「キーボードが押下された」とか、「マウスが移動した」などの受動的なイベントの発生によってコードが実行されるプログラムです。AliceScriptでは、デリゲート型とその組み合わせによって実現できます。ここでは簡単なサンプルとして、1秒おきにHello,Worldを表示し続け、それをeキーが押下されたときに停止するプログラムを作成します。このコードでは非同期的に1秒前にHello,Worldを表示し続け、同時に同期的にキーの押下を待機し続け、なんらかのキーが押下されたときに`OnkeyDown`にキーの情報を渡して呼び出します。

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


### プロパティ

=!"products/alice/api/delegate"|[property,include-subdir]!=

### メソッド

=!"products/alice/api/delegate"|[method,include-subdir]!=

## delegate関数
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数の区切りの空白をサポート、言語構造

指定された引数と処理を含むデリゲートを生成します。

```cs title="AliceScript"
public delegate delegate(params type args);
```

|引数| |
|-|-|
|`params type args`| 定義する関数に付与する引数と型（必要な場合）|

|戻り値| |
|-|-|
|`delegate`| 生成されたデリゲート|

名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1-2.1

属性: 関数の区切りの空白をサポート、言語構造

指定された引数と処理を含むデリゲートを生成します。
```cs title="AliceScript"
public delegate _(params type args);
```

!!!warning "サポート終了"
    delegate関数の省略表現である`_`は、デリゲートの定義を簡潔に記述するためにWSOFTScript0.7R4で導入されました。しかしAliceScriptでは、後述するラムダ式が使用可能になったため、Alice2.2以降のバージョンではサポートされなくなりました。既存の`delegate`関数への影響はありません。

|引数| |
|-|-|
|`params type args`| 定義する関数に付与する引数と型（必要な場合）|

|戻り値| |
|-|-|
|`delegate`| 生成されたデリゲート|

### 使用例
以下は、Helloを表示する`sayHello`デリゲートを定義します。

```cs title="AliceScript"
var sayHello=delegate(){print("Hello");}
```
