---
title: Distinct
long_title : array.Distinct
summary: 現在の配列内から重複する要素を除いた新しい配列を取得します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript2.2

現在の配列内から重複する要素を除いた新しい配列を取得します

```cs title="AliceScript"
namespace Alice;
array Distinct();
```

|戻り値| |
|-|-|
|`array`|重複しないすべての要素を含む配列|

### 例
以下は、`1`、`2`、`3`,`3`,`4`から重複しないすべての要素を取り出します。

```cs title="AliceScript"
var a = [1,2,3,3,4];
print(a.Distinct()); // 出力例 : [1,2,3,4]
```
