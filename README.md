# Dotfiles

### By: Tobias Lundgren

## Features

- [Codespaces compatible](https://docs.github.com/en/github/developing-online-with-codespaces/personalizing-codespaces-for-your-account)
- iTerm (vi mode)
- Zsh
- Brew
- MacOS settings
- MacOS Apps
- Neovim
- VS Code
- Github CLI
- Alfred
- Preview Markdown, json and files with Spotlight

## Install 🛠

With curl:

```
cd; curl -#L https://github.com/lundgren2/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md}
```

Manual:

```
git clone https://github.com/lundgren2/dotfiles.git
cd dotfiles
make
```

## ZSH

`.zshrc' is sourced in interactive shells. It should contain commands to set up aliases, functions, options, key bindings, etc.

### Profiling

Zsh provides a built-in module `zsh/zprof` that can be used to profile Zsh functions. At the beginning of `~/.zshrc`, add `zmodload zsh/zprof`. After restart the shell, run `zprof` to show a rich output on Zsh startup loading.

There is also an alias `benchmarkShell` that time the shell startup 10 times.

## MacOS:

# Manual steps:

- Authenticate Github CLI: `gh auth login`.
- Setup Jetbrains IntelliJ licence
- Login to Logi Options account

## Credits

- https://dotfiles.github.io/
- https://github.com/thoughtbot/dotfiles
- https://github.com/mathiasbynens/dotfiles
- https://github.com/webpro/awesome-dotfiles
- https://htr3n.github.io/2018/07/faster-zsh/
