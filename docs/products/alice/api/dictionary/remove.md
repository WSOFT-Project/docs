---
title: Remove
long_title : dictionary.Remove
summary: 辞書から指定したキーの項目を削除します
mt_type: method
mt_title: Remove(variable)
mt_summary: 辞書から指定したキーの項目を削除します
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Dictionary.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Dictionary.cs)

#### Remove(variable)

辞書から指定したキーの項目を削除します

```cs title="AliceScript"
class Alice.Dictionary;
public bool Remove(variable key);
```

引数||
---|-|
`key`|辞書から削除する項目のキー

戻り値||
---|-|
`:::cs bool`|辞書に指定したキーが見つかり、正常に削除された場合は`true`、キーが見つからない場合は`false`。

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### Remove(variable, ref variable)

辞書から指定したキーの項目を削除し、削除に成功した場合はそのキーに対応する値を返します。

```cs title="AliceScript"
class Alice.Dictionary;
public bool Remove(variable key, ref variable value);
```

引数||
---|-|
`key`|辞書から削除する項目のキー
`value`|削除に成功した場合、辞書から削除された項目の値。そうでない場合は規定値。

戻り値||
---|-|
`:::cs bool`|辞書に指定したキーが見つかり、正常に削除された場合は`true`、キーが見つからない場合は`false`。

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 説明
このメソッドは、辞書から指定したキーの項目を削除します。辞書内に`key`に対応する項目がない場合でも、例外はスローされません。

このメソッドの操作にかかる計算量は$O(1)$です。

### 例
以下は、辞書から要素を削除します。

```cs title="AliceScript"
dictionary dict = { 
    "one": 1,
    "two": 2
};

dict.Remove("one");
```
