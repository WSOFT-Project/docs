---
title: Join
long_title : string.Join
summary: 指定された区切り文字を使用して文字を連結します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

指定された区切り文字を使用して文字を連結します

```cs title="AliceScript"
namespace Alice;
string Join(string split, params string item);
```

|引数| |
|-|-|
|`split`|区切り文字|
|`item`|連結する値|

|戻り値| |
|-|-|
|`string`|連結された文字列。ただし、`item`の要素が0個の場合は空の文字列|

### 例
以下は、Joinメソッドの使用例です。

```cs title="AliceScript"
var fruits = ["apple", "orange", "grape"];
string str = fruits.Joint(",");

print(str);
//出力: apple,orange,grape
```
