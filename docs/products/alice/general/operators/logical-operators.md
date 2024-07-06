---
title: 論理演算子
summary: 論理演算子は、bool型の値を使って論理演算を行います。
date : 2021-12-25
---

論理演算子は、[bool型](../../api/bool/index.md)の値同士で使用できます。数値型の値でも`&`、`|`、`^`演算子を使用することがありますが、これについては[ビット演算子](./bitwise-operators.md)をご覧ください。

### 論理否定演算子 !
論理否定演算子`!`が先頭についたリテラルはその値の論理否定となります。次に例を示します。

```cs title="AliceScript"
print(!true); //出力:false
print(!!true);//出力:true
```

### 論理積演算子 &
論理積(AND)演算子`&`は、左右の値の両方が`true`と評価された場合のみ`true`を返し、それ以外の場合`false`を返します。

`&`演算子は常に両方のオペランドを評価する一方、`&&`演算子は左辺が`false`と評価された時点で右辺は評価されません。

```cs title="AliceScript"
print(true & true); //出力:true
print(true & false);//出力:false
```

次に、この論理演算の真理値表を示します。

|`x`|`y`|`x & y`|
|---|---|---|
|`true`|`true`|`true`|
|`true`|`false`|`false`|
|`false`|`true`|`false`|
|`false`|`false`|`false`|

### 論理和演算子 |
論理和(OR)演算子`|`は、左右の値の少なくとも一方が`true`と評価された場合に`true`を返し、それ以外の場合に`false`を返します。

`|`演算子は常に両方のオペランドを評価する一方、`||`演算子は左辺が`true`と評価された時点で右辺は評価されません。

```cs title="AliceScript"
print(true | false); //出力:true
print(false | false);//出力:false
```

次に、この論理演算の真理値表を示します。

|`x`|`y`|`x \| y`|
|---|---|---|
|`true`|`true`|`true`|
|`true`|`false`|`true`|
|`false`|`true`|`true`|
|`false`|`false`|`false`|

### 排他的論理和演算子 ^
排他的論理和(XOR)演算子`^`は、左右の値が異なると評価された場合(すなわち、片方が`true`と評価されたならばもう片方が`false`と評価される場合)に`true`を返し、それ以外の場合は`false`を返します。つまりこの演算は`bool`に対する`!=`と同じ結果となります。次に例を示します。

```cs title="AliceScript"
print(true ^ false);//出力:true
print(true ^ true); //出力:false
```

次に、この論理演算の真理値表を示します。

|`x`|`y`|`x ^ y`|
|---|---|---|
|`true`|`true`|`false`|
|`true`|`false`|`true`|
|`false`|`true`|`true`|
|`false`|`false`|`false`|

### 条件付き論理積演算子 &&
条件付き論理積(AND)演算子`&&`は、左右の値の両方が`true`と評価された場合のみ`true`を返し、それ以外の場合`false`を返します。

`&`演算子は常に両方のオペランドを評価する一方、`&&`演算子は左辺が`false`と評価された時点で右辺は評価されません。

```cs title="AliceScript"
print(true && true); //出力:true
print(true && false);//出力:false
```

次に、この論理演算の真理値表を示します。

|`x`|`y`|`x && y`|
|---|---|---|
|`true`|`true`|`true`|
|`true`|`false`|`false`|
|`false`|`true`|`false`|
|`false`|`false`|`false`|

### 条件付き論理和演算子 ||
条件付き論理和(OR)演算子`||`は、左右の値の少なくとも一方が`true`と評価された場合に`true`を返し、それ以外の場合に`false`を返します。

`|`演算子は常に両方のオペランドを評価する一方、`||`演算子は左辺が`true`と評価された時点で右辺は評価されません。

```cs title="AliceScript"
print(true || false); //出力:true
print(false || false);//出力:false
```

次に、この論理演算の真理値表を示します。

|`x`|`y`|`x \| y`|
|---|---|---|
|`true`|`true`|`true`|
|`true`|`false`|`true`|
|`false`|`true`|`true`|
|`false`|`false`|`false`|
