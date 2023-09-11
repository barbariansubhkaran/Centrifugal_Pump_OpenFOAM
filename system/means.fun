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
fieldAverage1
{
    type fieldAverage;
    functionObjectLibs
    (
         "libfieldFunctionObjects.so"
    );
    mean on;
    base time;
    window 400;
    timeStart 0;
    timeEnd 14000;
    writeControl timeStep;
    writeInterval 2000;
    fields (U p k omega nut);
}

// ************************************************************************* //
