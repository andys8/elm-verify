module VerifyExamples.Verify.Verify1 exposing (..)

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



spec1 : Test.Test
spec1 =
    Test.test "#verify: \n\n    validator { firstName = Nothing }\n    --> Err [ \"You need to provide a first name.\" ]" <|
        \() ->
            Expect.equal
                (
                validator { firstName = Nothing }
                )
                (
                Err [ "You need to provide a first name." ]
                )