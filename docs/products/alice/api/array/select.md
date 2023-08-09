---
title: Select
long_title : array.Select
summary: 現在の配列の各要素を新しい配列に射影します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript2.2

現在の配列の各要素を新しい配列に射影します

```cs title="AliceScript"
class Alice.Array;
array Select(delegate selector);
```

|引数| |
|-|-|
|`selector`|要素の射影を取得するための変換関数|

|戻り値| |
|-|-|
|`array`|`selector`で変換された現在の配列の射影|

### 例
以下は、`1`、`2`、`3`,`4`の2で割った余りを取得します。

```cs title="AliceScript"
var a = [1,2,3,4];
print(a.Select(item => item % 2)); // 出力例 : [1, 0, 1, 0]
```
