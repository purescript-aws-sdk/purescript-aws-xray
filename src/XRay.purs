

-- | <p>AWS X-Ray provides APIs for managing debug traces and retrieving service maps and other data created by processing those traces.</p>
module AWS.XRay where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Service (Options, Service, ServiceName(..), service) as AWS

newtype Service = Service AWS.Service

service :: forall eff. AWS.Options -> Eff (exception :: EXCEPTION | eff) Service
service options = do
    let serviceName = AWS.ServiceName "XRay"
    service' <- AWS.service serviceName options
    pure $ Service service'
