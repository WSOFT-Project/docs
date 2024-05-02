---
title: continue
long_title : continue キーワード
summary: これを囲む反復文を次のループに進めます。
date : 2023-08-07
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.dll<br/>
ソースコード: [Constants.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/Constants.cs)

これを囲む`for`文、`foreach`文、`do`文、`while`文を次のループに進めます。

```cs title="AliceScript"
namespace Alice;
public const continue;
```

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 基本
`continue`キーワードは、現在の処理を中止して、これを囲む`for`文、`foreach`文、`do`文、`while`文を次のループに進めます。

`continue`キーワードは定数としてAliceScriptに初めから定義されています。インタプリタは、`Continue`型の変数がコード中に出現すると、無条件に次のループに進みます。

次の例では、`foreach`文を使用して`3`を飛ばして`0`から`4`までをカウントします。

```cs title="AliceScript"
int[] numbers = [0, 1, 2, 3, 4];
foreach (int number in numbers)
{
    if (number == 3)
    {
        continue;
    }

    write("{0},",number);
}
//出力例:0,1,2,4,
```