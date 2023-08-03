# 进阶

## 函数重载
定义`多个函数名称相同`但是`参数列表不同`的函数。

如果`只有`返回类型不同，但是`参数列表相同`不能定义为重载

## 库合约

使用`library`定义。
调用可以通过`{LibraryName}.functionName()`
或者`using X for Y`   会将A的函数作为`Y`的`成员函数`

## receive()和fallback()
`receive()` 用于接受以太币，一个合约中只能有一个，
`receive() external payable{}` 不做复杂逻辑处理

`fallback()` 调用合约不存在的函数时候出发

`msg.data`为空时候直接出发`fallback()`。
`msg.data`不为空`receive()` 存在时候调用`receive()`
`msg.data`不为空`receive()` 不存在时候调用`fallback()`


