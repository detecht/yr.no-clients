#!/bin/bash

npx @openapitools/openapi-generator-cli generate

pushd clients/node/yr.no-locationforecast
npm install
popd