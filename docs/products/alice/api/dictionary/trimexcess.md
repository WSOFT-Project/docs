---
title: TrimExcess
long_title : dictionary.TrimExcess
summary: 辞書の容量を指定した値にします
mt_type: method
mt_title: TrimExcess(number)
mt_summary: 辞書の容量を指定した値にします
mt_title: TrimExcess()
mt_summary: 辞書の容量を現在辞書内に存在する項目の数と同じまで減らします
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Dictionary.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Dictionary.cs)

#### TrimExcess(number)

辞書の容量を指定した値にします

```cs title="AliceScript"
class Alice.Dictionary;
public void TrimExcess(number capacity);
```

引数||
---|-|
`capacity`|設定する辞書の容量。この値は正の整数で、$2,147,483,647$以上である必要があります。

???note "対応: Alice4以降、AliceScriptとLosettaのみ"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|該当なし|
    |Losetta|0.11|

    この関数はAliceSisterでは実装されていません。

    実装されていない環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

#### TrimExcess()

辞書の容量を現在辞書内に存在する項目の数と同じまで減らします

```cs title="AliceScript"
class Alice.Dictionary;
public void TrimExcess();
```

???note "対応: Alice4以降、AliceScriptとLosettaのみ"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|該当なし|
    |Losetta|0.11|

    この関数はAliceSisterでは実装されていません。

    実装されていない環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

### 説明
このメソッドは、辞書の容量を`capacity`に設定します。`capacity`は[Length](./length.md)の値と同じか、大きい必要があります。`capacity`が現在辞書に存在する項目の数よりも少ない場合は、例外が発生します。

このメソッドは[EnsureCapacity](./ensurecapacity.md)メソッドとは異なり、辞書の現在の容量に関わらず容量を`capacity`に設定します。もし、指定した値以上の容量があれば良く、それを確認する必要がある場合には[EnsureCapacity](./ensurecapacity.md)メソッドを使用してください。

容量の拡張が必要な場合、このメソッドは現在の容量と新しく指定した`capacity`の値の和を格納できるだけのメモリを確保します。このため、このメソッドの操作は負荷の大きな作業です。このメソッドを使用すると、新しい要素が追加されないことがわかっている場合に、メモリ使用を最小限に抑えることができます。

辞書に割り当てられているメモリできるだけ解放するには、次のようにします。

```cs title="AliceScript"
dict.Clear();
dict.TrimExcess();
```

### 例
以下は、辞書の容量を5に設定します。

```cs title="AliceScript"
dictionary dict = { 
    "one": 1,
    "two": 2
};

dict.TrimExcess(5);
```
