module View exposing (view)

import Html exposing (Html, h2, div, footer)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)

import Model exposing (..)
import Model.Scene exposing (..)
import Model.Score exposing (..)
import Subscription exposing (..)


view : Model -> Html Msg
view {scene} =
  viewMainScreen scene


viewMainScreen : Scene -> Html Msg
viewMainScreen scene =
  let
      button = Html.button [ onClick PlayNote ] [ Html.text "Play Note" ]
  in
      div
        [ class "Screen" ]
        [ h2 [] [ Html.text "Turn audio on" ]
        , footer [] [ button ]
        ]
