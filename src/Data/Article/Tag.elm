module Data.Article.Tag exposing (Tag, decoder, toString)

import Json.Decode as Decode exposing (Decoder)
import StringEq as String


type Tag
    = Tag String


toString : Tag -> String
toString (Tag slug) =
    slug


decoder : Decoder Tag
decoder =
    Decode.map Tag Decode.string
