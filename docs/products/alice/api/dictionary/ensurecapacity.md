---
title: EnsureCapacity
long_title : dictionary.EnsureCapacity
summary: 辞書の容量を指定した値以上に拡張します
mt_type: method
mt_title: EnsureCapacity(number)
mt_summary: 辞書の容量を指定した値以上に拡張します
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Dictionary.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Dictionary.cs)

#### EnsureCapacity(number)

辞書の容量を指定した値以上に拡張します

```cs title="AliceScript"
class Alice.Dictionary;
public number EnsureCapacity(number capacity);
```

引数||
---|-|
`capacity`|辞書の最低容量。この値は正の整数で、$2,147,483,647$以上である必要があります。

戻り値||
---|-|
`number`|辞書の新しい容量

???note "対応: 未実装、AliceScriptとLosettaのみ"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

    この関数はAliceSisterでは実装されていません。

    実装されていない環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

### 説明
このメソッドは、辞書の容量が、指定した値以上であることを確認します。容量が指定値に満たない場合は拡張を行い、指定値以上の場合は何もしません。このため、すでに指定した値以上の容量が辞書にある場合など、状況によっては`capacity`と戻り値の値は異なる可能性があります。辞書の容量を指定した値に設定するには、[TrimExcess](./trimexcess.md)メソッドを使用してください。

容量の拡張が必要な場合、このメソッドは現在の容量と新しく指定した`capacity`の値の和を格納できるだけのメモリを確保します。このため、このメソッドの操作は負荷の大きな作業です。このメソッドは、辞書に項目を繰り返し追加し、その数がわかっているときに使用できます。

### 例
以下は、辞書の容量を5に拡張します。

```cs title="AliceScript"
dictionary dict = { 
    "one": 1,
    "two": 2
};

dict.EnsureCapacity(5);
```
