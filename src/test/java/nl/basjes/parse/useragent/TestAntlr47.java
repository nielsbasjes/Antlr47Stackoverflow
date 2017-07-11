package nl.basjes.parse.useragent;

import nl.basjes.parse.useragent.parser.UserAgentLexer;
import nl.basjes.parse.useragent.parser.UserAgentParser;
import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.junit.Test;

public class TestAntlr47 {

@Test
    public void simpleTest(){

    String userAgentString = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";
    ANTLRInputStream input = new ANTLRInputStream(userAgentString);
    UserAgentLexer lexer = new UserAgentLexer(input);

    CommonTokenStream tokens = new CommonTokenStream(lexer);
    UserAgentParser parser = new UserAgentParser(tokens);

    parser.userAgent();
}

}
