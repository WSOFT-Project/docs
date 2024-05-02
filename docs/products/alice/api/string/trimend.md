---
title: TrimEnd
long_title: string.TrimEnd
summary: 現在の文字列から指定した文字列が末尾に現れる箇所をすべて削除した文字列を取得します
date : 2021-12-09
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### TrimEnd()

現在の文字列から末尾にある空白文字をすべて削除した文字列を取得します

```cs title="AliceScript"
namespace Alice;
public string TrimEnd();
```

|戻り値| |
|-|-|
|`string`|実行後の文字列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### TrimEnd(params string)

現在の文字列から指定した文字列が末尾に現れる箇所をすべて削除した文字列を取得します

```cs title="AliceScript"
namespace Alice;
public string TrimEnd(params string item);
```

|引数| |
|-|-|
|`item`|削除する文字列。この引数は可変長個指定できます。|

|戻り値| |
|-|-|
|`string`|実行後の文字列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
以下は、" Hello,World "から空白文字を削除します。

```cs title="AliceScript"
var a = " Hello,World ";
print(a.Trim()); // 出力例 : Hello,World
```
