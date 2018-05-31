module VerifyExamples.Verify.Verify0 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect
import Verify exposing(..)

import Maybe.Verify exposing (isJust)



validator : Validator String { a | firstName : Maybe String } String
validator =
    validate identity
        |> verify .firstName (isJust "You need to provide a first name.")



spec0 : Test.Test
spec0 =
    Test.test "#verify: \n\n    validator { firstName = Just \"Stöffel\" }\n    --> Ok \"Stöffel\"" <|
        \() ->
            Expect.equal
                (
                validator { firstName = Just "Stöffel" }
                )
                (
                Ok "Stöffel"
                )