---
title: env_expand_environmentVariables
summary: 指定した文字列に埋め込まれている環境変数の名前を、その変数の値を表す文字列で置換し、置換後の文字列を返します。
date : 2023-08-09
---
### 定義
名前空間:Alice.Environment / アセンブリ : Losetta.Runtime.dll / サポート: Alice2.0

属性: 関数

#### env_expand_environmentVariables(string)

指定した文字列に埋め込まれている環境変数の名前を、その変数の値を表す文字列で置換し、置換後の文字列を返します。

```cs title="AliceScript"
namespace Alice.Environment;
public string env_expand_environmentVariables(string text);
```

|引数| |
|-|-|
|`text`|環境変数の名前を含む文字列。それぞれの環境変数は、パーセント文字（%）で囲まれます。|

|戻り値| |
|-|-|
|`string`|環境変数の名前をその値で置換した文字列|

### 説明
この関数は、指定した文字列に埋め込まれている環境変数の名前を、その変数の値を表す文字列で置換し、置換後の文字列全体を返します。

置換は、設定されている環境変数に対してのみ行われます。たとえば、`KEY`という環境変数に`my_secret_key`と設定されている場合、この関数は`KEY=%KEY%`という文字列を`KEY=my_secret_key`と返します。しかし、`KEY`という環境変数が設定されていない場合は、置換が実行されずにこの関数は`KEY=%KEY%`と返します。

この関数の戻り値は32KB以下となるように制限されています。
### 例
次の例では、`PATH`という環境変数の値を取得しています。

```cs title="AliceScript"
using Alice.Environment;

print(env_expand_environmentVariables("%PATH%"));
```