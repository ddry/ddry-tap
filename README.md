# ddry-tap

[![Build Status](https://travis-ci.org/ddry/ddry-tap.svg?branch=master)](https://travis-ci.org/ddry/ddry-tap) [![Coverage Status](https://coveralls.io/repos/github/ddry/ddry-tap/badge.svg?branch=master)](https://coveralls.io/github/ddry/ddry-tap?branch=master) [![dependencies Status](https://david-dm.org/ddry/ddry-tap/status.svg)](https://david-dm.org/ddry/ddry-tap) [![devDependencies Status](https://david-dm.org/ddry/ddry-tap/dev-status.svg)](https://david-dm.org/ddry/ddry-tap?type=dev)

<img src="https://cloud.githubusercontent.com/assets/5163953/22628172/6b91f120-ebe0-11e6-8456-0f5b2dc3a553.png" alt="ddry logo" width="250">

Optional dependency wrapper mounting TAP as **ddry** test harness.

Includes [ddry](https://www.npmjs.com/package/ddry) v0.1.19 and [TAP](https://www.npmjs.com/package/tap) v4.6.3.

Version reflects TAP version, so your `package.json` remains clean yet informative.

**ddry** activity is reflected in semver pre-release area.

### ddry CLI usage

ddry CLI gives you convenient access to your data-driven specs by
- keeping their config in `ddry.json` file
- implementing powerful features for maintaining this config file
- applying **only-except** style suite running scope with one shell command. 

_**Only-except** scoping logic is applicable to modules folders, modules and module methods levels._

In your development environment you may want to get easy access to `ddry` shell command by installing [ddry](https://www.npmjs.com/package/ddry) globally:

```sh
$ sudo npm i -g ddry
```

`ddry` is just a spec configuring tool, it does not perform any actual testing which is task of harness-specific commands as well as spec suite execution scoping.

Easy access to `ddry-tap` command is also obtained by installing this package globally:

```sh
$ sudo npm i -g ddry-tap
```

Now you can start your `ddry.json` file with `$ ddry i` command. It is very easy and welcoming and has quite comprehensive documentation accessible via `$ ddry ? i` command. Then you can populate your spec folder with data-driven specs, adjust `ddry.json` file for running specs from within TAP and conduct scoped execution of spec suite with `ddry-tap` command.

Run it without parameters for entire suite or use `-e` and `-o` keys for **except** and **only** scoping strategies applied to `tab`-completed code or spec files or folders.

To run the spec configured with `ddry.json` from within TAP feed it the `./node_modules/ddry/ddry.js` file. Please check [Makefile](https://github.com/ddry/ddry-tap/blob/master/Makefile) of this project for examples for every supported harness.

### Programmatical usage
**(obsolete)**

Feed to TAP any JS file of your choice and start **ddry** modular usage from

```coffee
spec = require('ddry/modular')()
spec.apply
  title: 'Your awesome module'
  code: 'lib'
  spec: 'spec'
```

or even ultimately superlatively obsolete basic plain usage:
```coffee
DataDriven = require 'ddry'
```

But I think you really want CLI for actual work.