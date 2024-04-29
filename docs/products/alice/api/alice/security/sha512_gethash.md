---
title: sha512_GetHash
summary: 指定したデータのSHA512ハッシュ値を取得します。
---

### 定義
名前空間:Alice.Security / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript3.0

属性: 関数

指定したデータのSHA512ハッシュ値を取得します。

```cs title="AliceScript"
namespace Alice.Security;
public bytes sha512_GetHash(bytes data);
```

|引数| |
|-|-|
|`data`|計算対象のデータ|

|戻り値| |
|-|-|
|`bytes`|`data`をハッシュ関数で計算した値|