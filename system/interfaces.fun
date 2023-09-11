/*--------------------------------*- C++ -*----------------------------------*\
  =========                 |
  \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox
   \\    /   O peration     | Website:  https://openfoam.org
    \\  /    A nd           | Version:  dev
     \\/     M anipulation  |
 *---------------------------------------------------------------------------*
   File created by CFD support s.r.o.  on   Sat Jun  5 20:02:16 2021
                     http://www.cdfsupport.com
 *---------------------------------------------------------------------------*
   TCAE 21.02 licensed to:
      TCAE Test License
      Trial Version
      TCAE 21.02
      Annual
\*---------------------------------------------------------------------------*/
inletTube-in
{
    type interfaces;
    functionObjectLibs
    (
         "libTCFDinterfaces.so"
    );
    writeControl timeStep;
    writeInterval 1;
    averagingWindow 400;
    finalWriteTimes (2000 4000 6000 8000 10000 12000 14000);
    fields (pTot p phi magU);
    calculateAngles on;
    rhoInf 998.2;
    log debug;
    pRef 400000;
    weightField phi;
    axis (0 0 1);
    omega 1;
    patches
    (
         inletTube_inletTube-inlet_inlet
    );
    multiplier 1;
    orientation axial;
}

inletTube-to-volute
{
    type interfaces;
    functionObjectLibs
    (
         "libTCFDinterfaces.so"
    );
    writeControl timeStep;
    writeInterval 1;
    averagingWindow 400;
    finalWriteTimes (2000 4000 6000 8000 10000 12000 14000);
    fields (pTot p phi magU);
    calculateAngles on;
    rhoInf 998.2;
    log debug;
    pRef 400000;
    weightField phi;
    axis (0 0 1);
    omega 1;
    patches
    (
        interface_inletTube_volute_outlet 
    );
    multiplier 1;
    orientation axial;
}

impeller-from-volute
{
    type interfaces;
    functionObjectLibs
    (
         "libTCFDinterfaces.so"
    );
    writeControl timeStep;
    writeInterval 1;
    averagingWindow 400;
    finalWriteTimes (2000 4000 6000 8000 10000 12000 14000);
    fields (pTot p phi magU);
    calculateAngles on;
    rhoInf 998.2;
    log debug;
    pRef 400000;
    weightField phi;
    axis (0 0 1);
    omega -185.354;
    patches
    (
        interface_impeller_volute_inlet 
    );
    multiplier 1;
    orientation axial;
}

impeller-to-volute
{
    type interfaces;
    functionObjectLibs
    (
         "libTCFDinterfaces.so"
    );
    writeControl timeStep;
    writeInterval 1;
    averagingWindow 400;
    finalWriteTimes (2000 4000 6000 8000 10000 12000 14000);
    fields (pTot p phi magU);
    calculateAngles on;
    rhoInf 998.2;
    log debug;
    pRef 400000;
    weightField phi;
    axis (0 0 1);
    omega -185.354;
    patches
    (
        interface_impeller_volute_outlet 
    );
    multiplier 1;
    orientation radial;
}

volute-from-inletTube
{
    type interfaces;
    functionObjectLibs
    (
         "libTCFDinterfaces.so"
    );
    writeControl timeStep;
    writeInterval 1;
    averagingWindow 400;
    finalWriteTimes (2000 4000 6000 8000 10000 12000 14000);
    fields (pTot p phi magU);
    calculateAngles on;
    rhoInf 998.2;
    log debug;
    pRef 400000;
    weightField phi;
    axis (0 0 1);
    omega 1;
    patches
    (
        interface_volute_inletTube_inlet 
    );
    multiplier 1;
    orientation axial;
}

volute-from-impeller
{
    type interfaces;
    functionObjectLibs
    (
         "libTCFDinterfaces.so"
    );
    writeControl timeStep;
    writeInterval 1;
    averagingWindow 400;
    finalWriteTimes (2000 4000 6000 8000 10000 12000 14000);
    fields (pTot p phi magU);
    calculateAngles on;
    rhoInf 998.2;
    log debug;
    pRef 400000;
    weightField phi;
    axis (0 0 1);
    omega 1;
    patches
    (
        interface_volute_impeller_inlet 
    );
    multiplier 1;
    orientation radial;
}

volute-to-impeller
{
    type interfaces;
    functionObjectLibs
    (
         "libTCFDinterfaces.so"
    );
    writeControl timeStep;
    writeInterval 1;
    averagingWindow 400;
    finalWriteTimes (2000 4000 6000 8000 10000 12000 14000);
    fields (pTot p phi magU);
    calculateAngles on;
    rhoInf 998.2;
    log debug;
    pRef 400000;
    weightField phi;
    axis (0 0 1);
    omega 1;
    patches
    (
        interface_volute_impeller_outlet 
    );
    multiplier 1;
    orientation axial;
}

volute-to-voluteExtension
{
    type interfaces;
    functionObjectLibs
    (
         "libTCFDinterfaces.so"
    );
    writeControl timeStep;
    writeInterval 1;
    averagingWindow 400;
    finalWriteTimes (2000 4000 6000 8000 10000 12000 14000);
    fields (pTot p phi magU);
    calculateAngles on;
    rhoInf 998.2;
    log debug;
    pRef 400000;
    weightField phi;
    axis (0 0 1);
    omega 1;
    patches
    (
        interface_volute_voluteExtension_outlet 
    );
    multiplier 1;
    orientation radial;
}

voluteExtension-out
{
    type interfaces;
    functionObjectLibs
    (
         "libTCFDinterfaces.so"
    );
    writeControl timeStep;
    writeInterval 1;
    averagingWindow 400;
    finalWriteTimes (2000 4000 6000 8000 10000 12000 14000);
    fields (pTot p phi magU);
    calculateAngles on;
    rhoInf 998.2;
    log debug;
    pRef 400000;
    weightField phi;
    axis (0 0 1);
    omega 1;
    patches
    (
         voluteExtension_voluteExtension-outlet_outlet
    );
    multiplier 1;
    orientation radial;
}

voluteExtension-from-volute
{
    type interfaces;
    functionObjectLibs
    (
         "libTCFDinterfaces.so"
    );
    writeControl timeStep;
    writeInterval 1;
    averagingWindow 400;
    finalWriteTimes (2000 4000 6000 8000 10000 12000 14000);
    fields (pTot p phi magU);
    calculateAngles on;
    rhoInf 998.2;
    log debug;
    pRef 400000;
    weightField phi;
    axis (0 0 1);
    omega 1;
    patches
    (
        interface_voluteExtension_volute_inlet 
    );
    multiplier 1;
    orientation radial;
}

// ************************************************************************* //
