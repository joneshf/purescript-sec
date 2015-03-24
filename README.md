# Module Documentation

## Module Data.SEC


Provides monomorphic versions of functions for a nice DSL.

#### `argument`

``` purescript
argument :: forall a b c. (a -> b) -> (b -> c) -> a -> c
```


#### `both`

``` purescript
both :: forall a b c d. (a -> c) -> (b -> d) -> Tuple a b -> Tuple c d
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




