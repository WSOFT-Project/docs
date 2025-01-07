---
title: math_cbrt
summary: 指定された数値の立方根を返します。
mt_type: function
mt_title: math_cbrt(number)
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_cbrt(number)

指定された数値の立方根を返します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_cbrt(number value);
```

|引数| |
|-|-|
|`value`|立方根を求める対象の数値。|

|戻り値| |
|-|-|
|`number`|`value`の立方根。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 説明
LosettaとAliceScriptでのこの関数は、内部的にCランタイムを呼び出しています。
正確な結果および有効な値の範囲は、オペレーティングシステムやアーキテクチャによって異なる可能性があります。

AliceSisterでのこの関数は、[math_pow(value, 1/3)](./math_pow.md)と同じ動作をします。そのため、そのほかの実装と比較して精度が低下する可能性があります。
たとえば、手元の環境では100の立方根は以下のように出力されました。

```cs title="検証コード"
using Alice.Math;

var result = Math_Cbrt(100);
print(result);
```

実装|$\sqrt[3]{100}$の値
---|---
Losetta|4.641588833612779
AliceScript|4.641588833612779
AliceSister|4.64158883361278

この結果では、AliceSisterでのみ15桁目が丸められて出力されていることがわかります。(すべての環境で同一の結果が出るわけではありません。)

任意の値乗根を計算する場合には、[math_pow](./math_pow.md)を使用してください。

### 例
次の例では、$27$の立方根を取得します。

```cs title="AliceScript"
using Alice.Math;

var value = 27;
print(math_cbrt(value)); // 出力例 : 3
```