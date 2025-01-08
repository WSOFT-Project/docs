---
title: ContainsKey
long_title : dictionary.ContainsKey
summary: 指定したキーが辞書内に存在するかを調べます
mt_type: method
mt_title: ContainsKey(variable)
mt_summary: 指定したキーが辞書内に存在するかを調べます
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Dictionary.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Dictionary.cs)

#### ContainsKey(variable)

指定したキーが辞書内に存在するかを調べます

```cs title="AliceScript"
class Alice.Dictionary;
public bool ContainsKey(variable key);
```

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

### 説明
このメソッドは、辞書内に指定したキーが存在するかを調べます。

ハッシュ関数が適切に実装されている場合、このメソッドは$O(1)$操作に近づきます。

### 例
以下は、辞書をクリアします。

```cs title="AliceScript"
dictionary dict = { 
    "one": 1,
    "two": 2
};

print(dict.ContainsKey("one")); //出力例: true
```
