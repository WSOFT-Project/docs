---
title: math_tau
summary: 円周と半径の比率を表す円定数を表します。
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

1回のターンのラジアン数である、`τ`で表される円周と半径の比率を表す円定数を返します。

```cs title="AliceScript"
namespace Alice.Math;
public readonly number math_tau = 6.283185307179586476925;
```

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
`τ`は、一般に円周率`π`の二倍です。AliceScriptでは`6.2831853071795862`が定数として定義されています。

### 例
次の例では、定数`τ`を取得します。

```cs title="AliceScript"
using Alice.Math;

print(math_tau()); // 出力例 : 6.2831853071795862
```