---
title: print
summary: 文字列または、指定されたオブジェクトの文字列表現を標準出力に書き込み、続けて現在の行終端記号を書き込みます。
date : 2021-11-09
---
### 定義
名前空間:Alice / アセンブリ: AliceScript.dll / サポート: AliceScript1

属性: 関数の区切りの空白をサポート

与えられた変数`value`の文字列表現を出力します。

```cs title="AliceScript"
namespace Alice;
void print(variable value);
```

|引数| |
|-|-|
|`value`| 出力したい変数|

与えられた文字列`text`を出力します。

```cs title="AliceScript"
namespace Alice;
void print(string text);
```

|引数| |
|-|-|
|`text`| 出力したい文字列|

与えられた複合書式指定子`format`を使用して後続の変数を成形し、その結果を出力します。

```cs title="AliceScript"
namespace Alice;
void print(string format,params variable args);
```

|引数| |
|-|-|
|`format`| 出力の成形に用いる複合書式指定子|
|`params args`| 出力に使用する変数|

### 例
次の例は、Print関数を使用してHello,Worldを表示するコードです。

```cs title="AliceScript"
print("Hello,World");
```

関数の区切りの空白をサポートしていますから、丸括弧の代わりに空白を使用して記述することも可能です。

```cs title="AliceScript"
print "Hello,World";
```

次の例は、aとbの加算の結果を表示するコードです。

```cs title="AliceScript"
a = 1;
b = 2;
print("a+b="+(a+b));

//出力:a+b=3
```

上記の例は、複合書式指定子を使用して、次のように記述することも可能です。

```cs title="AliceScript"
a = 1;
b = 2;

print("a+b={0}",a+b);
```
