---
title: Format
long_title : string.Format
summary: 指定された値を使用して現在の文字列を複合書式指定子としてフォーマットした文字列を取得します
date : 2021-12-09
mt_type: method
mt_title: Format(params variable)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### Format(params variable)

指定された値を使用して現在の文字列を複合書式指定子としてフォーマットした文字列を取得します

```cs title="AliceScript"
namespace Alice;
public string Format(params variable item);
```

|引数| |
|-|-|
|`item`|フォーマットする値|

|戻り値| |
|-|-|
|`string`|フォーマットされた文字列|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
以下は、複合書式指定を使用してHello,Worldを作成します。

```cs title="AliceScript"
var a = "{0},{1}";
print(a.Format("Hello","World")); // 出力例 : Hello,World
```
