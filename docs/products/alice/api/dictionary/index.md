---
title: dictionary
long_title : dictionary型
summary: Dictionary型は、キーと値のペアのコレクションを表します。
mt_type: type
---
### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.dll

Dictionary型は、キーから値を取得できるようにします。
ディクショナリは、ハッシュテーブルのため、キーを使用した値の取得にかかる計算量はほぼ$O(1)$で高速です。
ディクショナリの各キーは、その中で一意である必要があります。

すべてのAliceScriptに組み込まれている型はすべて文字列型への暗黙的な変換をサポートしています。文字列型に限って、明示的な変換と明示的な変換は同じ動作になります。

```cs title="AliceScript"
namespace Alice;
public class string;
```

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

