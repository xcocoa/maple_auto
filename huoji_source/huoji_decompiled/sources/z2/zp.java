package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zp extends nq {
    private static final int OooO = 97;
    public static final int[][] OooO00o = {new int[]{2, 1, 2, 2, 2, 2}, new int[]{2, 2, 2, 1, 2, 2}, new int[]{2, 2, 2, 2, 2, 1}, new int[]{1, 2, 1, 2, 2, 3}, new int[]{1, 2, 1, 3, 2, 2}, new int[]{1, 3, 1, 2, 2, 2}, new int[]{1, 2, 2, 2, 1, 3}, new int[]{1, 2, 2, 3, 1, 2}, new int[]{1, 3, 2, 2, 1, 2}, new int[]{2, 2, 1, 2, 1, 3}, new int[]{2, 2, 1, 3, 1, 2}, new int[]{2, 3, 1, 2, 1, 2}, new int[]{1, 1, 2, 2, 3, 2}, new int[]{1, 2, 2, 1, 3, 2}, new int[]{1, 2, 2, 2, 3, 1}, new int[]{1, 1, 3, 2, 2, 2}, new int[]{1, 2, 3, 1, 2, 2}, new int[]{1, 2, 3, 2, 2, 1}, new int[]{2, 2, 3, 2, 1, 1}, new int[]{2, 2, 1, 1, 3, 2}, new int[]{2, 2, 1, 2, 3, 1}, new int[]{2, 1, 3, 2, 1, 2}, new int[]{2, 2, 3, 1, 1, 2}, new int[]{3, 1, 2, 1, 3, 1}, new int[]{3, 1, 1, 2, 2, 2}, new int[]{3, 2, 1, 1, 2, 2}, new int[]{3, 2, 1, 2, 2, 1}, new int[]{3, 1, 2, 2, 1, 2}, new int[]{3, 2, 2, 1, 1, 2}, new int[]{3, 2, 2, 2, 1, 1}, new int[]{2, 1, 2, 1, 2, 3}, new int[]{2, 1, 2, 3, 2, 1}, new int[]{2, 3, 2, 1, 2, 1}, new int[]{1, 1, 1, 3, 2, 3}, new int[]{1, 3, 1, 1, 2, 3}, new int[]{1, 3, 1, 3, 2, 1}, new int[]{1, 1, 2, 3, 1, 3}, new int[]{1, 3, 2, 1, 1, 3}, new int[]{1, 3, 2, 3, 1, 1}, new int[]{2, 1, 1, 3, 1, 3}, new int[]{2, 3, 1, 1, 1, 3}, new int[]{2, 3, 1, 3, 1, 1}, new int[]{1, 1, 2, 1, 3, 3}, new int[]{1, 1, 2, 3, 3, 1}, new int[]{1, 3, 2, 1, 3, 1}, new int[]{1, 1, 3, 1, 2, 3}, new int[]{1, 1, 3, 3, 2, 1}, new int[]{1, 3, 3, 1, 2, 1}, new int[]{3, 1, 3, 1, 2, 1}, new int[]{2, 1, 1, 3, 3, 1}, new int[]{2, 3, 1, 1, 3, 1}, new int[]{2, 1, 3, 1, 1, 3}, new int[]{2, 1, 3, 3, 1, 1}, new int[]{2, 1, 3, 1, 3, 1}, new int[]{3, 1, 1, 1, 2, 3}, new int[]{3, 1, 1, 3, 2, 1}, new int[]{3, 3, 1, 1, 2, 1}, new int[]{3, 1, 2, 1, 1, 3}, new int[]{3, 1, 2, 3, 1, 1}, new int[]{3, 3, 2, 1, 1, 1}, new int[]{3, 1, 4, 1, 1, 1}, new int[]{2, 2, 1, 4, 1, 1}, new int[]{4, 3, 1, 1, 1, 1}, new int[]{1, 1, 1, 2, 2, 4}, new int[]{1, 1, 1, 4, 2, 2}, new int[]{1, 2, 1, 1, 2, 4}, new int[]{1, 2, 1, 4, 2, 1}, new int[]{1, 4, 1, 1, 2, 2}, new int[]{1, 4, 1, 2, 2, 1}, new int[]{1, 1, 2, 2, 1, 4}, new int[]{1, 1, 2, 4, 1, 2}, new int[]{1, 2, 2, 1, 1, 4}, new int[]{1, 2, 2, 4, 1, 1}, new int[]{1, 4, 2, 1, 1, 2}, new int[]{1, 4, 2, 2, 1, 1}, new int[]{2, 4, 1, 2, 1, 1}, new int[]{2, 2, 1, 1, 1, 4}, new int[]{4, 1, 3, 1, 1, 1}, new int[]{2, 4, 1, 1, 1, 2}, new int[]{1, 3, 4, 1, 1, 1}, new int[]{1, 1, 1, 2, 4, 2}, new int[]{1, 2, 1, 1, 4, 2}, new int[]{1, 2, 1, 2, 4, 1}, new int[]{1, 1, 4, 2, 1, 2}, new int[]{1, 2, 4, 1, 1, 2}, new int[]{1, 2, 4, 2, 1, 1}, new int[]{4, 1, 1, 2, 1, 2}, new int[]{4, 2, 1, 1, 1, 2}, new int[]{4, 2, 1, 2, 1, 1}, new int[]{2, 1, 2, 1, 4, 1}, new int[]{2, 1, 4, 1, 2, 1}, new int[]{4, 1, 2, 1, 2, 1}, new int[]{1, 1, 1, 1, 4, 3}, new int[]{1, 1, 1, 3, 4, 1}, new int[]{1, 3, 1, 1, 4, 1}, new int[]{1, 1, 4, 1, 1, 3}, new int[]{1, 1, 4, 3, 1, 1}, new int[]{4, 1, 1, 1, 1, 3}, new int[]{4, 1, 1, 3, 1, 1}, new int[]{1, 1, 3, 1, 4, 1}, new int[]{1, 1, 4, 1, 3, 1}, new int[]{3, 1, 1, 1, 4, 1}, new int[]{4, 1, 1, 1, 3, 1}, new int[]{2, 1, 1, 4, 1, 2}, new int[]{2, 1, 1, 2, 1, 4}, new int[]{2, 1, 1, 2, 3, 2}, new int[]{2, 3, 3, 1, 1, 1, 2}};
    private static final float OooO0O0 = 0.25f;
    private static final float OooO0OO = 0.7f;
    private static final int OooO0Oo = 98;
    private static final int OooO0o = 100;
    private static final int OooO0o0 = 99;
    private static final int OooO0oO = 101;
    private static final int OooO0oo = 102;
    private static final int OooOO0 = 96;
    private static final int OooOO0O = 101;
    private static final int OooOO0o = 100;
    private static final int OooOOO = 104;
    private static final int OooOOO0 = 103;
    private static final int OooOOOO = 105;
    private static final int OooOOOo = 106;

    private static int[] OooO(Cdo cdo) throws NotFoundException {
        int iOooOOO0 = cdo.OooOOO0();
        int iOooOO0O = cdo.OooOO0O(0);
        int[] iArr = new int[6];
        int i = iOooOO0O;
        boolean z = false;
        int i2 = 0;
        while (iOooOO0O < iOooOOO0) {
            if (cdo.OooO0oo(iOooOO0O) != z) {
                iArr[i2] = iArr[i2] + 1;
            } else {
                if (i2 == 5) {
                    float f = 0.25f;
                    int i3 = -1;
                    for (int i4 = 103; i4 <= 105; i4++) {
                        float fOooO0o0 = nq.OooO0o0(iArr, OooO00o[i4], OooO0OO);
                        if (fOooO0o0 < f) {
                            i3 = i4;
                            f = fOooO0o0;
                        }
                    }
                    if (i3 >= 0 && cdo.OooOOOO(Math.max(0, i - ((iOooOO0O - i) / 2)), i, false)) {
                        return new int[]{i, iOooOO0O, i3};
                    }
                    i += iArr[0] + iArr[1];
                    int i5 = i2 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i5);
                    iArr[i5] = 0;
                    iArr[i2] = 0;
                    i2--;
                } else {
                    i2++;
                }
                iArr[i2] = 1;
                z = !z;
            }
            iOooOO0O++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int OooO0oo(Cdo cdo, int[] iArr, int i) throws NotFoundException {
        nq.OooO0o(cdo, i, iArr);
        float f = 0.25f;
        int i2 = -1;
        int i3 = 0;
        while (true) {
            int[][] iArr2 = OooO00o;
            if (i3 >= iArr2.length) {
                break;
            }
            float fOooO0o0 = nq.OooO0o0(iArr, iArr2[i3], OooO0OO);
            if (fOooO0o0 < f) {
                i2 = i3;
                f = fOooO0o0;
            }
            i3++;
        }
        if (i2 >= 0) {
            return i2;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00d2, code lost:
    
        if (r9 != false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0106, code lost:
    
        if (r9 != false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0108, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00c0 A[PHI: r17
      0x00c0: PHI (r17v16 boolean) = (r17v6 boolean), (r17v19 boolean) binds: [B:74:0x00f9, B:49:0x00be] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c5 A[PHI: r17
      0x00c5: PHI (r17v15 boolean) = (r17v6 boolean), (r17v19 boolean) binds: [B:74:0x00f9, B:49:0x00be] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x010d A[PHI: r17
      0x010d: PHI (r17v10 boolean) = (r17v6 boolean), (r17v19 boolean) binds: [B:70:0x00ef, B:45:0x00b3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0117 A[PHI: r17
      0x0117: PHI (r17v8 boolean) = (r17v6 boolean), (r17v19 boolean) binds: [B:69:0x00ed, B:44:0x00b1] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // z2.nq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final em OooO0OO(int i, Cdo cdo, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        char c;
        boolean z;
        int i2;
        boolean z3 = false;
        boolean z4 = map != null && map.containsKey(DecodeHintType.ASSUME_GS1);
        int[] iArrOooO = OooO(cdo);
        int i3 = iArrOooO[2];
        ArrayList arrayList = new ArrayList(20);
        arrayList.add(Byte.valueOf((byte) i3));
        switch (i3) {
            case 103:
                c = 'e';
                break;
            case 104:
                c = 'd';
                break;
            case 105:
                c = 'c';
                break;
            default:
                throw FormatException.getFormatInstance();
        }
        StringBuilder sb = new StringBuilder(20);
        int i4 = 6;
        int[] iArr = new int[6];
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = true;
        boolean z8 = false;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        char c2 = c;
        int i8 = iArrOooO[0];
        int i9 = iArrOooO[1];
        char c3 = c2;
        while (!z6) {
            int iOooO0oo = OooO0oo(cdo, iArr, i9);
            arrayList.add(Byte.valueOf((byte) iOooO0oo));
            if (iOooO0oo != 106) {
                z7 = true;
            }
            if (iOooO0oo != 106) {
                i6++;
                i3 += i6 * iOooO0oo;
            }
            int i10 = i9;
            for (int i11 = 0; i11 < i4; i11++) {
                i10 += iArr[i11];
            }
            switch (iOooO0oo) {
                case 103:
                case 104:
                case 105:
                    throw FormatException.getFormatInstance();
                default:
                    switch (c3) {
                        case 'c':
                            if (iOooO0oo >= 100) {
                                if (iOooO0oo != 106) {
                                    z7 = false;
                                }
                                if (iOooO0oo == 106) {
                                    z = false;
                                    z6 = true;
                                    break;
                                } else {
                                    switch (iOooO0oo) {
                                        case 100:
                                            z = false;
                                            c3 = 'd';
                                            break;
                                        case 101:
                                            z = false;
                                            c3 = 'e';
                                            break;
                                        case 102:
                                            if (z4) {
                                                if (sb.length() == 0) {
                                                    sb.append("]C1");
                                                } else {
                                                    sb.append((char) 29);
                                                }
                                                break;
                                            }
                                        default:
                                            z = false;
                                            break;
                                    }
                                }
                            } else {
                                if (iOooO0oo < 10) {
                                    sb.append('0');
                                }
                                sb.append(iOooO0oo);
                            }
                            z = false;
                            break;
                        case 'd':
                            if (iOooO0oo < 96) {
                                i2 = iOooO0oo + 32;
                                if (z5 != z3) {
                                    i2 += 128;
                                }
                                sb.append((char) i2);
                                z = false;
                                z5 = false;
                            } else {
                                if (iOooO0oo != 106) {
                                    z7 = false;
                                }
                                if (iOooO0oo != 106) {
                                    switch (iOooO0oo) {
                                        case 98:
                                            z = true;
                                            c3 = 'e';
                                            break;
                                        case 99:
                                            z = false;
                                            c3 = 'c';
                                            break;
                                        case 100:
                                            if (z3 || !z5) {
                                                if (z3) {
                                                }
                                                z = false;
                                                z5 = true;
                                            }
                                            z3 = true;
                                            z = false;
                                            z5 = false;
                                            break;
                                        case 101:
                                            z = false;
                                            c3 = 'e';
                                            break;
                                        case 102:
                                            if (z4) {
                                                if (sb.length() == 0) {
                                                    sb.append("]C1");
                                                } else {
                                                    sb.append((char) 29);
                                                }
                                            }
                                            break;
                                    }
                                } else {
                                    z6 = true;
                                }
                                z = false;
                            }
                            break;
                        case 'e':
                            if (iOooO0oo < 64) {
                                i2 = iOooO0oo + 32;
                                if (z5 != z3) {
                                    i2 += 128;
                                }
                            } else if (iOooO0oo >= 96) {
                                if (iOooO0oo != 106) {
                                    z7 = false;
                                }
                                if (iOooO0oo != 106) {
                                    switch (iOooO0oo) {
                                        case 98:
                                            z = true;
                                            c3 = 'd';
                                            break;
                                        case 100:
                                            z = false;
                                            c3 = 'd';
                                            break;
                                        case 101:
                                            if (z3 || !z5) {
                                                if (z3) {
                                                }
                                                z = false;
                                                z5 = true;
                                            }
                                            z3 = true;
                                            z = false;
                                            z5 = false;
                                            break;
                                        case 102:
                                            if (z4) {
                                                if (sb.length() == 0) {
                                                }
                                            }
                                            break;
                                    }
                                }
                                z = false;
                            } else {
                                i2 = z5 == z3 ? iOooO0oo - 64 : iOooO0oo + 64;
                            }
                            sb.append((char) i2);
                            z = false;
                            z5 = false;
                            break;
                        default:
                            z = false;
                            break;
                    }
                    if (z8) {
                        c3 = c3 == 'e' ? 'd' : 'e';
                    }
                    z8 = z;
                    i4 = 6;
                    i8 = i9;
                    i9 = i10;
                    i7 = i5;
                    i5 = iOooO0oo;
                    break;
            }
            while (!z6) {
            }
        }
        int i12 = i9 - i8;
        int iOooOO0o = cdo.OooOO0o(i9);
        if (!cdo.OooOOOO(iOooOO0o, Math.min(cdo.OooOOO0(), ((iOooOO0o - i8) / 2) + iOooOO0o), false)) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i13 = i7;
        if ((i3 - (i6 * i13)) % 103 != i13) {
            throw ChecksumException.getChecksumInstance();
        }
        int length = sb.length();
        if (length == 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (length > 0 && z7) {
            sb.delete(c3 == 'c' ? length - 2 : length - 1, length);
        }
        float f = (iArrOooO[1] + iArrOooO[0]) / 2.0f;
        float f2 = i8 + (i12 / 2.0f);
        int size = arrayList.size();
        byte[] bArr = new byte[size];
        for (int i14 = 0; i14 < size; i14++) {
            bArr[i14] = ((Byte) arrayList.get(i14)).byteValue();
        }
        float f3 = i;
        return new em(sb.toString(), bArr, new fm[]{new fm(f, f3), new fm(f2, f3)}, BarcodeFormat.CODE_128);
    }
}
