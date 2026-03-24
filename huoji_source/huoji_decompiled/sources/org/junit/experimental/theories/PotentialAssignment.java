package org.junit.experimental.theories;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PotentialAssignment {

    public static class CouldNotGenerateValueException extends Exception {
        private static final long serialVersionUID = 1;

        public CouldNotGenerateValueException() {
        }

        public CouldNotGenerateValueException(Throwable th) {
            super(th);
        }
    }

    public static class OooO00o extends PotentialAssignment {
        public final /* synthetic */ Object OooO00o;
        public final /* synthetic */ String OooO0O0;

        public OooO00o(Object obj, String str) {
            this.OooO00o = obj;
            this.OooO0O0 = str;
        }

        @Override // org.junit.experimental.theories.PotentialAssignment
        public String OooO0O0() {
            String str;
            Object obj = this.OooO00o;
            if (obj == null) {
                str = "null";
            } else {
                try {
                    str = String.format("\"%s\"", obj);
                } catch (Throwable th) {
                    str = String.format("[toString() threw %s: %s]", th.getClass().getSimpleName(), th.getMessage());
                }
            }
            return String.format("%s <from %s>", str, this.OooO0O0);
        }

        @Override // org.junit.experimental.theories.PotentialAssignment
        public Object OooO0OO() {
            return this.OooO00o;
        }

        public String toString() {
            return String.format("[%s]", this.OooO00o);
        }
    }

    public static PotentialAssignment OooO00o(String str, Object obj) {
        return new OooO00o(obj, str);
    }

    public abstract String OooO0O0() throws CouldNotGenerateValueException;

    public abstract Object OooO0OO() throws CouldNotGenerateValueException;
}
