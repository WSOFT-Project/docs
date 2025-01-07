---
title: math_epsilon
summary: 0より大きい最小の値を表します
mt_type: value
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

0より大きい最小の値を表します。

```cs title="AliceScript"
namespace Alice.Math;
public readonly number math_epsilon = 4.94065645841247E-324;
```

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0、4|
    |AliceSister|3.0、4|
    |Losetta|0.10、0.11|

### 説明
この定数の値は、`0`と比較したときに`false`が返る最小の正の値を返します。

### 例
次の例では、`math_epsilon`と`0`を比較しています。

```cs title="AliceScript"
using Alice.Math;

print(math_epsilon == 0); // 出力例 : false
```