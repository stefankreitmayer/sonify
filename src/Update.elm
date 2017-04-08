module Update exposing (..)

import Model exposing (..)
import Model.Scene exposing (..)
import Model.Score exposing (..)
import Subscription exposing (..)
import Interop exposing (..)

import Debug exposing (log)


update : Msg -> Model -> (Model, Cmd Msg)
update action ({scene} as model) =
  case action of
    PlayNote ->
      let
          score_ = stepScore scene.score
          scene_ = { scene | score = score_ }
      in
          ({ model | scene = scene_}, play scene.score.freq)


stepScore : Score -> Score
stepScore {freq} =
  Score (((freq * 1.2 |> floor) % 2000) + 500 |> toFloat)
