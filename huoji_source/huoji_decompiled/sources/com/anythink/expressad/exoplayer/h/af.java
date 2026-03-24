package com.anythink.expressad.exoplayer.h;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class af implements Parcelable {
    public final int b;
    private final ae[] c;
    private int d;
    public static final af a = new af(new ae[0]);
    public static final Parcelable.Creator<af> CREATOR = new Parcelable.Creator<af>() { // from class: com.anythink.expressad.exoplayer.h.af.1
        private static af a(Parcel parcel) {
            return new af(parcel);
        }

        private static af[] a(int i) {
            return new af[i];
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ af createFromParcel(Parcel parcel) {
            return new af(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ af[] newArray(int i) {
            return new af[i];
        }
    };

    public af(Parcel parcel) {
        int i = parcel.readInt();
        this.b = i;
        this.c = new ae[i];
        for (int i2 = 0; i2 < this.b; i2++) {
            this.c[i2] = (ae) parcel.readParcelable(ae.class.getClassLoader());
        }
    }

    public af(ae... aeVarArr) {
        this.c = aeVarArr;
        this.b = aeVarArr.length;
    }

    private boolean a() {
        return this.b == 0;
    }

    public final int a(ae aeVar) {
        for (int i = 0; i < this.b; i++) {
            if (this.c[i] == aeVar) {
                return i;
            }
        }
        return -1;
    }

    public final ae a(int i) {
        return this.c[i];
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && af.class == obj.getClass()) {
            af afVar = (af) obj;
            if (this.b == afVar.b && Arrays.equals(this.c, afVar.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.d == 0) {
            this.d = Arrays.hashCode(this.c);
        }
        return this.d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b);
        for (int i2 = 0; i2 < this.b; i2++) {
            parcel.writeParcelable(this.c[i2], 0);
        }
    }
}
