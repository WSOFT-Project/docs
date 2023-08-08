---
title: GetPropertyStrings
summary: 指定された変数のプロパティ名の一覧を取得します
---
### 定義
アセンブリ：WSOFTScript.dll,WSOFTScript.X.dll

指定された変数のプロパティ名の一覧を取得します

```cs title="WSOFTScript"
string[] GetPropertyStrings(variable item);
```

|引数| |
|-|-|
|`item`|取得する対象の変数|

|戻り値| |
|-|-|
|`string[]`|`item`のもつプロパティ、メソッド名の文字列形式を含む配列。|

### 例
以下は、`TestObject`クラスの変数が持つプロパティを取得します。

```cs title="WSOFTScript"
print(GetPropertyStrings(TestObject()));//出力例:[Color, Name, Translate, Type]
```
