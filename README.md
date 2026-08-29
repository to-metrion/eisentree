# BATTLE FACILITIES DAMAGE CALCULATOR // EISEN EDITION

By [Eisenherz](https://www.smogon.com/forums/members/eisenherz.326390/) & SilverstarStream, based on the [BSS damage calculator](http://cantsay.github.io/) by cant say ([@jakecantsay](https://twitter.com/jakecantsay)) and [Lego](https://www.smogon.com/forums/members/188833/).

This calculator is a branch of the [main eisencalc calculator](https://eisencalc.com), used for custom Eisen facilites (EisenTree and EisenBerry Academy).

Custom sets can be input within the calculator using the official Pokemon Showdown format.

```
Nickname (Species) @ Item
Ability: Name
Level: #
EVs: # Stat / # Stat / # Stat
Serious Nature
IVs: # Stat
- Move Name
- Move Name
- Move Name
- Move Name
```

## Contributing:
The site is powered by Jekyll, with linting by nodejs' eslint.

Do NOT Edit anything under the ``_site`` or ``eisentree`` folders.
``_site`` is regenerated whenever you make changes to the other files.
Site content folders in the root are copied to ``eisentree`` when ``run.bat`` is run.
Edits made to these folders will NOT be saved.

Jekyll uses the [Liquid](https://shopify.github.io/liquid/) templating language, combined with a YAML Front-Matter to serve pages. This allows us to use templates and ``{% includes %}`` tags (see ``/_layouts/default.html``) to avoid repeating content (such as the header used by both ``index.html`` and ``/_pages/privacy.html``) with the following in the YAML Front-Matter:
```
---
layout: default
---
```
This means that any page with this Front-Matter will use ``default.html`` injected with its contents where it says ``{{ content }}``.

Different layouts can be used but they would have to be created separately.

Aside from that, the repo should be fairly simple to navigate.

#### Build Instructions
##### One-time setup:
1. Install [Ruby](https://www.ruby-lang.org/en/) (use [RubyInstaller](https://rubyinstaller.org/downloads/) if on Windows)
2. Double-click ``setup.bat`` if on Windows, or view the script's main content for the necessary commands.

##### Running the calc:
The site can be ran locally by double-clicking ``run.bat``.

This will open a page in the default browser that will have a connection error. Wait for several seconds for the site to build (this can be seen from the terminal), then refresh the page.

#### EisenTree configuration note:
Changes to files will NOT automatically propagate to a running localhost because the site content the localhost uses actually comes from the ``eisencalc`` folder. The ``eisencalc`` folder is then copied to the ``_site`` folder by Jekyll and used by the localhost. The most guaranteed way to propagate the changes is to end the localhost and run ``run.bat`` again between changes, since ``run.bat`` will copy the site content to ``eisencalc``.

#### Testing and PRing changes
Please ensure your code passes our tests before submitting your PR!

NOTE: Running the tests launches an instance of Firefox, and Firefox is required to be installed.

As an alternative, Chrome can be used instead (must be installed). In this case, replace `Capybara.current_driver = :selenium_headless` with `Capybara.current_driver = :selenium_chrome_headless`.

1. Double-click ``test.bat``.
2. Fix any errors turned up by the test!
3. If appropriate, consider adding a test to capture the changes' behavior.
4. Create a pull request for your changes!

## Handy Links:

* [Calc](https://to-metrion.github.io)
* [BSS Calc](https://cantsay.github.io/sumo-bss-calc/)
* [Parser (PS! Importable to calc format)](https://legofigure11.github.io/custom-calc-parser/)
* [VGC Calc](https://jake-white.github.io/VGC-Damage-Calculator/) ([git](https://github.com/jake-white/VGC-Damage-Calculator))
* [PS! Calc](https://pokemonshowdown.com/damagecalc/) ([git](https://github.com/Zarel/honko-damagecalc))
