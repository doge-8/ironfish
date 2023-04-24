@echo off
chcp 65001

:menu
echo ::::::::::          :::::::::::::::::
echo ::::::::::::       :::::::::::::::::::
echo :::::::::::::     :::::::::::::::::::::
echo ::::::::::::::   ::::::::::::::::::::::::
echo  ::::::::::::: ::::::::::        :::::::::
echo    :::::::::::::::::::::          ::::::::::
echo    :::::::::::::::::::::          :::::::::
echo  ::::::::::::: ::::::::::        :::::::::
echo ::::::::::::::   ::::::::::::::::::::::::
echo :::::::::::::     :::::::::::::::::::::
echo ::::::::::::       :::::::::::::::::::
echo ::::::::::           ::::::::::::::::
echo 请选择一个选项（输入完毕后按 Enter 键）:
echo 1. 启动节点
echo 2. 查询余额
echo 3. 查询钱包地址
echo 4. 查询转账记录
echo 5. 创建钱包（创建后请记得切换钱包）
echo 6. 导出钱包私钥
echo 7. 导入钱包（导入后请记得切换钱包）
echo 8. 切换钱包
echo 9. 转账
echo 10. 钱包修复（钱包余额显示不正常时使用）

set /p choice=请输入选项编号:

if "%choice%"=="1" (
  echo 正在启动 IronFish 节点...
  ironfish start
) else if "%choice%"=="2" (
  echo 正在查询余额...
  ironfish wallet:balance
  pause
) else if "%choice%"=="3" (
  echo 正在查询钱包地址...
  ironfish wallet:address
  pause
) else if "%choice%"=="4" (
  echo 正在查询转账记录...
  ironfish wallet:transactions
  pause
) else if "%choice%"=="5" (
  echo 正在创建钱包...
  ironfish wallet:create
  pause
) else if "%choice%"=="6" (
  echo 正在导出钱包...
  ironfish wallet:export
  pause
) else if "%choice%"=="7" (
  echo 正在导入钱包...
  ironfish wallet:import
  pause
) else if "%choice%"=="8" (
  echo 请打开另一个窗口使用命令“ironfish wallet:use 你的钱包名称”  不包含引号
  pause
) else if "%choice%"=="9" (
  echo 正在启动转账...
  ironfish wallet:send 
  pause
) else if "%choice%"=="10" (
  echo 正在修复钱包...
  ironfish wallet:rescan
  pause
) else (
  echo 选项 %choice% 无效，请重新选择。
  goto menu
)
