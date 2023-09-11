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
cavitation
{
    type cavitation;
    functionObjectLibs
    (
         "libTCFDcavitation.so"
    );
    writeControl outputTime;
    writeInterval 1;
    finalWriteTimes (2000 4000 6000 8000 10000 12000 14000);
    log true;
    pRef 400000;
    temperature 293;
    rhoRef 998.2;
    cavitationRisk yes;
    cavitationIndex yes;
    NPSH yes;
    g 9.81;
    inletPatch inletTube_inletTube-inlet_inlet;
    outletPatch voluteExtension_voluteExtension-outlet_outlet;
    cavitatingPatches (impeller_impeller-bladeFillets_wall impeller_impeller-blades_wall impeller_impeller-innerHub_wall impeller_impeller-innerShroud_wall volute_impeller-hubWall_wall volute_impeller-outerHub_wall volute_impeller-outerShroud_wall volute_impeller-shroudWall_wall);
}

// ************************************************************************* //
