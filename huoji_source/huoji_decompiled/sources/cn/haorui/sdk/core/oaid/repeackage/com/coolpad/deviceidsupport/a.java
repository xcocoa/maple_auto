package cn.haorui.sdk.core.oaid.repeackage.com.coolpad.deviceidsupport;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: cn.haorui.sdk.core.oaid.repeackage.com.coolpad.deviceidsupport.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0017a extends Binder implements a {
        public static final /* synthetic */ int a = 0;

        /* JADX INFO: renamed from: cn.haorui.sdk.core.oaid.repeackage.com.coolpad.deviceidsupport.a$a$a, reason: collision with other inner class name */
        public static class C0018a implements a {
            public IBinder a;

            public C0018a(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // cn.haorui.sdk.core.oaid.repeackage.com.coolpad.deviceidsupport.a
            public String a(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.coolpad.deviceidsupport.IDeviceIdManager");
                    parcelObtain.writeString(str);
                    if (!this.a.transact(2, parcelObtain, parcelObtain2, 0)) {
                        int i = AbstractBinderC0017a.a;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }
        }
    }

    String a(String str);
}
