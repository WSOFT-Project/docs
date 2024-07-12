---
title: math_E
summary: 自然対数の底を表します。
mt_type: value
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

オイラー定数である、`e`で表される自然対数の底を表します。

```cs title="AliceScript"
namespace Alice.Math;
public readonly number math_E = 2.7182818284590452354;
```

### 値
|値| |
|-|-|
|`number`|オイラー定数として定められた値|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
次の例では、自然対数の底を取得します。

```cs title="AliceScript"
using Alice.Math;

print(math_e()); // 出力例 : 2.7182818284590452354
```
