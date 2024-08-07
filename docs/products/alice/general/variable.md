---
title : 変数
summary : この記事では、AliceScriptにおける変数の概念について説明します。
date : 2022-02-03
---
変数は、AliceScriptにおける主要な概念のひとつです。変数は、任意の場所で宣言定義でき、その値を取り出したり代入できます。 この記事では、多くの変数に共通する事項を説明した後、それぞれの型の特徴について説明します。 変数は、すべて基となる`variable`から派生しています。これは、すべての変数に共通した操作セットを提供します。

AliceScriptの変数は、文字で始まり、任意の数の文字、数字、記号が続きます。また、予約語を使用することはできません。次の例では、`a`という変数に123を代入し定義します。その後で、その変数の値を[print](../api/alice/print.md)関数を使って出力します。

```cs title="AliceScript"
var a = 123;
print(a);
```

型を明記して代入することもできます。このとき、varキーワードの代わりに型指定修飾子を使用します。次の例では、文字列型の変数を宣言し、文字列を代入しています。

```cs title="AliceScript"
string str = "This is String!";
```

nullを代入することができる変数を作成するにはnull許容宣言として、型指定修飾子の後に`?`を付けます。次の例では、null許容の真偽値型の変数を宣言し、nullを代入しています。

```cs title="AliceScript"
bool? condition = null;
```

定義時の型以外の型の値を後で代入できる、バリアント型の変数を作成するには、型指定修飾子にvariableを使用します。次の例では、そのような変数を宣言し、文字列を代入したあと数値を再代入しています。

```cs title="AliceScript"
variable v = "This is string";
v = 1;
```

変数を再代入不可能にするには、`readonly`修飾子をつけます。
次の例では、読み取り専用の数値型の変数`x`を定義しています。

```cs title="AliceScript"
readonly number x = 0;
```

通常、変数に代入されるのは常にその値です。つまり、ある変数に式の値を代入するとその値への参照が代入されます。 通常、変数を定義する際は次の形で宣言します。

```cs title="AliceScript"
(修飾子) var 識別子 = 値;
```

AliceScriptでは変数の名前を、識別子と呼びます。変数の名前付けルールなどについては、[識別子](./identifier.md)を参照してください。

### ローカル変数とスコープ
変数はその有効な範囲内で、一意な名前である必要があります。この範囲をその変数のスコープと呼びます。スコープの範囲内では同じ名前の変数を定義することはできませんし、反対にスコープの外に出ると、その範囲内で定義した変数は使用できず、使用しようとすると[0x004](../exceptions/0x004.md)例外が発生します。 AliceScriptでいうところのスコープの範囲は、原則としてそのコードのブロック内です。厳密なことをいうと、現在実行されている`Script`オブジェクトとその親スクリプトです。コードのブロックは、およそそのコードの波括弧の中を指します。次の例を参照してください。

```cs title="AliceScript"
function Func()
 {
     var a = 123;
 }
Func();
print(a);//COULDNT_FIND_VARIABLE
```

上記の例ではFuncを呼び出すことで、ローカル変数aが定義されていますがそのスコープの範囲外での呼び出しのため、関数外で変数aを使用することはできません。また、インクルードしたファイルに対してもスコープが適用されます。このため、異なるスクリプトファイル間でローカル変数を共有することはできません。

### グローバル変数
ローカル変数と反対の性質を持つものとして、グローバル変数があります。これは、スコープ内外のどこでも定義でき、定義されたスコープ外でもその変数を使用できます。グローバル変数はスクリプトではなくインタプリタに直接登録されます。その変数をグローバル変数として宣言定義するには`public`キーワードを使用します。

```cs title="AliceScript"
function Func()
 {
    public var a = 123;
 }
Func();
print(a);//出力:123
```

上記の例では`Func`を呼び出すことで、グローバル変数`a`が定義されているため、`Func`の呼び出し後には、そのインタプリタで実行されるすべてのコードでグローバル変数`a`が使用できます。

### 定数
定数は、変数とは異なり、一度宣言すると再度代入したり値を変更することができません。これは、プログラム上で変更されたくない値(トークンなど)を定義する際に役立ちます。定数にもスコープが存在し、ローカル定数とグローバル定数があります。定数を定義するには`var`キーワードの代わりに`const`キーワードを使用します。

```cs title="AliceScript"
const KEY = "ABCD";
print(KEY);//出力例:ABCD
KEY = "EFGH";//例外発生
```

### 型
AliceScriptのすべての変数および定数は、値に評価されるすべての式と同じように、型を持ちます。インタプリタはコード内で実行されるすべての演算が型安全になるようにします。たとえばnumber型の変数には、その値を加算したり減算したりする算術演算が許可されます。しかし、bool型にはその種類の演算は許可されません。次に、特定の型の既定値を使用して変数を初期化する例を示します。

```cs title="AliceScript"
var v = type.Activate();
```

AliceScriptに組み込まれている型の一覧を示します。

|キーワード|型の名前|説明|
|---|---|---|
|[bool](../api/bool/index.md)|真理値型|`true`と`false`の二値を表します|
|[bytes](../api/bytes/index.md)|バイナリ型|バイナリデータ配列を表します|
|[number](../api/number/index.md)|数値型|倍精度浮動小数点数型を表します|
|[string](../api/string/index.md)|文字列型|テキストの一連のUTF-16コードの配列を表します|
|[array](../api/array/index.md)|配列型|何らかの型の配列を表します|
|[delegate](../api/delegate/index.md)|デリゲート型|匿名関数のような一連のステートメントのまとまりを表します|
|object|オブジェクト型|カスタムクラスや.NETのオブジェクトを表します|
|pointer|ポインター型|変数を指し示すポインターを表します|
|[none](../api/none/index.md)|none型|`null`の変数を表します|
|[continue](../api/alice/continue.md)|continue型|`continue`キーワードを表す型です|
|[break](../api/alice/break.md)|break型|`break`キーワードを表す型です|
