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
echo 請選擇一個選項（輸入完畢後按 Enter 鍵）:
echo 1. 啟動节點
echo 2. 查詢餘額
echo 3. 查詢錢包地址
echo 4. 查詢轉帳記錄
echo 5. 創建錢包（創建後請記得切換錢包）
echo 6. 導出錢包私鑰
echo 7. 導入錢包（導入後請記得切換錢包）
echo 8. 切換錢包
echo 9. 轉帳
echo 10. 錢包修復（錢包餘額顯示不正常時使用）

set /p choice=請輸入選項編號:

if "%choice%"=="1" (
  echo 正在啟動 IronFish 節點...
  ironfish start
) else if "%choice%"=="2" (
  echo 正在查詢餘額...
  ironfish wallet:balance
  pause
) else if "%choice%"=="3" (
  echo 正在查詢錢包地址...
  ironfish wallet:address
  pause
) else if "%choice%"=="4" (
  echo 正在查詢轉帳記錄...
  ironfish wallet:transactions
  pause
) else if "%choice%"=="5" (
  echo 正在創建錢包...
  ironfish wallet:create
  pause
) else if "%choice%"=="6" (
  echo 正在導出錢包...
  ironfish wallet:export
  pause
) else if "%choice%"=="7" (
  echo 正在導入錢包...
  ironfish wallet:import
  pause
) else if "%choice%"=="8" (
  echo 請打開另一個視窗使用命令“ironfish wallet:use 你的錢包名稱”  不包含引號
  pause
) else if "%choice%"=="9" (
  echo 正在啟動轉帳...
  ironfish wallet:send 
  pause
) else if "%choice%"=="10" (
  echo 正在修復錢包...
  ironfish wallet:rescan
  pause
) else (
  echo 選項 %choice% 無效，請重新選擇。
  goto menu
)
