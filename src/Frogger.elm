module Frogger exposing (..)

import Html.App as App
import Html exposing (..)

type Msg
  = NoOp


type alias Model = Int


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    NoOp ->
      (model, Cmd.none)


view : Model -> Html Msg
view model =
  Html.div [] [ Html.text "Hello Frogger" ]

main : Program Never
main =
  App.program
    { init = (0, Cmd.none)
    , update = update
    , view = view
    , subscriptions = subscriptions
    }


subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none
