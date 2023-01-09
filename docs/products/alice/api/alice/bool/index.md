---
title: bool
summary: bool型は、ブール値の論理数を表します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

bool型は、ブール値の論理数を表します。bool型は論理、比較、等値演算子をサポートしています。

bool型の有効な値はtrueかfalseのいずれかです。 それぞれの値を表す定数がそれぞれ、true、falseとして定義されています。

bool型への暗黙的な変換は存在しません。特に、WSOFTScriptとは違い数値型の代わりに値を使用することはできません。また、文字列型、数値型、bytes型からの明示的変換がサポートされます。bool型専用のメソッドは存在しません。この型の型指定修飾子はboolです。

```cs title="AliceScript"
namespace Alice;
global class bool;
```