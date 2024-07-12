---
title: env_set_environmentVariable
summary: 現在のプロセスに格納されている環境変数を作成、変更、または削除します。
date : 2023-08-09
mt_type: function
mt_title: env_set_environmentVariable(string,string)
---
### 定義
名前空間: Alice.Environment<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Environment.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Environment.cs)

#### env_set_environmentVariable(string,string)

現在のプロセスに格納されている環境変数を作成、変更、または削除します。

```cs title="AliceScript"
namespace Alice.Environment;
public void env_set_environmentVariable(string name,string? value);
```

|引数| |
|-|-|
|`name`|作成、変更、または削除する環境変数の名前。|
|`value`|`name`に割り当てる値。|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0|
    |AliceSister|2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.9、0.10|

### 説明
この関数は、現在のプロセスに格納されている環境変数を作成、変更、または削除します。

実行環境がWindows以外の場合、この関数で環境変数を作成しても、読み込まれるネイティブライブラリなどには影響しません。

`value`が`null`または空の文字列ではない場合、`name`という名前の環境変数に`value`が設定されます。また、`name`という名前の環境変数が存在しない場合は作成されます。
環境変数は現在のプロセスの環境ブロックでのみ定義されるため、プロセスが終了した後は破棄されます。

`name`の先頭以外の場所にnull文字（`\0`）が含まれている場合、null文字の前の文字までを環境変数名とみなし、null文字以降のすべての文字は無視されます。また、`value`にnull文字が含まれている場合も同様で、null文字以降のすべての文字は無視されます。

`value`が`null`または空の文字列である場合、あるいはnull文字をひとつのみ含む場合、`name`という名前の環境変数は削除されます。この場合、`name`という名前の環境変数が存在しない場合、あるいは削除を実行できない場合でも例外は発生しません。
### 例
次の例では、`ENV`という環境変数を設定しています。

```cs title="AliceScript"
using Alice.Environment;

print(env_set_environmentVariable("ENV","DEBUG"));
```