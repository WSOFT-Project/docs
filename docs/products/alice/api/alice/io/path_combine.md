---
title: path_combine
summary: 複数の文字列をひとつのパスに結合します。
date : 2024-05-01
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### path_combine(params string)

複数の文字列をひとつのパスに結合します。

```cs title="AliceScript"
namespace Alice.IO;
public string path_combine(params string paths[]);
```

|引数| |
|-|-|
|`paths`|パスを構成する文字列。この引数はいくつでも指定できますが、最初の引数にのみ絶対パスを含めることができます。|

|戻り値| |
|-|-|
|`string`|結合されたパス|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
`paths`には、最初の引数を除いて相対パスを指定してください。
最初以外の引数に絶対パスを指定した場合、結合はその絶対パスから開始され、それ以前の部分は破棄されます。

`paths`のいずれかの要素がディレクトリの区切り文字で終わらない場合、自動的に区切り文字を挿入します。
また、長さが0の文字列は、結合から除外されます。

### 例
次の例では、パスを連結しています。

```cs title="AliceScript"
using Alice.IO;

print(path_combine("C:","Directory","SubDirectory"));
//出力: C:\Directory\SubDirectory
```