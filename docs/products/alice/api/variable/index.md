---
title: variable
summary: variable型は、すべての変数の値を表します。
mt_type: type
---
### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.dll

variable型は、すべての変数の値を表します。variable型は等値演算子をサポートします。この型から文字列型にのみ暗黙的な変換をサポートします。

```cs title="AliceScript"
namespace Alice;
public class variable;
```

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### プロパティ

=!"products/alice/api/variable"|[property,include-subdir,smart-jump]!=

### メソッド

=!"products/alice/api/variable"|[method,include-subdir,smart-jump]!=

### 説明

AliceScriptのすべてのオブジェクトは`variable`から派生しているため、このクラスで定義されているすべてのメソッドおよびプロパティは、システム内のすべてのオブジェクトで使用できます。

また、このクラスはAliceScriptの各実装によって概念的に実装されているため、技術的にカスタムクラスと同一とみなすことはできません。これは、ネイティブライブラリを作成する際に考慮が必要です。
