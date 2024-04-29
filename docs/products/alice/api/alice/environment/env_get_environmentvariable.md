---
title: env_get_environmentVariable
summary: 現在のプロセスから特定の環境変数の値か、すべての環境変数の名前の配列を取得します。
date : 2023-08-09
---
### 定義
名前空間:Alice.Environment / アセンブリ : Losetta.Runtime.dll / サポート: Alice2.0

属性: 関数

#### env_get_environmentVariable()

すべての環境変数の名前の配列を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public string[] env_get_environmentVariable();
```

|戻り値| |
|-|-|
|`string`|すべての環境変数の名前の配列|

#### env_get_environmentVariable(string name)

現在のプロセスから特定の環境変数の値を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public string env_get_environmentVariable(string name);
```

|引数| |
|-|-|
|`name`|取得する環境変数の名前。|

|戻り値| |
|-|-|
|`string`|`name`で指定された環境変数の値。環境変数が見つからない場合は`null`|

### 説明
この関数は、現在のプロセスの環境ブロックからのみ環境変数を取得します。

環境変数の名前はLinuxとmacOSでは大文字と小文字が区別されますが、Windowsでは大文字と小文字は区別されません。

#### Windowsの場合
実行環境がWindowsの場合、現在のプロセスの環境ブロックには次のものが含まれます。

- それを作成した親プロセスによって提供されるすべての環境変数。 たとえば、コンソール ウィンドウから起動されたアプリケーションは、コンソール ウィンドウのすべての環境変数を継承します。親プロセスがない場合は、代わりにマシンごとの環境変数とユーザーごとの環境変数が使用されます。新しいコンソール ウィンドウには、起動時に定義されたすべてのマシンごとの環境変数とユーザーごとの環境変数が含まれます。
- アプリケーションの実行中に作成された環境変数。これは、アプリケーションが終了するまで保持されます。

#### macOSとLinuxの場合
実行環境がmacOSかLinuxの場合、現在のプロセスの環境ブロックには次のものが含まれます。

- それを作成した親プロセスによって提供されるすべての環境変数。 シェルから起動されたアプリケーションの場合、これにはシェルで定義されているすべての環境変数が含まれます。
- アプリケーションの実行中に作成された環境変数。これは、アプリケーションが終了するまで保持されます。
### 例
次の例では、`ENV`という環境変数の値を取得しています。

```cs title="AliceScript"
using Alice.Environment;

print(env_get_environmentVariable("ENV"));
```