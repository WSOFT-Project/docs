---
title: string_format
summary: 文字列を複合書式指定子を使用して整形して出力します。
date : 2021-12-05
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScriptRC2

属性: 関数

与えられた複合書式指定子`format`を使用して後続の変数を成形し、その結果を出力します。

```csharp title="AliceScript"
namespace Alice;
public string string_format(string format,params variable args);
```

|引数| |
|-|-|
|`format`| 出力の成形に用いる複合書式指定子|
|`params args`| 出力に使用する変数|

|戻り値| |
|-|-|
|`string`| 整形された文字列|

### 例
次の例は、aとbの加算の結果を文字列表現で表すコードです。

```csharp title="AliceScript"
a = 1;
b = 2;
var text = string_format("a={0},b={1},a+b={2}",a,b,(a+b));
print(text);
//出力:a=1,b=2,a+b=3
```