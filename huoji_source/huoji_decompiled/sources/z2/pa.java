package z2;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;

/* JADX INFO: loaded from: classes.dex */
public class pa extends AndroidViewModel {
    private OooO0O0 OooO00o;
    private MutableLiveData<Integer> OooO0O0;

    public class OooO0O0 implements Runnable {
        private OooO0O0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                pa.this.OooOo0();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public pa(@NonNull Application application) {
        super(application);
        this.OooO0O0 = new MutableLiveData<>();
    }

    public void OooOo() {
        i7.OooO().Oooo0O0(b7.OooO0Oo().OooO0oO().getLcFile().getAbsolutePath(), m7.OooO0o0().OooO0o(), m7.OooO0o0().OooO0oO(), b7.OooO0Oo().OooO0Oo, b7.OooO0Oo().OooO0oO().getCfgFile().getAbsolutePath());
        OooOo00();
        n7.OooO00o().OooO0OO(false);
        ih.OooO0Oo().OooOO0O();
        bh.OooO0Oo(ja.class.getCanonicalName());
    }

    public void OooOo0() throws Exception {
        MutableLiveData<Integer> mutableLiveData = this.OooO0O0;
        if (mutableLiveData != null) {
            mutableLiveData.postValue(1);
        }
    }

    public void OooOo00() {
        String str = "ScriptDataManager.getInstance().isUseSdcardScript1 = " + b7.OooO0Oo().OooO0O0;
    }

    public MutableLiveData<Integer> OooOo0O() {
        return this.OooO0O0;
    }

    public void OooOo0o() {
        i7.OooO().Oooo0o0();
        bh.OooO0OO(ja.class.getCanonicalName());
    }

    public void OooOoO0() {
        this.OooO00o = new OooO0O0();
        rb.OooO00o().OooO00o(this.OooO00o);
    }

    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        if (this.OooO00o != null) {
            rb.OooO00o().OooO0OO(this.OooO00o);
        }
    }
}
