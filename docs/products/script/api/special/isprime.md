---
title: isprime
summary: 与えられた数値が素数かどうか判定します
---
### 定義
アセンブリ：WSOFTScript.dll,WSOFTScript.X.dll

与えられた数値が素数であれば`1`を、それ以外の場合は`0`を返します。

```cs title="WSOFTScript"
number isprime(number num);
```

|引数| |
|-|-|
|`num`| 判定する数値。整数以外の値が入力された場合は、もっとも近い整数に切り詰められます。|

|戻り値| |
|-|-|
|`variable`|`num`が素数であれば`1`、それ以外の場合は`0`|

### 例
以下は、`361`が素数であるかを判定します。

```cs title="WSOFTScript"
p=isprime(361);
print(p);// 結果：0
```
