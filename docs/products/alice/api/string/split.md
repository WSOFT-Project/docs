---
title: Split
long_title: string.Split
summary: 現在の文字列を指定した区切り文字列で分割した配列を取得します
date : 2021-12-09
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の文字列を一文字ずつに分割します

```cs title="AliceScript"
namespace Alice;
array Split();
```

|戻り値| |
|-|-|
|`array`|分割した文字列が格納されている配列|

現在の文字列を指定した区切り文字列で分割した配列を取得します

```cs title="AliceScript"
namespace Alice;
array Split(string separator);
```

|引数| |
|-|-|
|`separator`|分割に使用する区切り文字列|

|戻り値| |
|-|-|
|`array`|分割した文字列が格納されている配列|

### 例
以下は、Hello,Worldという文字列を一文字ずつに分割します。

```cs title="AliceScript"
var a = "Hello,World";
print(a.Split().Length); // 出力例 : 11
```
