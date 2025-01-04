# dot
Dot files

## ZSH Configuration File Description

This configuration file is customized for Zsh and includes commonly used aliases, plugins, and tools to enhance the terminal experience. Below is a detailed explanation of the configuration file:

---

### **Aliases**
- `ls="lsd"`: Replaces the `ls` command with `lsd`, a modern alternative to `ls` that supports icons and better visual effects.
- `cat="bat"`: Replaces the `cat` command with `bat`, a `cat` alternative with syntax highlighting and paging functionality.

---

### **Zinit Plugin Manager**
Zinit is an efficient Zsh plugin manager used to load and manage Zsh plugins. The configuration file initializes Zinit as follows:
```zsh
source $HOMEBREW_PREFIX/opt/zinit/zinit.zsh
```

---

### **Plugins and Tools**
#### **Starship Prompt**
Starship is a fast, highly customizable command-line prompt tool. It is loaded via Zinit:
```zsh
zinit ice wait"!" lucid as"command" from"gh-r" \
          atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
          atpull"%atclone" src"init.zsh"
zinit light starship/starship
```
- Downloads Starship from GitHub Releases.
- Generates initialization and completion scripts during cloning.
- Regenerates scripts on each update.

---

#### **Zoxide Directory Navigation**
Zoxide is a smart directory navigation tool that replaces the `cd` command. It is loaded via Zinit:
```zsh
zinit wait'1' lucid \
	from"gh-r" as"program" pick"zoxide-*/zoxide" \
	atclone"./zoxide init zsh > init.zsh" \
	atpull"%atclone" src"init.zsh" \
	light-mode for @ajeetdsouza/zoxide
```
- Downloads Zoxide from GitHub Releases.
- Generates initialization scripts during cloning.
- Regenerates scripts on each update.

---

#### **Zsh Autosuggestions**
This plugin provides command suggestions based on history and context. It is loaded via Zinit:
```zsh
zinit ice wait"1" lucid
zinit light zsh-users/zsh-autosuggestions
```

---

#### **Zsh Completions**
This plugin provides extensive command completion functionality. It is loaded via Zinit:
```zsh
zinit ice wait"1" lucid
zinit light zsh-users/zsh-completions
```

---

#### **Fast Syntax Highlighting**
This plugin provides real-time syntax highlighting for Zsh. It is loaded via Zinit:
```zsh
zinit ice wait lucid
zinit light zdharma-continuum/fast-syntax-highlighting
```

---

### **Dependencies**
- **Homebrew**: Used to install Zinit and other tools.
- **lsd**: A replacement for `ls`, installable via Homebrew:
  ```bash
  brew install lsd
  ```
- **bat**: A replacement for `cat`, installable via Homebrew:
  ```bash
  brew install bat
  ```

---

### **Usage**
1. Save the configuration file as `~/.zshrc` or `~/.zshrc.local`.
2. Ensure Homebrew and required tools (e.g., `lsd` and `bat`) are installed.
3. Restart the terminal or run `source ~/.zshrc` to apply the configuration.

---

### **Customization**
- To modify the prompt style, refer to the [Starship documentation](https://starship.rs/).
- To adjust Zoxide's behavior, refer to the [Zoxide documentation](https://github.com/ajeetdsouza/zoxide).

---

### **Notes**
- Ensure Zinit is installed and configured correctly.
- If you encounter plugin loading issues, try updating Zinit and the plugins:
  ```bash
  zinit self-update
  zinit update --all
  ```
