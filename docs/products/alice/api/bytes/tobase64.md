---
title: ToBase64
long_title : bytes.ToBase64
summary: 現在のバイナリデータを、Base64でエンコードした文字列を取得します
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Bytes.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Bytes.cs)

#### ToBase64()

現在のバイナリデータを、Base64でエンコードした文字列を取得します

```cs title="AliceScript"
namespace Alice;
public string ToBase64();
```

|戻り値| |
|-|-|
|`string`| 現在のバイナリデータの内容と等価なBase64エンコードされた文字列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### ToBase64(number,number)

現在のバイナリデータのうち指定した区間を、Base64でエンコードした文字列を取得します

```cs title="AliceScript"
namespace Alice;
public string ToBase64(number offset, number length);
```

|引数| |
|-|-|
|`offset`|エンコードを実行する区間の現在のバイナリデータ内のインデックス|
|`length`|エンコードを実行する区間の長さ|

|戻り値| |
|-|-|
|`string`| 現在のバイナリデータのうち指定した区間の内容と等価なBase64エンコードされた文字列|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

#### ToBase64(bool)

現在のバイナリデータを、改行するかどうかを指定してBase64でエンコードした文字列を取得します

```cs title="AliceScript"
namespace Alice;
public string ToBase64(bool insertLineBrakes);
```

|引数| |
|-|-|
|`insertLineBrakes`|76文字ごとに改行文字を挿入する場合は`true`、挿入しない場合は`false`|

|戻り値| |
|-|-|
|`string`| 現在のバイナリデータの内容と等価なBase64エンコードされた文字列|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

#### ToBase64(number,number,bool)

現在のバイナリデータのうち指定した区間を、改行するかどうかを指定してBase64でエンコードした文字列を取得します

```cs title="AliceScript"
namespace Alice;
public string ToBase64(number offset, number length, bool insertLineBrakes);
```

|引数| |
|-|-|
|`offset`|エンコードを実行する区間の現在のバイナリデータ内のインデックス|
|`length`|エンコードを実行する区間の長さ|
|`insertLineBrakes`|76文字ごとに改行文字を挿入する場合は`true`、挿入しない場合は`false`|

|戻り値| |
|-|-|
|`string`| 現在のバイナリデータのうち指定した区間の内容と等価なBase64エンコードされた文字列|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 例
以下は、`variable`型の文字列表現を取得します

```cs title="AliceScript"
print(variable.ToString()); // 出力例 : variable
```
