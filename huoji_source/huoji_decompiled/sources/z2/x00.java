package z2;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import okio.ByteString;

/* JADX INFO: loaded from: classes2.dex */
public final class x00 extends AbstractList<ByteString> implements RandomAccess {
    public final ByteString[] OoooOoO;
    public final int[] OoooOoo;

    private x00(ByteString[] byteStringArr, int[] iArr) {
        this.OoooOoO = byteStringArr;
        this.OoooOoo = iArr;
    }

    private static void OooO00o(long j, j00 j00Var, int i, List<ByteString> list, int i2, int i3, List<Integer> list2) {
        int i4;
        int i5;
        int i6;
        j00 j00Var2;
        int i7 = i2;
        if (i7 >= i3) {
            throw new AssertionError();
        }
        for (int i8 = i7; i8 < i3; i8++) {
            if (list.get(i8).size() < i) {
                throw new AssertionError();
            }
        }
        ByteString byteString = list.get(i2);
        ByteString byteString2 = list.get(i3 - 1);
        int iIntValue = -1;
        if (i == byteString.size()) {
            iIntValue = list2.get(i7).intValue();
            i7++;
            byteString = list.get(i7);
        }
        int i9 = i7;
        if (byteString.getByte(i) == byteString2.getByte(i)) {
            int i10 = 0;
            int iMin = Math.min(byteString.size(), byteString2.size());
            for (int i11 = i; i11 < iMin && byteString.getByte(i11) == byteString2.getByte(i11); i11++) {
                i10++;
            }
            long jOooO0OO = 1 + j + ((long) OooO0OO(j00Var)) + 2 + ((long) i10);
            j00Var.OooO0oo(-i10);
            j00Var.OooO0oo(iIntValue);
            int i12 = i;
            while (true) {
                i4 = i + i10;
                if (i12 >= i4) {
                    break;
                }
                j00Var.OooO0oo(byteString.getByte(i12) & 255);
                i12++;
            }
            if (i9 + 1 == i3) {
                if (i4 != list.get(i9).size()) {
                    throw new AssertionError();
                }
                j00Var.OooO0oo(list2.get(i9).intValue());
                return;
            } else {
                j00 j00Var3 = new j00();
                j00Var.OooO0oo((int) ((((long) OooO0OO(j00Var3)) + jOooO0OO) * (-1)));
                OooO00o(jOooO0OO, j00Var3, i4, list, i9, i3, list2);
                j00Var.OooOooO(j00Var3, j00Var3.o00000O0());
                return;
            }
        }
        int i13 = 1;
        for (int i14 = i9 + 1; i14 < i3; i14++) {
            if (list.get(i14 - 1).getByte(i) != list.get(i14).getByte(i)) {
                i13++;
            }
        }
        long jOooO0OO2 = j + ((long) OooO0OO(j00Var)) + 2 + ((long) (i13 * 2));
        j00Var.OooO0oo(i13);
        j00Var.OooO0oo(iIntValue);
        for (int i15 = i9; i15 < i3; i15++) {
            byte b = list.get(i15).getByte(i);
            if (i15 == i9 || b != list.get(i15 - 1).getByte(i)) {
                j00Var.OooO0oo(b & 255);
            }
        }
        j00 j00Var4 = new j00();
        int i16 = i9;
        while (i16 < i3) {
            byte b2 = list.get(i16).getByte(i);
            int i17 = i16 + 1;
            int i18 = i17;
            while (true) {
                if (i18 >= i3) {
                    i5 = i3;
                    break;
                } else {
                    if (b2 != list.get(i18).getByte(i)) {
                        i5 = i18;
                        break;
                    }
                    i18++;
                }
            }
            if (i17 == i5 && i + 1 == list.get(i16).size()) {
                j00Var.OooO0oo(list2.get(i16).intValue());
                i6 = i5;
                j00Var2 = j00Var4;
            } else {
                j00Var.OooO0oo((int) ((((long) OooO0OO(j00Var4)) + jOooO0OO2) * (-1)));
                i6 = i5;
                j00Var2 = j00Var4;
                OooO00o(jOooO0OO2, j00Var4, i + 1, list, i16, i5, list2);
            }
            j00Var4 = j00Var2;
            i16 = i6;
        }
        j00 j00Var5 = j00Var4;
        j00Var.OooOooO(j00Var5, j00Var5.o00000O0());
    }

    private static int OooO0OO(j00 j00Var) {
        return (int) (j00Var.o00000O0() / 4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00bc, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static x00 OooO0Oo(ByteString... byteStringArr) {
        if (byteStringArr.length == 0) {
            return new x00(new ByteString[0], new int[]{0, -1});
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(byteStringArr));
        Collections.sort(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList2.add(-1);
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList2.set(Collections.binarySearch(arrayList, byteStringArr[i2]), Integer.valueOf(i2));
        }
        if (((ByteString) arrayList.get(0)).size() == 0) {
            throw new IllegalArgumentException("the empty byte string is not a supported option");
        }
        int i3 = 0;
        while (i3 < arrayList.size()) {
            ByteString byteString = (ByteString) arrayList.get(i3);
            int i4 = i3 + 1;
            int i5 = i4;
            while (i5 < arrayList.size()) {
                ByteString byteString2 = (ByteString) arrayList.get(i5);
                if (!byteString2.startsWith(byteString)) {
                    break;
                }
                if (byteString2.size() == byteString.size()) {
                    throw new IllegalArgumentException("duplicate option: " + byteString2);
                }
                if (((Integer) arrayList2.get(i5)).intValue() > ((Integer) arrayList2.get(i3)).intValue()) {
                    arrayList.remove(i5);
                    arrayList2.remove(i5);
                } else {
                    i5++;
                }
            }
            i3 = i4;
        }
        j00 j00Var = new j00();
        OooO00o(0L, j00Var, 0, arrayList, 0, arrayList.size(), arrayList2);
        int iOooO0OO = OooO0OO(j00Var);
        int[] iArr = new int[iOooO0OO];
        for (int i6 = 0; i6 < iOooO0OO; i6++) {
            iArr[i6] = j00Var.readInt();
        }
        if (j00Var.OooOOO()) {
            return new x00((ByteString[]) byteStringArr.clone(), iArr);
        }
        throw new AssertionError();
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
    public ByteString get(int i) {
        return this.OoooOoO[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.OoooOoO.length;
    }
}
