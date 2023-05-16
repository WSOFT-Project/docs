---
title: bytes
summary: bytes型は、バイナリデータ配列を表します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

bytes型は、バイナリデータ配列を表します。bytes型は比較、等値演算子をサポートしています。

bytes型の規定値は`null`です。この型は`null`をとり得ます。この型の型指定修飾子は`bytes`です。

bytes型への暗黙的な変換は存在しません。また、文字列型、[数値型](../number/index.md)、[bool型](../bool/index.md)からの明示的変換がサポートされます

```cs title="AliceScript"
namespace Alice;
public class bytes
```

### プロパティ
|名前|説明|
|---|---|
|[Length](../array/length.md)|その変数の持つデータ長を表します|

### メソッド
|名前|説明|
|---|---|
|[Size()](../array/size.md)|その変数の持つデータ長を取得します|