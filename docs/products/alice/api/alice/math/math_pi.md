---
title: math_pi
summary: 円周と直径の比率を表す円周率を表します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 定数

`π`で表される円周と直径の比率を表す円周率を返します。

```cs title="AliceScript"
namespace Alice.Math;
public readonly number math_pi = 3.14159265358979323846;
```

### 例
次の例では、定数`π`を取得します。

```cs title="AliceScript"
using Alice.Math;

print(math_pi()); // 出力例 : 3.1415926535897931
```