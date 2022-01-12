# About

A Dockerfile that will build the windows version of 2hol

# Prerequisites

The Dockerfile expects the 3 repos required to build 2hol are found within the
`2hol/` directory.

These are
* [twohoursonelife/OneLife](https://github.com/twohoursonelife/OneLife)
* [twohoursonelife/OneLifeData7](https://github.com/twohoursonelife/OneLifeData7)
* [twohoursonelife/minorGems](https://github.com/twohoursonelife/minorGems)

This can be accomplished by either
1. cloning them in yourself
2. running the `./clone_in_2hol_repos.sh` helper script

## Patches

Due to some errors in the main 2hol repo for this Dockerfile to work some
patches need to be applied to the 2hol game files

Once you clone in the repos using the above method applies the matches in the
`patches` dir, or use the provided script `apply_patches.sh`

# Building

To build the game just use

```
$ docker-compose up
```

This will
1. create the docker image
2. build the game
3. place the built game in `output`
