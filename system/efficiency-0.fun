/*--------------------------------*- C++ -*----------------------------------*\
  =========                 |
  \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox
   \\    /   O peration     | Website:  https://openfoam.org
    \\  /    A nd           | Version:  dev
     \\/     M anipulation  |
 *---------------------------------------------------------------------------*
   File created by CFD support s.r.o.  on   Sat Jun  5 20:18:52 2021
                     http://www.cdfsupport.com
 *---------------------------------------------------------------------------*
   TCAE 21.02 licensed to:
      TCAE Test License
      Trial Version
      TCAE 21.02
      Annual
\*---------------------------------------------------------------------------*/
efficiency-0
{
    type efficiency;
    functionObjectLibs
    (
         "libTCFDefficiency.so"
    );
    writeControl timeStep;
    writeInterval 1;
    averagingWindow 400;
    finalWriteTimes (2000 4000 6000 8000 10000 12000 14000);
    inletPatchesDict
    {
        inletTube_inletTube-inlet_inlet 1;
    }
    outletPatchesDict
    {
        voluteExtension_voluteExtension-outlet_outlet 1;
    }
    torquePatchesDict
    {
        impeller_impeller-blades_wall 1;
        impeller_impeller-bladeFillets_wall 1;
        impeller_impeller-innerHub_wall 1;
        impeller_impeller-innerShroud_wall 1;
        volute_impeller-outerHub_wall 1;
        volute_impeller-outerShroud_wall 1;
        volute_impeller-hubWall_wall 1;
        volute_impeller-shroudWall_wall 1;
    }
    fluxWeights true;
    pName p;
    UName U;
    rhoName rhoInf;
    rhoInf 998.2;
    phiName phi;
    log true;
    axis (0 0 1);
    omega -185.354;
    origin (0 0 0);
    machineType pump;
    pRef 400000;
    g 9.81;
}

// ************************************************************************* //
