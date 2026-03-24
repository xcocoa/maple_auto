package z2;

import java.util.Date;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import z2.jx;
import z2.sx;

/* JADX INFO: loaded from: classes2.dex */
public final class ey {

    @Nullable
    public final qx OooO00o;

    @Nullable
    public final sx OooO0O0;

    public static class OooO00o {
        private long OooO;
        public final long OooO00o;
        public final qx OooO0O0;
        public final sx OooO0OO;
        private Date OooO0Oo;
        private Date OooO0o;
        private String OooO0o0;
        private String OooO0oO;
        private Date OooO0oo;
        private long OooOO0;
        private String OooOO0O;
        private int OooOO0o;

        public OooO00o(long j, qx qxVar, sx sxVar) {
            this.OooOO0o = -1;
            this.OooO00o = j;
            this.OooO0O0 = qxVar;
            this.OooO0OO = sxVar;
            if (sxVar != null) {
                this.OooO = sxVar.o0Oo0oo();
                this.OooOO0 = sxVar.o0ooOoO();
                jx jxVarO00Oo0 = sxVar.o00Oo0();
                int iOooOO0o = jxVarO00Oo0.OooOO0o();
                for (int i = 0; i < iOooOO0o; i++) {
                    String strOooO0oO = jxVarO00Oo0.OooO0oO(i);
                    String strOooOOO = jxVarO00Oo0.OooOOO(i);
                    if ("Date".equalsIgnoreCase(strOooO0oO)) {
                        this.OooO0Oo = ty.OooO0O0(strOooOOO);
                        this.OooO0o0 = strOooOOO;
                    } else if ("Expires".equalsIgnoreCase(strOooO0oO)) {
                        this.OooO0oo = ty.OooO0O0(strOooOOO);
                    } else if ("Last-Modified".equalsIgnoreCase(strOooO0oO)) {
                        this.OooO0o = ty.OooO0O0(strOooOOO);
                        this.OooO0oO = strOooOOO;
                    } else if ("ETag".equalsIgnoreCase(strOooO0oO)) {
                        this.OooOO0O = strOooOOO;
                    } else if ("Age".equalsIgnoreCase(strOooO0oO)) {
                        this.OooOO0o = uy.OooO0oo(strOooOOO, -1);
                    }
                }
            }
        }

        private long OooO00o() {
            Date date = this.OooO0Oo;
            long jMax = date != null ? Math.max(0L, this.OooOO0 - date.getTime()) : 0L;
            int i = this.OooOO0o;
            if (i != -1) {
                jMax = Math.max(jMax, TimeUnit.SECONDS.toMillis(i));
            }
            long j = this.OooOO0;
            return jMax + (j - this.OooO) + (this.OooO00o - j);
        }

        private long OooO0O0() {
            if (this.OooO0OO.OooooOo().OooO0o0() != -1) {
                return TimeUnit.SECONDS.toMillis(r0.OooO0o0());
            }
            if (this.OooO0oo != null) {
                Date date = this.OooO0Oo;
                long time = this.OooO0oo.getTime() - (date != null ? date.getTime() : this.OooOO0);
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.OooO0o == null || this.OooO0OO.o0OOO0o().OooOO0O().Oooo000() != null) {
                return 0L;
            }
            Date date2 = this.OooO0Oo;
            long time2 = (date2 != null ? date2.getTime() : this.OooO) - this.OooO0o.getTime();
            if (time2 > 0) {
                return time2 / 10;
            }
            return 0L;
        }

