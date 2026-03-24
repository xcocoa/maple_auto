package z2;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.format.Formatter;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.anythink.expressad.foundation.d.c;
import com.cyjh.feedback.lib.activity.ImageSelectActivity;
import com.cyjh.feedback.libraryfeedbackinfo.R;
import com.cyjh.http.bean.request.FeedbackRequestInfo;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.Marker;
import z2.gb;
import z2.kb;

/* JADX INFO: loaded from: classes.dex */
public class sb extends ib implements View.OnClickListener {
    private static final int o00Ooo = 1;
    private static final int o00o0O = 2;
    private static final int o00oO0O = 16;
    private static final int o00oO0o = 8;
    private static final int o00ooo = 3;
    public static final String o0OO00O = "isPhoneRoot";
    public static final int o0OOO0o = 0;
    public static final String o0Oo0oo = "feedbackTips";
    public static final int o0ooOO0 = 256;
    public static final int o0ooOOo = 0;
    public static final int o0ooOoO = 1;
    private static final int oo000o = 4;
    private static final int oo0o0Oo = 4;
    private GridView OoooOoo;
    private gb Ooooo00;
    private List<String> Ooooo0o = new ArrayList();
    private EditText OooooO0;
    private EditText OooooOO;
    private TextView OooooOo;
    private lb Oooooo;
    private TextView Oooooo0;
    private FeedbackRequestInfo OoooooO;
    private TextView Ooooooo;
    private String o00O0O;
    private boolean o00Oo0;
    private View o0OoOo0;
    private uc ooOO;

    public class OooO00o implements kb.OooO0O0 {
        public OooO00o() {
        }

        @Override // z2.kb.OooO0O0
        public void OooO00o(int i) {
            FragmentActivity activity;
            int i2;
            if (sb.this.getActivity() != null) {
                sb.this.Ooooo0o.clear();
                if (i == 1) {
                    activity = sb.this.getActivity();
                    i2 = -1;
                } else {
                    activity = sb.this.getActivity();
                    i2 = 0;
                }
                activity.setResult(i2);
                sb.this.getActivity().finish();
            }
        }
    }

