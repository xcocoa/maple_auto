package com.cyjh.mobileanjian.ipc.uip;

import android.os.Handler;
import android.os.Process;
import com.google.protobuf.ByteString;
import java.util.concurrent.ArrayBlockingQueue;

/* JADX INFO: loaded from: classes2.dex */
public class UipEventStub {
    private static Handler OooO00o;
    private static ArrayBlockingQueue<ByteString> OooO0O0 = new ArrayBlockingQueue<>(1);
    private static ArrayBlockingQueue<ByteString> OooO0OO = new ArrayBlockingQueue<>(256);

    public static byte[] GetUiEvent() {
        new StringBuilder("Call takeEventResponse <-- ").append(Thread.currentThread().getName());
        if (!OooO00o()) {
            return null;
        }
        try {
            return OooO0OO.take().toByteArray();
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        }
    }

    private static boolean OooO00o() {
        return (Process.myUid() == 0 || Process.myUid() == 2000) ? false : true;
    }

    public static byte[] SendUiRequest(byte[] bArr) {
        if (!OooO00o()) {
            return null;
        }
        OooO00o.obtainMessage(0, ByteString.copyFrom(bArr)).sendToTarget();
        try {
            return OooO0O0.take().toByteArray();
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void UiRequestReturn(ByteString byteString) {
        try {
            OooO0O0.put(byteString);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public static void clear() {
        OooO0OO.clear();
    }

    public static void hasEvent(ByteString byteString) {
        try {
            if (OooO0OO.size() < 256) {
                OooO0OO.put(byteString);
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public static void registerHandler(Handler handler) {
        OooO00o = handler;
    }
}
