---
title: string_format
summary: 文字列を複合書式指定子を使用して整形して出力します。
---
### 定義
アセンブリ：WSOFTScript.dll,WSOFTScript.X.dll

与えられた複合書式指定子`format`を使用して後続の変数を成形し、その結果を出力します。

```csharp title="WSOFTScript"
string string_format(string format,params variable args);
```

|引数| |
|-|-|
|`format`| 出力の成形に用いる複合書式指定子|
|`params args`| 出力に使用する変数|

|戻り値| |
|-|-|
|`string`| 整形された文字列|

### 例
次の例は、aとbの値をそれぞれ表示します。

```csharp title="WSOFTScript"
a = 1;
b = 2;
text = string_format("a={0},b={1}",a,b);
print(text);
```