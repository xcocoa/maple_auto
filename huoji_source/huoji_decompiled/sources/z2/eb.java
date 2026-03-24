package z2;

import com.google.protobuf.ByteString;
import java.util.concurrent.ArrayBlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public final class eb {
    private static ArrayBlockingQueue<ByteString> OooO00o = new ArrayBlockingQueue<>(16);
    private static ArrayBlockingQueue<ByteString> OooO0O0 = new ArrayBlockingQueue<>(1024);
    private static ArrayBlockingQueue<ByteString> OooO0OO = new ArrayBlockingQueue<>(1024);

    private static void OooO() {
        OooO0OO.clear();
    }

    public static void OooO00o(ByteString byteString) {
        try {
            OooO00o.put(byteString);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public static byte[] OooO0O0() {
        try {
            return OooO00o.take().toByteArray();
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void OooO0OO(ByteString byteString) {
        try {
            OooO0O0.put(byteString);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public static byte[] OooO0Oo() {
        try {
            return OooO0O0.take().toByteArray();
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        }
    }

    private static void OooO0o(ByteString byteString) {
        try {
            OooO0OO.put(byteString);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public static void OooO0o0() {
        OooO0O0.clear();
        OooO0OO.clear();
    }

    public static ByteString OooO0oO() {
        try {
            return OooO0OO.take();
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void OooO0oo() {
        try {
            OooO0OO.put(ByteString.copyFrom("floatEventThreadExit".getBytes()));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
