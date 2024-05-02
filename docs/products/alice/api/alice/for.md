---
title: for
long_title : for 文
summary: 式が真と評価される間、本文を繰り返し実行します。
date : 2023-08-07
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Flow.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Alice.Core.Flow.cs)

指定した論理式が`true`と評価される間、本文を繰り返し実行します。

```cs title="AliceScript"
namespace Alice;
public void for(Expression init; Expression condition; Expression loop)
{
    //...
}
```

|引数| |
|-|-|
|`init`| ループ変数の初期化式。|
|`condition`| ループを継続するかどうかを表す条件式。|
|`loop`| ループ時に処理される反復式。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 基本
`for`文は、波かっこで囲まれたコード（これを、本文と呼びます。）を指定回数の間繰り返し実行する場合によく使用されます。
次の例では、カウンターが3未満の間（つまり、0から2の3回）本文を実行します。

```cs title="AliceScript"
for(var i = 0; i < 3; i++)
{
    write(i);
}
//出力例:012
```
この例を使って説明すると、

- `var i = 0`は、ループに入る前に一度のみ実行される**初期化式**です。これは通常、ループ変数を宣言して初期化するのに使用されます。ここで宣言した変数に、`for`式の外部からアクセスすることはできません。
- `i < 3`は、ループを継続する必要があるかを決定する**条件式**です。この式が`true`と評価された場合、ループを継続し、それ以外の場合はループが終了します。条件式は必ず、[Bool](../bool/index.md)型の値を返す論理式にする必要があります。
- `i++`は、本文が実行されるたびに行われる処理の**反復式**です。この例では、`i`をインクリメントしています。

初期化式でループ変数を宣言しない場合、それ以前に宣言されている変数を使用することもできます。また、これらの要素は省略できます。次に例を示します。

```cs title="AliceScript"
var i = 0;
for(;i < 0; i++)
{
    write(i);
}
//出力例:012
```

`for`文では、初期化式と反復式は省略できますが、**条件式は省略できません**。
初期化式と反復式を省略したとき、[while](./while.md)文と同じ意味になります。
たとえば、以下のコードは無限ループになります。

```cs title="AliceScript"
for(; true; )
{
    //...
}
```

要素の過不足があった場合には、[0x029](../../general/exceptions/index.md)エラーが、「for文はfor(init; condition; loopStatement;)の形である必要があります」というメッセージで発生します。

### 例
次の例では、0から9までの数字をひとつずつ表示します。

```cs title="AliceScript"
for(numer n = 0; n < 10; n++)
{
    print(n);
}
```