package z2;

import com.googlecode.tesseract.android.TessBaseAPI;
import java.io.PrintStream;
import java.text.NumberFormat;
import java.util.Enumeration;
import junit.framework.AssertionFailedError;
import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
public class ow implements jw {
    public PrintStream OooO00o;
    public int OooO0O0 = 0;

    public ow(PrintStream printStream) {
        this.OooO00o = printStream;
    }

    public void OooO(iw iwVar, int i) {
        OooO0o().print(i + ") " + iwVar.OooO0O0());
    }

    @Override // z2.jw
    public void OooO00o(gw gwVar, Throwable th) {
        OooO0o().print("E");
    }

    @Override // z2.jw
    public void OooO0O0(gw gwVar, AssertionFailedError assertionFailedError) {
        OooO0o().print(TessBaseAPI.OooO0oo);
    }

    @Override // z2.jw
    public void OooO0OO(gw gwVar) {
    }

    @Override // z2.jw
    public void OooO0Oo(gw gwVar) {
        OooO0o().print(".");
        int i = this.OooO0O0;
        this.OooO0O0 = i + 1;
        if (i >= 40) {
            OooO0o().println();
            this.OooO0O0 = 0;
        }
    }

    public PrintStream OooO0o() {
        return this.OooO00o;
    }

    public String OooO0o0(long j) {
        return NumberFormat.getInstance().format(j / 1000.0d);
    }

    public synchronized void OooO0oO(kw kwVar, long j) {
        OooOOOO(j);
        OooOO0o(kwVar);
        OooOOO0(kwVar);
        OooOOO(kwVar);
    }

    public void OooO0oo(iw iwVar, int i) {
        OooO(iwVar, i);
        OooOO0(iwVar);
    }

    public void OooOO0(iw iwVar) {
        OooO0o().print(mw.OooO(iwVar.OooO0o0()));
    }

    public void OooOO0O(Enumeration<iw> enumeration, int i, String str) {
        StringBuilder sb;
        String str2;
        if (i == 0) {
            return;
        }
        PrintStream printStreamOooO0o = OooO0o();
        if (i == 1) {
            sb = new StringBuilder();
            sb.append("There was ");
            sb.append(i);
            sb.append(o4.OooO00o.OooO0Oo);
            sb.append(str);
            str2 = ":";
        } else {
            sb = new StringBuilder();
            sb.append("There were ");
            sb.append(i);
            sb.append(o4.OooO00o.OooO0Oo);
            sb.append(str);
            str2 = "s:";
        }
        sb.append(str2);
        printStreamOooO0o.println(sb.toString());
        int i2 = 1;
        while (enumeration.hasMoreElements()) {
            OooO0oo(enumeration.nextElement(), i2);
            i2++;
        }
    }

    public void OooOO0o(kw kwVar) {
        OooOO0O(kwVar.OooO0oO(), kwVar.OooO0o(), "error");
    }

    public void OooOOO(kw kwVar) {
        PrintStream printStreamOooO0o;
        StringBuilder sb;
        if (kwVar.OooOOo0()) {
            OooO0o().println();
            OooO0o().print("OK");
            printStreamOooO0o = OooO0o();
            sb = new StringBuilder();
            sb.append(" (");
            sb.append(kwVar.OooOO0o());
            sb.append(" test");
            sb.append(kwVar.OooOO0o() == 1 ? "" : com.umeng.commonsdk.proguard.v.al);
            sb.append(")");
        } else {
            OooO0o().println();
            OooO0o().println("FAILURES!!!");
            printStreamOooO0o = OooO0o();
            sb = new StringBuilder();
            sb.append("Tests run: ");
            sb.append(kwVar.OooOO0o());
            sb.append(",  Failures: ");
            sb.append(kwVar.OooO0oo());
            sb.append(",  Errors: ");
            sb.append(kwVar.OooO0o());
        }
        printStreamOooO0o.println(sb.toString());
        OooO0o().println();
    }

    public void OooOOO0(kw kwVar) {
        OooOO0O(kwVar.OooO(), kwVar.OooO0oo(), "failure");
    }

    public void OooOOOO(long j) {
        OooO0o().println();
        OooO0o().println("Time: " + OooO0o0(j));
    }

    public void OooOOOo() {
        OooO0o().println();
        OooO0o().println("<RETURN> to continue");
    }
}
