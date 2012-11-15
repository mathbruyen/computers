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

### Zen coding

#### Zen Coding

* [official website](http://code.google.com/p/zen-coding/)
* installed with package manager: `Package Control: Install Package` then `ZenCoding` and finally restart
* `CTRL + space` to expand expressions in HTML, XML, ... files ([source](http://stackoverflow.com/questions/8639088/how-do-i-activate-the-zen-coding-key-bindings-in-sublime-text-2))

#### Emmet (only tested on Windows for now)

* [github repository](https://github.com/sergeche/emmet-sublime)
* installed with package manager: `Package Control: Add Repository` then `https://github.com/sergeche/emmet-sublime`, `Package Control: Install Package` then `emmet-sublime`, restart
* `CTRL + ALT + ENTER` and then type in the expression to expand

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