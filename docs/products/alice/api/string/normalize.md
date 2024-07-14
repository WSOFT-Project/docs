---
title: Normalize
long_title : string.Normalize
summary: 同じ文字を表すコードポイントのすべての並びを共通の正規化された形式に文字列を変換した新しい文字列を取得します
date : 2024-04-29
mt_type: method
mt_title: Normalize()
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### Normalize()

同じ文字を表すコードポイントのすべての並びを正規化した新しい文字列を取得します

```cs title="AliceScript"
namespace Alice;
public string Normalize();
```

|戻り値| |
|-|-|
|`string`|正規化された文字列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明

まず、一部のUnicode符号点(の組み合わせ)は、同じ文字を表しているため、通常同等とみなされます。
たとえば、"ắ"という文字には以下の3通りの表現方法があります。

- `\u1EAF` ("ラテン語小文字AとBreve and Acute")
- `\u0103\u0301` ("ラテン語の小文字AとBREVE"と"急性アクセント")
- `\u0061\u0306\u0301` ("ラテン語の小文字A"と"結合文字のBREVE"と"急性アクセント")

しかし、文字列に別の符号点として含まれるためAliceScriptの文字列比較では、これらの符号点を含む文字列は等しくないとみなされます。文字列比較を実行する前に、プログラムはこれらの文字列を正規化して一定の符号点に分解する必要があります。

この関数を使用すると複合文字は、それをより基本的な符号点に置き換えます。**完全分解**とは、文字列内の文字がこれ以上分解できなくなるまで、再帰的に置き換えます。

**互換分解**を使うと、書式設定情報が失われる代わりに、Unicodeの互換性を維持できます。
**正規分解**では、書式設定が維持されます。

2つの文字列を完全正規分解した結果が同一である場合、それらの文字列は正規等価であるとみなされます。同様に、完全互換分解の結果が同一である場合、それらの文字列は互換等価であるとみなされます。

この関数は、文字列を完全標準分解を使用してUnicode正規化した後、可能な場合は、シーケンスを主要な複合文字で置換します。

文字列の正規化および分解、透過性について詳しく知るには、[Unicode Standard Annex #15: Unicode normalization Forms](https://unicode.org/reports/tr15/)をご覧ください。

この関数は無効なUnicode表現を含む場合に例外を返します。

### 例
以下は、"Hello,World"を正規化します。

```cs title="AliceScript"
var a = "Hello,World";
a.Normalize();
```
