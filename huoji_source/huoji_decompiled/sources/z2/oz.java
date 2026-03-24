package z2;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public interface oz {
    public static final oz OooO00o = new OooO00o();

    public class OooO00o implements oz {
        @Override // z2.oz
        public e10 OooO00o(File file) throws FileNotFoundException {
            return w00.OooOO0O(file);
        }

        @Override // z2.oz
        public d10 OooO0O0(File file) throws FileNotFoundException {
            try {
                return w00.OooO0o(file);
            } catch (FileNotFoundException unused) {
                file.getParentFile().mkdirs();
                return w00.OooO0o(file);
            }
        }

        @Override // z2.oz
        public void OooO0OO(File file) throws IOException {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                throw new IOException("not a readable directory: " + file);
            }
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    OooO0OO(file2);
                }
                if (!file2.delete()) {
                    throw new IOException("failed to delete " + file2);
                }
            }
        }

        @Override // z2.oz
        public boolean OooO0Oo(File file) {
            return file.exists();
        }

        @Override // z2.oz
        public void OooO0o(File file) throws IOException {
            if (file.delete() || !file.exists()) {
                return;
            }
            throw new IOException("failed to delete " + file);
        }

        @Override // z2.oz
        public void OooO0o0(File file, File file2) throws IOException {
            OooO0o(file2);
            if (file.renameTo(file2)) {
                return;
            }
            throw new IOException("failed to rename " + file + " to " + file2);
        }

        @Override // z2.oz
        public d10 OooO0oO(File file) throws FileNotFoundException {
            try {
                return w00.OooO00o(file);
            } catch (FileNotFoundException unused) {
                file.getParentFile().mkdirs();
                return w00.OooO00o(file);
            }
        }

        @Override // z2.oz
        public long OooO0oo(File file) {
            return file.length();
        }
    }

    e10 OooO00o(File file) throws FileNotFoundException;

    d10 OooO0O0(File file) throws FileNotFoundException;

    void OooO0OO(File file) throws IOException;

    boolean OooO0Oo(File file);

    void OooO0o(File file) throws IOException;

    void OooO0o0(File file, File file2) throws IOException;

    d10 OooO0oO(File file) throws FileNotFoundException;

    long OooO0oo(File file);
}
