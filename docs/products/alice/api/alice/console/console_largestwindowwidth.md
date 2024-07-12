---
title: console_largestWindowWidth
summary: 現在のコンソールに一行に表示できる最大文字数を取得します。
date : 2024-06-11
mt_type: value
---

### 定義
名前空間: Alice.Console<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Console.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Console.cs)

現在のコンソールに一行に表示できる最大文字数を取得します。

```cs title="AliceScript"
namespace Alice.Console;

@unsupportedFor("browser")
@unsupportedFor("android")
@unsupportedFor("ios")
@unsupportedFor("tvos")
public readonly number console_largestWindowWidth;
```

### 値
|値| |
|-|-|
|`number`|現在のフォントサイズと画面解像度、ウィンドウサイズに基づいて算出した、現在のコンソールに一行に表示できる最大文字数|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 例
次の例では、コンソールに一行に表示できる最大文字数を表示します。

```cs title="AliceScript"
using Alice.Console;

print(console_largestWindowWidth);
```
