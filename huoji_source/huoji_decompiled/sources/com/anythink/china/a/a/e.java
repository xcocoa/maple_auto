package com.anythink.china.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface e extends IInterface {

    public static class a implements e {
        @Override // com.anythink.china.a.a.e
        public final String a(String str) {
            return null;
        }

        @Override // com.anythink.china.a.a.e
        public final boolean a() {
            return false;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return null;
        }

        @Override // com.anythink.china.a.a.e
        public final String b() {
            return null;
        }

        @Override // com.anythink.china.a.a.e
        public final String b(String str) {
            return null;
        }

        @Override // com.anythink.china.a.a.e
        public final String c() {
            return null;
        }
    }

    public static abstract class b extends Binder implements e {
        public static final int a = 1;
        public static final int b = 2;
        public static final int c = 3;
        public static final int d = 4;
        public static final int e = 5;
        private static final String f = "com.android.creator.FreemeIdsSupplier";

        public static class a implements e {
            public static e a;
            private IBinder b;

            public a(IBinder iBinder) {
                this.b = iBinder;
            }

            private static String d() {
                return b.f;
            }

            @Override // com.anythink.china.a.a.e
            public final String a(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f);
                    parcelObtain.writeString(str);
                    if (!this.b.transact(2, parcelObtain, parcelObtain2, 0) && b.d() != null) {
                        return b.d().a(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.anythink.china.a.a.e
            public final boolean a() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f);
                    if (!this.b.transact(1, parcelObtain, parcelObtain2, 0) && b.d() != null) {
                        return b.d().a();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.b;
            }

            @Override // com.anythink.china.a.a.e
            public final String b() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f);
                    if (!this.b.transact(3, parcelObtain, parcelObtain2, 0) && b.d() != null) {
                        return b.d().b();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.anythink.china.a.a.e
            public final String b(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f);
                    parcelObtain.writeString(str);
                    if (!this.b.transact(5, parcelObtain, parcelObtain2, 0) && b.d() != null) {
                        return b.d().b(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.anythink.china.a.a.e
            public final String c() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f);
                    if (!this.b.transact(4, parcelObtain, parcelObtain2, 0) && b.d() != null) {
                        return b.d().c();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public b() {
            attachInterface(this, f);
        }

        public static e a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(f);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof e)) ? new a(iBinder) : (e) iInterfaceQueryLocalInterface;
        }

        private static boolean a(e eVar) {
            if (a.a != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (eVar == null) {
                return false;
            }
            a.a = eVar;
            return true;
        }

        public static e d() {
            return a.a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String strA;
            if (i == 1) {
                parcel.enforceInterface(f);
                boolean zA = a();
                parcel2.writeNoException();
                parcel2.writeInt(zA ? 1 : 0);
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(f);
                strA = a(parcel.readString());
            } else if (i == 3) {
                parcel.enforceInterface(f);
                strA = b();
            } else if (i == 4) {
                parcel.enforceInterface(f);
                strA = c();
            } else {
                if (i != 5) {
                    if (i != 1598968902) {
                        return super.onTransact(i, parcel, parcel2, i2);
                    }
                    parcel2.writeString(f);
                    return true;
                }
                parcel.enforceInterface(f);
                strA = b(parcel.readString());
            }
            parcel2.writeNoException();
            parcel2.writeString(strA);
            return true;
        }
    }

    String a(String str);

    boolean a();

    String b();

    String b(String str);

    String c();
}
