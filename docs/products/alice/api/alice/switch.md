---
title: switch
long_title : switch 文
summary: 特定の値と一致するかを判断することで実行する文を選択します。
date : 2023-08-10
mt_type: function
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Flow.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Alice.Core.Flow.cs)


特定の値と一致するかを判断することで実行する文を選択します。

```cs title="AliceScript"
namespace Alice;
public variable switch(variable value)
{
    //...
}
```

|引数| |
|-|-|
|`value`|一致を判断する値。|

|戻り値| |
|-|-|
|`variable`|実行した文の戻り値。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

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
        break;
    }
    case 1:
    {
        print("一");
        break;
    }
    case 2:
    {
        print("二");
        break;
    }
    default:
    {
        print("不明");
        break;
    }
}
```

`switch`文では、`case`が一致する最初のセクションを実行後、`break`または`return`ステートメントを使って`switch`文を終了する必要があります。
よって、次の例では、`0-2`と`0-3`は表示されません。

```cs title="AliceScript"
var input = 0;

switch(input)
{
    case 0:
    {
        print("0-1");
        break;
    }
    case 0:
    {
        print("0-2");
        break;
    }
    default:
    {
        print("0-3");
        return;
    }
}
```

ただし、コード中に`#fall_through enable`を記述し、`case`文を`break`で抜けない場合フォールスルーが起こり、一致箇所より下のコードがすべて実行されます。このため、次の例では、`1-1`、`1-2`、`1-3`のすべてが表示されます。

```cs title="AliceScript"
#fall_through enable

var input = 0;

switch(input)
{
    case 0:
    {
        print("1-1");
        break;
    }
    case 0:
    {
        print("1-2");
        break;
    }
    default:
    {
        print("1-3");
        return;
    }
}
```
### case

特定の値が、`value`と位置するときに本文を実行します。これは、`switch`文中で使用されます。

```cs title="AliceScript"
namespace Alice;
.command void case(variable value);
```

|引数| |
|-|-|
|`value`|一致を判断する値。|

`value`は、評価時に`switch`文で指定された値と等価だと評価される必要があります。

### default
特定の値が、他のどの`case`とも一致しない場合に本文を実行します。これは、`switch`文中で使用されます。

```cs title="AliceScript"
namespace Alice;
.command void default();
```

`switch`文中で、他のどの`case`とも一致せず、かつ`default`ケースもない場合は、なにも実行されません。