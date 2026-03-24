package z2;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import pl.droidsonroids.relinker.MissingLibraryException;
import z2.yd0;

/* JADX INFO: loaded from: classes2.dex */
public class zd0 {
    private static final String OooO0oO = "lib";
    public final Set<String> OooO00o;
    public final yd0.OooO0O0 OooO0O0;
    public final yd0.OooO00o OooO0OO;
    public boolean OooO0Oo;
    public yd0.OooO0o OooO0o;
    public boolean OooO0o0;

    public class OooO00o implements Runnable {
        public final /* synthetic */ Context OoooOoO;
        public final /* synthetic */ String OoooOoo;
        public final /* synthetic */ String Ooooo00;
        public final /* synthetic */ yd0.OooO0OO Ooooo0o;

        public OooO00o(Context context, String str, String str2, yd0.OooO0OO oooO0OO) {
            this.OoooOoO = context;
            this.OoooOoo = str;
            this.Ooooo00 = str2;
            this.Ooooo0o = oooO0OO;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                zd0.this.OooOO0(this.OoooOoO, this.OoooOoo, this.Ooooo00);
                this.Ooooo0o.OooO00o();
            } catch (UnsatisfiedLinkError | MissingLibraryException e) {
                this.Ooooo0o.OooO0O0(e);
            }
        }
    }

    public class OooO0O0 implements FilenameFilter {
        public final /* synthetic */ String OoooOoO;

        public OooO0O0(String str) {
            this.OoooOoO = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.startsWith(this.OoooOoO);
        }
    }

    public zd0() {
        this(new ae0(), new vd0());
    }

    public zd0(yd0.OooO0O0 oooO0O0, yd0.OooO00o oooO00o) {
        this.OooO00o = new HashSet();
        if (oooO0O0 == null) {
            throw new IllegalArgumentException("Cannot pass null library loader");
        }
        if (oooO00o == null) {
            throw new IllegalArgumentException("Cannot pass null library installer");
        }
        this.OooO0O0 = oooO0O0;
        this.OooO0OO = oooO00o;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOO0(Context context, String str, String str2) throws Throwable {
        if (this.OooO00o.contains(str) && !this.OooO0Oo) {
            OooOOO0("%s already loaded previously!", str);
            return;
        }
        try {
            this.OooO0O0.OooO0O0(str);
            this.OooO00o.add(str);
            OooOOO0("%s (%s) was loaded normally!", str, str2);
        } catch (UnsatisfiedLinkError e) {
            OooOOO0("Loading the library normally failed: %s", Log.getStackTraceString(e));
            OooOOO0("%s (%s) was not loaded normally, re-linking...", str, str2);
            File fileOooO0o0 = OooO0o0(context, str, str2);
            if (!fileOooO0o0.exists() || this.OooO0Oo) {
                if (this.OooO0Oo) {
                    OooOOO0("Forcing a re-link of %s (%s)...", str, str2);
                }
                OooO0O0(context, str, str2);
                this.OooO0OO.OooO00o(context, this.OooO0O0.OooO0Oo(), this.OooO0O0.OooO00o(str), fileOooO0o0, this);
            }
            try {
                if (this.OooO0o0) {
                    he0 he0Var = null;
                    try {
                        he0 he0Var2 = new he0(fileOooO0o0);
                        try {
                            List<String> listOooooo0 = he0Var2.Oooooo0();
                            he0Var2.close();
                            Iterator<String> it = listOooooo0.iterator();
                            while (it.hasNext()) {
                                OooO0o(context, this.OooO0O0.OooO0OO(it.next()));
                            }
                        } catch (Throwable th) {
                            th = th;
                            he0Var = he0Var2;
                            he0Var.close();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            } catch (IOException unused) {
            }
            this.OooO0O0.OooO0o0(fileOooO0o0.getAbsolutePath());
            this.OooO00o.add(str);
            OooOOO0("%s (%s) was re-linked!", str, str2);
        }
    }

    public void OooO(Context context, String str, yd0.OooO0OO oooO0OO) {
        OooO0oo(context, str, null, oooO0OO);
    }

    public void OooO0O0(Context context, String str, String str2) {
        File fileOooO0Oo = OooO0Oo(context);
        File fileOooO0o0 = OooO0o0(context, str, str2);
        File[] fileArrListFiles = fileOooO0Oo.listFiles(new OooO0O0(this.OooO0O0.OooO00o(str)));
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (this.OooO0Oo || !file.getAbsolutePath().equals(fileOooO0o0.getAbsolutePath())) {
                file.delete();
            }
        }
    }

    public zd0 OooO0OO() {
        this.OooO0Oo = true;
        return this;
    }

    public File OooO0Oo(Context context) {
        return context.getDir(OooO0oO, 0);
    }

    public void OooO0o(Context context, String str) {
        OooO0oo(context, str, null, null);
    }

    public File OooO0o0(Context context, String str, String str2) {
        String strOooO00o = this.OooO0O0.OooO00o(str);
        if (be0.OooO00o(str2)) {
            return new File(OooO0Oo(context), strOooO00o);
        }
        return new File(OooO0Oo(context), strOooO00o + "." + str2);
    }

    public void OooO0oO(Context context, String str, String str2) {
        OooO0oo(context, str, str2, null);
    }

    public void OooO0oo(Context context, String str, String str2, yd0.OooO0OO oooO0OO) {
        if (context == null) {
            throw new IllegalArgumentException("Given context is null");
        }
        if (be0.OooO00o(str)) {
            throw new IllegalArgumentException("Given library is either null or empty");
        }
        OooOOO0("Beginning load of %s...", str);
        if (oooO0OO == null) {
            OooOO0(context, str, str2);
        } else {
            new Thread(new OooO00o(context, str, str2, oooO0OO)).start();
        }
    }

    public zd0 OooOO0O(yd0.OooO0o oooO0o) {
        this.OooO0o = oooO0o;
        return this;
    }

    public void OooOO0o(String str) {
        yd0.OooO0o oooO0o = this.OooO0o;
        if (oooO0o != null) {
            oooO0o.OooO00o(str);
        }
    }

    public zd0 OooOOO() {
        this.OooO0o0 = true;
        return this;
    }

    public void OooOOO0(String str, Object... objArr) {
        OooOO0o(String.format(Locale.US, str, objArr));
    }
}
