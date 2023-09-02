---
title: return
long_title : return キーワード
summary: 現在の関数の実行を終了し、呼び出し元に制御と関数の結果を返します。
date : 2023-08-07
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

属性: 定数、言語構造

現在の関数の実行を終了し、呼び出し元に制御を返します。

```cs title="AliceScript"
namespace Alice;
command void return;

現在の関数の実行を終了し、呼び出し元に制御と関数の結果を返します。

```cs title="AliceScript"
namespace Alice;
command void return(variable o);
```

|引数| |
|-|-|
|`o`| 関数の結果|

### 基本
`return`キーワードは、現在の関数の実行を終了し、呼び出し元に制御と関数の結果（存在する場合）を返します。
また、`return`キーワードは関数を早期に終了させる手段としても用いられます。関数で`return`キーワードが呼び出されなかった場合は、関数の最後の文が実行された後に終了します。

トップレベルのスクリプトで`return`キーワードを実行することで、現在のプログラムを終了させることもできます。

次の例では、引数が`3`以上であった場合には、`Hello,World`を表示しません。

```cs title="AliceScript"
function test(number num)
{
    if(num > 3)
    {
        return;
    }
    print("Hello,World");
}
```