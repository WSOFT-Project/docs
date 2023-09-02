---
title: Sort
long_title : array.Sort
summary: 現在の配列を規定の方法で並び替えます
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の配列を規定の方法で並び替えます

```cs title="AliceScript"
class Alice.Array;
void Sort();
```

### 例
以下は、`3`、`2`、`1`と並ぶ配列を昇順にソートします。

```cs title="AliceScript"
var a = [3,2,1];
a.Sort();
print(a); // 出力例 : [3,2,1]
```