    public class OooO0O0 implements TextWatcher {
        public OooO0O0() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            sb.this.Oooooo0.setText(sb.this.getString(R.string.feedback_num_hint, Integer.valueOf(charSequence.length())));
        }
    }

    public class OooO0OO implements AdapterView.OnItemClickListener {
        public OooO0OO() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == sb.this.Ooooo0o.size()) {
                sb.this.startActivityForResult(new Intent(sb.this.getActivity(), (Class<?>) ImageSelectActivity.class), 256);
            }
        }
    }

    public class OooO0o implements gb.OooO0O0 {
        public OooO0o() {
        }

        @Override // z2.gb.OooO0O0
        public void OooO00o(int i) {
            sb.this.OooooOo.setText(sb.this.getString(R.string.image_add, Integer.valueOf(i)));
        }
    }

    private String OooOo(int i) {
        int i2;
        if (i == 1) {
            i2 = R.string.cpu_core_one;
        } else if (i == 2) {
            i2 = R.string.cpu_core_two;
        } else if (i == 3) {
            i2 = R.string.cpu_core_three;
        } else if (i == 4) {
            i2 = R.string.cpu_core_four;
        } else if (i == 8) {
            i2 = R.string.cpu_core_eight;
        } else {
            if (i != 16) {
                return null;
            }
            i2 = R.string.cpu_core_sixteen;
        }
        return getString(i2);
    }

    private void OooOoO() {
        this.Oooooo = new lb(getActivity());
        if (TextUtils.isEmpty(this.o00O0O)) {
            this.Ooooooo.setVisibility(8);
            this.o0OoOo0.setVisibility(8);
        } else {
            this.o0OoOo0.setVisibility(0);
            this.Ooooooo.setText(this.o00O0O);
            this.Ooooooo.setVisibility(0);
        }
    }

    private void OooOoO0() {
        String strTrim = this.OooooO0.getText().toString().trim();
        String strTrim2 = this.OooooOO.getText().toString().trim();
        if (TextUtils.isEmpty(strTrim) || TextUtils.isEmpty(strTrim2)) {
            Toast.makeText(getActivity(), getString(R.string.no_fill_info), 1).show();
            return;
        }
        if (this.OoooooO == null) {
            this.OoooooO = new FeedbackRequestInfo(gc.OooO0OO().OooO00o(getActivity()));
        }
        FeedbackRequestInfo feedbackRequestInfo = this.OoooooO;
        feedbackRequestInfo.Contact = strTrim;
        feedbackRequestInfo.Content = strTrim2;
        feedbackRequestInfo.AndoridVersion = Build.VERSION.RELEASE;
        feedbackRequestInfo.DeviceModel = Build.MODEL;
        if (this.o00Oo0) {
            feedbackRequestInfo.RootStatus = 1;
        } else {
            feedbackRequestInfo.RootStatus = 0;
        }
        int i = ae.OooOo0o(getActivity()).x;
        int i2 = ae.OooOo0o(getActivity()).y;
        this.OoooooO.Resolution = i + Marker.ANY_MARKER + i2;
        this.OoooooO.RAM = Formatter.formatFileSize(getActivity(), ae.OooOoOO(getActivity()));
        this.OoooooO.DPI = ae.OooOo(getActivity());
        this.OoooooO.SerialNumber = ae.OooOoO();
        this.OoooooO.CoreVersion = ae.OooOO0o();
        this.OoooooO.SystemVersion = ae.OooOo0O();
        String strOooOo = OooOo(ub.OooO0o0());
        String strOooO0OO = ub.OooO0OO();
        String strValueOf = String.valueOf(0);
        if (!TextUtils.isEmpty(strOooOo) && !TextUtils.isEmpty(strOooO0OO)) {
            strOooOo = strOooOo + "，CPU型号：" + strOooO0OO;
        } else if (TextUtils.isEmpty(strOooOo) || !TextUtils.isEmpty(strOooO0OO)) {
            if (!TextUtils.isEmpty(strOooOo) || TextUtils.isEmpty(strOooO0OO)) {
                strOooOo = strValueOf;
            } else {
                strOooOo = "CPU型号：" + strOooO0OO;
            }
        }
        this.OoooooO.Processor = strOooOo;
    }

    private void OooOoOO() {
        this.OooooOO.addTextChangedListener(new OooO0O0());
        this.OoooOoo.setOnItemClickListener(new OooO0OO());
        this.Ooooo00.OooO0Oo(new OooO0o());
    }

    public static sb OooOoo(String str, boolean z) {
        sb sbVar = new sb();
        Bundle bundle = new Bundle();
        bundle.putString(o0Oo0oo, str);
        bundle.putBoolean(o0OO00O, z);
        sbVar.setArguments(bundle);
        return sbVar;
    }

    private void OooOoo0(View view) {
        this.OoooOoo = (GridView) view.findViewById(R.id.grid_view);
        this.OooooO0 = (EditText) view.findViewById(R.id.id_et_qq_phone);
        this.OooooOO = (EditText) view.findViewById(R.id.id_et_feedback);
        this.OooooOo = (TextView) view.findViewById(R.id.id_tv_image_num);
        Button button = (Button) view.findViewById(R.id.id_btn_commit_feedback);
        this.Oooooo0 = (TextView) view.findViewById(R.id.id_tv_feedback_input_font_num);
        gb gbVar = new gb(getActivity(), null);
        this.Ooooo00 = gbVar;
        this.OoooOoo.setAdapter((ListAdapter) gbVar);
        button.setOnClickListener(this);
        this.OooooOo.setText(getString(R.string.image_add, Integer.valueOf(this.Ooooo0o.size())));
        this.Oooooo0.setText(getString(R.string.feedback_num_hint, 0));
        this.Ooooooo = (TextView) view.findViewById(R.id.id_complaints_qq);
        this.o0OoOo0 = view.findViewById(R.id.id_line);
    }

    private void OooOooO() {
        kb kbVar = new kb(getActivity(), this.OoooooO, this.Ooooo0o);
        kbVar.show();
        kbVar.OooOoo0(new OooO00o());
    }

    private void OooOooo() {
        FeedbackRequestInfo feedbackRequestInfo = this.OoooooO;
        if (feedbackRequestInfo == null) {
            this.Oooooo.dismiss();
            return;
        }
        if (TextUtils.isEmpty(feedbackRequestInfo.Contact)) {
            this.OoooooO.Contact = String.valueOf(0);
        }
        if (TextUtils.isEmpty(this.OoooooO.Content)) {
            this.OoooooO.Content = String.valueOf(0);
        }
        if (TextUtils.isEmpty(this.OoooooO.AndoridVersion)) {
            this.OoooooO.AndoridVersion = String.valueOf(0);
        }
        if (TextUtils.isEmpty(this.OoooooO.CoreVersion)) {
            this.OoooooO.CoreVersion = String.valueOf(0);
        }
        if (TextUtils.isEmpty(this.OoooooO.SerialNumber)) {
            this.OoooooO.SerialNumber = String.valueOf(0);
        }
        this.Oooooo.dismiss();
        OooOooO();
    }

    @Override // z2.ib
    public int OooOo00() {
        return R.layout.fragment_feedback_info;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        uc ucVar = new uc();
        this.ooOO = ucVar;
        ucVar.OooO0OO(getActivity());
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        ArrayList<String> stringArrayList;
        super.onActivityResult(i, i2, intent);
        if (i != 256 || i2 != -1 || intent == null || (stringArrayList = intent.getBundleExtra("bundle").getStringArrayList(c.C0131c.e)) == null) {
            return;
        }
        int size = this.Ooooo0o.size();
        if (stringArrayList.size() + size > 4) {
            Toast.makeText(getActivity(), getString(R.string.img_num_limit, Integer.valueOf(size), Integer.valueOf(4 - size)), 1).show();
            stringArrayList.clear();
            return;
        }
        for (String str : stringArrayList) {
            if (!this.Ooooo0o.contains(str)) {
                this.Ooooo0o.add(str);
            }
        }
        this.OooooOo.setText(getString(R.string.image_add, Integer.valueOf(this.Ooooo0o.size())));
        this.Ooooo00.OooO0OO(this.Ooooo0o);
        this.OoooOoo.setAdapter((ListAdapter) this.Ooooo00);
        this.Ooooo00.notifyDataSetChanged();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.id_btn_commit_feedback) {
            this.Oooooo.show();
            OooOoO0();
            OooOooo();
        }
    }

    @Override // z2.ib, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.o00O0O = getArguments().getString(o0Oo0oo);
            this.o00Oo0 = getArguments().getBoolean(o0OO00O);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        uc ucVar = this.ooOO;
        if (ucVar != null) {
            ucVar.OooO0o();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        bh.OooO0OO(sb.class.getCanonicalName());
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        bh.OooO0Oo(sb.class.getCanonicalName());
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        OooOoo0(view);
        OooOoO();
        OooOoOO();
    }
}
