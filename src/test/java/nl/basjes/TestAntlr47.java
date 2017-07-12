package nl.basjes;

import org.antlr.v4.runtime.ANTLRInputStream;
import org.junit.Test;

public class TestAntlr47 {

    @Test
    public void simpleTest(){
        ANTLRInputStream input = new ANTLRInputStream("Something"); // This API works in both 4.6 and 4.7
        ExperimentLexer lexer = new ExperimentLexer(input);
        lexer.getAllTokens();
    }
}
