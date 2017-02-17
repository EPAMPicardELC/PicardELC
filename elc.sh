#!/bin/bash
gradle currentJar && \
time java -Xmx3g -jar build/libs/picard.jar EstimateLibraryComplexity I=resource/big.bam O=out.txt
