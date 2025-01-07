---
title: string_format
summary: 文字列を複合書式指定子を使用して整形して出力します。
date : 2021-12-05
mt_type: function
mt_title: string_format(string,params variable)
mt_summary: 与えられた複合書式指定子`format`を使用して後続の変数を成形し、その結果を出力します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Utils.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Alice.Core.Utils.cs)


#### string_format(string,params variable)

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

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 例
次の例は、aとbの加算の結果を文字列表現で表すコードです。

```csharp title="AliceScript"
a = 1;
b = 2;
var text = string_format("a={0},b={1},a+b={2}",a,b,(a+b));
print(text);
//出力:a=1,b=2,a+b=3
```