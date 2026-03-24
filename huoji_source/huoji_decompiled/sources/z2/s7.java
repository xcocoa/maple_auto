package z2;

import android.hardware.Camera;
import android.util.Log;
import java.io.PrintStream;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class s7 {
    private static final String OooO0O0 = "yanzi";
    private static s7 OooO0OO;
    private OooO00o OooO00o = new OooO00o();

    public class OooO00o implements Comparator<Camera.Size> {
        public OooO00o() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public int compare(Camera.Size size, Camera.Size size2) {
            int i = size.width;
            int i2 = size2.width;
            if (i == i2) {
                return 0;
            }
            return i < i2 ? 1 : -1;
        }
    }

    private s7() {
    }

    public static s7 OooO0O0() {
        s7 s7Var = OooO0OO;
        if (s7Var != null) {
            return s7Var;
        }
        s7 s7Var2 = new s7();
        OooO0OO = s7Var2;
        return s7Var2;
    }

    public boolean OooO00o(Camera.Size size, float f) {
        float f2 = size.width / size.height;
        System.out.println("r:" + f2);
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder();
        sb.append("r2:");
        float f3 = f2 - f;
        sb.append(Math.abs(f3));
        printStream.println(sb.toString());
        return ((double) Math.abs(f3)) <= 0.2d;
    }

    public Camera.Size OooO0OO(List<Camera.Size> list, float f, int i) {
        Collections.sort(list, this.OooO00o);
        Iterator<Camera.Size> it = list.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Camera.Size next = it.next();
            if (next.width >= i && OooO00o(next, f)) {
                Log.i(OooO0O0, "PictureSize : w = " + next.width + "h = " + next.height);
                break;
            }
            i2++;
        }
        return list.get(i2 != list.size() ? i2 : 0);
    }

    public Camera.Size OooO0Oo(List<Camera.Size> list, float f, int i) {
        Collections.sort(list, this.OooO00o);
        Iterator<Camera.Size> it = list.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Camera.Size next = it.next();
            Log.i(OooO0O0, "ratioPreview:" + (next.width / next.height));
            Log.i(OooO0O0, "PreviewSize:w = " + next.width + "h = " + next.height);
            if (next.height >= i && OooO00o(next, f)) {
                Log.i(OooO0O0, "ratioPreview2:" + f + "   minH:" + i);
                Log.i(OooO0O0, "PreviewSize:w = " + next.width + "h = " + next.height);
                break;
            }
            i2++;
        }
        return list.get(i2 != list.size() ? i2 : 0);
    }

    public void OooO0o(Camera.Parameters parameters) {
        List<Camera.Size> supportedPictureSizes = parameters.getSupportedPictureSizes();
        for (int i = 0; i < supportedPictureSizes.size(); i++) {
            Camera.Size size = supportedPictureSizes.get(i);
            Log.i(OooO0O0, "pictureSizes:width = " + size.width + " height = " + size.height);
        }
    }

    public void OooO0o0(Camera.Parameters parameters) {
        Iterator<String> it = parameters.getSupportedFocusModes().iterator();
        while (it.hasNext()) {
            Log.i(OooO0O0, "focusModes--" + it.next());
        }
    }

    public void OooO0oO(Camera.Parameters parameters) {
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        for (int i = 0; i < supportedPreviewSizes.size(); i++) {
            supportedPreviewSizes.get(i);
        }
    }
}
