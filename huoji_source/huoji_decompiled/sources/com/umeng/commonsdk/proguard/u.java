package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import com.umeng.commonsdk.UMConfigure;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.net.MulticastSocket;

/* JADX INFO: loaded from: classes2.dex */
public class u {
    private static String a = "239.192.152.163";
    private static int b = 48809;
    private WifiManager.MulticastLock c;
    private WifiManager d;
    private Context e;

    public u(Context context) {
        if (context != null) {
            this.e = context;
            this.d = (WifiManager) context.getApplicationContext().getSystemService("wifi");
        }
    }

    private void a() {
        try {
            WifiManager wifiManager = this.d;
            if (wifiManager != null) {
                WifiManager.MulticastLock multicastLockCreateMulticastLock = wifiManager.createMulticastLock("multicast.test");
                this.c = multicastLockCreateMulticastLock;
                if (multicastLockCreateMulticastLock != null) {
                    multicastLockCreateMulticastLock.acquire();
                }
            }
        } catch (Exception unused) {
        }
    }

    public static void a(Context context) throws Throwable {
        String uMIDString = UMConfigure.getUMIDString(context);
        if (TextUtils.isEmpty(uMIDString)) {
            return;
        }
        a(context, uMIDString);
    }

    private static void a(Context context, String str) throws Throwable {
        a(context, a, b, str);
    }

    private static void a(Context context, String str, int i, String str2) throws Throwable {
        new u(context).a(str, i, str2);
    }

    public void a(String str, int i, String str2) throws Throwable {
        WifiManager.MulticastLock multicastLock;
        MulticastSocket multicastSocket;
        MulticastSocket multicastSocket2;
        a();
        MulticastSocket multicastSocket3 = null;
        MulticastSocket multicastSocket4 = null;
        try {
            try {
                try {
                    multicastSocket2 = new MulticastSocket(i);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e) {
                e = e;
            }
            try {
                multicastSocket2.joinGroup(InetAddress.getByName(str));
                multicastSocket2.setLoopbackMode(true);
                DatagramPacket datagramPacket = new DatagramPacket(str2.getBytes(), str2.getBytes().length, InetAddress.getByName(str), i);
                multicastSocket2.send(datagramPacket);
                try {
                    multicastSocket2.close();
                } catch (Exception e2) {
                    e.a(this.e, e2);
                }
                multicastLock = this.c;
                multicastSocket = datagramPacket;
                multicastSocket3 = datagramPacket;
            } catch (Exception e3) {
                e = e3;
                multicastSocket4 = multicastSocket2;
                e.a(this.e, e);
                if (multicastSocket4 != null) {
                    try {
                        multicastSocket4.close();
                    } catch (Exception e4) {
                        e.a(this.e, e4);
                    }
                }
                multicastLock = this.c;
                multicastSocket = multicastSocket4;
                multicastSocket3 = multicastSocket4;
                if (multicastLock != null) {
                }
            } catch (Throwable th2) {
                th = th2;
                multicastSocket3 = multicastSocket2;
                if (multicastSocket3 != null) {
                    try {
                        multicastSocket3.close();
                    } catch (Exception e5) {
                        e.a(this.e, e5);
                    }
                }
                try {
                    WifiManager.MulticastLock multicastLock2 = this.c;
                    if (multicastLock2 == null) {
                        throw th;
                    }
                    multicastLock2.release();
                    throw th;
                } catch (Exception unused) {
                    throw th;
                }
            }
            if (multicastLock != null) {
                multicastLock.release();
                multicastSocket3 = multicastSocket;
            }
        } catch (Exception unused2) {
        }
    }
}
