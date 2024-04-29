---
title: debug_unIndent
summary: デバッグ出力のインデントレベルを1減らします。
date : 2021-11-09
---
### 定義
名前空間:Alice.Diagnostics / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

#### debug_unIndent()

デバッグ出力の[インデントレベル](./debug_indentlevel.md)を`1`減らします。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public void debug_unIndent();
```

### 例
次の例では、インデントレベルを設定し、デバッグ出力に書き込みます。

```cs title="AliceScript"
using Alice.Diagnostics;

debug_print("あなたはシステム管理者から通常の講習を受けたはずです。");
debug_print("これは通常、以下の3点に要約されます:");
debug_print();
debug_indent();
debug_print("#1) 他人のプライバシーを尊重すること。");
debug_print("#2) タイプする前に考えること。");
debug_print("#3) 大いなる力には大いなる責任が伴うこと。");
debug_unIndent();
debug_print();
debug_print("[sudo] [ユーザー名] のパスワード");
```

この例を実行すると、次のように出力されます。

```txt title="出力"
あなたはシステム管理者から通常の講習を受けたはずです。
これは通常、以下の3点に要約されます:

    #1) 他人のプライバシーを尊重すること。
    #2) タイプする前に考えること。
    #3) 大いなる力には大いなる責任が伴うこと。

[sudo] [ユーザー名] のパスワード:
```