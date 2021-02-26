# Introduction to Developer Environment

建立工作環境，支援Windows、MacOS及Unix作業系統

透過Bash Script可以安裝及開啟應用程式，可以依據不同專案設定環境變數，而Windows系統則會安裝Git Bash for Windows並執行GitBash

## 特色

因應各自專案需要特定的Eclipse及JDK版本，將版本放置eclipses, jvms資料夾內，透過link方式建立連結，並放在專案代碼家目錄下(路徑為developer\home\<project-id>)，以test-proj當範例如下所示

> 若專案有設定環境變數的需求，可以在專案代碼家目錄下建立bash.bashrc的執行檔，當設定專案代碼時，Bash會自動執行bash.bashrc

```bash
# Project ID: test-proj
$ ls -al developer/home/test-proj
-rwxr-xr-x 1 1510013 1049089 82 二月    4 15:56 bash.bashrc*
lrwxrwxrwx 1 1510013 1049089 45 二月    4 15:25 eclipse -> /d/developer/eclipses/eclipse-jee-2019-06-R-win32-x86_64/
lrwxrwxrwx 1 1510013 1049089 44 二月    4 15:41 java -> /d/developer/jvms/jdk-7u02-windows-i586/
drwxr-xr-x 1 1510013 1049089  0 一月   29 21:33 workspace/
```

## File System

| Folder  | Description          | 備註         |
| :-----: | :------------------- | :----------- |
| bin     | Binaries             | 執行程式      |
| dev     |
| eclipse | Store eclipse        | 放置各個版本  |
| etc     | Configuration Files  | 儲放設定檔案  |
| home    | Home Directories     | 各專案環境    |
| lib     | Shared Libraries     |
| media   |
| mnt     |
| opt     | Optional add-on Apps | 附加的應用程式 |
| repos   | Repository           | 程式儲存庫     |
| tmp     | Temporary Files      | 暫存資料夾     |
| usr     | User Utilities and Applications |
| var     | Variable Files       |

## Install Developer

- 下載壓縮檔
> 透過GitHub下載zip檔案，並解壓縮在電腦即可使用
- 透過Git Command
> 

## 開啟

由於Developer支援各個作業系統，所以啟動方式會依作業系統而有所不一致，以下將會分開介紹各作業系統的處理方式

### Windows

執行在Developer資料夾的`Developer.bat`檔案，即可啟動GitBash

> 因為未帶入專案代碼，所以會使用預設專案代碼啟動
> 可以執行以下指令，設定專案代碼，或將`Developer.bat`建立捷徑，在 **目標** 欄位值後面加上一個空格及專案代碼，執行後將會自動設定專案代碼

```bash
$ source developer <project-id>
```

![Developer捷徑設定](https://i.imgur.com/BiwMhW9.png)


### MacOS

開啟Terminal

```bash
$ source developer <project-id>
```

> 若未輸入專案代碼，則會預設使用developer

## Feedback

若在使用過程中，有問題或是希望實作的功能，請透過GitHub提出issue，我們將會盡快評估及修正，感謝大家!