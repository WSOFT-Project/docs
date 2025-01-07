---
title: SkipWhile
long_title : array.SkipWhile
summary: 現在の配列内の先頭から指定された条件を満たす間要素を除いた配列を取得します
mt_type: method
mt_title: SkipWhile(delegate)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### SkipWhile(delegate)

現在の配列内の先頭から指定された条件を満たす間要素を除いた配列を取得します

```cs title="AliceScript"
class Alice.Array;
public array SkipWhile(delegate condition);
```

|引数| |
|-|-|
|`condition`|条件を満たす間スキップする条件を表す式|

|戻り値| |
|-|-|
|`array`|先頭から`condition`を満たす間の要素を除いた配列|

???note "対応: Alice2.2以降"
    |対応||
    |---|---|
    |AliceScript|2.2、2.3、3.0、4|
    |AliceSister|2.2、2.3、3.0、4|
    |Losetta|0.9、0.10、0.11|

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