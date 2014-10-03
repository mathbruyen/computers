# Sublime text

## Plugins

### Package manager

Installed via [standard install](https://sublime.wbond.net/installation), commands starts with `Package Control:` ([source](https://sublime.wbond.net/docs/usage)).

### Emmet (ex Zen Coding)

* [github repository](https://github.com/sergeche/emmet-sublime)
* installed with package manager: `Package Control: Install Package` then `Emmet`, restart
* type expression and type `CTRL + E` to expand

### TernJS

* [website](http://ternjs.net/)
* installed with package manager: `Package Control: Install Package` then `TernJS`

### Git Gutter

* [source repository](https://github.com/jisaacks/GitGutter)
* installed with package manager: `Package Control: Install Package` then `GitGutter` and finally restart

### Toggle Read-Only

Mainly for dealing with ClearCase...

* [source repository](https://github.com/reflog/toggle-readonly)
* installed with package manager: `Package Control: Install Package` then `Toogle Read-Only` and finally restart
* adds `Set Readonly` and `Set Writable` contextual menu entries when right-clicking in the editor

### MultiEditUtils

* [package homepage](https://sublime.wbond.net/packages/MultiEditUtils)
* installed with package manager: `Package Control: Install Package` then `MultiEditUtils` and finally restart

### Sublime Linter with javascript support

* install package `SublimeLinter-jshint` with package manager: `Package Control: Install Package` then `SublimeLinter` ([official website](http://www.sublimelinter.com/en/latest/))
* install [jshint](http://www.jshint.com/docs/): `npm install -g jshint`
* install package `SublimeLinter-jshint` with package manager: `Package Control: Install Package` then `SublimeLinter-jshint` ([repository](https://github.com/SublimeLinter/SublimeLinter-jshint))

### Rust

Install package `Rust` through package manager: `Package Control: Install Package` then `Rust` ([Official website](https://sublime.wbond.net/packages/Rust)).

### Edit file via SFTP

Installation:

* [official website](http://wbond.net/sublime_packages/sftp)
* install package `SublimeLinter-jshint` with package manager: `Package Control: Install Package` then `SFTP`

To synchronize a folder:

1. import folder to synchronize into Sublime's sidebar
2. right click on it -> SFTP/FTP -> Map to remote...
3. set `host`, `user`, `port`, `upload_on_save` and `ssh_key_file` in configuration file `sftp-config.json` created in the folder
