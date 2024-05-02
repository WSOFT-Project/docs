---
title: CompareTo
long_title : string.CompareTo
summary: この文字列と指定した文字列を比較して、文字列を並べ替えたときにこの文字列が前にくるか、後ろにくるか、または同じであるかを表す整数を取得します
date : 2021-12-09
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### CompareTo(string)

この文字列と指定した文字列を比較して、文字列を並べ替えたときにこの文字列が前にくるか、後ろにくるか、または同じであるかを表す整数を取得します

```cs title="AliceScript"
namespace Alice;
public number CompareTo(string item);
```

|引数| |
|-|-|
|`item`|この文字列と比較する文字列|

|戻り値| |
|-|-|
|`number`|前の場合は`-1`、同じ場合は`0`、後ろの場合は`1`|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
以下は、"Hello,World"と`Hello`のどちらが先頭にくるかを取得します

```cs title="AliceScript"
var a = "Hello,World";
a.CompareTo("Hello");
```
