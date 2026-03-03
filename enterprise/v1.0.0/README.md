# plugins

This repository stores the recipes to locate, build and install plugins for PlakarKorp's software.


## Is being listed to this repository mandatory ?

No, you are free to develop your own integrations,
build them and distribute them yourself through your own means.

Documentation is available on our website on how to proceed.


## Why should I get my integration listed ?

Very simple, if your integration is listed here,
your users will be able to locate the plugins more easily,
install them straight from our UI with one-click,
and have shortcuts on the CLI.

The following will locate the recipe for the integration named `foobar`,
resolve it into a repository and install the package pre-built for the system and architecture:

```
$ plakar pkg add foobar
```

If no pre-built package exists,
then users can still do the following to build your plugin:

```
$ plakar pkg build foobar
[...]
plugin created: foobar_v1.0.0_openbsd_arm64.ptar
```

and install it with:
```
$ plakar pkg add ./foobar_v1.0.0_openbsd_arm64.ptar
```

Basically,
get your integration listed if you want it to have a broader user-base,
don't if you prefer to distribute yourself or if your integration is closed-source.



## How to get my integration listed here ?

To have your integration listed here,
you need to open a pull request with a `recipe.yaml` describing the name of your integration,
the repository where your code resides,
the semver tag for a particular version,
and the checksum of that tag:

```yaml
name: imap
version: v0.1.0-devel.697fd98
repository: https://github.com/PlakarKorp/integration-imap
checksum: 697fd983ee4fecc91396af0e34dbe52fcda0f1fe
```

Our team will then validate the PR and add you to the listing.