---
title: Literal
long_title : リテラル
summary: 文字列または実数リテラルを表します。
date : 2023-08-07
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

属性: 言語構造

文字列または実数リテラルを表し、そのリテラルの値を返します。

```cs title="AliceScript"
namespace Alice.Parsing;
keyword variable Literal();
```

|戻り値| |
|-|-|
|`variable`|この関数が表す値。空のリテラルの場合`null`を返します。|

### 基本
リテラルとは、数値や文字列をコードに直接記述したものです。
たとえば、実数`10.0`や、`"Hello,World"`など、コードに直接書かれたで