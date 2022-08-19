# PirateUtils

[![Build Status](https://github.com/jlapeyre/PirateUtils.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/jlapeyre/PirateUtils.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/jlapeyre/PirateUtils.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/jlapeyre/PirateUtils.jl)


Some useful code that incidentally commits type piracy.

* `f^n` returns the function `(x, args...) -> f(f(f(x, args...), args...), args...)...`, where `f` is nested `n` times. This is taken from a post by oxinabox.

* `(construct a generator)()`. Calling a generator, iterates over the generator, discarding all values.
