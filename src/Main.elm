module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class, href, src)
import Svg exposing (svg, use)
import Svg.Attributes as Svg exposing (xlinkHref)


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
                    [ div [ class "flex w-2/5 text-xs font-medium" ]
                        [ a [ href "#", class "no-underline p-3 border-b-2 text-blue border-blue" ]
                            [ span [ class "flex items-center" ]
                                [ svg [ Svg.class "fill-current w-6 h-6" ]
                                    [ use [ xlinkHref "icons.svg#home" ] [] ]
                                , span [ class "ml-1 lg:block hidden" ] [ text "Home" ]
                                ]
                            ]
                        , a [ href "#", class "text-grey-darker no-underline p-3 border-b-2 border-white hover:text-blue hover:border-blue" ]
                            [ span [ class "flex items-center" ]
                                [ svg [ Svg.class "fill-current w-6 h-6" ]
                                    [ use [ xlinkHref "icons.svg#flash" ] [] ]
                                , span [ class "ml-1 lg:block hidden" ] [ text "Moments" ]
                                ]
                            ]
                        , a [ href "#", class "text-grey-darker no-underline p-3 border-b-2 border-white hover:text-blue hover:border-blue" ]
                            [ span [ class "flex items-center" ]
                                [ svg [ Svg.class "fill-current w-6 h-6" ]
                                    [ use [ xlinkHref "icons.svg#bell" ] [] ]
                                , span [ class "ml-1 lg:block hidden" ] [ text "Notifications" ]
                                ]
                            ]
                        , a [ href "#", class "text-grey-darker no-underline p-3 border-b-2 border-white hover:text-blue hover:border-blue" ]
                            [ span [ class "flex items-center" ]
                                [ svg [ Svg.class "fill-current w-6 h-6" ]
                                    [ use [ xlinkHref "icons.svg#mail" ] [] ]
                                , span [ class "ml-1 lg:block hidden" ] [ text "Messages" ]
                                ]
                            ]
                        ]
                    , div [ class "flex flex-1 w-1/5 justify-center" ]
                        [ svg [ Svg.class "fill-current text-blue w-6 h-6" ]
                            [ use [ xlinkHref "icons.svg#twitter" ] [] ]
                        ]
                    , div [ class "flex w-2/5 py-1 items-center justify-end" ]
                        [ img [ class "mx-4 h-8 w-8 rounded-full", src "https://github.com/globaljake.png" ] []
                        , button [ class "rounded-full text-sm px-3 py-2 text-white bg-blue" ] [ text "Twittle" ]
                        ]
                    ]
                ]
            ]

        -- Content
        , div [ class "container mx-auto" ]
            [ div [ class "p-8" ] []
            , div [ class "flex" ]
                [ div [ class "xl:w-1/4 md:w-1/3 hidden mr-3 md:flex sm:flex-col justify-center bg-white" ]
                    [ div [ class "w-full" ]
                        [ div [ class "h-24 bg-blue" ] []
                        , div [ class "flex" ]
                            [ img [ class "rounded-full mx-2 h-16 w-16 border-2 -mt-6 border-white", src "https://github.com/globaljake.png" ] []
                            , div [ class "flex flex-col" ]
                                [ span
                                    [ class "text-lg text-black font-medium mt-3" ]
                                    [ text "jake quattrocchi" ]
                                , span [ class "mt-1 text-grey-dark font-thin text-sm" ] [ text "@globaljake" ]
                                ]
                            ]
                        , div [ class "flex p-4 font-medium" ]
                            [ div [ class "flex flex-col flex-1" ]
                                [ span [ class "text-grey-darker text-xs" ] [ text "Tweets" ]
                                , span [ class "mt-1 text-blue" ] [ text "753" ]
                                ]
                            , div [ class "flex flex-col flex-1" ]
                                [ span [ class "text-grey-darker text-xs" ] [ text "Following" ]
                                , span [ class "mt-1 text-blue" ] [ text "161" ]
                                ]
                            , div [ class "flex flex-col flex-1" ]
                                [ span [ class "text-grey-darker text-xs" ] [ text "Followers" ]
                                , span [ class "mt-1 text-blue" ] [ text "195" ]
                                ]
                            ]
                        ]
                    ]
                , div [ class "xl:w-1/2 flex-1 flex flex-col bg-white" ]
                    [ div [ class "flex bg-blue-lightest p-3 items-center" ]
                        [ img [ class "ml-4 mr-2 h-8 w-8 rounded-full", src "https://github.com/globaljake.png" ] []
                        , div [ class "flex flex-1 rounded-lg justify-between text-sm text-blue-light border border-blue-lighter bg-white p-2 items-center" ]
                            [ text "What's happening?"

                            -- , svg [ Svg.class "fill-current text-blue w-6 h-6" ]
                            --     [ use [ xlinkHref "icons.svg#twitter" ] [] ]
                            ]
                        ]
                    , div [ class "p-4" ] [ text "post" ]
                    ]
                , div [ class "w-1/4 ml-3 hidden xl:flex justify-center bg-white" ] []
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
