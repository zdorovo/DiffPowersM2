newPackage( "DiffPowers",
Version => "0.1", 
Date => "June 28, 2021", 
Authors => {
     {Name => "Insert Name",
     Email => "Insert e-mail"
     },
     
     {Name => "Insert Name",
     Email => "Insert e-mail"
     },
     
     {Name => "Insert Name",
     Email => "Insert e-mail"
     },
     
     {Name => "Insert Name",
     Email => "Insert e-mail"
     },
     
     {Name => "Insert Name",
     Email => "Insert e-mail"
     },
     
     {Name => "Insert Name",
     Email => "Insert e-mail"
     },     
},
Headline => "A package for computing differential powers", 
DebuggingMode => true, 
Reload => true,
AuxiliaryFiles => true
)

--needsPackage "TestIdeals"

export{
       
--names of functions we're exporting
    "DiffPower",
    
}

-- Loading the actual code

load "./DiffPowers/BasicFunctions.m2"

load "./DiffPowers/MainFunctions.m2"

-- Loading the documentation

beginDocumentation()

load "./DiffPowers/MainFunctionsDoc.m2"

-- Loading the tests

load "./FThresholds/SpecialFThresholdsTest.m2"
