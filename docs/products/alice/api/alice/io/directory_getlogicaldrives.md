---
title: directory_getLogicalDrives
summary: このスクリプトを実行しているコンピューターにマウントされている論理ドライブを取得します。
mt_type: function
mt_title: directory_getLogicalDrives()
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### directory_getLogicalDrives()

このスクリプトを実行しているコンピューターにマウントされている論理ドライブを取得します。

```cs title="AliceScript"
namespace Alice.IO;
public string[] directory_getLogicalDrives();
```

|戻り値| |
|-|-|
|`string[]`|このスクリプトを実行しているコンピューターにマウントされている論理ドライブのルートへのパスを含む配列|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0、4|
    |AliceSister|3.0、4|
    |Losetta|0.10、0.11|

### 説明
この関数は、フロッピードライブや光学ドライブ、マウントポイントなど、このスクリプトを実行しているコンピューター上のすべてのアクセス可能なドライブへのルートパスを返します。

### 例
次の例では、コンピューター上でアクセスできるドライブをすべて表示しています。

```cs title="AliceScript"
using Alice.IO;

var drives = directory_getLogicalDrives("test");
print(drives);
//出力例: [C:\, D:\]
```

