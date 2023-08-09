---
title: SkipWhile
long_title : array.SkipWhile
summary: 現在の配列内の先頭から指定された条件を満たす間要素を除いた配列を取得します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript2.2

現在の配列内の先頭から指定された条件を満たす間要素を除いた配列を取得します

```cs title="AliceScript"
class Alice.Array;
array SkipWhile(delegate condition);
```

|引数| |
|-|-|
|`condition`|条件を満たす間スキップする条件を表す式|

|戻り値| |
|-|-|
|`array`|先頭から`condition`を満たす間の要素を除いた配列|

### 例
以下は、`1`、`2`、`3`,`4`,`0`の先頭から`3`未満の要素を除いた配列を取得します。

```cs title="AliceScript"
var a = [1,2,3,4,0];
print(a.SkipWhile(item => item < 3)); // 出力例 : [3,4,0]
```

この例で注目されたいのは最後の`0`は取得される要素に含まれないことです。条件を満たさないすべての要素を取得したい場合は[Where](./where.md)メソッドを使用してくださ
たとえば、次のようにします。

```cs title="AliceScript"
var a = [1,2,3,4,0];
print(a.Where(item => !(item < 3)); // 出力例 : [3,4]
```

ちなみに、[OrderBy](./orderby.md)メソッドを使用して並べ替えた後でこのメソッドを使用するという方法もあります。

```cs title="AliceScript"
var a = [1,2,3,4,0];
print(a.OrderBy().SkipWhile(item => item < 3)); // 出力例 : [3,4]
```