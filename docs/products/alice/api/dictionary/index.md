---
title: dictionary
long_title : dictionary型
summary: Dictionary型は、キーと値のペアのコレクションを表します。
mt_type: type
---
### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.dll

```cs title="AliceScript"
namespace Alice;
public class dictionary;
```

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

## 説明
Dictionary型は、キーから値を取得できるようにします。
ディクショナリは、ハッシュテーブルのため、キーを使用した値の取得にかかる計算量はほぼ$O(1)$で高速です。
ディクショナリの各キーは、その中で一意である必要があります。
重複しているキーを`Add`メソッドで追加しようとすると、例外が発生します。

`Capacity`の容量は、このディクショナリが持てる要素の個数です。
容量を超える要素がディクショナリに追加されると、内部で配列のアロケーションが起こります。

> [!NOTE] コラム
> ディクショナリで使用する要素数があらかじめ決まっている場合は、`Capacity`を指定して初期化することで、アロケーションを防ぐことができます。

ディクショナリ型を[foreach](../alice/foreach.md)文で使用すると、キーと値のペアが列挙できます。
例えば、次のように列挙できます。

```cs title="AliceScript"
foreach(var kvp in dict)
{
    print($"Key = {kvp.Key}, Value = {kvp.Value}");
}
```
