---
title: Split
long_title: string.Split
summary: 現在の文字列を指定した区切り文字列で分割した配列を取得します
date : 2021-12-09
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### Split()

現在の文字列を一文字ずつに分割します

```cs title="AliceScript"
namespace Alice;
array Split();
```

|戻り値| |
|-|-|
|`array`|分割した文字列が格納されている配列|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

#### Split(string)

現在の文字列を指定した区切り文字列で分割した配列を取得します

```cs title="AliceScript"
namespace Alice;
public array Split(string separator);
```

|引数| |
|-|-|
|`separator`|分割に使用する区切り文字列|

|戻り値| |
|-|-|
|`array`|分割した文字列が格納されている配列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
以下は、Hello,Worldという文字列を一文字ずつに分割します。

```cs title="AliceScript"
var a = "Hello,World";
print(a.Split().Length); // 出力例 : 11
```
