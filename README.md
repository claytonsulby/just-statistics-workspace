# MATLAB / Statistics / LaTex Workspace

## Setup: Git, VS Code, and GitHub Copilot

1. Install Git (macOS)

- Check if installed:

```bash
git --version
```

- If missing, install one of:

```bash
# Option A: Apple Command Line Tools
xcode-select --install

# Option B: Homebrew
brew install git
```

- Configure your identity:

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

2.5. Install homebrew

Homebrew is a package manager for Mac. See more on the [Homebrew Website](https://brew.sh/)

Run these commands in the terminal to install.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$($(brew --prefix)/bin/brew shellenv)"' >> ~/.zshrc
eval "$(/opt/homebrew/bin/brew shellenv)"
```

This will add a new command to run in the terminal: "brew". You will see it used below.

2. Install VS Code

- Download: https://code.visualstudio.com/
- Optional via Homebrew:

```bash
brew install --cask visual-studio-code
```

3. Set up GitHub Copilot in VS Code

- Install the “GitHub Copilot” extension (see Recommendations in the Extensions view).
- Sign in to GitHub when prompted and enable Copilot for your account.

Set up the VSCode Copilot Settings:

- Move `"chat.tools.autoApprove": true` from your workspace settings in `./.vscode/settings.json` to your user settings in `~/.vscode/settings.json`
- Move `mcp.json` from your workspace vscode folder in `./.vscode` to your user vscode folder in `~/.vscode`

## Set Up LaTex

1. Install LaTex

```bash
brew install --cask mactex
echo 'export PATH="/Library/TeX/texbin:$PATH"' >> ~/.zshrc
source ~/.zshrc
latexmk -v
kpsewhich article.cls
```

2. Install the VSCode Extension

## Set Up Matlab

1. install matlab: https://www.mathworks.com/products/get-matlab.html
2. install the matlab vscode extension
   vscode matlab docs: https://www.mathworks.com/help/cloudcenter/ug/run-matlab-in-visual-studio-code.html
   get extension: https://marketplace.visualstudio.com/items?itemName=MathWorks.language-matlab
