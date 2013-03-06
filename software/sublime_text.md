# Sublime text

## Install

From [official website](http://www.sublimetext.com/).

## Preferences

```json
{
  "color_scheme": "Packages/Color Scheme - Default/Espresso Libre.tmTheme"
  ,"draw_white_space": "all"
  ,"tab_size": 2
  ,"translate_tabs_to_spaces": true
  ,"default_line_ending": "unix"
}
```

* Espresso Libre color scheme
* always show white spaces
* use two spaces as indentation

## Plugins

### Package manager

Follow instructions on [official website](http://wbond.net/sublime_packages/package_control), commands starts with `Package Control:` ([source](http://wbond.net/sublime_packages/package_control/usage)).

### Emmet (ex Zen Coding)

* [github repository](https://github.com/sergeche/emmet-sublime)
* installed with package manager: `Package Control: Install Package` then `Emmet`, restart
* type expression and type `CTRL + E` to expand

### Sublime Linter

* [source repository](https://github.com/SublimeLinter/SublimeLinter)
* installed with package manager: `Package Control: Install Package` then `SublimeLinter` and finally restart

### Sublime Pandoc

* [source repository](https://github.com/jclement/SublimePandoc)
* used because it supports ```` ```language ```` syntax
* requires [Pandoc](http://johnmacfarlane.net/pandoc/) preinstalled
* installed with package manager: `Package Control: Install Package` then `Pandoc (Markdown)` and finally restart
* `CTRL + ALT + r` to comile and preview in the browser, `CTRL + ALT + SHIFT + r` to compile in place

### Grunt

* [source repository](https://github.com/tvooo/sublime-grunt)
* installed with package manager: `Package Control: Install Package` then `Grunt` and finally restart
* requires a directory containing `grunt.js` added to Sublime: `CTRL + MAJ + P` then `Grunt`, and finally choose the requested task

### Git Gutter

* [source repository](https://github.com/jisaacks/GitGutter)
* installed with package manager: `Package Control: Install Package` then `GitGutter` and finally restart

### ReadonlyWritable

Mainly for dealing with ClearCase...

* [source repository](https://github.com/pyzhangxiang/sublimetext-2-readonly-writable)
* installed with package manager: `Package Control: Install Package` then `ReadonlyWritable` and finally restart
* adds `Set Readonly` and `Set Writable` contextual menu entries when right-clicking in the editor or in the folders panel of the side bar
