---
title: switch
long_title : switch 文
summary: 特定の値と一致するかを判断することで実行する文を選択します。
date : 2023-08-10
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 言語構造

特定の値と一致するかを判断することで実行する文を選択します。

```cs title="AliceScript"
namespace Alice;
variable switch(variable value);
```

|引数| |
|-|-|
|`value`|一致を判断する値。|

|戻り値| |
|-|-|
|`variable`|実行した文の戻り値。|

### 基本
`switch`文は、特定の値と一致するかを判断することで実行する文を実行します。

次の例では、`0`から`2`までの値が入力された場合、それを漢字に変換し、それ以外の場合は`不明`として表示します。

```cs title="AliceScript"
var input = 0;

switch(input)
{
    case 0:
    {
        print("零");
    }
    case 1:
    {
        print("一");
    }
    case 2:
    {
        print("二");
    }
    default:
    {
        print("不明");
    }
}
```

`switch`文では、`case`が一致する最初のセクションを実行後、`switch`文を終了します。
よって、次の例では、`0-2`と`0-3`は表示されません。

```cs title="AliceScript"
var input = 0;

switch(input)
{
    case 0:
    {
        print("0-1");
    }
    case 0:
    {
        print("0-2");
    }
    default:
    {
        print("0-3");
    }
}
```
### case

特定の値が、`value`と位置するときに本文を実行します。これは、`switch`文中で使用されます。

```cs title="AliceScript"
namespace Alice;
command void case(variable value);
```

|引数| |
|-|-|
|`value`|一致を判断する値。|

`value`は、評価時に`switch`文で指定された値と等価だと評価される必要があります。

### default
特定の値が、他のどの`case`とも一致しない場合に本文を実行します。これは、`switch`文中で使用されます。

```cs title="AliceScript"
namespace Alice;
command void default();
```

`switch`文中で、他のどの`case`とも一致せず、かつ`default`ケースもない場合は、なにも実行されません。