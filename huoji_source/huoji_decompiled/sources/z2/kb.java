package z2;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.cyjh.feedback.libraryfeedbackinfo.R;
import com.cyjh.http.bean.request.FeedbackRequestInfo;
import com.cyjh.http.oss.MyOSSUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class kb extends hb implements View.OnClickListener, ed {
    private static final int o00oO0O = 1;
    private static final int o00oO0o = 2;
    private static final String o00ooo = String.valueOf(0);
    private static final int o0ooOO0 = 0;
    private static final int oo000o = 1;
    private Button OooooO0;
    private Button OooooOO;
    private TextView OooooOo;
    private TextView Oooooo;
    private TextView Oooooo0;
    private TextView OoooooO;
    private FeedbackRequestInfo Ooooooo;
    private sc o00O0O;
    private List<String> o00Oo0;
    private volatile int o00Ooo;
    private OooO0O0 o00o0O;
    private lb o0OoOo0;
    private Context ooOO;

    public class OooO00o implements MyOSSUtils.UploadFileCallBack {
        public final /* synthetic */ List OooO00o;

        public OooO00o(List list) {
            this.OooO00o = list;
        }

        @Override // com.cyjh.http.oss.MyOSSUtils.UploadFileCallBack
        public void uploadFail(String str) {
            kb.this.OooOoo(this.OooO00o);
        }

        @Override // com.cyjh.http.oss.MyOSSUtils.UploadFileCallBack
        public void uploadProgress(long j, long j2) {
        }

        @Override // com.cyjh.http.oss.MyOSSUtils.UploadFileCallBack
        public void uploadSuc(String str, String str2) {
            this.OooO00o.add(str2);
            kb.this.OooOoo(this.OooO00o);
        }
    }

    public interface OooO0O0 {
        void OooO00o(int i);
    }

    public kb(Context context, FeedbackRequestInfo feedbackRequestInfo, List<String> list) {
        super(context, R.style.Theme_Dialog);
        this.o00Ooo = 0;
        this.Ooooooo = feedbackRequestInfo;
        this.ooOO = context;
        this.o00Oo0 = list;
    }

    private SpannableStringBuilder OooOo(String str, String str2) {
        int iIndexOf = str.indexOf(str2);
        int length = str2.length() + iIndexOf;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor("#3c7ac5")), iIndexOf, length, 34);
        return spannableStringBuilder;
    }

    private void OooOoO() {
        this.OooooOO.setOnClickListener(this);
        this.OooooO0.setOnClickListener(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void OooOoO0() {
        int i;
        String string;
        this.OooooOo.setText(OooOo(this.ooOO.getString(R.string.devices_name, this.Ooooooo.DeviceModel), this.Ooooooo.DeviceModel));
        this.Oooooo0.setText(OooOo(this.ooOO.getString(R.string.devices_use_system, this.Ooooooo.AndoridVersion), this.Ooooooo.AndoridVersion));
        int i2 = this.Ooooooo.RootStatus;
        if (i2 != 1) {
            if (i2 == 2) {
                Context context = this.ooOO;
                int i3 = R.string.devices_is_root;
                i = R.string.devices_no_root;
                string = context.getString(i3, context.getString(i));
            }
            if (this.Ooooooo.Content.equals(o00ooo)) {
                this.OoooooO.setText(this.Ooooooo.Content);
                return;
            }
            return;
        }
        Context context2 = this.ooOO;
        int i4 = R.string.devices_is_root;
        i = R.string.devices_yes_root;
        string = context2.getString(i4, context2.getString(i));
        this.Oooooo.setText(OooOo(string, this.ooOO.getString(i)));
        if (this.Ooooooo.Content.equals(o00ooo)) {
        }
    }

    private void OooOoOO() {
        this.OooooOo = (TextView) findViewById(R.id.id_tv_device_name);
        this.Oooooo0 = (TextView) findViewById(R.id.id_tv_device_system);
        this.Oooooo = (TextView) findViewById(R.id.id_tv_device_root);
        this.OoooooO = (TextView) findViewById(R.id.id_tv_feedback_content);
        this.OooooO0 = (Button) findViewById(R.id.id_btn_back);
        this.OooooOO = (Button) findViewById(R.id.id_btn_commit_feedback_info);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOoo(List<String> list) {
        this.o00Ooo++;
        if (this.o00Ooo == this.o00Oo0.size()) {
            if (list.size() > 0) {
                this.Ooooooo.FreebackImages = (String[]) list.toArray(new String[list.size()]);
            }
            this.o00O0O.OooO0OO(this.ooOO, this.Ooooooo);
        }
    }

    @Override // z2.ed
    public void OooOO0o(String str) {
        this.o0OoOo0.dismiss();
        OooO0O0 oooO0O0 = this.o00o0O;
        if (oooO0O0 != null) {
            oooO0O0.OooO00o(1);
        }
        dismiss();
    }

    public void OooOoo0(OooO0O0 oooO0O0) {
        this.o00o0O = oooO0O0;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.Ooooooo = null;
        this.o00Ooo = 0;
        sc scVar = this.o00O0O;
        if (scVar != null) {
            scVar.OooO0o();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.id_btn_back) {
            dismiss();
            return;
        }
        if (id == R.id.id_btn_commit_feedback_info) {
            try {
                if (!wb.OooO00o(this.ooOO) && !wb.OooO0O0(this.ooOO)) {
                    Context context = this.ooOO;
                    Toast.makeText(context, context.getString(R.string.is_net_open), 1).show();
                    return;
                }
                MyOSSUtils myOSSUtilsBuild = new MyOSSUtils.Builder(this.ooOO, gc.OooO0OO().OooO0OO).build();
                if (myOSSUtilsBuild.isTokenExpireTime()) {
                    Toast.makeText(this.ooOO, "阿里云Token过期，稍后再试！", 1).show();
                    new uc().OooO0OO(this.ooOO);
                    return;
                }
                if (this.o0OoOo0 == null) {
                    this.o0OoOo0 = new lb(this.ooOO);
                }
                this.o0OoOo0.show();
                this.o00O0O = new sc(this);
                if (this.o00Oo0.size() <= 0 || gc.OooO0OO().OooO0OO == null) {
                    this.o00O0O.OooO0OO(this.ooOO, this.Ooooooo);
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (String str : this.o00Oo0) {
                    myOSSUtilsBuild.uploadFile(str, gc.OooO0OO().OooO0OO.OssStoragePath + new File(str).getName(), new OooO00o(arrayList));
                }
            } catch (Exception e) {
                e.printStackTrace();
                Log.e("zzz", "FeedBackDialog--提交数据给后台：" + e.getMessage());
            }
        }
    }

    @Override // z2.hb, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_feedback_info);
        OooOo00(0.3f);
        OooOo0O(0.8f, 0.6f);
        OooOoOO();
        OooOoO0();
        OooOoO();
    }

    @Override // z2.ed
    public void onFail(String str) {
        this.o0OoOo0.dismiss();
        OooO0O0 oooO0O0 = this.o00o0O;
        if (oooO0O0 != null) {
            oooO0O0.OooO00o(0);
        }
        dismiss();
    }
}
