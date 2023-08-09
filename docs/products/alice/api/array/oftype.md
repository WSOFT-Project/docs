---
title: OfType
long_title : array.OfType
summary: 現在の配列から指定された型の要素のみを取り出します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript2.2

現在の配列から指定された型の要素のみを取り出します

```cs title="AliceScript"
class Alice.Array;
array OfType(type target);
```

|引数| |
|-|-|
|`target`|取り出す対象の型を表す`type`オブジェクト|

|戻り値| |
|-|-|
|`array`|`target`が表す型で構成された配列|

### 例
以下は、`1`、`2`、`3`,`"4"`がある配列から数字のみを取り出します。

```cs title="AliceScript"
var a = [1,2,3,"4"];
print(a.OfType(number)); // 出力例 : [1,2,3]
```
