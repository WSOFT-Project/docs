---
title: continue
long_title : continue キーワード
summary: これを囲む反復文を次のループに進めます。
date : 2023-08-07
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

属性: 定数、言語構造

これを囲む`for`文、`foreach`文、`do`文、`while`文を次のループに進めます。

```cs title="AliceScript"
namespace Alice;
const continue;
```

### 基本
`continue`キーワードは、現在の処理を中止して、これを囲む`for`文、`foreach`文、`do`文、`while`文を次のループに進めます。

`continue`キーワードは定数としてAliceScriptに初めから実装されています。インタプリタは、`Continue`型の変数がコード中に出現すると、無条件に次のループに進みます。

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