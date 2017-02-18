echo ELC
date
java -jar ./build/libs/picard.jar EstimateLibraryComplexity \
	I=C:/Users/123/Documents/EPAM_BAMS/NA12878.chrom11.ILLUMINA.bwa.CEU.exome.20121211.bam \
	O=C:/Users/123/Documents/IntelliJIDEAProjects/picard/build/out/out.txt
echo ELC done
