---
title: reflect_get_member
summary: 現在のスクリプトから指定された識別子に対応する値を取得します。
date : 2024-10-03


mt_type: function
mv_overloads: 1
mt_title: reflect_get_member(string)
mt_summary: 現在のスクリプトから指定された識別子に対応する値を取得します。
---

### 定義

名前空間: Alice.Reflection<br/>
アセンブリ: Losetta.dll<br/>
ソースコード: [Alice.Reflection.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/Namespaces/Alice.Reflection.cs)

#### reflect_get_member(string)



現在のスクリプトから指定された識別子に対応する値を取得します。

```cs title="AliceScript"
namespace Alice.IO;
public variable reflect_get_member(string identifier);
```

|引数| |
|-|-|
|`identifier`|取得する値に対応する識別子|

|戻り値| |
|-|-|
|`variable`|識別子に対応する値。詳しくは、「説明」をご覧ください。|

|例外| |
|---|---|
|[COULDNT_FIND_VARIABLE](../../../exceptions/0x004.md)|識別子`identifier`は定義されていません|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

### 説明
この関数は、現在のスクリプトから指定された識別子に対応する値を取得します。
この関数は、識別子に対応する変数の値を返します。識別子に対応するメンバーが関数の場合は、その関数を表すデリゲートを返します。

`identifier`には、現在のスコープでアクセスできる識別子を指定してください。現在のスコープに`identifier`という名前のメンバーが存在しないか、アクセスできないか、デリゲートに変換できない関数の場合、「[COULDNT_FIND_VARIABLE](../../../exceptions/0x004.md)」例外が発生します。


### 例
次の例では、変数`x`を定義してから文字列でその値を取得します。

```cs
using Alice.Reflection;

var x = 1234;

print(reflect_get_member("x"));
//出力: 1234
```

次の例では、関数`func`を定義してから文字列でそのデリゲートを取得し、呼び出します。

```cs
using Alice.Reflection;

void func()
{
    print("Hello,World!");
}

reflect_get_member("func").Invoke();
//出力: Hello,World!
```
