---
title: Merge
long_title : array.Merge
summary: 現在の配列の末尾に値を追加した新しい配列を返します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の配列の末尾に値を追加した新しい配列を返します

```cs title="AliceScript"
class Alice.Array;
array Merge(params variable item);
```

|引数| |
|-|-|
|`item`|追加する変数。この引数は可変長個指定できます。|

|戻り値| |
|-|-|
|`array`|結合された配列|

現在の配列の末尾に配列を結合した新しい配列を返します。

```cs title="AliceScript"
class Alice.Array;
array Merge(params array ary);
```

|引数| |
|-|-|
|`ary`|末尾で結合する配列。この引数は可変長個指定できます。|

|戻り値| |
|-|-|
|`array`|結合された配列|


### 例
以下は、`1`、`2`、`3`がある配列に`4`、`5`、`6`を追加した新しい配列を作成します。

```cs title="AliceScript"
var a = [1,2,3];
var b = [4,5,6];
var c = a.Add(b);
print(c); // 出力例 : [1,2,3,4,5,6]
```
