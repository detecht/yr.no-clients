#!/bin/bash

echo "Fetching swagger defenition from met.no"
wget -O swagger.json https://api.met.no/weatherapi/locationforecast/2.0/swagger


echo "Adding production host to swagger definition"
jq -r '.host = "api.met.no"' swagger.json > swagger.json.tmp && mv swagger.json.tmp swagger.json

echo "Patching WeatherSymbol defention to allow propper enum code generation."
git apply weather_symbol.patch

echo "Done!"