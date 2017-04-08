module Model exposing (..)

import Model.Scene exposing (..)


type alias Model =
  { scene : Scene }


initialModel : Model
initialModel =
  { scene = initialScene }
