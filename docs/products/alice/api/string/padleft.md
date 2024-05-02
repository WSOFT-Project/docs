---
title: PadLeft
long_title : string.PadLeft
summary: 指定された文字数になるまで左側に指定された文字列を埋め込むことで、この文字列を右寄せした新しい文字列を取得します
date : 2021-12-09
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### PadLeft(number,string)

指定された文字数になるまで左側に指定された文字列を埋め込むことで、この文字列を右寄せした新しい文字列を取得します

```cs title="AliceScript"
namespace Alice;
public string PadLeft(number totalWidth, string padding = " ");
```

|引数| |
|-|-|
|`totalWidth`|結果の文字列の文字数|
|`padding`|埋め込む文字を含む文字列。この文字列の0番目の文字が使用されます。|

|戻り値| |
|-|-|
|`string`|実行した結果の文字列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
以下は、"Hello,World"を20文字になるように右寄せします。

```cs title="AliceScript"
var a = "Hello,World";
a.PadLeft(20);
```
