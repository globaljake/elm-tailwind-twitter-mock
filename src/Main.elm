module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class, href, src)


type alias Model =
    { test : String }


type Msg
    = NoOp


init : ( Model, Cmd Msg )
init =
    ( Model "hey", Cmd.none )


view : Model -> Html Msg
view model =
    div [ class "" ]
        [ -- Navigation
          div [ class "shadow bg-white fixed w-full" ]
            [ div [ class "container mx-auto" ]
                [ div [ class "flex items-center" ]
                    [ div [ class "flex w-2/5 text-sm font-medium" ]
                        [ a [ href "#", class "text-grey-darker no-underline p-4 border-b-2 border-white hover:text-blue hover:border-blue" ] [ span [] [ text "Home" ] ]
                        , a [ href "#", class "text-grey-darker no-underline p-4 border-b-2 border-white hover:text-blue hover:border-blue" ] [ span [] [ text "Moments" ] ]
                        , a [ href "#", class "text-grey-darker no-underline p-4 border-b-2 border-white hover:text-blue hover:border-blue" ] [ span [] [ text "Notifications" ] ]
                        , a [ href "#", class "text-grey-darker no-underline p-4 border-b-2 border-white hover:text-blue hover:border-blue" ] [ span [] [ text "Messages" ] ]
                        ]
                    , div [ class "flex flex-1 w-1/5 justify-center" ] [ text "twitter icon" ]
                    , div [ class "flex w-2/5 py-1 items-center justify-end" ]
                        [ div [] [ text "search" ]
                        , img [ class "mx-4 h-8 w-8 rounded-full", src "https://github.com/globaljake.png" ] []
                        , button [ class "rounded-full text-sm px-3 py-2 text-white bg-blue" ] [ text "Twittle" ]
                        ]
                    ]
                ]
            ]

        -- Content
        , div [ class "container mx-auto" ]
            [ div [ class "p-8" ] []
            , div [ class "flex" ]
                [ div [ class "w-1/4 mr-2 flex justify-center" ] [ text "left" ]
                , div [ class "xl:w-1/2 flex-1 flex justify-center bg-blue" ] [ text "center" ]
                , div [ class "w-1/4 ml-2 hidden xl:flex justify-center" ] [ text "right" ]
                ]
            ]
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , update = update
        , subscriptions = \_ -> Sub.none
        , view = view
        }
