---
title: CompareTo
summary: この文字列と指定した文字列を比較して、文字列を並べ替えたときにこの文字列が前にくるか、後ろにくるか、または同じであるかを表す整数を取得します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

この文字列と指定した文字列を比較して、文字列を並べ替えたときにこの文字列が前にくるか、後ろにくるか、または同じであるかを表す整数を取得します

```cs title="AliceScript"
namespace Alice;
number CompareTo(string item);
```
|引数| |
|-|-|
|`item`|この文字列と比較する文字列|

|戻り値| |
|-|-|
|`number`|前の場合は`-1`、同じ場合は`0`、後ろの場合は`1`|

### 例
以下は、"Hello,World"と`Hello`のどちらが先頭にくるかを取得します

```cs title="AliceScript"
var a = "Hello,World";
a.CompareTo("Hello");
```
