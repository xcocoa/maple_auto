package z2;

import android.content.Intent;
import android.graphics.Color;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;
import com.ac.R;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.elfin.entity.Script;
import com.cyjh.mq.sdk.MqRunner;
import java.io.File;
import java.util.concurrent.Callable;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import z2.aa;
import z2.bd;

/* JADX INFO: loaded from: classes.dex */
public class ja extends i3 implements View.OnClickListener {
    public static final int o0OO00O = 10;
    private static final int o0OOO0o = 20150617;
    private static final int o0Oo0oo = 5;
    private static final String o0ooOOo = ja.class.getSimpleName();
    private static final Logger o0ooOoO = LoggerFactory.getLogger(ja.class);
    private View OoooOoO;
    private LinearLayout OoooOoo;
    private LinearLayout Ooooo00;
    private Button Ooooo0o;
    private Button OooooO0;
    private Button OooooOO;
    private TextView OooooOo;
    private RelativeLayout Oooooo;
    private ScrollView Oooooo0;
    private TextView OoooooO;
    private ImageView Ooooooo;
    private pa o00Oo0;
    private vi o00Ooo;
    private rh o00o0O;
    private OooOOOO o00oO0o;
    private TextView o0OoOo0;
    private OooOOO oo000o;
    private Handler ooOO = new Handler();
    private boolean o00O0O = false;
    private int o00ooo = 0;
    public boolean o00oO0O = false;
    public boolean o0ooOO0 = false;

    public class OooO implements y30<LinearLayout> {
        public OooO() {
        }

        @Override // z2.y30
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public void OooO0O0(LinearLayout linearLayout) {
            try {
                ja.this.o00Ooo.OooO0Oo();
                ja.this.o00Ooo.OooO0o0();
                ja.this.OoooOoo.removeAllViews();
                if (linearLayout.getChildCount() == 0) {
                    ja.this.OoooOoo.addView(ja.this.Oooooo0);
                } else {
                    ja.this.OoooOoo.addView(linearLayout);
                }
                ja.this.Ooooo00.setVisibility(0);
            } catch (Exception e) {
                e.printStackTrace();
            }
            ja jaVar = ja.this;
            if (jaVar.o0ooOO0) {
                jaVar.o0ooOO0 = false;
                jaVar.OoooOoo();
            } else {
                AppContext.OooO00o().o0OoOo0 = false;
            }
            ja jaVar2 = ja.this;
            jaVar2.o00oO0O = false;
            if (jaVar2.o00oO0o != null) {
                ja.this.o00oO0o.onFinish();
            }
        }
    }

    public class OooO00o implements nh<String> {
        public OooO00o() {
        }

        @Override // z2.nh
        public void OooO00o(String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            ja.this.o0OoOo0.setText(String.format(ja.this.getString(R.string.ad_source_mark), str));
            ja.this.o0OoOo0.setVisibility(0);
        }

        @Override // z2.nh
        public void OooO0OO() {
            ja.this.Oooo0oO();
        }

        @Override // z2.nh
        public void OooO0Oo(int i) {
        }

        @Override // z2.nh
        /* JADX INFO: renamed from: OooO0o, reason: merged with bridge method [inline-methods] */
        public void OooO0O0(String str) {
            RelativeLayout relativeLayout;
            int i;
            Log.d("XJL_AD_TAG1", "url onAdUrlLoaded:" + str);
            if (TextUtils.isEmpty(str)) {
                relativeLayout = ja.this.Oooooo;
                i = 8;
            } else {
                m4.OooO00o(ja.this.getContext(), str, ja.this.Ooooooo);
                ja.this.Oooooo0();
                i = 0;
                ja.this.OoooooO.setVisibility(0);
                ja.this.Ooooooo.setVisibility(0);
                ja.this.o0OoOo0.setVisibility(0);
                relativeLayout = ja.this.Oooooo;
            }
            relativeLayout.setVisibility(i);
        }

        @Override // z2.nh
        public void OooO0o0(String str) {
        }

        @Override // z2.nh
        public void onAdClose() {
        }
    }

    public class OooO0O0 implements Runnable {

        public class OooO00o implements di {
            public OooO00o() {
            }

            @Override // z2.di
            public void OooO00o() {
                ja.this.Oooooo.setVisibility(8);
            }

