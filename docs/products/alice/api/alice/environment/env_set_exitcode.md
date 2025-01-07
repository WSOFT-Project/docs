---
title: env_set_exitCode
summary: 現在のプロセスの終了コードを設定します。
mt_type: function
mt_title: env_set_exitCode(number)
---
### 定義
名前空間: Alice.Environment<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Environment.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Environment.cs)

#### env_set_exitCode(number)

現在のプロセスの終了コードを設定します。

```cs title="AliceScript"
namespace Alice.Environment;
public void env_set_exitCode(number exitCode);
```

|引数| |
|-|-|
|`exitCode`|終了コードを格納している 32 ビット符号付き整数。 既定値は 0 (ゼロ) です。この値は、プロセスが成功して完了したことを意味します。|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.9、0.10、0.11|

### 説明
`exit`関数に戻り値を指定しなかった場合、この値が使用され、`exit(number exitcode);`で終了された場合はこの値は無視されます。`exitCode`の初期値は`0`です。

!!!warning "警告"
    この数値は符号付き 32 ビット整数です。 プログラムが負の終了コードを返さないようにするには、0x80000000以上の値を使用しないでください

エラーを示すには、0 以外の数値を使用します。 アプリケーションでは、列挙体で独自のエラー コードを定義し、シナリオに基づいて適切なエラー コードを返すことができます。 たとえば、必要なファイルが存在しないことを示す値 1、ファイルの形式が間違っていることを示す値 2 を返します。 Windows オペレーティング システムで使用される終了コードの一覧については、Windowsドキュメントの[システム エラー コード](https://learn.microsoft.com/ja-jp/windows/win32/debug/system-error-codes)を参照してください。