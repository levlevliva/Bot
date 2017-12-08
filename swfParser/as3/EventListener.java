package swfParser.as3;

/**
 * Created by Uther on 04.09.2016.
 */
public abstract class EventListener {
    public abstract void ruleStart(int ruleIndex);
    public abstract void ruleFound();
}
