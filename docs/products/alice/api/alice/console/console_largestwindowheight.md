---
title: console_largestWindowHeight
summary: 現在のコンソールに表示できる最大行数を取得します。
date : 2024-06-11
mt_type: value
---

### 定義
名前空間: Alice.Console<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Console.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Console.cs)

現在のコンソールに表示できる最大行数を取得します。

```cs title="AliceScript"
namespace Alice.Console;

@unSupportedPlatform("browser")
@unSupportedPlatform("android")
@unSupportedPlatform("ios")
@unSupportedPlatform("tvos")
public readonly number console_largestWindowHeight;
```

### 値
|値| |
|-|-|
|`number`|現在のフォントサイズと画面解像度、ウィンドウサイズに基づいて算出した、現在のコンソールに表示できる最大行数|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 例
次の例では、コンソールの最大行数を表示します。

```cs title="AliceScript"
using Alice.Console;

print(console_largestWindowHeight);
```
