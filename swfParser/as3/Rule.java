package swfParser.as3;

/**
 * Created by Uther on 04.09.2016.
 */
public abstract class Rule {
    public abstract void process(AS3Parser context);
    public abstract void export();
}
