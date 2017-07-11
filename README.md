Upgrading to Antlr 4.7 triggers problem
===
This project is the smallest reproduction I could create from a problem I found in updating the Antlr version in this project: https://github.com/nielsbasjes/yauaa

What happens?
===
In Antlr 4.6 everything works as expected. By simply upgrading to Antlr 4.7 I immediately get a stack overflow when parsing a normal input.

Reproduction
===
Run this to build an run the test with Antlr 4.6

    mvn clean package
    
This one passes and works as expected.


Run this to build an run the test with Antlr 4.7

    mvn clean package -Pantlr47
    
This one shows

    -------------------------------------------------------
     T E S T S
    -------------------------------------------------------
    Running nl.basjes.parse.useragent.TestAntlr47
    Tests run: 1, Failures: 0, Errors: 1, Skipped: 0, Time elapsed: 0.164 sec <<< FAILURE!
    simpleTest(nl.basjes.parse.useragent.TestAntlr47)  Time elapsed: 0.135 sec  <<< ERROR!
    java.lang.StackOverflowError
        at org.antlr.v4.runtime.atn.LexerATNConfig.equals(LexerATNConfig.java:103)
        at org.antlr.v4.runtime.atn.ATNConfig.equals(ATNConfig.java:158)
        at org.antlr.v4.runtime.misc.ObjectEqualityComparator.equals(ObjectEqualityComparator.java:47)
        at org.antlr.v4.runtime.misc.Array2DHashSet.getOrAddImpl(Array2DHashSet.java:83)
        at org.antlr.v4.runtime.misc.Array2DHashSet.getOrAdd(Array2DHashSet.java:59)
        at org.antlr.v4.runtime.atn.ATNConfigSet.add(ATNConfigSet.java:146)
        at org.antlr.v4.runtime.atn.ATNConfigSet.add(ATNConfigSet.java:122)
        at org.antlr.v4.runtime.atn.LexerATNSimulator.closure(LexerATNSimulator.java:449)
        at org.antlr.v4.runtime.atn.LexerATNSimulator.closure(LexerATNSimulator.java:458)
        at org.antlr.v4.runtime.atn.LexerATNSimulator.closure(LexerATNSimulator.java:458)
        at org.antlr.v4.runtime.atn.LexerATNSimulator.closure(LexerATNSimulator.java:458)
        at org.antlr.v4.runtime.atn.LexerATNSimulator.closure(LexerATNSimulator.java:458)
        at org.antlr.v4.runtime.atn.LexerATNSimulator.closure(LexerATNSimulator.java:458)
        at org.antlr.v4.runtime.atn.LexerATNSimulator.closure(LexerATNSimulator.java:438)
        at org.antlr.v4.runtime.atn.LexerATNSimulator.closure(LexerATNSimulator.java:458)
        at org.antlr.v4.runtime.atn.LexerATNSimulator.closure(LexerATNSimulator.java:458)
        at org.antlr.v4.runtime.atn.LexerATNSimulator.closure(LexerATNSimulator.java:458)
        at org.antlr.v4.runtime.atn.LexerATNSimulator.closure(LexerATNSimulator.java:458)
        at org.antlr.v4.runtime.atn.LexerATNSimulator.closure(LexerATNSimulator.java:458)
        at org.antlr.v4.runtime.atn.LexerATNSimulator.closure(LexerATNSimulator.java:458)
        at org.antlr.v4.runtime.atn.LexerATNSimulator.closure(LexerATNSimulator.java:458)
        at org.antlr.v4.runtime.atn.LexerATNSimulator.closure(LexerATNSimulator.java:438)
        at org.antlr.v4.runtime.atn.LexerATNSimulator.closure(LexerATNSimulator.java:458)
    ...
