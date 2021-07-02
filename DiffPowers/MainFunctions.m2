diffPowerPrimaryMonomial = method()

diffPowerPrimaryMonomial( MonomialIdeal, ZZ) := MonomialIdeal => (I, n) ->
(
    -- throw an exception is I is not a primary ideal
    assert isPrimary I;

    -- do some stuff...

    -- getting the values of the powers
    -- and the variables appearing in I
    G = first entries mingens I;
    num = #G;
    -- an element of L is (variable, power of variable in generators of I)
    L = apply(num, i -> ((support G_i)_0, first degree G_i));
    -- TODO: finish finding generators of diff power
    Gpow = apply(num, i -> ((L_i)_0)^((L_i)_1 + n - 1));
    -- get a list of combinations of variables
    C = for i from 2 to num list select(compositions (num, i), comp -> all(comp, c -> c <= 1));
    -- for each combination, assign powers properly (finish)
    for i from 0 to #C - 1 do 
        (for j from 0 to #(C_i) - 1
            do 
            deg = n;
            (for k from 0 to num - 1 when ((C_i)_j)_k != 0 do deg = deg + (L_k)_1 - 1);
            pows = compositions(i + 2, deg);
            -- append to Gpow
            )
    
    -- testing below
    << Gpow;
)


diffPowerMonomial = method()

diffPowerMonomial( MonomialIdeal, ZZ) := MonomialIdeal => (I, n) ->
(
    -- take a primary decomposition of I,
    -- take each primary component to nth differential power,
    -- intersect the ideals you get.

    intersect apply(primaryDecomposition I, J -> diffPowerPrimaryMonomial(J, n))
)
