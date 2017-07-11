package nl.basjes;

import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CodePointCharStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.junit.Test;

public class TestAntlr47 {

    @Test
    public void simpleTest(){
        String something = "Something";
        CodePointCharStream input = CharStreams.fromString(something);
        ExperimentLexer lexer = new ExperimentLexer(input);

        CommonTokenStream tokens = new CommonTokenStream(lexer);
        ExperimentParser parser = new ExperimentParser(tokens);

        parser.start();
    }

}
