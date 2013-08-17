#!/bin/bash
echo "Cleaning up project...";
[[ -f ./Build ]] && ./Build realclean;
perl Build.PL;

echo "Re-building manifest";
./Build manifest

echo "Building docs";
./Build docs;

echo "Building dist";
./Build dist;
