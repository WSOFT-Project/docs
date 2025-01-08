---
title: TryGetValue
long_title : dictionary.TryGetValue
summary: 辞書に関連づけられている値の取得を試みます
mt_type: method
mt_title: TryGetValue(variable,ref variable)
mt_summary: 辞書内で、指定されたキーに関連づけられている値の取得を試みます
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Dictionary.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Dictionary.cs)

#### TryGetValue(variable,ref variable)

辞書内で、指定されたキーに関連づけられている値の取得を試みます

```cs title="AliceScript"
class Alice.Dictionary;
public bool TryGetValue(variable key, ref variable value);
```

|引数| |
|-|-|
|`key`|辞書から取得する値に関連づけられているキー|
|`value`|指定されたキーに関連づいている値。ただし、キーが存在しない場合は`null`。|

|戻り値| |
|-|-|
|`:::cs bool`|辞書内に指定された`key`が存在する場合は`true`、存在しない場合は`false`。|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

### 説明
このメソッドは、辞書内で、指定されたキーに関連づけられている値の取得を試みます。

ハッシュ関数が適切に実装されている場合、このメソッドは$O(1)$操作に近づきます。
### 例
以下は、辞書から値を取得します。

```cs title="AliceScript"
dictionary dict = { 
    "one": 1,
    "two": 2
};

var one;
var five;

if(dict.TryGetValue("one", ref one))
{
    print($"one: {one}");
}

if(dict.TryGetValue("five", ref five))
{
    // ここは実行されない
    print($"one: {one}");
}
```
