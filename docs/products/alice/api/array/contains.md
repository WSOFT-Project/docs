---
title: Contains
long_title : array.Contains
summary: 現在の配列内に指定された値が存在するかを示す値を取得します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の配列内に指定された値が存在するかを示す値を取得します

```cs title="AliceScript"
namespace Alice;
bool Contains(variable item);
```

|引数| |
|-|-|
|`item`|存在を確認する値|

|戻り値| |
|-|-|
|`bool`| 現在の配列内に要素が存在すれば`true`、それ以外の場合は`false`|

### 例
以下は、`1`、`2`、`3`がある配列に`3`があるかを示す値を取得します。

```cs title="AliceScript"
var a = [1,2,3];
print(a.Contains(3)); // 出力例 : true
```
