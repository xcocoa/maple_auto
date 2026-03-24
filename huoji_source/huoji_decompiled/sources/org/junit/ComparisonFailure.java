package org.junit;

import z2.f50;

/* JADX INFO: loaded from: classes2.dex */
public class ComparisonFailure extends AssertionError {
    private static final int MAX_CONTEXT_LENGTH = 20;
    private static final long serialVersionUID = 1;
    private String fActual;
    private String fExpected;

    public static class OooO0O0 {
        private static final String OooO0Oo = "...";
        private static final String OooO0o = "[";
        private static final String OooO0o0 = "]";
        private final int OooO00o;
        private final String OooO0O0;
        private final String OooO0OO;

        public class OooO00o {
            private final String OooO00o;
            private final String OooO0O0;

            private OooO00o() {
                String strOooO0oO = OooO0O0.this.OooO0oO();
                this.OooO00o = strOooO0oO;
                this.OooO0O0 = OooO0O0.this.OooO0oo(strOooO0oO);
            }

            private String OooO0o0(String str) {
                return OooO0O0.OooO0o + str.substring(this.OooO00o.length(), str.length() - this.OooO0O0.length()) + OooO0O0.OooO0o0;
            }

            public String OooO00o() {
                return OooO0o0(OooO0O0.this.OooO0OO);
            }

            public String OooO0O0() {
                if (this.OooO00o.length() <= OooO0O0.this.OooO00o) {
                    return this.OooO00o;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(OooO0O0.OooO0Oo);
                String str = this.OooO00o;
                sb.append(str.substring(str.length() - OooO0O0.this.OooO00o));
                return sb.toString();
            }

            public String OooO0OO() {
                if (this.OooO0O0.length() <= OooO0O0.this.OooO00o) {
                    return this.OooO0O0;
                }
                return this.OooO0O0.substring(0, OooO0O0.this.OooO00o) + OooO0O0.OooO0Oo;
            }

            public String OooO0Oo() {
                return OooO0o0(OooO0O0.this.OooO0O0);
            }
        }

        public OooO0O0(int i, String str, String str2) {
            this.OooO00o = i;
            this.OooO0O0 = str;
            this.OooO0OO = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String OooO0oO() {
            int iMin = Math.min(this.OooO0O0.length(), this.OooO0OO.length());
            for (int i = 0; i < iMin; i++) {
                if (this.OooO0O0.charAt(i) != this.OooO0OO.charAt(i)) {
                    return this.OooO0O0.substring(0, i);
                }
            }
            return this.OooO0O0.substring(0, iMin);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String OooO0oo(String str) {
            int iMin = Math.min(this.OooO0O0.length() - str.length(), this.OooO0OO.length() - str.length()) - 1;
            int i = 0;
            while (i <= iMin) {
                if (this.OooO0O0.charAt((r1.length() - 1) - i) != this.OooO0OO.charAt((r2.length() - 1) - i)) {
                    break;
                }
                i++;
            }
            String str2 = this.OooO0O0;
            return str2.substring(str2.length() - i);
        }

        public String OooO0o(String str) {
            String str2;
            String str3 = this.OooO0O0;
            if (str3 == null || (str2 = this.OooO0OO) == null || str3.equals(str2)) {
                return f50.o0OoOo0(str, this.OooO0O0, this.OooO0OO);
            }
            OooO00o oooO00o = new OooO00o();
            String strOooO0O0 = oooO00o.OooO0O0();
            String strOooO0OO = oooO00o.OooO0OO();
            return f50.o0OoOo0(str, strOooO0O0 + oooO00o.OooO0Oo() + strOooO0OO, strOooO0O0 + oooO00o.OooO00o() + strOooO0OO);
        }
    }

    public ComparisonFailure(String str, String str2, String str3) {
        super(str);
        this.fExpected = str2;
        this.fActual = str3;
    }

    public String getActual() {
        return this.fActual;
    }

    public String getExpected() {
        return this.fExpected;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return new OooO0O0(20, this.fExpected, this.fActual).OooO0o(super.getMessage());
    }
}
