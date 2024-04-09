---
title: 文字列演算子
summary: 文字列演算子は、文字列の結合や比較に用いる演算子です。
date : 2021-12-25
---

文字列演算子は、左右どちらかのオペランドが[文字列型](../../api/string/index.md)の場合に使用できます。

### 結合演算子 +
結合演算子`+`は、ふたつの文字列を連結した新しい文字列を作成します。

```cs title="JavaScript"
print("Jon" + "Smith"); //出力: JonSmith
print("I'm "+ 18); //出力: I'm 18
```

## 比較演算子

!!!warning "カルチャの考慮"
    文字列比較演算子では、並び替えの比較にカルチャを考慮せず、コードポイントごとに並べるだけで比較します。全角半角の混ざった文字列を比較する必要があるなど、カルチャを考慮して比較する必要がある場合は、[string.CompareTo](../../api/string/compareto.md)メソッドを使用してください。

### 小なり演算子 <
小なり演算子`<`は、並べ替えたときに左の文字列が右の文字列より前にくる場合に`true`を、それ以外の場合は`false`を返します。次に例を示します。

```cs title="AliceScript"
print("ABC" < "DEF");//出力: true
print("DEF" < "ABC");//出力: false
```

### 大なり演算子 >
大なり演算子`>`は、並べ替えたときに右の文字列が左の文字列より前にくる場合に`true`を、それ以外の場合は`false`を返します。次に例を示します。

```cs title="AliceScript"
print("ABC" > "DEF");//出力: false
print("DEF" > "ABC");//出力: true
```

### 小なりイコール演算子 =<
小なりイコール演算子`=<`は、並べ替えたときに左の文字列が右の文字列より前にくるか、同じ位置に並べられる場合に`true`を、それ以外の場合は`false`を返します。次に例を示します。

```cs title="AliceScript"
print("ABC" < "DEF");//出力: true
print("DEF" =< "DEF");//出力: true
```

### 大なり演算子 >=
大なり演算子`>`は、並べ替えたときに右の文字列が左の文字列より前にくるか、同じ位置に並べられる場合に`true`を、それ以外の場合は`false`を返します。次に例を示します。

```cs title="AliceScript"
print("ABC" > "DEF");//出力: false
print("DEF" >= "DEF");//出力: true
```