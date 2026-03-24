package z2;

import java.io.File;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class t8 implements Comparator<File> {
    @Override // java.util.Comparator
    /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
    public int compare(File file, File file2) {
        return Long.valueOf(file2.lastModified()).compareTo(Long.valueOf(file.lastModified()));
    }
}
