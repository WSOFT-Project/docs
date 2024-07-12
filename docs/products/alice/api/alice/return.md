---
title: return
long_title : return キーワード
summary: 現在の関数の実行を終了し、呼び出し元に制御と関数の結果を返します。
date : 2023-08-07
mt_type: function
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Flow.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Alice.Core.Flow.cs)


現在の関数の実行を終了し、呼び出し元に制御を返します。

```cs title="AliceScript"
namespace Alice;
public .command void return();
```

現在の関数の実行を終了し、呼び出し元に制御と関数の結果を返します。

```cs title="AliceScript"
namespace Alice;
public .command void return(variable o);
```

|引数| |
|-|-|
|`o`| 関数の結果|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

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