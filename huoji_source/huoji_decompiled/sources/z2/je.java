package z2;

import com.cyjh.mobileanjian.ipc.interfaces.OnRootApplyCallback;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes.dex */
public final class je {
    private static final String OooO0oO = "echo \"rootOK\"\n";
    public static je OooO0oo;
    public OnRootApplyCallback OooO00o = null;
    public OooO0OO OooO0O0 = null;
    public boolean OooO0OO = false;
    public DataOutputStream OooO0Oo = null;
    public InputStream OooO0o0 = null;
    public Process OooO0o = null;

    public class OooO00o extends Thread {
        public final /* synthetic */ Process OoooOoO;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO00o(String str, Process process) {
            super(str);
            this.OoooOoO = process;
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x001a, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
        
            r0.printStackTrace();
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
        
            return;
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void run() {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.OoooOoO.getErrorStream()));
            do {
                try {
                    try {
                    } catch (IOException e) {
                        e.printStackTrace();
                        return;
                    }
                } catch (IOException unused) {
                    bufferedReader.close();
                    return;
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    throw th;
                }
            } while (bufferedReader.readLine() != null);
            bufferedReader.close();
        }
    }

    public class OooO0O0 extends Thread {
        public final /* synthetic */ boolean OoooOoO;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO0O0(String str, boolean z) {
            super(str);
            this.OoooOoO = z;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(je.this.OooO0o0));
            while (true) {
                try {
                    try {
                        String line = bufferedReader.readLine();
                        if (line != null) {
                            if (line.equals("rootOK")) {
                                je jeVar = je.this;
                                jeVar.OooO0OO = true;
                                OnRootApplyCallback onRootApplyCallback = jeVar.OooO00o;
                                if (onRootApplyCallback != null) {
                                    onRootApplyCallback.onObtained();
                                }
                                if (this.OoooOoO) {
                                }
                            }
                        }
                        try {
                            return;
                        } catch (IOException e) {
                            return;
                        }
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        try {
                            bufferedReader.close();
                            return;
                        } catch (IOException e3) {
                            e3.printStackTrace();
                            return;
                        }
                    }
                } finally {
                    try {
                        bufferedReader.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
            }
        }
    }

    public class OooO0OO extends Thread {
        private OooO0OO() {
        }

        public /* synthetic */ OooO0OO(je jeVar, byte b) {
            this();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                try {
                    je.this.OooO0o = Runtime.getRuntime().exec("xu");
                } catch (Exception e) {
                    new StringBuilder("requestRoot(xu) --:  Exception: ").append(e.getMessage());
                    je.this.OooO0o = Runtime.getRuntime().exec("su");
                }
                je.this.OooO0Oo = new DataOutputStream(je.this.OooO0o.getOutputStream());
                je jeVar = je.this;
                jeVar.OooO0o0 = jeVar.OooO0o.getInputStream();
                je.this.OooO0Oo.writeBytes(je.OooO0oO);
                je.this.OooO0Oo.flush();
                je jeVar2 = je.this;
                jeVar2.new OooO00o("", jeVar2.OooO0o);
                OooO0O0 oooO0O0 = jeVar2.new OooO0O0("", false);
                oooO0O0.start();
                try {
                    oooO0O0.join();
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
                new StringBuilder("go straight here, mRoot = ").append(jeVar2.OooO0OO);
                if (jeVar2.OooO0OO) {
                    return;
                }
                jeVar2.OooO0o.destroy();
                OnRootApplyCallback onRootApplyCallback = jeVar2.OooO00o;
                if (onRootApplyCallback != null) {
                    onRootApplyCallback.onRefused();
                }
                try {
                    jeVar2.OooO0Oo.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            } catch (IOException e4) {
                new StringBuilder("requestRoot() --:  Exception: ").append(e4.getMessage());
                Process process = je.this.OooO0o;
                if (process != null) {
                    process.destroy();
                }
                OnRootApplyCallback onRootApplyCallback2 = je.this.OooO00o;
                if (onRootApplyCallback2 != null) {
                    onRootApplyCallback2.onRefused();
                }
                e4.printStackTrace();
            }
        }
    }

    public static synchronized je OooO00o() {
        if (OooO0oo == null) {
            OooO0oo = new je();
        }
        return OooO0oo;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0022 -> B:13:0x0025). Please report as a decompilation issue!!! */
    private void OooO0oO(Process process, boolean z) {
        OooO00o oooO00o = new OooO00o("", process);
        OooO0O0 oooO0O0 = new OooO0O0("", z);
        if (z) {
            oooO00o.start();
        }
        oooO0O0.start();
        try {
            if (z) {
                try {
                    oooO00o.join();
                } catch (InterruptedException unused) {
                }
                oooO0O0.join();
            } else {
                oooO0O0.join();
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        new StringBuilder("go straight here, mRoot = ").append(this.OooO0OO);
        if (this.OooO0OO) {
            return;
        }
        this.OooO0o.destroy();
        OnRootApplyCallback onRootApplyCallback = this.OooO00o;
        if (onRootApplyCallback != null) {
            onRootApplyCallback.onRefused();
        }
        try {
            this.OooO0Oo.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    private static /* synthetic */ void OooOO0(je jeVar, Process process) {
        jeVar.new OooO00o("", process);
        OooO0O0 oooO0O0 = jeVar.new OooO0O0("", false);
        oooO0O0.start();
        try {
            oooO0O0.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        new StringBuilder("go straight here, mRoot = ").append(jeVar.OooO0OO);
        if (jeVar.OooO0OO) {
            return;
        }
        jeVar.OooO0o.destroy();
        OnRootApplyCallback onRootApplyCallback = jeVar.OooO00o;
        if (onRootApplyCallback != null) {
            onRootApplyCallback.onRefused();
        }
        try {
            jeVar.OooO0Oo.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    private boolean OooOO0O() {
        return this.OooO0OO;
    }

    private void OooOOO0() {
        if (this.OooO0OO) {
            OooO0oo("exit");
            if (this.OooO0O0.isAlive()) {
                this.OooO0O0.interrupt();
            }
            try {
                this.OooO0Oo.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        OooO0oo = null;
    }

    private void OooOOOO() {
        OooO0OO oooO0OO = new OooO0OO(this, (byte) 0);
        this.OooO0O0 = oooO0OO;
        oooO0OO.start();
    }

    private static /* synthetic */ boolean OooOOOo(je jeVar) {
        jeVar.OooO0OO = true;
        return true;
    }

    public final void OooO0o(OnRootApplyCallback onRootApplyCallback) {
        if (this.OooO0OO) {
            onRootApplyCallback.onObtained();
        } else {
            this.OooO00o = onRootApplyCallback;
            OooOOOO();
        }
    }

    public final boolean OooO0oo(String str) {
        if (!this.OooO0OO) {
            return false;
        }
        try {
            this.OooO0Oo.write(str.getBytes());
            this.OooO0Oo.write("\n".getBytes());
            this.OooO0Oo.flush();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return true;
        }
    }
}
