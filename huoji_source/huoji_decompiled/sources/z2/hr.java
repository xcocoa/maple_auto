package z2;

import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class hr extends yq {
    private static final int OooOo = 4;
    private static final int OooOo0 = 1;
    private static final int OooOo00 = 0;
    private static final int OooOo0O = 2;
    private static final int OooOo0o = 3;
    private static final int OooOoO0 = 5;
    private static final int OooOoOO = 11;
    private boolean OooOOO;
    private static final int[] OooOOOO = {7, 5, 4, 3, 1};
    private static final int[] OooOOOo = {4, 20, 52, 104, UiMessage.CommandToUi.Command_Type.SET_RADIO_GROUP_VALUE};
    private static final int[] OooOOo0 = {0, 348, 1388, 2948, 3988};
    private static final int[][] OooOOo = {new int[]{1, 8, 4, 1}, new int[]{3, 6, 4, 1}, new int[]{3, 4, 6, 1}, new int[]{3, 2, 8, 1}, new int[]{2, 6, 5, 1}, new int[]{2, 2, 9, 1}};
    private static final int[][] OooOOoo = {new int[]{1, 3, 9, 27, 81, 32, 96, 77}, new int[]{20, 60, 180, 118, 143, 7, 21, 63}, new int[]{189, 145, 13, 39, 117, 140, UiMessage.CommandToUi.Command_Type.SET_WEB_VIEW_VALUE, UiMessage.CommandToUi.Command_Type.SET_CHECK_BOX_VALUE}, new int[]{193, 157, 49, 147, 19, 57, 171, 91}, new int[]{62, 186, 136, 197, 169, 85, 44, 132}, new int[]{185, 133, 188, 142, 4, 12, 36, 108}, new int[]{113, 128, 173, 97, 80, 29, 87, 50}, new int[]{150, 28, 84, 41, com.anythink.expressad.video.module.a.a.N, 158, 52, 156}, new int[]{46, 138, UiMessage.CommandToUi.Command_Type.SET_BOTTON_VALUE, 187, 139, UiMessage.CommandToUi.Command_Type.SET_IMAGE_VIEW_VALUE, 196, 166}, new int[]{76, 17, 51, d8.OooOOo, 37, 111, com.anythink.expressad.video.module.a.a.H, 155}, new int[]{43, 129, 176, 106, 107, 110, 119, 146}, new int[]{16, 48, 144, 10, 30, 90, 59, 177}, new int[]{109, 116, 137, 200, 178, 112, 125, 164}, new int[]{70, UiMessage.CommandToUi.Command_Type.SET_LINE_VALUE, UiMessage.CommandToUi.Command_Type.SET_TAB_VALUE, 202, 184, 130, 179, 115}, new int[]{134, 191, 151, 31, 93, 68, UiMessage.CommandToUi.Command_Type.SET_RADIO_GROUP_VALUE, 190}, new int[]{aq.OooO0oO, 22, 66, 198, 172, 94, 71, 2}, new int[]{6, 18, 54, 162, 64, 192, 154, 40}, new int[]{120, 149, 25, 75, 14, 42, 126, 167}, new int[]{79, 26, 78, 23, 69, UiMessage.CommandToUi.Command_Type.SET_SPINNER_VALUE, 199, HideBottomViewOnScrollBehavior.OooO0o0}, new int[]{103, 98, 83, 38, 114, 131, 182, com.anythink.expressad.video.module.a.a.O}, new int[]{161, 61, 183, 127, 170, 88, 53, 159}, new int[]{55, 165, 73, 8, 24, 72, 5, 15}, new int[]{45, 135, 194, 160, 58, 174, 100, 89}};
    private static final int[][] OooOoO = {new int[]{0, 0}, new int[]{0, 1, 1}, new int[]{0, 2, 1, 3}, new int[]{0, 4, 1, 3, 2}, new int[]{0, 4, 1, 3, 3, 5}, new int[]{0, 4, 1, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 2, 3, 3}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 4}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 3, 3, 4, 4, 5, 5}};
    private final List<fr> OooOO0O = new ArrayList(11);
    private final List<gr> OooOO0o = new ArrayList();
    private final int[] OooOOO0 = new int[2];

    private void OooOOoo(int i) throws NotFoundException {
        boolean z;
        boolean z3;
        boolean z4;
        boolean z5;
        int iOooO0Oo = po.OooO0Oo(OooOOO());
        int iOooO0Oo2 = po.OooO0Oo(OooOO0o());
        boolean z6 = true;
        if (iOooO0Oo > 13) {
            z = false;
            z3 = true;
        } else {
            z = iOooO0Oo < 4;
            z3 = false;
        }
        if (iOooO0Oo2 > 13) {
            z4 = false;
            z5 = true;
        } else {
            z4 = iOooO0Oo2 < 4;
            z5 = false;
        }
        int i2 = (iOooO0Oo + iOooO0Oo2) - i;
        boolean z7 = (iOooO0Oo & 1) == 1;
        boolean z8 = (iOooO0Oo2 & 1) == 0;
        if (i2 == 1) {
            if (z7) {
                if (z8) {
                    throw NotFoundException.getNotFoundInstance();
                }
                z6 = z;
                z3 = true;
            } else {
                if (!z8) {
                    throw NotFoundException.getNotFoundInstance();
                }
                z6 = z;
                z5 = true;
            }
        } else if (i2 == -1) {
            if (z7) {
                if (z8) {
                    throw NotFoundException.getNotFoundInstance();
                }
            } else {
                if (!z8) {
                    throw NotFoundException.getNotFoundInstance();
                }
                z6 = z;
                z4 = true;
            }
        } else {
            if (i2 != 0) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (z7) {
                if (!z8) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (iOooO0Oo >= iOooO0Oo2) {
                    z6 = z;
                    z4 = true;
                    z3 = true;
                }
                z5 = true;
            } else {
                if (z8) {
                    throw NotFoundException.getNotFoundInstance();
                }
                z6 = z;
            }
        }
        if (z6) {
            if (z3) {
                throw NotFoundException.getNotFoundInstance();
            }
            yq.OooOOOo(OooOOO(), OooOOOO());
        }
        if (z3) {
            yq.OooO(OooOOO(), OooOOOO());
        }
        if (z4) {
            if (z5) {
                throw NotFoundException.getNotFoundInstance();
            }
            yq.OooOOOo(OooOO0o(), OooOOOO());
        }
        if (z5) {
            yq.OooO(OooOO0o(), OooOOO0());
        }
    }

    private List<fr> OooOo0(List<gr> list, int i) throws NotFoundException {
        while (i < this.OooOO0o.size()) {
            gr grVar = this.OooOO0o.get(i);
            this.OooOO0O.clear();
            Iterator<gr> it = list.iterator();
            while (it.hasNext()) {
                this.OooOO0O.addAll(it.next().OooO00o());
            }
            this.OooOO0O.addAll(grVar.OooO00o());
            if (OooOooo(this.OooOO0O)) {
                if (OooOo00()) {
                    return this.OooOO0O;
                }
                ArrayList arrayList = new ArrayList(list);
                arrayList.add(grVar);
                try {
                    return OooOo0(arrayList, i + 1);
                } catch (NotFoundException unused) {
                    continue;
                }
            }
            i++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private boolean OooOo00() {
        fr frVar = this.OooOO0O.get(0);
        zq zqVarOooO0OO = frVar.OooO0OO();
        zq zqVarOooO0Oo = frVar.OooO0Oo();
        if (zqVarOooO0Oo == null) {
            return false;
        }
        int iOooO00o = zqVarOooO0Oo.OooO00o();
        int i = 2;
        for (int i2 = 1; i2 < this.OooOO0O.size(); i2++) {
            fr frVar2 = this.OooOO0O.get(i2);
            iOooO00o += frVar2.OooO0OO().OooO00o();
            i++;
            zq zqVarOooO0Oo2 = frVar2.OooO0Oo();
            if (zqVarOooO0Oo2 != null) {
                iOooO00o += zqVarOooO0Oo2.OooO00o();
                i++;
            }
        }
        return ((i + (-4)) * UiMessage.CommandToUi.Command_Type.SET_EDIT_INPUT_TYPE_VALUE) + (iOooO00o % UiMessage.CommandToUi.Command_Type.SET_EDIT_INPUT_TYPE_VALUE) == zqVarOooO0OO.OooO0O0();
    }

    private List<fr> OooOo0O(boolean z) {
        List<fr> listOooOo0 = null;
        if (this.OooOO0o.size() > 25) {
            this.OooOO0o.clear();
            return null;
        }
        this.OooOO0O.clear();
        if (z) {
            Collections.reverse(this.OooOO0o);
        }
        try {
            listOooOo0 = OooOo0(new ArrayList(), 0);
        } catch (NotFoundException unused) {
        }
        if (z) {
            Collections.reverse(this.OooOO0o);
        }
        return listOooOo0;
    }

    public static em OooOo0o(List<fr> list) throws NotFoundException, FormatException {
        String strOooO0Oo = rr.OooO00o(er.OooO00o(list)).OooO0Oo();
        fm[] fmVarArrOooO00o = list.get(0).OooO0O0().OooO00o();
        fm[] fmVarArrOooO00o2 = list.get(list.size() - 1).OooO0O0().OooO00o();
        return new em(strOooO0Oo, null, new fm[]{fmVarArrOooO00o[0], fmVarArrOooO00o[1], fmVarArrOooO00o2[0], fmVarArrOooO00o2[1]}, BarcodeFormat.RSS_EXPANDED);
    }

    private void OooOoO(Cdo cdo, List<fr> list, int i) throws NotFoundException {
        int[] iArrOooOO0O = OooOO0O();
        iArrOooOO0O[0] = 0;
        iArrOooOO0O[1] = 0;
        iArrOooOO0O[2] = 0;
        iArrOooOO0O[3] = 0;
        int iOooOOO0 = cdo.OooOOO0();
        if (i < 0) {
            i = list.isEmpty() ? 0 : list.get(list.size() - 1).OooO0O0().OooO0O0()[1];
        }
        boolean z = list.size() % 2 != 0;
        if (this.OooOOO) {
            z = !z;
        }
        boolean z3 = false;
        while (i < iOooOOO0) {
            z3 = !cdo.OooO0oo(i);
            if (!z3) {
                break;
            } else {
                i++;
            }
        }
        boolean z4 = z3;
        int i2 = 0;
        int i3 = i;
        while (i < iOooOOO0) {
            if (cdo.OooO0oo(i) != z4) {
                iArrOooOO0O[i2] = iArrOooOO0O[i2] + 1;
            } else {
                if (i2 == 3) {
                    if (z) {
                        Oooo0(iArrOooOO0O);
                    }
                    if (yq.OooOOo0(iArrOooOO0O)) {
                        int[] iArr = this.OooOOO0;
                        iArr[0] = i3;
                        iArr[1] = i;
                        return;
                    }
                    if (z) {
                        Oooo0(iArrOooOO0O);
                    }
                    i3 += iArrOooOO0O[0] + iArrOooOO0O[1];
                    iArrOooOO0O[0] = iArrOooOO0O[2];
                    iArrOooOO0O[1] = iArrOooOO0O[3];
                    iArrOooOO0O[2] = 0;
                    iArrOooOO0O[3] = 0;
                    i2--;
                } else {
                    i2++;
                }
                iArrOooOO0O[i2] = 1;
                z4 = !z4;
            }
            i++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int OooOoOO(Cdo cdo, int i) {
        return cdo.OooO0oo(i) ? cdo.OooOO0O(cdo.OooOO0o(i)) : cdo.OooOO0o(cdo.OooOO0O(i));
    }

    private static boolean OooOoo(ar arVar, boolean z, boolean z3) {
        return (arVar.OooO0OO() == 0 && z && z3) ? false : true;
    }

    private static boolean OooOooO(Iterable<fr> iterable, Iterable<gr> iterable2) {
        boolean z;
        boolean z3;
        Iterator<gr> it = iterable2.iterator();
        do {
            z = false;
            if (!it.hasNext()) {
                return false;
            }
            gr next = it.next();
            Iterator<fr> it2 = iterable.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = true;
                    break;
                }
                fr next2 = it2.next();
                Iterator<fr> it3 = next.OooO00o().iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        z3 = false;
                        break;
                    }
                    if (next2.equals(it3.next())) {
                        z3 = true;
                        break;
                    }
                }
                if (!z3) {
                    break;
                }
            }
        } while (!z);
        return true;
    }

    private static boolean OooOooo(List<fr> list) {
        boolean z;
        for (int[] iArr : OooOoO) {
            if (list.size() <= iArr.length) {
                int i = 0;
                while (true) {
                    if (i >= list.size()) {
                        z = true;
                        break;
                    }
                    if (list.get(i).OooO0O0().OooO0OO() != iArr[i]) {
                        z = false;
                        break;
                    }
                    i++;
                }
                if (z) {
                    return true;
                }
            }
        }
        return false;
    }

    private static void Oooo0(int[] iArr) {
        int length = iArr.length;
        for (int i = 0; i < length / 2; i++) {
            int i2 = iArr[i];
            int i3 = (length - i) - 1;
            iArr[i] = iArr[i3];
            iArr[i3] = i2;
        }
    }

    private ar Oooo000(Cdo cdo, int i, boolean z) {
        int i2;
        int i3;
        int i4;
        if (z) {
            int i5 = this.OooOOO0[0] - 1;
            while (i5 >= 0 && !cdo.OooO0oo(i5)) {
                i5--;
            }
            int i6 = i5 + 1;
            int[] iArr = this.OooOOO0;
            i4 = iArr[0] - i6;
            i2 = iArr[1];
            i3 = i6;
        } else {
            int[] iArr2 = this.OooOOO0;
            int i7 = iArr2[0];
            int iOooOO0o = cdo.OooOO0o(iArr2[1] + 1);
            i2 = iOooOO0o;
            i3 = i7;
            i4 = iOooOO0o - this.OooOOO0[1];
        }
        int[] iArrOooOO0O = OooOO0O();
        System.arraycopy(iArrOooOO0O, 0, iArrOooOO0O, 1, iArrOooOO0O.length - 1);
        iArrOooOO0O[0] = i4;
        try {
            return new ar(yq.OooOOo(iArrOooOO0O, OooOOo), new int[]{i3, i2}, i3, i2, i);
        } catch (NotFoundException unused) {
            return null;
        }
    }

    private static void Oooo00O(List<fr> list, List<gr> list2) {
        boolean z;
        Iterator<gr> it = list2.iterator();
        while (it.hasNext()) {
            gr next = it.next();
            if (next.OooO00o().size() != list.size()) {
                Iterator<fr> it2 = next.OooO00o().iterator();
                while (true) {
                    z = false;
                    boolean z3 = true;
                    if (!it2.hasNext()) {
                        z = true;
                        break;
                    }
                    fr next2 = it2.next();
                    Iterator<fr> it3 = list.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            z3 = false;
                            break;
                        } else if (next2.equals(it3.next())) {
                            break;
                        }
                    }
                    if (!z3) {
                        break;
                    }
                }
                if (z) {
                    it.remove();
                }
            }
        }
    }

    private void Oooo0O0(int i, boolean z) {
        boolean zOooO0OO = false;
        int i2 = 0;
        boolean zOooO0OO2 = false;
        while (true) {
            if (i2 >= this.OooOO0o.size()) {
                break;
            }
            gr grVar = this.OooOO0o.get(i2);
            if (grVar.OooO0O0() > i) {
                zOooO0OO = grVar.OooO0OO(this.OooOO0O);
                break;
            } else {
                zOooO0OO2 = grVar.OooO0OO(this.OooOO0O);
                i2++;
            }
        }
        if (zOooO0OO || zOooO0OO2 || OooOooO(this.OooOO0O, this.OooOO0o)) {
            return;
        }
        this.OooOO0o.add(i2, new gr(this.OooOO0O, i, z));
        Oooo00O(this.OooOO0O, this.OooOO0o);
    }

    @Override // z2.nq
    public final em OooO0OO(int i, Cdo cdo, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        this.OooOO0O.clear();
        this.OooOOO = false;
        try {
            return OooOo0o(OooOoO0(i, cdo));
        } catch (NotFoundException unused) {
            this.OooOO0O.clear();
            this.OooOOO = true;
            return OooOo0o(OooOoO0(i, cdo));
        }
    }

    public final zq OooOo(Cdo cdo, ar arVar, boolean z, boolean z3) throws NotFoundException {
        int[] iArrOooOO0 = OooOO0();
        for (int i = 0; i < iArrOooOO0.length; i++) {
            iArrOooOO0[i] = 0;
        }
        int[] iArrOooO0O0 = arVar.OooO0O0();
        if (z3) {
            nq.OooO0oO(cdo, iArrOooO0O0[0], iArrOooOO0);
        } else {
            nq.OooO0o(cdo, iArrOooO0O0[1], iArrOooOO0);
            int i2 = 0;
            for (int length = iArrOooOO0.length - 1; i2 < length; length--) {
                int i3 = iArrOooOO0[i2];
                iArrOooOO0[i2] = iArrOooOO0[length];
                iArrOooOO0[length] = i3;
                i2++;
            }
        }
        float fOooO0Oo = po.OooO0Oo(iArrOooOO0) / 17.0f;
        float f = (arVar.OooO0O0()[1] - arVar.OooO0O0()[0]) / 15.0f;
        if (Math.abs(fOooO0Oo - f) / f > 0.3f) {
            throw NotFoundException.getNotFoundInstance();
        }
        int[] iArrOooOOO = OooOOO();
        int[] iArrOooOO0o = OooOO0o();
        float[] fArrOooOOOO = OooOOOO();
        float[] fArrOooOOO0 = OooOOO0();
        for (int i4 = 0; i4 < iArrOooOO0.length; i4++) {
            float f2 = (iArrOooOO0[i4] * 1.0f) / fOooO0Oo;
            int i5 = (int) (0.5f + f2);
            if (i5 <= 0) {
                if (f2 < 0.3f) {
                    throw NotFoundException.getNotFoundInstance();
                }
                i5 = 1;
            } else if (i5 > 8) {
                if (f2 > 8.7f) {
                    throw NotFoundException.getNotFoundInstance();
                }
                i5 = 8;
            }
            int i6 = i4 / 2;
            if ((i4 & 1) == 0) {
                iArrOooOOO[i6] = i5;
                fArrOooOOOO[i6] = f2 - i5;
            } else {
                iArrOooOO0o[i6] = i5;
                fArrOooOOO0[i6] = f2 - i5;
            }
        }
        OooOOoo(17);
        int iOooO0OO = (((arVar.OooO0OO() * 4) + (z ? 0 : 2)) + (!z3 ? 1 : 0)) - 1;
        int i7 = 0;
        int i8 = 0;
        for (int length2 = iArrOooOOO.length - 1; length2 >= 0; length2--) {
            if (OooOoo(arVar, z, z3)) {
                i7 += iArrOooOOO[length2] * OooOOoo[iOooO0OO][length2 * 2];
            }
            i8 += iArrOooOOO[length2];
        }
        int i9 = 0;
        for (int length3 = iArrOooOO0o.length - 1; length3 >= 0; length3--) {
            if (OooOoo(arVar, z, z3)) {
                i9 += iArrOooOO0o[length3] * OooOOoo[iOooO0OO][(length3 * 2) + 1];
            }
        }
        int i10 = i7 + i9;
        if ((i8 & 1) != 0 || i8 > 13 || i8 < 4) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i11 = (13 - i8) / 2;
        int i12 = OooOOOO[i11];
        return new zq((dr.OooO0O0(iArrOooOOO, i12, true) * OooOOOo[i11]) + dr.OooO0O0(iArrOooOO0o, 9 - i12, false) + OooOOo0[i11], i10);
    }

    public final List<fr> OooOoO0(int i, Cdo cdo) throws NotFoundException {
        boolean z = false;
        while (!z) {
            try {
                List<fr> list = this.OooOO0O;
                list.add(Oooo00o(cdo, list, i));
            } catch (NotFoundException e) {
                if (this.OooOO0O.isEmpty()) {
                    throw e;
                }
                z = true;
            }
        }
        if (OooOo00()) {
            return this.OooOO0O;
        }
        boolean z3 = !this.OooOO0o.isEmpty();
        Oooo0O0(i, false);
        if (z3) {
            List<fr> listOooOo0O = OooOo0O(false);
            if (listOooOo0O != null) {
                return listOooOo0O;
            }
            List<fr> listOooOo0O2 = OooOo0O(true);
            if (listOooOo0O2 != null) {
                return listOooOo0O2;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public final List<gr> OooOoo0() {
        return this.OooOO0o;
    }

    public final fr Oooo00o(Cdo cdo, List<fr> list, int i) throws NotFoundException {
        ar arVarOooo000;
        zq zqVarOooOo;
        boolean z = list.size() % 2 == 0;
        if (this.OooOOO) {
            z = !z;
        }
        int iOooOoOO = -1;
        boolean z3 = true;
        do {
            OooOoO(cdo, list, iOooOoOO);
            arVarOooo000 = Oooo000(cdo, i, z);
            if (arVarOooo000 == null) {
                iOooOoOO = OooOoOO(cdo, this.OooOOO0[0]);
            } else {
                z3 = false;
            }
        } while (z3);
        zq zqVarOooOo2 = OooOo(cdo, arVarOooo000, z, true);
        if (!list.isEmpty() && list.get(list.size() - 1).OooO0oO()) {
            throw NotFoundException.getNotFoundInstance();
        }
        try {
            zqVarOooOo = OooOo(cdo, arVarOooo000, z, false);
        } catch (NotFoundException unused) {
            zqVarOooOo = null;
        }
        return new fr(zqVarOooOo2, zqVarOooOo, arVarOooo000, true);
    }

    @Override // z2.nq, z2.dm
    public final void reset() {
        this.OooOO0O.clear();
        this.OooOO0o.clear();
    }
}
