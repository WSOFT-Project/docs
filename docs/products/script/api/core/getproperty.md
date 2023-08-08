---
title: GetProperty
summary: 指定された変数の特定のプロパティを取得します
---
### 定義
アセンブリ：WSOFTScript.dll,WSOFTScript.X.dll

プロパティ名を使用して、指定された変数の特定のプロパティを取得します

```cs title="WSOFTScript"
variable GetProperty(variable item,string propName);
```

|引数| |
|-|-|
|`item`|取得する対象の変数|
|`propName`|取得するプロパティの名前|

|戻り値| |
|-|-|
|`variable`|`item`の`propName`という名前を持つプロパティの値。|

### 例
以下は、`TestObject`クラスをインスタンス化し、`Type`プロパティの値を取得します。

```cs title="WSOFTScript"
t = TestObject();
prop = GetProperty(t,"Type");
print(prop);//出力例:WSOFTScript.TestScriptObject
```
