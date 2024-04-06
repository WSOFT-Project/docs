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

## 型キャスト演算子
型キャスト演算子`as`は、左辺の値を右辺の表す型に変換します。右辺は[Typeオブジェクト](../api/alice/interpreter/type/index.md)である必要があり、型変換に失敗した場合は`null`を返します。次に例を示します。

```cs title="AliceScript"
number num = 12345;
print(num.type);//出力:NUMBER
var str = num as string;
print(str.type);//出力:STRING
```