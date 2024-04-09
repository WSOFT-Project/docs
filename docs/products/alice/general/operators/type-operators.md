---
title: 型演算子
summary: 型演算子は、ある型の値に対して型テストまたはキャストを行います。
date : 2021-12-25
---

## 型テスト演算子 is
型テスト演算子`is`は、左辺の値の型が右辺の値の表す型と一致するか、右辺の値の型と一致する場合は`true`を、それ以外の場合は`false`を返します。次に例を示します。

```cs title="AliceScript"
string str = "Hello,World";
if(str is string)
{
  print(str);
}
//出力:Hello,World
```

また、型が一致しない場合に`true`を返す`is not`演算子もあります。
次に例を示します。

```cs title="AliceScript"
string str = "Hello,World";
if(str is not number)
{
  print(str);
}
//出力:Hello,World
```

## 型キャスト演算子 as
型キャスト演算子`as`は、左辺の値を右辺の表す型に変換します。右辺は[Typeオブジェクト](../api/alice/interpreter/type/index.md)である必要があり、型変換に失敗した場合は`null`を返します。次に例を示します。

```cs title="AliceScript"
number num = 12345;
print(num.type);//出力:NUMBER
var str = num as string;
print(str.type);//出力:STRING
```

## Null合体演算子 ??
Null合体演算子`??`は、左の値が`null`ではない場合にその値を返し、それ以外の場合は右の値を評価し返します。次に例を示します。

```cs title="AliceScript"
string? v = "ABC";
print(v ?? "Hello,World");//出力:ABC
v = null;
print(v ?? "Hello,World");//出力:Hello,World
```

## Null合体代入演算子 ??=
Null合体演算子`??=`は、左の値が`null`の場合に左の変数に右の値を代入します。

```cs title="AliceScript"
string? v = null;
v ??= "Hello";
print(v);//出力: Hello
```
