---
title: math_tau
summary: 円周と半径の比率を表す円定数を表します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

1回のターンのラジアン数である、`τ`で表される円周と半径の比率を表す円定数を返します。

```cs title="AliceScript"
namespace Alice.Math;
number math_tau();
```

|戻り値| |
|-|-|
|`number`|円周と半径の比率を表す円定数|

### 説明
`τ`は、一般に円周率`π`の二倍です。AliceScriptでは`6.2831853071795862`が定数として定義されています。

### 例
次の例では、定数`τ`を取得します。

```cs title="AliceScript"
using Alice.Math;

print(math_tau()); // 出力例 : 6.2831853071795862
```