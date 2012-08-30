# Sublime text

## Install

From [official website](http://www.sublimetext.com/).

## Preferences

```json
{
	"color_scheme": "Packages/Color Scheme - Default/Espresso Libre.tmTheme"
	,"draw_white_space": "all"
}
```

* Espresso Libre color scheme
* always show white spaces

## Plugins

### Package manager

Follow instructions on [official website](http://wbond.net/sublime_packages/package_control), commands starts with `Package Control:` ([source](http://wbond.net/sublime_packages/package_control/usage)).

### Zen coding

* [official website](http://code.google.com/p/zen-coding/)
* installed with package manager: `Package Control: Install Package` then `ZenCoding` and finally restart
* `CTRL + space` to expand expressions in HTML, XML, ... files ([source](http://stackoverflow.com/questions/8639088/how-do-i-activate-the-zen-coding-key-bindings-in-sublime-text-2))

### Sublime Linter

* [source repository](https://github.com/SublimeLinter/SublimeLinter)
* installed with package manager: `Package Control: Install Package` then `Pandoc (Markdown)` and finally restart

### Sublime Pandoc

* [source repository](https://github.com/jclement/SublimePandoc)
* used because it supports ```` ```language``` ```` syntax
* requires [Pandoc](http://johnmacfarlane.net/pandoc/) preinstalled
* installed with package manager: `Package Control: Install Package` then `ZenCoding` and finally restart
* `CTRL + ALT + r` to comile and preview in the browser, `CTRL + ALT + SHIFT + r` to compile in place

### Alignment

* [source repository](https://github.com/wbond/sublime_alignment)
* [documentation page](http://wbond.net/sublime_packages/alignment)
* installed with package manager: `Package Control: Install Package` then `Alignment` and finally restart
* `CTRL + ALT + a` to fix indentation and align `=` on a multiligne selection
