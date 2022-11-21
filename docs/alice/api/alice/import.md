---
title: import
summary: 名前空間またはパッケージまたはライブラリを読み込みます。
date : 2021-11-09
author : Taiseiue
author_url : https://github.com/taiseiue
---
### 定義
名前空間:Alice / アセンブリ: AliceScript.dll / サポート: AliceScript1

属性: 関数の区切りの空白をサポート

nameに名前空間の有効な名前を指定したとき、その名前空間に登録された関数やオブジェクトを登録し、使用可能な状態にします。

```cs title="AliceScript"
namespace Alice;
void import(string name);
```

|引数| |
|-|-|
|`name`| 読み込みたい名前空間の識別名|

### 例
以下は、import関数を使用して名前空間であるAlice.IOを読み込む例です。

```cs title="AliceScript"
import("Alice.IO");
```
