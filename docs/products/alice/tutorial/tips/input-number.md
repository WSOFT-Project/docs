---
title: ユーザーに数値を入力してもらう
long_title: Tips:ユーザーに数値を入力してもらう
summary: この記事では、CUIアプリでユーザーに数値を入力してもらう方法について説明します。
date: 2024-07-18
---

### ユーザーに数値を入力してもらう
ユーザーに数値を入力してもらうには、[read関数](../../api/alice/read.md)でユーザーに文字列を入力してもらい、[as演算子](../../general/operators/type-operators.md)を使って数値に変換します。
ユーザーが数値を入力しなかった場合は、エラーになります。

```cs title="AliceScript"
number inputNum()
{
    number? input = read() as number;
    return input.Value;
}

// 使用例
number num = inputNum();
print($"{num} が入力されました");
```

### 規定値を返すようにする
上記の例では、ユーザーが数値を入力しなかった場合はエラーになっていました。しかし、これでは少し不便です。次に、ユーザーが正しく数値を入力しなかった場合に規定値を返すように改造したコードを示します。


```cs title="AliceScript"
number inputNum(number default)
{
    number? input = read() as number;
    
    if(input.HasValue)
    {
        // 正しく入力した場合はその値を返す
        return input.Value;
    }
    else
    {
        // 正しくない入力の場合は規定値を返す
        return default;
    }
}

// 使用例
// 規定値は0にしてある
number num = inputNum(0);
print($"{num} が入力されました");
```

### 正しく入力するまで聞き返す
次の例では再起呼び出しを使用して、規定値を使用するのではなく、正しく入力されるまで聞き返しています。

```cs title="AliceScript"
number inputNum()
{
    number? input = read() as number;

    if(input.HasValue)
    {
        return input.Value;
    }
    else
    {
        // 正しくない入力の場合はエラーを出して聞き返す
        print("正しく数値を入力してください");
        return inputNum();
    }
}

// 使用例
number num = inputNum();
print($"{num} が入力されました");
```

### 完成
ここまでの内容を活かして、正しく入力されていない場合、規定値を指定している場合はその値を、指定しない場合は聞き返す関数を次に示します。

```cs title="AliceScript"
number inputNum(number? default = null)
{
    number? input = read() as number;

    if(input.HasValue)
    {
        return input.Value;
    }
    else
    {
        if(default.HasValue)
        {
            print($"規定値 {default.Value} を使用します");
            return default.Value;
        }
        else
        {
            print("正しく数値を入力してください");
            return inputNum();
        }
    }
}

// 使用例
// 規定値を0にする
number num = inputNum();
print($"{num} が入力されました");

// 使用例
// 規定値を0にしておく
number num = inputNum(0);
print($"{num} が入力されました");
```
