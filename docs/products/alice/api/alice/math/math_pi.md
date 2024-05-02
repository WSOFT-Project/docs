---
title: math_pi
summary: 円周と直径の比率を表す円周率を表します。
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

`π`で表される円周と直径の比率を表す円周率を返します。

```cs title="AliceScript"
namespace Alice.Math;
public readonly number math_pi = 3.14159265358979323846;
```

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
次の例では、定数`π`を取得します。

```cs title="AliceScript"
using Alice.Math;

print(math_pi()); // 出力例 : 3.1415926535897931
```