cabal configure
cabal install --only-dependencies
doctest Fib.hs
haddock -h Fib.hs -o doc/
cabal haddock --executable
