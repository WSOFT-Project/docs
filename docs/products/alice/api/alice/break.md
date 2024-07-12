---
title: break
long_title : break キーワード
summary: これを囲む反復文を終了させます。
date : 2023-08-07
mt_type: const
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.dll<br/>
ソースコード: [Constants.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/Constants.cs)

これを囲む`for`文、`foreach`文、`do`文、`while`文を終了させます。

```cs title="AliceScript"
namespace Alice;
public const break;
```

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 基本
`break`キーワードは、これを囲む`for`文、`foreach`文、`do`文、`while`文を終了させます。

`break`キーワードは定数としてAliceScriptに初めから定義されています。インタプリタは、`Break`型の変数がコード中に出現すると、無条件に反復分の外側に制御を移動します。

次の例では、`foreach`文を使用して`0`から`2`までをカウントします。

```cs title="AliceScript"
int[] numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
foreach (int number in numbers)
{
    if (number == 3)
    {
        break;
    }

    write("{0},",number);
}
print("END");
//出力例:0,1,2,END
```