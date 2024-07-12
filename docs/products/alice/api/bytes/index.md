---
title: bytes
summary: bytes型は、バイナリデータ配列を表します
mt_type: type
---
### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.dll

bytes型は、バイナリデータ配列を表します。bytes型は比較、等値演算子をサポートしています。

bytes型の既定値は`null`です。この型は`null`をとり得ます。この型の型指定修飾子は`bytes`です。

bytes型への暗黙的な変換は存在しません。また、文字列型、[数値型](../number/index.md)、[bool型](../bool/index.md)からの明示的変換がサポートされます

```cs title="AliceScript"
namespace Alice;
public class bytes
```

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### プロパティ
|名前|説明|
|---|---|
|[Length](../array/length.md)|その変数の持つデータ長を表します|

### メソッド
|名前|説明|
|---|---|
|[Size()](../array/size.md)|その変数の持つデータ長を取得します|
|[ToBase64()](./tobase64.md)|現在のバイナリデータを、Base64でエンコードした文字列を取得します|
|[ToBase64(number offset, number length)](./tobase64.md)|現在のバイナリデータのうち指定した区間を、Base64でエンコードした文字列を取得します|
|[ToBase64(bool insertLineBrakes)](./tobase64.md)|現在のバイナリデータを、改行するかどうかを指定してBase64でエンコードした文字列を取得します|
|[ToBase64(number offset, number length, bool insertLineBrakes)](./tobase64.md)|現在のバイナリデータのうち指定した区間を、改行するかどうかを指定してBase64でエンコードした文字列を取得します|
|[ToString(string charCode)](./tostring.md)|指定した文字コード名に対応する文字コードでエンコードした現在のバイナリデータの文字列表現を取得します|
|[ToString(number codePage)](./tostring.md)|指定したコード番号に対応する文字コードでエンコードした現在のバイナリデータの文字列表現を取得します|