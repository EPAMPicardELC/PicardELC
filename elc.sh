#!/bin/bash
gradle currentJar && \
time java -Xmx3g -jar build/libs/picard.jar EstimateLibraryComplexity I=resource/other.bam O=out.txt VALIDATION_STRINGENCY=LENIENT
