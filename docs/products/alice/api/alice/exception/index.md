---
title: Exception
long_title : Exception クラス
summary: Exceptionクラスは、実行中に発生した例外を表します
mt_type: class
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript2.1

Exceptionクラスは、実行中に発生した例外を表します

```cs title="AliceScript"
namespace Alice;
public class Exception;
```

### 説明
このクラスは、システムによって生成されるため、AliceScript2.1現在では、ユーザーが生成することはできません。その代わりに、`throw`関数を使用することを検討してください。
アプリケーションの実行中にエラーが発生すると、システムまたは現在実行中のアプリケーションがエラーに関する情報を含む例外をスローしそのことを報告します。
例外がスローされると、アプリケーションあるいは既定の例外ハンドラーによって例外が処理されます。

### プロパティ
=!"products/alice/api/alice/exception"|[property,include-subdir,smart-jump]!=

### メソッド
=!"products/alice/api/alice/exception"|[method,include-subdir,smart-jump]!=