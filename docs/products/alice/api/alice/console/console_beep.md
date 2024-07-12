---
title: console_beep
summary: コンソールのスピーカーからビープ音を鳴らします。
date : 2024-06-12
mt_type: function
mt_overloads: 2
mt_title: console_beep()
mt_summary: コンソールのスピーカーからビープ音を鳴らします。
mt_title: console_beep(number,number)
mt_summary: コンソールのスピーカーから指定した周波数のビープ音を指定した時間鳴らします。
---

### 定義
名前空間: Alice.Console<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Console.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Console.cs)

#### console_beep()

コンソールのスピーカーからビープ音を鳴らします。

```cs title="AliceScript"
namespace Alice.Console;

@unsupportedFor("browser")
@unsupportedFor("android")
@unsupportedFor("ios")
@unsupportedFor("tvos")
public void console_beep();
```

???note "対応: AliceScript GM以降"
    |対応||
    |---|---|
    |AliceScript|GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### console_beep(number,number)

コンソールのスピーカーから指定した周波数のビープ音を指定した時間鳴らします。

```cs title="AliceScript"
namespace Alice.Console;

@supportedFor("windows")
public void console_beep(number frequency, number duration);
```

|引数| |
|---|-|
|`frequency`|鳴らすビープ音の周波数。37Hz~32767Hzの範囲で指定できます。|
|`duration`|ビープ音のミリ秒単位での再生時間。この値は0以下にはできません。|

???note "対応: AliceScript GM以降"
    |対応||
    |---|---|
    |AliceScript|GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
この関数は、周波数と時間を指定しなかった場合200msの間、800Hzのビープ音を鳴らします。

この関数は、Windows環境ではWindowsAPIの[Beep関数](https://learn.microsoft.com/ja-jp/windows/win32/api/utilapiset/nf-utilapiset-beep)をラップします。このため、Windows 7より前の環境では、この関数を使用してビープ音を鳴らすためにコンピューターに対応する素子が実装されている必要があります。それ以外の環境では、ビープ音はサウンドデバイスで再生されます。

### 例
次の例では、コンソールでビープ音を再生します。

```cs title="AliceScript"
using Alice.Console;

console_beep();
```