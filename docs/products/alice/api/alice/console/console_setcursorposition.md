---
title: console_setCursorPosition
summary: コンソールの中のカーソルの位置を設定します
date : 2024-06-05
mt_type: function
mt_overloads: 1
mt_title: console_setCursorPosition(number,number)
mt_summary: コンソールの中のカーソルの位置を設定します。
---

### 定義
名前空間: Alice.Console<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Console.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Console.cs)

#### console_setCursorPosition(number,number)

コンソールの中のカーソルの位置を設定します。

```cs title="AliceScript"
namespace Alice.Console;

@unsupportedFor("browser")
@unsupportedFor("android")
@unsupportedFor("ios")
@unsupportedFor("tvos")
public void console_setCursorPosition(number left, number top);
```

|引数| |
|---|---|
|`left`|カーソルの移動先の左端からの位置|
|`top`|カーソルの移動先の上端からの位置|

???note "対応: AliceScript GM以降"
    |対応||
    |---|---|
    |AliceScript|GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明

この関数は、コンソールの入力位置を指定します。指定したカーソル位置がコンソールの範囲外の場合、自動的にリサイズされ、カーソルが表示されます。

カーソルは、コンソールに文字が出力されるたびに自動的にその文字のひとつ後に移動します。

### 例
次の例では、コンソールのカーソル位置を左上に設定します。

```cs title="AliceScript"
using Alice.Console;

console_setCursorPosition(0, 0);
```