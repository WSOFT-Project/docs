---
title: Trim
long_title: string.Trim
summary: 現在の文字列から指定した文字列が先頭および末尾に現れる箇所をすべて削除した文字列を取得します。
date : 2021-12-09
mt_type: method
mt_title: Trim()
mt_summary: 現在の文字列から先頭および末尾にある空白文字をすべて削除した文字列を取得します。
mt_title: Trim(params string)
mt_summary: 現在の文字列から指定した文字列が先頭および末尾に現れる箇所をすべて削除した文字列を取得します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### Trim()

現在の文字列から先頭および末尾にある空白文字をすべて削除した文字列を取得します。

```cs title="AliceScript"
namespace Alice;
public string Trim();
```

|戻り値| |
|-|-|
|`string`|実行後の文字列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

#### Trim(params string)

現在の文字列から指定した文字列が先頭および末尾に現れる箇所をすべて削除した文字列を取得します。

```cs title="AliceScript"
namespace Alice;
public string Trim(params string item);
```

|引数| |
|-|-|
|`item`|削除する文字列。この引数は複数個指定できます。|

|戻り値| |
|-|-|
|`string`|実行後の文字列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 説明
この関数は、文字列の先頭と末尾から`item`に含まれる文字をすべて削除します。この操作は、`item`に含まれていない文字が検出されると停止します。
例えば、`---abc---xyz----`という文字列に対してこの関数を使用した場合、`abc---xyz`を返します。

### 例
以下は、" Hello,World "から前後の空白文字を削除します。

```cs title="AliceScript"
var a = " Hello,World ";
print(a.Trim()); // 出力例 : Hello,World
```

次の例では、文の先頭と末尾のダブルクオーテーションを削除します。

```cs title="AliceScript"
var a = '"Hello,World"';
print(a.Trim('"')); // 出力例 : Hello,World
```
