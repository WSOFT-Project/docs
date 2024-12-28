---
title: Clear
long_title : dictionary.Clear
summary: 辞書内のすべての項目を削除します
mt_type: method
mt_title: Clear()
mt_summary: 辞書内のすべての項目を削除します
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Dictionary.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Dictionary.cs)

#### Clear()

辞書内のすべての項目を削除します

```cs title="AliceScript"
class Alice.Dictionary;
public void Clear();
```

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 説明
このメソッドは、辞書内のすべてのキーと値の組み合わせを削除し、それぞれの要素からオブジェクトへの参照を解放します。  
このメソッドを実行した後、[Length](./length.md)プロパティは0になります。ただし、辞書の容量は変わりません。

このメソッドは$O(n)$操作です。ここで$n$は、[Count](./count.md)プロパティの値です。

### 例
以下は、辞書をクリアします。

```cs title="AliceScript"
dictionary dict = { 
    "one": 1,
    "two": 2
};

dict.Clear();
```
