module Subscription exposing (..)

import Model exposing (..)


type Msg
  = PlayNote


subscriptions : Model -> Sub Msg
subscriptions {scene} =
  Sub.batch []
