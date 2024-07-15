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

=!"products/alice/api/bytes"|[property,include-subdir]!=

### メソッド

=!"products/alice/api/bytes"|[method,include-subdir]!=