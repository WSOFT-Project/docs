---
title: Any
long_title : array.Any
summary: 現在の配列に含まれるいずれかの要素が条件を満たしているかどうか判定します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript2.2

現在の配列に含まれるいずれかの要素が条件を満たしているかどうか判定します

```cs title="AliceScript"
namespace Alice;
bool Any(delegate condition);
```

|引数| |
|-|-|
|`condition`|現在の配列のいずれかの要素が満たす条件を表す式|

|戻り値| |
|-|-|
|`bool`| 現在の配列内のいずれかの要素が`condition`を満たせば`true`、それ以外の場合は`false`|

### 例
以下は、`1`、`2`、`3`がある配列に`2`以上の要素が含まれることを確認します。

```cs title="AliceScript"
var a = [1,2,3];
print(a.Any(x => x >= 2)); // 出力例 : true
```
