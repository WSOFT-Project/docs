---
title: IsNormalized
long_title : string.IsNormalized
summary: 現在の文字列がUnicode正規形Cであるかを示す値を取得します
date : 2021-12-09
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

現在の文字列がUnicode正規形Cであるかを示す値を取得します

```cs title="AliceScript"
namespace Alice;
public readonly bool IsNormalized;
```

|値| |
|-|-|
|`bool`|現在の文字列が正規化されていれば`true`、それ以外の場合は`false`。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
以下は、"Hello,World"が正規化されているかを取得します

```cs title="AliceScript"
var a = "Hello,World";
print(a.Normalized);
```
