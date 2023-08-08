---
title: SetProperty
summary: 指定された変数の特定のプロパティに値を設定します
---
### 定義
アセンブリ：WSOFTScript.dll,WSOFTScript.X.dll

プロパティ名を使用して、指定された変数の特定のプロパティに値を設定します

```cs title="WSOFTScript"
variable SetProperty(variable item,string propName,variable val);
```

|引数| |
|-|-|
|`item`|設定するする対象の変数|
|`propName`|設定するプロパティの名前|
|`val`|設定する値|

|戻り値| |
|-|-|
|`variable`|`item`の`propName`に`val`を設定した結果。|

### 例
以下は、`TestObject`クラスをインスタンス化し、`Name`プロパティの値を設定します。

```cs title="WSOFTScript"
t = TestObject();
prop = SetProperty(t,"Name","Test");
```