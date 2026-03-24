package z2;

import java.io.PrintStream;
import java.text.NumberFormat;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.FilenameUtils;
import org.junit.runner.Description;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

/* JADX INFO: loaded from: classes2.dex */
public class v60 extends g90 {
    private final PrintStream OooO00o;

    public v60(PrintStream printStream) {
        this.OooO00o = printStream;
    }

    public v60(s60 s60Var) {
        this(s60Var.OooO00o());
    }

    private PrintStream OooO() {
        return this.OooO00o;
    }

    @Override // z2.g90
    public void OooO0O0(Failure failure) {
        this.OooO00o.append('E');
    }

    @Override // z2.g90
    public void OooO0Oo(Description description) {
        this.OooO00o.append('I');
    }

    @Override // z2.g90
    public void OooO0o0(Result result) {
        OooOOO0(result.getRunTime());
        OooOO0O(result);
        OooOO0o(result);
    }

    @Override // z2.g90
    public void OooO0oO(Description description) {
        this.OooO00o.append(FilenameUtils.EXTENSION_SEPARATOR);
    }

    public String OooO0oo(long j) {
        return NumberFormat.getInstance().format(j / 1000.0d);
    }

    public void OooOO0(Failure failure, String str) {
        OooO().println(str + ") " + failure.getTestHeader());
        OooO().print(failure.getTrace());
    }

    public void OooOO0O(Result result) {
        PrintStream printStreamOooO;
        StringBuilder sb;
        String str;
        List<Failure> failures = result.getFailures();
        if (failures.size() == 0) {
            return;
        }
        int i = 1;
        if (failures.size() == 1) {
            printStreamOooO = OooO();
            sb = new StringBuilder();
            sb.append("There was ");
            sb.append(failures.size());
            str = " failure:";
        } else {
            printStreamOooO = OooO();
            sb = new StringBuilder();
            sb.append("There were ");
            sb.append(failures.size());
            str = " failures:";
        }
        sb.append(str);
        printStreamOooO.println(sb.toString());
        Iterator<Failure> it = failures.iterator();
        while (it.hasNext()) {
            OooOO0(it.next(), "" + i);
            i++;
        }
    }

    public void OooOO0o(Result result) {
        PrintStream printStreamOooO;
        StringBuilder sb;
        if (result.wasSuccessful()) {
            OooO().println();
            OooO().print("OK");
            printStreamOooO = OooO();
            sb = new StringBuilder();
            sb.append(" (");
            sb.append(result.getRunCount());
            sb.append(" test");
            sb.append(result.getRunCount() == 1 ? "" : com.umeng.commonsdk.proguard.v.al);
            sb.append(")");
        } else {
            OooO().println();
            OooO().println("FAILURES!!!");
            printStreamOooO = OooO();
            sb = new StringBuilder();
            sb.append("Tests run: ");
            sb.append(result.getRunCount());
            sb.append(",  Failures: ");
            sb.append(result.getFailureCount());
        }
        printStreamOooO.println(sb.toString());
        OooO().println();
    }

    public void OooOOO0(long j) {
        OooO().println();
        OooO().println("Time: " + OooO0oo(j));
    }
}
