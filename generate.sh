#!/bin/bash

npx @openapitools/openapi-generator-cli generate

pushd clients/node/yr.no-client
npm install
popd