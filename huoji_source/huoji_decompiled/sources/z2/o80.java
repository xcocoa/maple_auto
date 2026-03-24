package z2;

import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class o80 extends j80 {
    private final File OooO00o;
    private File OooO0O0;

    public o80() {
        this(null);
    }

    public o80(File file) {
        this.OooO00o = file;
    }

    private boolean OooO(int i, String[] strArr) {
        return i == strArr.length - 1;
    }

    private File OooO0o(File file) throws IOException {
        File fileCreateTempFile = File.createTempFile("junit", "", file);
        fileCreateTempFile.delete();
        fileCreateTempFile.mkdir();
        return fileCreateTempFile;
    }

    private void OooOOOO(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                OooOOOO(file2);
            }
        }
        file.delete();
    }

    private void OooOOOo(String str) throws IOException {
        if (new File(str).getParent() != null) {
            throw new IOException("Folder name cannot consist of multiple path components separated by a file separator. Please use newFolder('MyParentFolder','MyFolder') to create hierarchies of folders");
        }
    }

    @Override // z2.j80
    public void OooO0O0() {
        OooO0oO();
    }

    @Override // z2.j80
    public void OooO0OO() throws Throwable {
        OooO0o0();
    }

    public void OooO0o0() throws IOException {
        this.OooO0O0 = OooO0o(this.OooO00o);
    }

    public void OooO0oO() {
        File file = this.OooO0O0;
        if (file != null) {
            OooOOOO(file);
        }
    }

    public File OooO0oo() {
        File file = this.OooO0O0;
        if (file != null) {
            return file;
        }
        throw new IllegalStateException("the temporary folder has not yet been created");
    }

    public File OooOO0() throws IOException {
        return File.createTempFile("junit", null, OooO0oo());
    }

    public File OooOO0O(String str) throws IOException {
        File file = new File(OooO0oo(), str);
        if (file.createNewFile()) {
            return file;
        }
        throw new IOException("a file with the name '" + str + "' already exists in the test folder");
    }

    public File OooOO0o() throws IOException {
        return OooO0o(OooO0oo());
    }

    public File OooOOO(String... strArr) throws IOException {
        File fileOooO0oo = OooO0oo();
        int i = 0;
        while (i < strArr.length) {
            String str = strArr[i];
            OooOOOo(str);
            File file = new File(fileOooO0oo, str);
            if (!file.mkdir() && OooO(i, strArr)) {
                throw new IOException("a folder with the name '" + str + "' already exists");
            }
            i++;
            fileOooO0oo = file;
        }
        return fileOooO0oo;
    }

    public File OooOOO0(String str) throws IOException {
        return OooOOO(str);
    }
}
