module VerifyExamples.Set.Verify.NotEmpty1 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect
import Set.Verify exposing(..)

import Set







spec1 : Test.Test
spec1 =
    Test.test "#notEmpty: \n\n    notEmpty \"error\" <| Set.empty\n    --> Err [ \"error\" ]" <|
        \() ->
            Expect.equal
                (
                notEmpty "error" <| Set.empty
                )
                (
                Err [ "error" ]
                )