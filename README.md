# Habitat

An environment configuration tool for \*nix machines.

Written by @openspectrum as a (practical/usable) learning project.

- - -

## Notes

Ideas for commands

```shell
$ habitat establish	# setup new environment (run all commands)
$ habitat fertilize 	# install os-level dependencies
$ habitat seed <seed>	# create a seed named <seed>
$ habitat plant		# install all seeds
$ habitat plant <seed>  # install/create a seed
$ habitat grow 		# upgrade all
$ habitat grow <seed>   # upgrade a seed
$ habitat diagnostics   # run tests
$ habitat settings
```

Stages

1. Build folder structure
- Configure OS
- Install all software and packages
- Create symlinks to dotfiles

Design principles

- Small, composable parts.
- Functions and files explain themselves.
- Whenever possible, actions are idempotent.
- As few dependencies as possible.
- Interfaces are minimal and consistent.
- Values at the boundaries are scalar.

## Inspiration

Much inspiration taken from @garybernhardt's [talk on Boundaries](https://www.destroyallsoftware.com/talks/boundaries).

## Tasks

- [ ] Set computer name (osx-ui)
- [ ] Set custom desktop image (osx-ui)
