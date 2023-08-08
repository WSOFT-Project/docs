---
title: DefineLocal
summary: 現在のスクリプトで変数を定義します
---
### 定義
アセンブリ：WSOFTScript.dll,WSOFTScript.X.dll

変数名と値を使用して、現在のスクリプトで変数を定義します。
この変数はインタプリタか、現在のクラス内で定義されます。

```cs title="WSOFTScript"
variable DefineLocal(string varName,variable item="");
```

|引数| |
|-|-|
|`varName`|定義する変数名の文字列形式|
|`item`|初期化に使用する値。この値は省略でき、規定値は空の文字列です。|

|戻り値| |
|-|-|
|`variable`|`varName`として定義された変数の値。|

### 例
以下は、`TestObject`クラスをインスタンス化し、`Name`プロパティの値を設定します。

```cs title="WSOFTScript"
t = TestObject();
prop = SetProperty(t,"Name","Test");
```