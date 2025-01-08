---
title: IsEmptyOrWhiteSpace
long_title: string.IsEmptyOrWhiteSpace
summary: 現在の文字列が空か、あるいは空白文字のみであるかどうかを示す値を取得します
date : 2021-12-09
mt_type: method
mt_title: IsEmptyOrWhiteSpace()
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### IsEmptyOrWhiteSpace()

現在の文字列が空か、あるいは空白文字のみであるかどうかを示す値を取得します

```cs title="AliceScript"
namespace Alice;
public bool IsEmptyOrWhiteSpace();
```

|戻り値| |
|-|-|
|`bool`|現在の文字列が空か、あるいは空白文字のみであれば`true`、それ以外の場合は`false`。|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 例
以下は、Hello,Worldが空でないことを確認します。

```cs title="AliceScript"
var a = "Hello,World";
print(a.IsEmptyOrWhiteSpace()); 
```
