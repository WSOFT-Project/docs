---
title: regex_Escape
summary: 文字列内の正規表現内で意味を持つ文字をエスケープします。
mt_type: function
mt_title: regex_Escape(string)
---

### 定義
名前空間: Alice.Regex<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Regex.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Regex.cs)

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

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

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