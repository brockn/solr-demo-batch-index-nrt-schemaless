#!/bin/bash
rm -rf logs0
solrctl instancedir --delete logs0
solrctl collection --delete logs0
solrctl instancedir --generate logs0 -schemaless
solrctl instancedir --create logs0 logs0/
solrctl collection --create logs0
