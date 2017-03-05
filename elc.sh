#!/bin/bash
gradle currentJar && \
time java -XX:+UnlockCommercialFeatures -XX:+FlightRecorder -XX:FlightRecorderOptions=defaultrecording=true,dumponexit=true,dumponexitpath=myrecording.jfr,settings=profile -Xmx3g -jar build/libs/picard.jar EstimateLibraryComplexity I=resource/verysmall.bam O=out.txt # VALIDATION_STRINGENCY=LENIENT
