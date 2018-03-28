## Module AWS.XRay

<p>AWS X-Ray provides APIs for managing debug traces and retrieving service maps and other data created by processing those traces.</p>

#### `Service`

``` purescript
newtype Service
  = Service Service
```

#### `service`

``` purescript
service :: forall eff. Options -> Eff (exception :: EXCEPTION | eff) Service
```


