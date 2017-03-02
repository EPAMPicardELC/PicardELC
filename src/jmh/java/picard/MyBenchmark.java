package picard;


import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.runner.Runner;
import org.openjdk.jmh.runner.RunnerException;
import org.openjdk.jmh.runner.options.Options;
import org.openjdk.jmh.runner.options.OptionsBuilder;
import picard.sam.markduplicates.EstimateLibraryComplexity;

/**
 * Created by whobscr on 23.02.17.
 */
public class MyBenchmark {

    @Benchmark
    public void bench() {
        String[] args =  { "I=resource/small.bam", "O=out.txt", "VALIDATION_STRINGENCY=LENIENT" };
        EstimateLibraryComplexity.main(args);
    }

    public static void main(String[] args) throws RunnerException {
        Options opt = new OptionsBuilder()
                .include(".*" + MyBenchmark.class.getSimpleName() + ".*")
                .warmupIterations(5)
                .measurementIterations(5)
                .forks(1)
                .build();
        new Runner(opt).run();
    }
}