            @Override // z2.di
            public void OooO0O0(zh zhVar) {
                Log.d("XJL_AD_TAG", "loadILFYAd -- onNativeAdLoadFail:" + zhVar);
                ja.this.o00o0O.OooOOo0();
            }

            @Override // z2.di
            public void onNativeAdLoaded() {
                Log.d("XJL_AD_TAG", "loadILFYAd: -- onNativeAdLoaded");
                ja.this.Oooooo.setVisibility(0);
            }
        }

        public OooO0O0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ih.OooO0Oo().OooO00o(ja.this.getActivity(), ja.this.Oooooo, new OooO00o());
        }
    }

    public class OooO0OO implements Observer<Integer> {
        public OooO0OO() {
        }

        @Override // androidx.lifecycle.Observer
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public void onChanged(@Nullable Integer num) {
            if (num == null) {
                return;
            }
            if (num.intValue() == 0) {
                ja.this.OoooOoo();
            } else if (1 == num.intValue()) {
                try {
                    ja.this.o00Ooo.OooO0o0();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public class OooO0o implements b40<Throwable> {
        public OooO0o() {
        }

        @Override // z2.b40
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public void OooO0O0(Throwable th) {
            String str = "readUIP -- ex:" + th.getMessage();
            ja jaVar = ja.this;
            jaVar.o00oO0O = false;
            if (jaVar.o00oO0o != null) {
                ja.this.o00oO0o.onFinish();
            }
        }
    }

    public class OooOO0 implements Callable<LinearLayout> {
        public OooOO0() {
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public LinearLayout call() throws Exception {
            return ja.this.o00Ooo.read();
        }
    }

    public class OooOO0O implements bd.OooO00o {
        public OooOO0O() {
        }

        @Override // z2.bd.OooO00o
        public void OooO00o(int i, String str) {
            String unused = ja.o0ooOOo;
            String str2 = "onReceiveScriptUIEvent --> onFailure=" + str + str;
        }

        @Override // z2.bd.OooO00o
        public void OooO0O0(String str) {
            String unused = ja.o0ooOOo;
            String str2 = "onReceiveScriptUIEvent --> onSuccess=" + str;
        }
    }

    public class OooOOO extends l3 {
        private OooOOO(int i) {
            super(i);
        }

        public /* synthetic */ OooOOO(ja jaVar, int i, OooO00o oooO00o) {
            this(i);
        }

        @Override // z2.m3
        public void OooO0O0(int i) {
            Log.d("XJL_AD_TAG", "url onTick:" + i);
            if (ja.this.isAdded()) {
                ja.OooOo(ja.this);
                SpannableString spannableString = new SpannableString(String.format(ja.this.getString(R.string.ad_delete_btn), Integer.valueOf(i)));
                spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#ff7900")), 0, 4, 17);
                spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#999999")), 5, 6, 17);
                if (ja.this.OoooooO != null) {
                    ja.this.OoooooO.setText(spannableString);
                }
            }
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            Log.d("XJL_AD_TAG", "url SubmitCountTimer onFinish:");
            ja.this.o00ooo = 0;
            ja.this.Oooooo.setVisibility(8);
        }
    }

    public class OooOOO0 implements Runnable {
        public OooOOO0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r7.OooO0o().OooO0oO(4);
        }
    }

    public interface OooOOOO {
        void onFinish();
    }

    public static /* synthetic */ int OooOo(ja jaVar) {
        int i = jaVar.o00ooo;
        jaVar.o00ooo = i + 1;
        return i;
    }

    private void Oooo() {
        rh rhVar = new rh(getActivity(), this.Oooooo);
        this.o00o0O = rhVar;
        rhVar.OooOO0(3, new OooO00o());
    }

    private void Oooo0o() {
        OooOOO oooOOO = this.oo000o;
        if (oooOOO != null) {
            this.o00ooo = 0;
            oooOOO.cancel();
            this.oo000o = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Oooo0oO() {
        this.Oooooo.post(new OooO0O0());
    }

    private void OoooO() {
        this.OoooOoo = (LinearLayout) this.OoooOoO.findViewById(R.id.uip_linearlayout);
        this.Ooooo00 = (LinearLayout) this.OoooOoO.findViewById(R.id.ll_option_start);
        this.Ooooo0o = (Button) this.OoooOoO.findViewById(R.id.btn_option_start);
        this.OooooO0 = (Button) this.OoooOoO.findViewById(R.id.btn_run_script);
        Button button = (Button) this.OoooOoO.findViewById(R.id.btn_option_getmoretime);
        this.OooooOo = (TextView) this.OoooOoO.findViewById(R.id.tv_option_duetime);
        this.Oooooo0 = (ScrollView) this.OoooOoO.findViewById(R.id.scrollview_ui);
        this.Oooooo = (RelativeLayout) this.OoooOoO.findViewById(R.id.rl_bottom_content_ad);
        this.OoooooO = (TextView) this.OoooOoO.findViewById(R.id.tv_delete_ad);
        this.Ooooooo = (ImageView) this.OoooOoO.findViewById(R.id.id_img_ad);
        this.o0OoOo0 = (TextView) this.OoooOoO.findViewById(R.id.tv_ilfyad_mark);
        int i = q7.OooO0oO ? 0 : 8;
        button.setVisibility(i);
        this.OooooOo.setVisibility(i);
        OooooO0();
        Point pointOooOoo0 = w3.OooOoo0(getContext());
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.OoooOoo.getLayoutParams();
        int i2 = pointOooOoo0.x;
        int i3 = ((int) (i2 - (i2 * 0.9f))) / 2;
        layoutParams.leftMargin = i3;
        layoutParams.rightMargin = i3;
        this.OoooOoo.setLayoutParams(layoutParams);
    }

    private void OoooO0() {
        this.Ooooo0o.setOnClickListener(this);
        this.OooooO0.setOnClickListener(this);
        this.OoooooO.setOnClickListener(this);
        this.Ooooooo.setOnClickListener(this);
        this.OoooOoO.findViewById(R.id.btn_option_getmoretime).setOnClickListener(this);
    }

    private void OoooO00() {
        Log.d("XJL_AD_TAG", "loadILFYAd: -- initData:");
        this.o00Oo0.OooOo00();
        l10.OooO0o().OooOo00(this);
    }

    private void OoooO0O() {
        this.o00Oo0.OooOo0O().observe(this, new OooO0OO());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: OoooOO0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void o000oOoO(int i) {
        if (101 == i) {
            this.o00O0O = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: OoooOOO, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ LinearLayout OoooOOo() throws Exception {
        return this.o00Ooo.read();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: OoooOo0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void OoooOoO(String str, LinearLayout linearLayout) {
        try {
            this.o00Ooo.OooO00o();
            this.OoooOoo.removeAllViews();
            this.OoooOoo.addView(linearLayout);
            vi viVar = this.o00Ooo;
            if (viVar != null) {
                viVar.OooO0o0();
                this.o00Ooo.OooO0O0(str);
                dh.OooO0OO(0, "脚本设置更新成功！");
            }
        } catch (Exception e) {
            e.printStackTrace();
            dh.OooO0OO(-1, "脚本设置更新异常！");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OoooOoo() {
        if (this.o00oO0O) {
            this.o0ooOO0 = true;
            return;
        }
        String str = "readUIP -- " + Thread.currentThread().getName();
        Script scriptOooO0oO = b7.OooO0Oo().OooO0oO();
        this.o00Ooo = ii.OooO0OO(getContext(), scriptOooO0oO.getUiFile().getPath(), scriptOooO0oO.getUipFile().getPath(), scriptOooO0oO.getCfgFile().getPath());
        this.Ooooo00.setVisibility(8);
        this.OoooOoo.removeAllViews();
        TextView textView = new TextView(getContext());
        textView.setText("正在加载UI界面...");
        textView.setTextSize(20.0f);
        textView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        textView.setGravity(17);
        this.OoooOoo.addView(textView);
        this.o00oO0O = true;
        e5.OooO00o().OooO0oO(new OooOO0()).OooOOO(new OooO()).OooOO0(new OooO0o());
    }

    private void Ooooo00() {
        if (!w7.OooOO0().OooO0o0(AppContext.OooO00o())) {
            w7.OooOO0().OooO0Oo(getActivity());
            return;
        }
        if (b7.OooO0Oo().OooO0OO == 0) {
            b7.OooO0Oo().OooO0OO = 1;
        }
        y8.OooOO0o(10);
        getActivity().moveTaskToBack(true);
        try {
            if (z5.OooO0oo.equals(u8.OooO00o(getContext(), x8.OooO0O0(l8.OooO00o(g6.OooOoO, -5))))) {
                return;
            }
            AppContext.OooO00o().OooO();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void OooooO0() {
        if (q7.OooO0oO) {
            this.OooooOo.setText(q7.OooO0o0().OooO0oO());
        }
    }

    private void OooooOO() {
        this.o00Oo0.OooOoO0();
        if (!oi.OooO0o().OooO0OO().OooO0OO()) {
            if (!(xb.OooO0OO() && xb.OooO0o0())) {
                oi.OooO0o().OooO0OO().OooO0O0(getActivity());
                return;
            }
        } else if (!xb.OooO0OO()) {
            new z9(getActivity()).show();
            return;
        }
        Ooooo00();
    }

    private void OooooOo() {
        if (Build.VERSION.SDK_INT < 23) {
            OooooOO();
            return;
        }
        try {
            if (Settings.canDrawOverlays(getActivity())) {
                OooooOO();
            } else {
                new aa(getActivity(), new aa.OooO00o() { // from class: z2.ea
                    @Override // z2.aa.OooO00o
                    public final void OooO00o(int i) {
                        this.OooO00o.o000oOoO(i);
                    }
                }).show();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void Oooooo(String str) {
        String str2;
        if (MqRunner.getInstance().isScriptStarted()) {
            str2 = "脚本设置更新失败，脚本运行中！";
        } else {
            if (!TextUtils.isEmpty(str)) {
                String str3 = "updateScriptSettings --> 1 服务端命令:脚本设置更新 encoding=" + a4.OooOOO(str) + ",scriptSetting=" + str;
                final String strOooOo0 = j4.OooOo0(str);
                File file = new File(k4.OooO(getActivity().getFilesDir().getAbsolutePath(), f6.OooO0oO));
                Script scriptOooO0oO = b7.OooO0Oo().OooO0oO();
                boolean zOooOo = j4.OooOo(scriptOooO0oO.getCfgFile(), strOooOo0, "UTF-8");
                scriptOooO0oO.setCfgFile(file.getAbsoluteFile());
                String str4 = "updateScriptSettings --> 2 服务端命令:脚本设置更新 toUtf8Result=" + strOooOo0 + "\ncfgFile=" + file.getAbsolutePath() + ",result=" + zOooOo;
                long length = scriptOooO0oO.getUipFile().length();
                if (!scriptOooO0oO.getUipFile().exists() || length <= 0) {
                    return;
                }
                e5.OooO00o().OooO0oO(new Callable() { // from class: z2.da
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.OoooOoO.OoooOOo();
                    }
                }).OooOOO(new y30() { // from class: z2.fa
                    @Override // z2.y30
                    public final void OooO0O0(Object obj) {
                        this.OooO00o.OoooOoO(strOooOo0, (LinearLayout) obj);
                    }
                });
                return;
            }
            str2 = "脚本设置内容为空！";
        }
        dh.OooO0OO(-1, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Oooooo0() {
        if (this.oo000o == null) {
            this.oo000o = new OooOOO(this, 10, null);
        }
        this.oo000o.start();
    }

    @Override // z2.i3
    public int OooOo00() {
        return R.layout.fragment_scriptuip_set;
    }

    public void Oooo0oo() throws Exception {
        pa paVar = this.o00Oo0;
        if (paVar != null) {
            paVar.OooOo0();
        }
    }

    public void Ooooo0o(OooOOOO oooOOOO) {
        this.o00oO0o = oooOOOO;
    }

    @Override // z2.i3, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        OoooO00();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && i == 2) {
            oi.OooO0o().OooO0OO().OooO0Oo(getActivity());
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_option_getmoretime /* 2131296819 */:
                y8.OooO00o(getActivity(), q7.OooO0o0().OooO0o());
                return;
            case R.id.btn_option_start /* 2131296821 */:
                this.o00O0O = true;
                OooooOo();
                return;
            case R.id.btn_run_script /* 2131296822 */:
                this.o00O0O = true;
                OooooOo();
                y8.OooOO0o(11);
                return;
            case R.id.id_img_ad /* 2131296976 */:
                break;
            case R.id.tv_delete_ad /* 2131297368 */:
                if (this.o00ooo >= 5) {
                    Oooo0o();
                    this.Oooooo.setVisibility(8);
                    return;
                }
                break;
            default:
                return;
        }
        this.o00o0O.OooOO0O();
        Oooo0o();
    }

    @Override // z2.i3, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ih.OooO0Oo().OooO();
        l10.OooO0o().OooOoO0(this);
        this.ooOO.removeCallbacksAndMessages(null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        Log.d("XJL_AD_TAG", "loadILFYAd: -- onNativeAdLoaded:" + z);
        Log.d("XJL_AD_TAG", "loadILFYAd: -- onPause");
    }

    @r10(threadMode = ThreadMode.MAIN)
    public void onMessageMainThread(MsgItem msgItem) {
        int msgType = msgItem.getMsgType();
        if (msgType == 1008) {
            OoooOoo();
            this.o00Oo0.OooOo();
            h7.OooO0O0();
        } else {
            if (msgType != 10081) {
                if (msgType != 10082) {
                    return;
                }
                n7.OooO00o().OooO0OO(true);
                OoooOoo();
                return;
            }
            try {
                this.o00Ooo.OooO0Oo();
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    @r10(threadMode = ThreadMode.MAIN)
    public void onMessageThreadMain(MsgItem.BindRegCodeBus bindRegCodeBus) {
        if (bindRegCodeBus.getExpireTime() > 0) {
            ii.OooOOO(q7.OooO0o0().OooO0o());
            q7.OooO0o0().OooOO0o(bindRegCodeBus.getExpireTime());
            q7.OooO0o0().OooOOO(0);
        } else if (bindRegCodeBus.getExpireTime() == -1) {
            q7.OooO0o0().OooOO0o(bindRegCodeBus.getExpireTime());
        }
        OooooO0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.o00Oo0.OooOo0o();
        Log.d("XJL_AD_TAG", "loadILFYAd: -- onPause");
    }

    @r10(threadMode = ThreadMode.MAIN)
    public void onReceiveScriptUIEvent(q3 q3Var) {
        a5.OooO0O0(getActivity(), "onReceiveScriptUIEvent --> 更新Script UI");
        OoooOoo();
        this.o00Oo0.OooOo00();
        if (q3Var.OooO00o() != c7.OooO0o) {
            if (q3Var.OooO00o() == c7.OooO) {
                this.ooOO.postDelayed(new OooOOO0(), 1000L);
            }
        } else {
            bd.OooO0o().OooOO0(getActivity(), b7.OooO0Oo().OooO0oO().getId(), c9.OooO0oO(getActivity(), b7.OooO0Oo().OooO0O0), c9.OooO0Oo(getActivity()), new OooOO0O());
            x4.OooO0O0().OooO0oo(c9.OooO0O0, c9.OooO0o(getActivity(), b7.OooO0Oo().OooO0O0));
        }
    }

    @r10(threadMode = ThreadMode.MAIN)
    public void onReceiveSocketMessage(eh ehVar) {
        r7 r7VarOooO0o;
        int i;
        int iOooO0oO = ehVar.OooO0oO();
        if (iOooO0oO == 10101) {
            this.Ooooo0o.performClick();
            r7VarOooO0o = r7.OooO0o();
            i = 2;
        } else if (iOooO0oO != 10103) {
            if (iOooO0oO != 10107) {
                return;
            }
            Oooooo(ehVar.OooO0o0());
            return;
        } else {
            this.Ooooo0o.performClick();
            r7VarOooO0o = r7.OooO0o();
            i = 3;
        }
        r7VarOooO0o.OooO0oO(i);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.o00Oo0.OooOo();
        this.o00O0O = false;
        OooooO0();
    }

    @Override // z2.i3, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        setUserVisibleHint(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (getView() != null) {
            this.OoooOoO = getView();
            this.o00Oo0 = (pa) ViewModelProviders.of(this).get(pa.class);
            OoooO0O();
            OoooO();
            if (!qh.OooO0O0().OooO0Oo()) {
                Log.d("XJL_AD_TAG", "url isFreeAd:");
                Oooo();
            }
            OoooO0();
        }
        OoooOoo();
    }
}
