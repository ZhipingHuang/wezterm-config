
<p align="center" style="font-weight: bold;">
A GPU-accelerated cross-platform terminal emulator and multiplexer written by <a href="https://github.com/wez">@wez</a> and implemented in <a href="https://www.rust-lang.org">Rust</a>
</p>
<p align="center">
User facing docs and guide at: <a style="font-weight: bold;" href="https://wezterm.org">wezterm.org</a>
</p>

##                                  My WezTerm Config

**The configuration of the wezterm.**

### Overview

**screenshot1**

![Image_20250520_020023](./screenshots/Image_20250520_020023.png)

**screenshot2**

![Image_20250520_020246](./screenshots/Image_20250520_020246.png)

**screenshot3**

![Image_20250520_020333](./screenshots/Image_20250520_020333.png)

### Requirements

- A wezterm terminal emulator
- A Nerd Font

### Usage

1. Install wezterm

[WezTerm终端](https://github.com/wezterm/wezterm/releases)

2. Install NerdFont

Download the corresponding font from the [NerdFont official website](https://www.nerdfonts.com/cheat-sheet)

**Recommended fonts**

[MesloLGM Nerd Font](https://github.com/ryanoasis/nerd-fonts/blob/v3.2.1/patched-fonts/Meslo/M/Regular/MesloLGMNerdFont-Regular.ttf)

[JetBrainsMono NF](https://github.com/ryanoasis/nerd-fonts/blob/v3.2.1/patched-fonts/JetBrainsMono/Ligatures/Regular/JetBrainsMonoNerdFont-Regular.ttf)

> [!CAUTION]
>
> Version>=v3.2.1. The font version must be matched with the icon; otherwise, strange garbled characters will appear.

3. Download this repository and uncompress the package.

4. Place the decompressed files in the designated path.

> Linux Path: `$HOME/.config/wezterm`
>
> Windows Path: `C:\Users\SHIERYUE\.config\wezterm`

### Keymaps

#### misc

| F1    |                 | activate copy mode       |
| ----- | --------------- | :----------------------- |
| F2    |                 | activate command palette |
| F3    |                 | show launcher            |
| F4    | 查看所有tab情况 | show tab navigator       |
| F11   | 全屏            | toggle full screen       |
| F12   | 打开debug界面   | show debug overlay       |
| Alt+f | 查找            | search                   |

#### copy&paste

| Ctrl+Shift+c | 复制 | copy  |
| ------------ | ---- | ----- |
| Ctrl+Shift+v | 粘贴 | paste |

#### tab operation

| Ctrl+Alt+t     | 根据当前domain创建新tab | spawn a new tab       |
| -------------- | ----------------------- | :-------------------- |
| Ctrl+Alt+w     | 关闭当前tab             | close current tab     |
| Alt+[          | 切换至上一个tab         | activate previous tab |
| Alt+]          | 切换至下一个tab         | activate next tab     |
| Ctrl+Tab       | 切换至下一个tab         | activate next tab     |
| Ctrl+Shift+Tab | 切换至上一个tab         | activate previous tab |
| Ctrl+Alt+[     | 当前tab移动至左边       | move tab to previous  |
| Ctrl+Alt+]     | 当前tab移动至右边       | move tab to next      |
| Ctrl+Shift+r   | 重命名当前tab           | rename tab bar        |
| ALT+Num[1~8]   | 切换至tab[1~8]          | activate tab[1~8]     |

#### windows operation

| Alt+n | 创建新的windows | spawn a new window |
| ----- | --------------- | ------------------ |

#### pane operation

| Ctrl+Alt+[\\] |   水平拆分pane(左右拆分)   | split pane vertical            |
| ------------- | :------------------------: | :----------------------------- |
| Ctrl+Alt+[-]  |   垂直拆分pane(上下拆分)   | split pane horizontal          |
| Ctrl+Alt+[/]  | 关闭当前pane（需主动确认） | close current pane(confirm)    |
| Ctrl+Alt+z    |   最大化/最小化当前pane    | zoom pane                      |
| Alt+w         |  关闭当前pane（无需确认）  | close current pane(no confirm) |
| Crtl+Alt+h    |        向左移动光标        | move the cursor to the left    |
| Crtl+Alt+l    |        向右移动光标        | move the cursor to the right   |
| Crtl+Alt+j    |        向下移动光标        | move the cursor to the down    |
| Crtl+Alt+k    |        向上移动光标        | move the cursor to the up      |
| Ctrl+Alt+[↑]  |   调整当前pane大小(向上)   | adjust pane size(up)           |
| Ctrl+Alt+[↓]  |   调整当前pane大小(向下)   | adjust pane size(down)         |
| Ctrl+Alt+[←]  |   调整当前pane大小(向左)   | adjust pane size(left)         |
| Ctrl+Alt+[→]  |   调整当前pane大小(向右)   | adjust pane size(right)        |

#### font operation

| Alt+[↑] | 放大字体     | increase font size |
| ------- | ------------ | :----------------- |
| Alt+[↓] | 缩小字体     | decrease font size |
| Alt+r   | 重置字体大小 | reset font size    |

#### Key Tables

> **Leader**:Ctrl+Shift+Space

##### resize panes

| Leader+p | 进入pane调整模式       | resize panes mode       |
| -------- | ---------------------- | :---------------------- |
| h        | 调整当前pane大小(向左) | adjust pane size(left)  |
| l        | 调整当前pane大小(向右) | adjust pane size(right) |
| j        | 调整当前pane大小(向下) | adjust pane size(down)  |
| k        | 调整当前pane大小(向上) | adjust pane size(up)    |
| Esc      | 退出pane调整模式       | quit                    |
| q        | 退出pane调整模式       | quit                    |

##### resize fonts

| Leader+f | 进入font调整模式 | resize fonts mode  |
| -------- | ---------------- | :----------------- |
| k        | 放大字体         | increase font size |
| j        | 缩小字体         | decrease font size |
| r        | 重置字体大小     | reset font size    |
| Esc      | 退出font调整模式 | quit               |
| q        | 退出font调整模式 | quit               |

### Reference

- <https://github.com/rxi/lume>
- <https://github.com/catppuccin/wezterm>
- <https://github.com/wezterm/wezterm/discussions/628#discussioncomment-1874614>
- <https://github.com/wezterm/wezterm/discussions/628#discussioncomment-5942139>
- <https://github.com/wezterm/wezterm/discussions/628#discussioncomment-3649195>
- <https://github.com/QianSong1/wezterm-config>
- <https://github.com/KevinSilvester/wezterm-config>

### Enioy

🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈🎈

**Now, Please Enjoy it!**

💐💐💐💐💐💐💐💐💐💐💐💐💐💐💐💐💐💐💐💐💐💐💐💐💐💐💐💐💐💐💐💐💐💐💐

![img](https://dl4.weshineapp.com/gif/20210910/0b930df9c7d662cb6b729787ec2578b7.gif?f=micro_)



