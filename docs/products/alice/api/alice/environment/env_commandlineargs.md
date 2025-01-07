---
title: env_commandLineArgs
summary: 現在のプロセスに対するコマンドライン引数を格納している文字列配列を返します
mt_type: function
mt_title: env_commandLineArgs()
---
### 定義
名前空間: Alice.Environment<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Environment.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Environment.cs)

#### env_commandLineArgs()

現在のプロセスに対するコマンドライン引数を格納している文字列配列を返します。

```cs title="AliceScript"
namespace Alice.Environment;
public string[] env_commandLineArgs();
```

|戻り値| |
|-|-|
|`string[]`|各要素にコマンド ライン引数を格納している文字列の配列。 先頭の要素には実行可能ファイルの名前、それに続く 0 個以上の要素には残りのコマンド ライン引数が格納されれている可能性があります。|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.9、0.10、0.11|

### 説明
`alice.exe`を介してAliceScriptを実行すると、この関数の戻り値は`--args`引数の後に続く引数のリストになります。