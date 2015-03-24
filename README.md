# Module Documentation

## Module Data.SEC


Provides monomorphic versions of functions for a nice DSL.
The majority of these functions are just `(<$>)`.

The idea here is that you can traverse into a data structure and
modify some piece of it.
This library is like a much more simplistic version of `purescript-lens`.

#### `(..)`

``` purescript
(..) :: forall a b c. (b -> c) -> (a -> b) -> a -> c
```


#### `andAlso`

``` purescript
andAlso :: forall a b c d. (a -> c) -> (b -> d) -> Tuple a b -> Tuple c d
```


#### `argument`

``` purescript
argument :: forall a b c. (a -> b) -> (b -> c) -> a -> c
```


#### `connect`

``` purescript
connect :: forall a b c. (a -> c) -> (b -> c) -> Either a b -> c
```


#### `elements`

``` purescript
elements :: forall a b. (a -> b) -> [a] -> [b]
```


#### `first`

``` purescript
first :: forall a b c. (a -> b) -> Tuple a c -> Tuple b c
```


#### `inHead`

``` purescript
inHead :: forall a. (a -> a) -> [a] -> [a]
```


#### `inLast`

``` purescript
inLast :: forall a. (a -> a) -> [a] -> [a]
```


#### `inPos`

``` purescript
inPos :: forall a. Number -> (a -> a) -> [a] -> [a]
```


#### `inSome`

``` purescript
inSome :: forall a. [Number] -> (a -> a) -> [a] -> [a]
```


#### `left`

``` purescript
left :: forall a b c. (a -> b) -> Either a c -> Either b c
```


#### `just`

``` purescript
just :: forall a b. (a -> b) -> Maybe a -> Maybe b
```


#### `orElse`

``` purescript
orElse :: forall a b c d. (a -> c) -> (b -> d) -> Either a b -> Either c d
```


#### `result`

``` purescript
result :: forall a b c. (b -> c) -> (a -> b) -> a -> c
```


#### `right`

``` purescript
right :: forall a b c. (a -> b) -> Either c a -> Either c b
```


#### `second`

``` purescript
second :: forall a b c. (a -> b) -> Tuple c a -> Tuple c b
```


#### `set`

``` purescript
set :: forall a b. a -> b -> a
```


#### `split`

``` purescript
split :: forall a b c. (a -> b) -> (a -> c) -> a -> Tuple b c
```




