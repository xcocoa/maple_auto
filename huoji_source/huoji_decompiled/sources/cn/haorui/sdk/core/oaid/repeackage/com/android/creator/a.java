package cn.haorui.sdk.core.oaid.repeackage.com.android.creator;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: cn.haorui.sdk.core.oaid.repeackage.com.android.creator.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0011a extends Binder implements a {
        public static final /* synthetic */ int a = 0;

        /* JADX INFO: renamed from: cn.haorui.sdk.core.oaid.repeackage.com.android.creator.a$a$a, reason: collision with other inner class name */
        public static class C0012a implements a {
            public IBinder a;

            public C0012a(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // cn.haorui.sdk.core.oaid.repeackage.com.android.creator.a
            public String a() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.creator.IdsSupplier");
                    if (!this.a.transact(3, parcelObtain, parcelObtain2, 0)) {
                        int i = AbstractBinderC0011a.a;
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

    String a();
}
