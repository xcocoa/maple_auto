package z2;

import android.app.Application;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.http.bean.response.RegCodeInfoResponse;
import com.cyjh.http.bean.response.RegCodeStatusInfo;

/* JADX INFO: loaded from: classes.dex */
public class ra extends AndroidViewModel implements kd {
    private yc OoooOoO;
    private String OoooOoo;
    private MutableLiveData<RegCodeInfoResponse> Ooooo00;

    public ra(@NonNull Application application) {
        super(application);
        this.Ooooo00 = new MutableLiveData<>();
    }

    @Override // z2.kd
    public void OooO(RegCodeInfoResponse regCodeInfoResponse) {
        if (regCodeInfoResponse.Code == 200) {
            String strOooO0o = q7.OooO0o0().OooO0o();
            if (!TextUtils.isEmpty(strOooO0o) && TextUtils.equals(strOooO0o, this.OoooOoo)) {
                l10.OooO0o().OooOOOO(new MsgItem.BindRegCodeBus(-1L));
                RegCodeStatusInfo regCodeStatusInfo = new RegCodeStatusInfo();
                regCodeStatusInfo.status = 2;
                regCodeStatusInfo.regCode = this.OoooOoo;
                String strOooO0O0 = n4.OooO0O0(regCodeStatusInfo);
                ae.Oooo0o(AppContext.OooO00o(), k3.o00oO0o + j3.OooO0o(), strOooO0O0);
            }
        }
        this.Ooooo00.postValue(regCodeInfoResponse);
    }

    @Override // z2.kd
    public void OooO0Oo(String str) {
        this.Ooooo00.postValue(new RegCodeInfoResponse(-1, str));
    }

    public void OooOo0(String str) {
        if (this.OoooOoO == null) {
            this.OoooOoO = new yc(this);
        }
        this.OoooOoo = str;
        this.OoooOoO.OooO0o(str, AppContext.OooO00o());
    }

    public MutableLiveData<RegCodeInfoResponse> OooOo00() {
        return this.Ooooo00;
    }

    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        yc ycVar = this.OoooOoO;
        if (ycVar != null) {
            ycVar.OooO0OO();
        }
    }
}
