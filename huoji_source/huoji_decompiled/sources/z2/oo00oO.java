package z2;

import android.widget.AbsListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.target.BaseTarget;
import com.bumptech.glide.request.target.SizeReadyCallback;
import java.util.List;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
public class oo00oO<T> implements AbsListView.OnScrollListener {
    private final int OoooOoO;
    private final OooO0o OoooOoo;
    private final o0 Ooooo00;
    private final OooO00o<T> Ooooo0o;
    private final OooO0O0<T> OooooO0;
    private int OooooOO;
    private int OooooOo;
    private int Oooooo;
    private int Oooooo0 = -1;
    private boolean OoooooO = true;

    public interface OooO00o<U> {
        @NonNull
        List<U> OooO00o(int i);

        @Nullable
        o0O0o<?> OooO0O0(@NonNull U u);
    }

    public interface OooO0O0<T> {
        @Nullable
        int[] OooO00o(@NonNull T t, int i, int i2);
    }

    public static final class OooO0OO extends BaseTarget<Object> {
        public int OoooOoO;
        public int OoooOoo;

        @Override // com.bumptech.glide.request.target.Target
        public void getSize(@NonNull SizeReadyCallback sizeReadyCallback) {
            sizeReadyCallback.onSizeReady(this.OoooOoo, this.OoooOoO);
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onResourceReady(@NonNull Object obj, @Nullable x1<? super Object> x1Var) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void removeCallback(@NonNull SizeReadyCallback sizeReadyCallback) {
        }
    }

    public static final class OooO0o {
        private final Queue<OooO0OO> OooO00o;

        public OooO0o(int i) {
            this.OooO00o = t2.OooO0o(i);
            for (int i2 = 0; i2 < i; i2++) {
                this.OooO00o.offer(new OooO0OO());
            }
        }

        public OooO0OO OooO00o(int i, int i2) {
            OooO0OO oooO0OOPoll = this.OooO00o.poll();
            this.OooO00o.offer(oooO0OOPoll);
            oooO0OOPoll.OoooOoo = i;
            oooO0OOPoll.OoooOoO = i2;
            return oooO0OOPoll;
        }
    }

    public oo00oO(@NonNull o0 o0Var, @NonNull OooO00o<T> oooO00o, @NonNull OooO0O0<T> oooO0O0, int i) {
        this.Ooooo00 = o0Var;
        this.Ooooo0o = oooO00o;
        this.OooooO0 = oooO0O0;
        this.OoooOoO = i;
        this.OoooOoo = new OooO0o(i + 1);
    }

    private void OooO00o() {
        for (int i = 0; i < this.OoooOoO; i++) {
            this.Ooooo00.OooOOo(this.OoooOoo.OooO00o(0, 0));
        }
    }

    private void OooO0O0(int i, int i2) {
        int iMin;
        int iMax;
        if (i < i2) {
            iMax = Math.max(this.OooooOO, i);
            iMin = i2;
        } else {
            iMin = Math.min(this.OooooOo, i);
            iMax = i2;
        }
        int iMin2 = Math.min(this.Oooooo, iMin);
        int iMin3 = Math.min(this.Oooooo, Math.max(0, iMax));
        if (i < i2) {
            for (int i3 = iMin3; i3 < iMin2; i3++) {
                OooO0Oo(this.Ooooo0o.OooO00o(i3), i3, true);
            }
        } else {
            for (int i4 = iMin2 - 1; i4 >= iMin3; i4--) {
                OooO0Oo(this.Ooooo0o.OooO00o(i4), i4, false);
            }
        }
        this.OooooOo = iMin3;
        this.OooooOO = iMin2;
    }

    private void OooO0OO(int i, boolean z) {
        if (this.OoooooO != z) {
            this.OoooooO = z;
            OooO00o();
        }
        OooO0O0(i, (z ? this.OoooOoO : -this.OoooOoO) + i);
    }

    private void OooO0Oo(List<T> list, int i, boolean z) {
        int size = list.size();
        if (z) {
            for (int i2 = 0; i2 < size; i2++) {
                OooO0o0(list.get(i2), i, i2);
            }
            return;
        }
        for (int i3 = size - 1; i3 >= 0; i3--) {
            OooO0o0(list.get(i3), i, i3);
        }
    }

    private void OooO0o0(@Nullable T t, int i, int i2) {
        int[] iArrOooO00o;
        o0O0o<?> o0o0oOooO0O0;
        if (t == null || (iArrOooO00o = this.OooooO0.OooO00o(t, i, i2)) == null || (o0o0oOooO0O0 = this.Ooooo0o.OooO0O0(t)) == null) {
            return;
        }
        o0o0oOooO0O0.o0000o0o(this.OoooOoo.OooO00o(iArrOooO00o[0], iArrOooO00o[1]));
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        this.Oooooo = i3;
        int i4 = this.Oooooo0;
        if (i > i4) {
            OooO0OO(i2 + i, true);
        } else if (i < i4) {
            OooO0OO(i, false);
        }
        this.Oooooo0 = i;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }
}
