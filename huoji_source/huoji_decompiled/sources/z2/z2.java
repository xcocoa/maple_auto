package z2;

import android.os.Bundle;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class z2 {
    public static final int OooO = 2;
    public static final int OooO0O0 = 1;
    public static final int OooO0OO = 2;
    public static final int OooO0Oo = 3;
    public static final int OooO0o = 5;
    public static final int OooO0o0 = 4;
    public static final int OooO0oO = 6;
    public static final int OooO0oo = 1;
    public static final int OooOO0 = 3;
    public static final int OooOO0O = 4;
    public static final int OooOO0o = 5;
    public static final String OooOOO = "key_key";
    public static final int OooOOO0 = 6;
    public static final String OooOOOO = "key_value";
    public static final String OooOOOo = "key_value_type";
    public static final String OooOOo0 = "key_op_type";

    @NonNull
    private Bundle OooO00o;

    private z2() {
        this.OooO00o = new Bundle();
    }

    public z2(@NonNull Bundle bundle) {
        this.OooO00o = bundle;
    }

    public static z2 OooOO0O() {
        return new z2().OooOo00(3);
    }

    public static z2 OooOO0o(String str) {
        return new z2().OooOOo(str).OooOo00(1);
    }

    public static z2 OooOOO(String str) {
        return new z2().OooOOo(str).OooOo00(4);
    }

    public static z2 OooOOO0(String str) {
        return new z2().OooOOo(str).OooOo00(2);
    }

    public String OooO(String str) {
        return this.OooO00o.getString(OooOOOO, str);
    }

    public boolean OooO00o(boolean z) {
        return this.OooO00o.getBoolean(OooOOOO, z);
    }

    public Bundle OooO0O0() {
        return this.OooO00o;
    }

    public float OooO0OO(float f) {
        return this.OooO00o.getFloat(OooOOOO);
    }

    public int OooO0Oo(int i) {
        return this.OooO00o.getInt(OooOOOO, i);
    }

    public long OooO0o(long j) {
        return this.OooO00o.getLong(OooOOOO, j);
    }

    public String OooO0o0() {
        return this.OooO00o.getString(OooOOO, null);
    }

    public int OooO0oO() {
        return this.OooO00o.getInt(OooOOo0, 0);
    }

    public Set<String> OooO0oo() {
        ArrayList<String> stringArrayList = this.OooO00o.getStringArrayList(OooOOOO);
        if (stringArrayList == null) {
            return null;
        }
        return new HashSet(stringArrayList);
    }

    public int OooOO0() {
        return this.OooO00o.getInt(OooOOOo, 0);
    }

    public z2 OooOOOO(boolean z) {
        this.OooO00o.putInt(OooOOOo, 5);
        this.OooO00o.putBoolean(OooOOOO, z);
        return this;
    }

    public z2 OooOOOo(float f) {
        this.OooO00o.putInt(OooOOOo, 4);
        this.OooO00o.putFloat(OooOOOO, f);
        return this;
    }

    public z2 OooOOo(String str) {
        this.OooO00o.putString(OooOOO, str);
        return this;
    }

    public z2 OooOOo0(int i) {
        this.OooO00o.putInt(OooOOOo, 2);
        this.OooO00o.putInt(OooOOOO, i);
        return this;
    }

    public z2 OooOOoo(long j) {
        this.OooO00o.putInt(OooOOOo, 3);
        this.OooO00o.putLong(OooOOOO, j);
        return this;
    }

    public z2 OooOo0(Set<String> set) {
        this.OooO00o.putInt(OooOOOo, 6);
        this.OooO00o.putStringArrayList(OooOOOO, set == null ? null : new ArrayList<>(set));
        return this;
    }

    public z2 OooOo00(int i) {
        this.OooO00o.putInt(OooOOo0, i);
        return this;
    }

    public z2 OooOo0O(String str) {
        this.OooO00o.putInt(OooOOOo, 1);
        this.OooO00o.putString(OooOOOO, str);
        return this;
    }

    public z2 OooOo0o(int i) {
        this.OooO00o.putInt(OooOOOo, i);
        return this;
    }
}
