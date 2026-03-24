package androidx.recyclerview.widget;

import androidx.recyclerview.widget.AdapterHelper;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class OpReorderer {
    public final Callback mCallback;

    public interface Callback {
        AdapterHelper.UpdateOp obtainUpdateOp(int i, int i2, int i3, Object obj);

        void recycleUpdateOp(AdapterHelper.UpdateOp updateOp);
    }

    public OpReorderer(Callback callback) {
        this.mCallback = callback;
    }

    private int getLastMoveOutOfOrder(List<AdapterHelper.UpdateOp> list) {
        boolean z = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).cmd != 8) {
                z = true;
            } else if (z) {
                return size;
            }
        }
        return -1;
    }

    private void swapMoveAdd(List<AdapterHelper.UpdateOp> list, int i, AdapterHelper.UpdateOp updateOp, int i2, AdapterHelper.UpdateOp updateOp2) {
        int i3 = updateOp.itemCount;
        int i4 = updateOp2.positionStart;
        int i5 = i3 < i4 ? -1 : 0;
        int i6 = updateOp.positionStart;
        if (i6 < i4) {
            i5++;
        }
        if (i4 <= i6) {
            updateOp.positionStart = i6 + updateOp2.itemCount;
        }
        int i7 = updateOp2.positionStart;
        if (i7 <= i3) {
            updateOp.itemCount = i3 + updateOp2.itemCount;
        }
        updateOp2.positionStart = i7 + i5;
        list.set(i, updateOp2);
        list.set(i2, updateOp);
    }

    private void swapMoveOp(List<AdapterHelper.UpdateOp> list, int i, int i2) {
        AdapterHelper.UpdateOp updateOp = list.get(i);
        AdapterHelper.UpdateOp updateOp2 = list.get(i2);
        int i3 = updateOp2.cmd;
        if (i3 == 1) {
            swapMoveAdd(list, i, updateOp, i2, updateOp2);
        } else if (i3 == 2) {
            swapMoveRemove(list, i, updateOp, i2, updateOp2);
        } else {
            if (i3 != 4) {
                return;
            }
            swapMoveUpdate(list, i, updateOp, i2, updateOp2);
        }
    }

    public void reorderOps(List<AdapterHelper.UpdateOp> list) {
        while (true) {
            int lastMoveOutOfOrder = getLastMoveOutOfOrder(list);
            if (lastMoveOutOfOrder == -1) {
                return;
            } else {
                swapMoveOp(list, lastMoveOutOfOrder, lastMoveOutOfOrder + 1);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00c9 A[PHI: r0
      0x00c9: PHI (r0v12 int) = (r0v6 int), (r0v16 int) binds: [B:59:0x00c7, B:46:0x009d] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void swapMoveRemove(List<AdapterHelper.UpdateOp> list, int i, AdapterHelper.UpdateOp updateOp, int i2, AdapterHelper.UpdateOp updateOp2) {
        boolean z;
        int i3;
        int i4 = updateOp.positionStart;
        int i5 = updateOp.itemCount;
        boolean z3 = false;
        int i6 = updateOp2.positionStart;
        if (i4 < i5) {
            if (i6 == i4 && updateOp2.itemCount == i5 - i4) {
                z = false;
                z3 = true;
            } else {
                z = false;
            }
        } else if (i6 == i5 + 1 && updateOp2.itemCount == i4 - i5) {
            z = true;
            z3 = true;
        } else {
            z = true;
        }
        int i7 = updateOp2.positionStart;
        if (i5 < i7) {
            updateOp2.positionStart = i7 - 1;
        } else {
            int i8 = updateOp2.itemCount;
            if (i5 < i7 + i8) {
                updateOp2.itemCount = i8 - 1;
                updateOp.cmd = 2;
                updateOp.itemCount = 1;
                if (updateOp2.itemCount == 0) {
                    list.remove(i2);
                    this.mCallback.recycleUpdateOp(updateOp2);
                    return;
                }
                return;
            }
        }
        int i9 = updateOp.positionStart;
        int i10 = updateOp2.positionStart;
        AdapterHelper.UpdateOp updateOpObtainUpdateOp = null;
        if (i9 <= i10) {
            updateOp2.positionStart = i10 + 1;
        } else {
            int i11 = updateOp2.itemCount;
            if (i9 < i10 + i11) {
                updateOpObtainUpdateOp = this.mCallback.obtainUpdateOp(2, i9 + 1, (i10 + i11) - i9, null);
                updateOp2.itemCount = updateOp.positionStart - updateOp2.positionStart;
            }
        }
        if (z3) {
            list.set(i, updateOp2);
            list.remove(i2);
            this.mCallback.recycleUpdateOp(updateOp);
            return;
        }
        if (z) {
            if (updateOpObtainUpdateOp != null) {
                int i12 = updateOp.positionStart;
                if (i12 > updateOpObtainUpdateOp.positionStart) {
                    updateOp.positionStart = i12 - updateOpObtainUpdateOp.itemCount;
                }
                int i13 = updateOp.itemCount;
                if (i13 > updateOpObtainUpdateOp.positionStart) {
                    updateOp.itemCount = i13 - updateOpObtainUpdateOp.itemCount;
                }
            }
            int i14 = updateOp.positionStart;
            if (i14 > updateOp2.positionStart) {
                updateOp.positionStart = i14 - updateOp2.itemCount;
            }
            i3 = updateOp.itemCount;
            if (i3 > updateOp2.positionStart) {
                updateOp.itemCount = i3 - updateOp2.itemCount;
            }
        } else {
            if (updateOpObtainUpdateOp != null) {
                int i15 = updateOp.positionStart;
                if (i15 >= updateOpObtainUpdateOp.positionStart) {
                    updateOp.positionStart = i15 - updateOpObtainUpdateOp.itemCount;
                }
                int i16 = updateOp.itemCount;
                if (i16 >= updateOpObtainUpdateOp.positionStart) {
                    updateOp.itemCount = i16 - updateOpObtainUpdateOp.itemCount;
                }
            }
            int i17 = updateOp.positionStart;
            if (i17 >= updateOp2.positionStart) {
                updateOp.positionStart = i17 - updateOp2.itemCount;
            }
            i3 = updateOp.itemCount;
            if (i3 >= updateOp2.positionStart) {
            }
        }
        list.set(i, updateOp2);
        if (updateOp.positionStart != updateOp.itemCount) {
            list.set(i2, updateOp);
        } else {
            list.remove(i2);
        }
        if (updateOpObtainUpdateOp != null) {
            list.add(i, updateOpObtainUpdateOp);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void swapMoveUpdate(List<AdapterHelper.UpdateOp> list, int i, AdapterHelper.UpdateOp updateOp, int i2, AdapterHelper.UpdateOp updateOp2) {
        AdapterHelper.UpdateOp updateOpObtainUpdateOp;
        int i3;
        int i4;
        int i5 = updateOp.itemCount;
        int i6 = updateOp2.positionStart;
        AdapterHelper.UpdateOp updateOpObtainUpdateOp2 = null;
        if (i5 >= i6) {
            int i7 = updateOp2.itemCount;
            if (i5 < i6 + i7) {
                updateOp2.itemCount = i7 - 1;
                updateOpObtainUpdateOp = this.mCallback.obtainUpdateOp(4, updateOp.positionStart, 1, updateOp2.payload);
            }
            i3 = updateOp.positionStart;
            i4 = updateOp2.positionStart;
            if (i3 > i4) {
                updateOp2.positionStart = i4 + 1;
            } else {
                int i8 = updateOp2.itemCount;
                if (i3 < i4 + i8) {
                    int i9 = (i4 + i8) - i3;
                    updateOpObtainUpdateOp2 = this.mCallback.obtainUpdateOp(4, i3 + 1, i9, updateOp2.payload);
                    updateOp2.itemCount -= i9;
                }
            }
            list.set(i2, updateOp);
            if (updateOp2.itemCount <= 0) {
                list.set(i, updateOp2);
            } else {
                list.remove(i);
                this.mCallback.recycleUpdateOp(updateOp2);
            }
            if (updateOpObtainUpdateOp != null) {
                list.add(i, updateOpObtainUpdateOp);
            }
            if (updateOpObtainUpdateOp2 == null) {
                list.add(i, updateOpObtainUpdateOp2);
                return;
            }
            return;
        }
        updateOp2.positionStart = i6 - 1;
        updateOpObtainUpdateOp = null;
        i3 = updateOp.positionStart;
        i4 = updateOp2.positionStart;
        if (i3 > i4) {
        }
        list.set(i2, updateOp);
        if (updateOp2.itemCount <= 0) {
        }
        if (updateOpObtainUpdateOp != null) {
        }
        if (updateOpObtainUpdateOp2 == null) {
        }
    }
}
