---
title: regex_Escape
summary: 文字列内の正規表現内で意味を持つ文字をエスケープします。
---

### 定義
名前空間:Alice.Regex / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript3.0

属性: 関数

#### regex_Escape(string)

文字列内の正規表現内で意味を持つ文字をエスケープします。

```cs title="AliceScript"
namespace Alice.Regex;
public string regex_Escape(string str);
```

|引数| |
|-|-|
|`str`|エスケープしたい文字列|

|戻り値| |
|-|-|
|`string`|`str`をエスケープした文字列|

### 説明
この関数は文字列を変換して、正規表現内のメタ文字を文字リテラルとして使用できるようにエスケープします。
正規表現をコード中で直接記述する場合でも、バックスラッシュ`\`を使用してエスケープするのではなく、この関数を呼び出してエスケープすることをおすすめします。

AliceScriptの実装によっては、この関数は左かっこ`(`と左波かっこ`{`をエスケープしますが、それと対応する右かっこはエスケープしないことがあります。これは、多くの正規表現エンジンが左かっこと対応しない右かっこをリテラルとして解釈するからです。

### 例
次の例では、`(.*)`をエスケープしています。

```cs title="AliceScript"
using Alice.Regex;

string str = regex_escape("(.*)");
print(str);
//出力: \(\.\*\)
```