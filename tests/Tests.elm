module Main exposing (..)

import List
import ElmTest exposing (..)


basicTests : List Test
basicTests =
    [ 0 `equals` 0
    , test "pass" (assert True)
    , test "fail" <| assertNotEqual True False
    , test "lazy" <| lazyAssert (\_ -> 6 > 5)
    ]


assertionListTests : List Test
assertionListTests =
    (List.map defaultTest <| assertionList [1..10] [1..10])


basicTestSuite : Test
basicTestSuite =
    suite "Basic Tests" basicTests


listTestSuite : Test
listTestSuite =
    suite "List Tests" assertionListTests


allTestSuite : Test
allTestSuite =
    suite "All Tests" [ basicTestSuite, listTestSuite ]


main =
    runSuite allTestSuite
