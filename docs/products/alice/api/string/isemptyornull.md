---
title: IsEmptyOrNull
long_title : string.IsEmptyOrNull
summary: 現在の文字列が空か、あるいはnullであるかどうかを示す値を取得します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の文字列が空か、あるいはnullであるかどうかを示す値を取得します

```cs title="AliceScript"
namespace Alice;
bool IsEmptyOrNull();
```

|戻り値| |
|-|-|
|`bool`|現在の文字列が空か、nullであれば`true`、それ以外の場合は`false`。|

### 例
以下は、Hello,Worldが空でないことを確認します。

```cs title="AliceScript"
var a = "Hello,World";
print(a.IsEmptyOrNull()); 
```
