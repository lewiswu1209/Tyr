# Tyr

我把以前的Heimdall分成了两个repo，Sif是渗透的工具集，Tyr是做取证的工具集合。

## What's in it

### 取证工具
    +ALB
    +Yara
    +foremost
    +volatility3
    +Mitigating-Web-Shells

### 逆向分析
    +apktool
    +dex-tools
    +jd-gui
    
### 字典
    +Yara-Rules
    
## How to install
我用的是新版Ubuntu，你用的如果不是的话……good luck：
```
git clone https://github.com/lewiswu1209/Tyr.git /opt/Tyr
chmod +x /opt/Tyr/setup.sh && /opt/Tyr/setup.sh
```
如果你不是root，那就需要sudo -E来运行脚本吧
```
sudo -E /opt/Tyr/setup.sh
```

## 欢迎通过pull request和提交issue的方式和我交流
