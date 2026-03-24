package com.anythink.expressad.exoplayer.g;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: com.anythink.expressad.exoplayer.g.a.1
        private static a a(Parcel parcel) {
            return new a(parcel);
        }

        private static a[] a() {
            return new a[0];
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ a[] newArray(int i) {
            return new a[0];
        }
    };
    private final InterfaceC0117a[] a;

    /* JADX INFO: renamed from: com.anythink.expressad.exoplayer.g.a$a, reason: collision with other inner class name */
    public interface InterfaceC0117a extends Parcelable {
    }

    public a(Parcel parcel) {
        this.a = new InterfaceC0117a[parcel.readInt()];
        int i = 0;
        while (true) {
            InterfaceC0117a[] interfaceC0117aArr = this.a;
            if (i >= interfaceC0117aArr.length) {
                return;
            }
            interfaceC0117aArr[i] = (InterfaceC0117a) parcel.readParcelable(InterfaceC0117a.class.getClassLoader());
            i++;
        }
    }

    public a(List<? extends InterfaceC0117a> list) {
        InterfaceC0117a[] interfaceC0117aArr = new InterfaceC0117a[list.size()];
        this.a = interfaceC0117aArr;
        list.toArray(interfaceC0117aArr);
    }

    public a(InterfaceC0117a... interfaceC0117aArr) {
        this.a = interfaceC0117aArr;
    }

    public final int a() {
        return this.a.length;
    }

    public final InterfaceC0117a a(int i) {
        return this.a[i];
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.a, ((a) obj).a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.a);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a.length);
        for (InterfaceC0117a interfaceC0117a : this.a) {
            parcel.writeParcelable(interfaceC0117a, 0);
        }
    }
}
