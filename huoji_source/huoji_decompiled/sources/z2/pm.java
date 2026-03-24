package z2;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public final class pm {
    private static final int[][] OooO;
    public static final int OooO0OO = 0;
    public static final int OooO0Oo = 1;
    public static final int OooO0o = 3;
    public static final int OooO0o0 = 2;
    public static final int OooO0oO = 4;
    public static final int[][] OooOO0;
    private final byte[] OooO00o;
    public static final String[] OooO0O0 = {"UPPER", "LOWER", "DIGIT", "MIXED", "PUNCT"};
    public static final int[][] OooO0oo = {new int[]{0, 327708, 327710, 327709, 656318}, new int[]{590318, 0, 327710, 327709, 656318}, new int[]{262158, 590300, 0, 590301, 932798}, new int[]{327709, 327708, 656318, 0, 327710}, new int[]{327711, 656380, 656382, 656381, 0}};

    public class OooO00o implements Comparator<rm> {
        public OooO00o() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public int compare(rm rmVar, rm rmVar2) {
            return rmVar.OooO0Oo() - rmVar2.OooO0Oo();
        }
    }

    static {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, 5, 256);
        OooO = iArr;
        iArr[0][32] = 1;
        for (int i = 65; i <= 90; i++) {
            OooO[0][i] = (i - 65) + 2;
        }
        OooO[1][32] = 1;
        for (int i2 = 97; i2 <= 122; i2++) {
            OooO[1][i2] = (i2 - 97) + 2;
        }
        OooO[2][32] = 1;
        for (int i3 = 48; i3 <= 57; i3++) {
            OooO[2][i3] = (i3 - 48) + 2;
        }
        int[][] iArr2 = OooO;
        iArr2[2][44] = 12;
        iArr2[2][46] = 13;
        int[] iArr3 = {0, 32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 27, 28, 29, 30, 31, 64, 92, 94, 95, 96, com.anythink.expressad.video.module.a.a.O, 126, 127};
        for (int i4 = 0; i4 < 28; i4++) {
            OooO[3][iArr3[i4]] = i4;
        }
        int[] iArr4 = {0, 13, 0, 0, 0, 0, 33, 39, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 58, 59, 60, 61, 62, 63, 91, 93, com.anythink.expressad.video.module.a.a.N, 125};
        for (int i5 = 0; i5 < 31; i5++) {
            if (iArr4[i5] > 0) {
                OooO[4][iArr4[i5]] = i5;
            }
        }
        int[][] iArr5 = (int[][]) Array.newInstance((Class<?>) int.class, 6, 6);
        OooOO0 = iArr5;
        for (int[] iArr6 : iArr5) {
            Arrays.fill(iArr6, -1);
        }
        int[][] iArr7 = OooOO0;
        iArr7[0][4] = 0;
        iArr7[1][4] = 0;
        iArr7[1][0] = 28;
        iArr7[3][4] = 0;
        iArr7[2][4] = 0;
        iArr7[2][0] = 15;
    }

    public pm(byte[] bArr) {
        this.OooO00o = bArr;
    }

    private static Collection<rm> OooO0O0(Iterable<rm> iterable) {
        LinkedList linkedList = new LinkedList();
        for (rm rmVar : iterable) {
            boolean z = true;
            Iterator it = linkedList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                rm rmVar2 = (rm) it.next();
                if (rmVar2.OooO0oO(rmVar)) {
                    z = false;
                    break;
                }
                if (rmVar.OooO0oO(rmVar2)) {
                    it.remove();
                }
            }
            if (z) {
                linkedList.add(rmVar);
            }
        }
        return linkedList;
    }

    private void OooO0OO(rm rmVar, int i, Collection<rm> collection) {
        char c = (char) (this.OooO00o[i] & 255);
        boolean z = OooO[rmVar.OooO0o0()][c] > 0;
        rm rmVarOooO0O0 = null;
        for (int i2 = 0; i2 <= 4; i2++) {
            int i3 = OooO[i2][c];
            if (i3 > 0) {
                if (rmVarOooO0O0 == null) {
                    rmVarOooO0O0 = rmVar.OooO0O0(i);
                }
                if (!z || i2 == rmVar.OooO0o0() || i2 == 2) {
                    collection.add(rmVarOooO0O0.OooO0oo(i2, i3));
                }
                if (!z && OooOO0[rmVar.OooO0o0()][i2] >= 0) {
                    collection.add(rmVarOooO0O0.OooO(i2, i3));
                }
            }
        }
        if (rmVar.OooO0OO() > 0 || OooO[rmVar.OooO0o0()][c] == 0) {
            collection.add(rmVar.OooO00o(i));
        }
    }

    private static void OooO0Oo(rm rmVar, int i, int i2, Collection<rm> collection) {
        rm rmVarOooO0O0 = rmVar.OooO0O0(i);
        collection.add(rmVarOooO0O0.OooO0oo(4, i2));
        if (rmVar.OooO0o0() != 4) {
            collection.add(rmVarOooO0O0.OooO(4, i2));
        }
        if (i2 == 3 || i2 == 4) {
            collection.add(rmVarOooO0O0.OooO0oo(2, 16 - i2).OooO0oo(2, 1));
        }
        if (rmVar.OooO0OO() > 0) {
            collection.add(rmVar.OooO00o(i).OooO00o(i + 1));
        }
    }

    private static Collection<rm> OooO0o(Iterable<rm> iterable, int i, int i2) {
        LinkedList linkedList = new LinkedList();
        Iterator<rm> it = iterable.iterator();
        while (it.hasNext()) {
            OooO0Oo(it.next(), i, i2, linkedList);
        }
        return OooO0O0(linkedList);
    }

    private Collection<rm> OooO0o0(Iterable<rm> iterable, int i) {
        LinkedList linkedList = new LinkedList();
        Iterator<rm> it = iterable.iterator();
        while (it.hasNext()) {
            OooO0OO(it.next(), i, linkedList);
        }
        return OooO0O0(linkedList);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Cdo OooO00o() {
        int i;
        Collection<rm> collectionSingletonList = Collections.singletonList(rm.OooO0o0);
        int i2 = 0;
        while (true) {
            byte[] bArr = this.OooO00o;
            if (i2 >= bArr.length) {
                return ((rm) Collections.min(collectionSingletonList, new OooO00o())).OooOO0(this.OooO00o);
            }
            int i3 = i2 + 1;
            byte b = i3 < bArr.length ? bArr[i3] : (byte) 0;
            byte b2 = bArr[i2];
            if (b2 != 13) {
                if (b2 != 44) {
                    if (b2 != 46) {
                        i = (b2 == 58 && b == 32) ? 5 : 0;
                    } else if (b == 32) {
                        i = 3;
                    }
                } else if (b == 32) {
                    i = 4;
                }
            } else if (b == 10) {
                i = 2;
            }
            if (i > 0) {
                collectionSingletonList = OooO0o(collectionSingletonList, i2, i);
                i2 = i3;
            } else {
                collectionSingletonList = OooO0o0(collectionSingletonList, i2);
            }
            i2++;
        }
    }
}
