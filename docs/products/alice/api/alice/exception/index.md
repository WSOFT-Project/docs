---
title: Exception
long_title : Exception クラス
summary: Exceptionクラスは、実行中に発生した例外を表します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript2.1

Exceptionクラスは、実行中に発生した例外を表します

```cs title="AliceScript"
namespace Alice;
global class Exception;
```

### 説明
このクラスは、システムによって生成されるため、AliceScript2.1現在では、ユーザーが生成することはできません。その代わりに、`throw`関数を使用することを検討してください。
アプリケーションの実行中にエラーが発生すると、システムまたは現在実行中のアプリケーションがエラーに関する情報を含む例外をスローしそのことを報告します。
例外がスローされると、アプリケーションまたは既定の例外ハンドラーによって例外が処理されます。

### プロパティ
|名前|説明|
|---|---|
|[ErrorCode](./errorcode.md)|現在の例外の種類を表すエラーコードを示す値を取得します|
|[Message](./message.md)|現在の例外を説明するメッセージを表します|

### メソッド
|名前|説明|
|---|---|
|[ToString()](./tostring.md)|現在の例外を説明する文字列表現を取得します|