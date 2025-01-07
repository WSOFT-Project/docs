---
title: Constructor
long_title : Array Constructor
summary: 新しい配列を作成します

mt_type: ctor
mt_title: Array()
mt_summary: 空で、適当な容量を持つ配列を作成します。
mt_title: Array(type)
mt_summary: 空で、適当な容量を持ち特定の型のみを要素に持てる配列を作成します。
mt_title: Array(number)
mt_summary: 空で、指定した容量を持つ配列を作成します。
mt_title: Array(array)
mt_summary: 指定した配列の要素のうち全てを含む新しい配列を作成します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)



#### Array()

空で、適当な容量を持つ配列を作成します。

```cs title="AliceScript"
class Alice.Array;
public Array();
```

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

#### Array(type)

空で、適当な容量を持ち特定の型のみを要素に持てる配列を作成します。

```cs title="AliceScript"
class Alice.Array;
public Array(Type type);
```

|引数| |
|-|-|
|`type`|要素に持てる配列を制限する型|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

#### Array(number)

空で、指定した容量を持つ配列を作成します。

```cs title="AliceScript"
class Alice.Array;
public Array(number capacity);
```

|引数| |
|-|-|
|`capacity`|配列の容量|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

#### Array(array)

指定した配列の要素のうち全てを含む新しい配列を作成します。

```cs title="AliceScript"
class Alice.Array;
public Array(array source);
```

|引数| |
|-|-|
|`source`|配列に追加した要素を全て含む配列|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|
