module Model.Scene exposing (..)

import Model.Score exposing (..)


type alias Scene =
  { score : Score }


initialScene : Scene
initialScene =
  { score = Score 500 }
