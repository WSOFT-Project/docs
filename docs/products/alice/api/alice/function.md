---
title: function
summary: 関数を定義します。
date : 2022-01-15
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数の区切りの空白をサポート、言語構造

指定された引数と処理を含む関数を定義します。関数とその定義について詳しく知るには、[基本:関数](../../../general/function)を参照してください。

```cs title="AliceScript"
namespace Alice;
void function(attribute=null string funcName)(params type args);
```

|引数| |
|-|-|
|`attribute=null`| 定義する関数に付与する属性。規定値はNullです。|
|`funcName`| 定義する関数の名前。|
|`params type args`| 定義する関数に付与する引数と型（必要な場合）|

### 例
次の例では、HelloWorldを表示する`SayHello`関数を定義しています。

```cs title="AliceScript"
function SayHello(){
    print("Hello,World");
}
```