package z2;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.List;
import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

/* JADX INFO: loaded from: classes2.dex */
public class w50 {
    private Result OooO00o;

    public w50(List<Failure> list) {
        this(new v50(list).OooO00o());
    }

    private w50(Result result) {
        this.OooO00o = result;
    }

    public static w50 OooO0O0(Class<?> cls) {
        return OooO0OO(z80.OooO00o(cls));
    }

    public static w50 OooO0OO(z80 z80Var) {
        return new w50(new JUnitCore().OooO0oO(z80Var));
    }

    public int OooO00o() {
        return this.OooO00o.getFailures().size();
    }

    public String toString() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        new v60(new PrintStream(byteArrayOutputStream)).OooO0o0(this.OooO00o);
        return byteArrayOutputStream.toString();
    }
}
