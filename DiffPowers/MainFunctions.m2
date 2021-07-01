diffPowerPrimaryMonomial = method()

diffPowerPrimaryMonomial( MonomialIdeal, ZZ) := MonomialIdeal => (I, n) ->
(
    -- throw an exception is I is not a primary ideal
    assert isPrimary I

    -- do some stuff...
)


diffPowerMonomial = method()

diffPowerMonomial( MonomialIdeal, ZZ) := MonomialIdeal => (I, n) ->
(
    -- take a primary decomposition of I,
    -- take each primary component to nth differential power,
    -- intersect the ideals you get.

    intersect apply(primaryDecomposition I, J -> diffPowerPrimaryMonomial(J, n))
)
