---
title: All
long_title : array.All
summary: 現在の配列に含まれるすべての要素が条件を満たしているかどうか判定します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript2.2

現在の配列に含まれるすべての要素が条件を満たしているかどうか判定します

```cs title="AliceScript"
class Alice.Array;
bool All(delegate condition);
```

|引数| |
|-|-|
|`condition`|現在の配列のすべての要素が満たす条件を表す式|

|戻り値| |
|-|-|
|`bool`| 現在の配列内のすべての要素が`condition`を満たせば`true`、それ以外の場合は`false`|

### 例
以下は、`1`、`2`、`3`がある配列のすべてが`0`以上であることを確認します。

```cs title="AliceScript"
var a = [1,2,3];
print(a.All(x => x > 0)); // 出力例 : true
```