        private ey OooO0Oo() {
            if (this.OooO0OO == null) {
                return new ey(this.OooO0O0, null);
            }
            if ((!this.OooO0O0.OooO0o() || this.OooO0OO.Ooooooo() != null) && ey.OooO00o(this.OooO0OO, this.OooO0O0)) {
                sw swVarOooO0O0 = this.OooO0O0.OooO0O0();
                if (swVarOooO0O0.OooO() || OooO0o0(this.OooO0O0)) {
                    return new ey(this.OooO0O0, null);
                }
                sw swVarOooooOo = this.OooO0OO.OooooOo();
                long jOooO00o = OooO00o();
                long jOooO0O0 = OooO0O0();
                if (swVarOooO0O0.OooO0o0() != -1) {
                    jOooO0O0 = Math.min(jOooO0O0, TimeUnit.SECONDS.toMillis(swVarOooO0O0.OooO0o0()));
                }
                long millis = 0;
                long millis2 = swVarOooO0O0.OooO0oO() != -1 ? TimeUnit.SECONDS.toMillis(swVarOooO0O0.OooO0oO()) : 0L;
                if (!swVarOooooOo.OooO0oo() && swVarOooO0O0.OooO0o() != -1) {
                    millis = TimeUnit.SECONDS.toMillis(swVarOooO0O0.OooO0o());
                }
                if (!swVarOooooOo.OooO()) {
                    long j = millis2 + jOooO00o;
                    if (j < millis + jOooO0O0) {
                        sx.OooO00o oooO00oO00oO0o = this.OooO0OO.o00oO0o();
                        if (j >= jOooO0O0) {
                            oooO00oO00oO0o.OooO00o("Warning", "110 HttpURLConnection \"Response is stale\"");
                        }
                        if (jOooO00o > 86400000 && OooO0o()) {
                            oooO00oO00oO0o.OooO00o("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                        }
                        return new ey(null, oooO00oO00oO0o.OooO0OO());
                    }
                }
                String str = this.OooOO0O;
                String str2 = "If-Modified-Since";
                if (str != null) {
                    str2 = "If-None-Match";
                } else if (this.OooO0o != null) {
                    str = this.OooO0oO;
                } else {
                    if (this.OooO0Oo == null) {
                        return new ey(this.OooO0O0, null);
                    }
                    str = this.OooO0o0;
                }
                jx.OooO00o oooO00oOooO = this.OooO0O0.OooO0o0().OooO();
                xx.OooO00o.OooO0O0(oooO00oOooO, str2, str);
                return new ey(this.OooO0O0.OooO0oo().OooO(oooO00oOooO.OooO0oo()).OooO0O0(), this.OooO0OO);
            }
            return new ey(this.OooO0O0, null);
        }

        private boolean OooO0o() {
            return this.OooO0OO.OooooOo().OooO0o0() == -1 && this.OooO0oo == null;
        }

        private static boolean OooO0o0(qx qxVar) {
            return (qxVar.OooO0OO("If-Modified-Since") == null && qxVar.OooO0OO("If-None-Match") == null) ? false : true;
        }

        public ey OooO0OO() {
            ey eyVarOooO0Oo = OooO0Oo();
            return (eyVarOooO0Oo.OooO00o == null || !this.OooO0O0.OooO0O0().OooOO0o()) ? eyVarOooO0Oo : new ey(null, null);
        }
    }

    public ey(qx qxVar, sx sxVar) {
        this.OooO00o = qxVar;
        this.OooO0O0 = sxVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
    
        if (r3.OooooOo().OooO0OO() == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean OooO00o(sx sxVar, qx qxVar) {
        int iOoooooO = sxVar.OoooooO();
        if (iOoooooO != 200 && iOoooooO != 410 && iOoooooO != 414 && iOoooooO != 501 && iOoooooO != 203 && iOoooooO != 204) {
            if (iOoooooO != 307) {
                if (iOoooooO != 308 && iOoooooO != 404 && iOoooooO != 405) {
                    switch (iOoooooO) {
                        case 300:
                        case SET_ENABLED_VALUE:
                            break;
                        case 302:
                            break;
                        default:
                            return false;
                    }
                }
            }
            if (sxVar.o0OoOo0("Expires") == null) {
                if (sxVar.OooooOo().OooO0o0() == -1) {
                    if (!sxVar.OooooOo().OooO0Oo()) {
                    }
                }
            }
        }
        return (sxVar.OooooOo().OooOO0() || qxVar.OooO0O0().OooOO0()) ? false : true;
    }
}
