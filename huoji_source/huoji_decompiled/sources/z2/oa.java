package z2;

import android.app.Application;
import android.os.Handler;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.http.bean.response.BaseResponseInfo;
import com.cyjh.http.bean.response.BindRegCodeResponse;
import com.cyjh.http.bean.response.RegCodeInfoResponse;
import com.cyjh.http.bean.response.RegCodeStatusInfo;
import z2.h7;

/* JADX INFO: loaded from: classes.dex */
public class oa extends AndroidViewModel implements dd, id {
    private static final String OooooOO = "z2.oa";
    private oc OoooOoO;
    private xc OoooOoo;
    private String Ooooo00;
    private MutableLiveData<BaseResponseInfo> Ooooo0o;
    private MutableLiveData<RegCodeInfoResponse> OooooO0;

    public class OooO00o implements Runnable {
        public OooO00o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RegCodeStatusInfo regCodeStatusInfo = new RegCodeStatusInfo();
            regCodeStatusInfo.status = 1;
            regCodeStatusInfo.regCode = oa.this.Ooooo00;
            String strOooO0O0 = n4.OooO0O0(regCodeStatusInfo);
            ae.Oooo0o(oa.this.getApplication(), k3.o00oO0o + j3.OooO0o(), strOooO0O0);
            y8.OooOO0o(201);
        }
    }

    public class OooO0O0 implements h7.OooOO0 {

        public class OooO00o implements Runnable {
            public OooO00o() {
            }

            @Override // java.lang.Runnable
            public void run() {
                y8.OooO0oO(m7.OooO0o0().OooO0o(), m7.OooO0o0().OooO0oO());
            }
        }

        public OooO0O0() {
        }

        @Override // z2.h7.OooOO0
        public void OooO00o(Object obj) {
            String unused = oa.OooooOO;
            e5.OooO00o().OooO0o(new OooO00o());
        }

        @Override // z2.h7.OooOO0
        public void OooO0O0() {
            String unused = oa.OooooOO;
        }
    }

    public oa(@NonNull Application application) {
        super(application);
        this.Ooooo0o = new MutableLiveData<>();
        this.OooooO0 = new MutableLiveData<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: OooOoO0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void OooOoO() {
        h7.OooO0Oo(new OooO0O0(), false);
    }

    @Override // z2.id
    public void OooO0oo(String str) {
        this.OooooO0.postValue(new RegCodeInfoResponse(0, str));
    }

    @Override // z2.dd
    public void OooOOOO(BaseResponseInfo baseResponseInfo) {
        q7.OooO0o0().OooOO0o(0L);
        this.Ooooo00 = "";
        this.Ooooo0o.postValue(baseResponseInfo);
    }

    @Override // z2.id
    public void OooOOOo(RegCodeInfoResponse regCodeInfoResponse) {
        this.OooooO0.postValue(regCodeInfoResponse);
    }

    @Override // z2.dd
    public void OooOOoo(BindRegCodeResponse bindRegCodeResponse) {
        if (200 != bindRegCodeResponse.Code) {
            OooOOOO(new BaseResponseInfo(bindRegCodeResponse.Code, bindRegCodeResponse.Message));
            if (bindRegCodeResponse.Code == 1401 && TextUtils.equals(this.Ooooo00, q7.OooO0o0().OooO0o())) {
                this.Ooooo00 = "";
                q7.OooO0o0().OooOOO0("");
                ii.OooOOO(q7.OooO0o0().OooO0o());
                ae.OooO0OO(k3.o00oO0o + j3.OooO0o(), AppContext.OooO00o());
                return;
            }
            return;
        }
        BindRegCodeResponse.RegCodeTimeInfo regCodeTimeInfo = bindRegCodeResponse.Data;
        long j = regCodeTimeInfo.ExpireTime;
        long j2 = regCodeTimeInfo.ServerTimestamp;
        q7.OooO0o0().OooOO0o(j);
        String str = "onBindSuc --> expireTime=" + j + ",serverTimestamp=" + j2 + ",dueTime=" + ((j - j2) / 60);
        rb.OooO00o().OooO00o(new OooO00o());
        q7.OooO0o0().OooOOO0(this.Ooooo00);
        l10.OooO0o().OooOOOO(new MsgItem.BindRegCodeBus(j));
        this.Ooooo0o.postValue(new BaseResponseInfo(bindRegCodeResponse.Code, bindRegCodeResponse.Message));
        new Handler().postDelayed(new Runnable() { // from class: z2.ma
            @Override // java.lang.Runnable
            public final void run() {
                this.OoooOoO.OooOoO();
            }
        }, 1000L);
    }

    public MutableLiveData<RegCodeInfoResponse> OooOo() {
        return this.OooooO0;
    }

    public void OooOo0O(String str, int i) {
        if (this.OoooOoO == null) {
            this.OoooOoO = new oc(this);
        }
        this.Ooooo00 = str;
        this.OoooOoO.OooO0OO(str, getApplication(), i, q7.OooO0o0().OooO0o());
    }

    public MutableLiveData<BaseResponseInfo> OooOo0o() {
        return this.Ooooo0o;
    }

    public void OooOoOO(String str) {
        if (this.OoooOoo == null) {
            this.OoooOoo = new xc(this);
        }
        this.OoooOoo.OooO0o(str, q7.OooO0o0().OooO0o(), getApplication());
    }

    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        oc ocVar = this.OoooOoO;
        if (ocVar != null) {
            ocVar.OooO0o();
        }
        xc xcVar = this.OoooOoo;
        if (xcVar != null) {
            xcVar.OooO0OO();
        }
    }
}
