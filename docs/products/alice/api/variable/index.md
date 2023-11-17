---
title: variable
summary: variable型は、すべての変数の値を表します。
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

variable型は、すべての変数の値を表します。variable型は等値演算子をサポートします。この型から文字列型にのみ暗黙的な変換をサポートします。

```cs title="AliceScript"
namespace Alice;
public class variable;
```

### 説明
AliceScriptにおいてすべてのクラスは`variable`を継承するため、`variable`を継承すると宣言する必要はありません。

AliceScriptのすべてのオブジェクトは`variable`から派生しているため、このクラスで定義されているすべてのメソッドおよびプロパティは、システム内のすべてのオブジェクトで使用できます。

また、このクラスはAliceScriptの各実装によって概念的に実装されているため、技術的にカスタムクラスと同一とみなすことはできません。これは、ネイティブライブラリを作成する際に考慮が必要です。

### プロパティ
|名前|説明|
|---|---|
|[Properties](./properties.md)|その変数で使用可能なプロパティ、メソッドを表す文字列の配列を取得します|
|[Type](./type.md)|その変数の種類を表す`type`を取得します|

### メソッド
|名前|説明|
|---|---|
|[Clone()](./clone.md)|その変数の簡易コピー（シャローコピー）を取得します|
|[Convert(variable type)](./convert.md)|その変数を指定された型に明示的に変換します。変換に失敗した場合は`null`を返します|
|[DeepClone()](./deepclone.md)|その変数の厳格コピー（ディープコピー）を取得します|
|[Equals(variable other)](./equals.md)|その変数ともうひとつの変数が等しいかどうかを判断します|
|[ToString()](./tostring.md)|その変数の文字列表現を取得します|
