---
title: console_moveBufferArea
summary: コンソールバッファーの特定の領域を、指定した位置にコピーします。
date : 2024-06-06
mt_type: function
mt_overloads: 1
mt_title: console_moveBufferArea(number,number,number,number,number,number)
mt_summary: コンソールバッファーの特定の領域を、指定した位置にコピーします。
---

### 定義
名前空間: Alice.Console<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Console.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Console.cs)

#### console_moveBufferArea(number,number,number,number,number,number)

コンソールバッファーの特定の領域を、指定した位置にコピーします。

```cs title="AliceScript"
namespace Alice.Console;

@supportedFor("window")
public void console_setCursorPosition(number sourceLeft, number sourceTop, number sourceWidth, number sourceHeight, number targetLeft, number targetTop);
```

|引数| |
|---|---|
|`sourceLeft`|コピー元の領域の左端からの位置|
|`sourceTop`|コピー元の領域の上端からの位置|
|`sourceWidth`|コピーする領域の幅|
|`sourceHeight`|コピーする領域の高さ|
|`targetLeft`|コピー先の左端からの位置|
|`targetTop`|コピー先の右端からの位置|

???note "対応: AliceScript GM以降"
    |対応||
    |---|---|
    |AliceScript|GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 説明

この関数は、コンソール中の特定の領域をコピーします。コピー先領域がコピー元領域と重複しない場合、コピー元領域は空白で塗り潰されます。指定したコピー先がコンソールの範囲外にわたる場合、コンソールウィンドウは自動的にリサイズされ、カーソルが表示されます。

この関数はWindows環境でのみ使用できます。

### 例
次の例では、コンソールの領域を移動しています。

```cs title="AliceScript"
using Alice.Console;

console_moveBufferArea(0, 0, 20, 20, 0,50);
```