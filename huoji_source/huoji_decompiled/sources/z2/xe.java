package z2;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.cyjh.mqsdk.R;
import java.io.File;
import java.io.FileInputStream;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class xe {
    private Context OooO00o;
    public LayoutInflater OooO0O0;

    public class OooO00o extends WebViewClient {
        public OooO00o() {
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            webView.loadUrl(str);
            return true;
        }
    }

    private xe(Context context) {
        this.OooO00o = context;
        this.OooO0O0 = LayoutInflater.from(context);
    }

    private int OooO00o(float f) {
        return (int) (((double) (this.OooO00o.getResources().getDisplayMetrics().density * f)) + 0.5d);
    }

    private int OooO0O0(int i) {
        return (int) (i * (this.OooO00o.getResources().getDisplayMetrics().densityDpi / 160.0f));
    }

    private LinearLayout.LayoutParams OooO0o(int i, int i2) {
        return OooOOoo(i, i2);
    }

    private TextView OooOO0(String str, String str2) {
        return OooOO0O(str, str2, -2, -2);
    }

    public static xe OooOO0o(Context context) {
        return new xe(context);
    }

    private af OooOOO(String str) {
        return OooOOOO(str, -1, -2);
    }

    private int OooOOOo(float f) {
        return (int) (((double) (f / this.OooO00o.getResources().getDisplayMetrics().density)) + 0.5d);
    }

    private Button OooOOo0(String str, String str2) {
        return OooOOo(str, str2, -2, -2);
    }

    private LinearLayout.LayoutParams OooOOoo(int i, int i2) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        if (i != -2 && i2 != -2) {
            layoutParams.width = i;
            layoutParams.height = i2;
        }
        layoutParams.setMargins(0, 0, OooO0O0(8), 0);
        return layoutParams;
    }

    private EditText OooOo0(String str, String str2) {
        return OooOo(str, str2, -2, -2);
    }

    private TextView OooOoO(String str, String str2, int i, int i2) {
        TextView textView = (TextView) this.OooO0O0.inflate(R.layout.ui_float_text_view, (ViewGroup) null);
        textView.setTag(str);
        textView.setText(str2);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (i != -2 && i2 != -2) {
            layoutParams.width = i;
            layoutParams.height = i2;
        }
        textView.setLayoutParams(layoutParams);
        return textView;
    }

    private TextView OooOoO0(String str, String str2, int i, int i2) {
        TextView textView = (TextView) this.OooO0O0.inflate(R.layout.ui_show_text_view, (ViewGroup) null);
        textView.setTag(str);
        textView.setText(str2);
        textView.setLayoutParams(OooOOoo(i, i2));
        return textView;
    }

    private Button OooOoOO(String str, String str2, int i, int i2) {
        Button button = (Button) this.OooO0O0.inflate(R.layout.ui_show_button, (ViewGroup) null);
        button.setTag(str);
        button.setText(str2);
        button.setAllCaps(false);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i2);
        layoutParams.setMargins(0, 0, OooO0O0(8), 0);
        button.setLayoutParams(layoutParams);
        button.setBackgroundResource(R.drawable.bg_default_button);
        return button;
    }

    private Button OooOoo0(String str, String str2, int i, int i2) {
        Button button = (Button) this.OooO0O0.inflate(R.layout.ui_float_button, (ViewGroup) null);
        button.setTag(str);
        button.setText(str2);
        button.setAllCaps(false);
        button.setLayoutParams((i == 0 && i2 == 0) ? new RelativeLayout.LayoutParams(-1, 100) : new RelativeLayout.LayoutParams(i, i2));
        return button;
    }

    public final Spinner OooO(String str, List<String> list, int i) {
        Spinner spinner = (Spinner) this.OooO0O0.inflate(R.layout.ui_show_spinner, (ViewGroup) null);
        spinner.setTag(str);
        spinner.setLayoutParams(OooOOoo(-2, -2));
        ArrayAdapter arrayAdapter = new ArrayAdapter(this.OooO00o, R.layout.ui_show_spinner_dropdown_item, list);
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        if (i >= arrayAdapter.getCount()) {
            i = 0;
        }
        spinner.setSelection(i);
        return spinner;
    }

    public final WebView OooO0OO(String str, int i, int i2, String str2) {
        if (!str2.startsWith("http://") && !str2.startsWith("https://")) {
            str2 = "http://".concat(String.valueOf(str2));
        }
        WebView webView = new WebView(this.OooO00o);
        webView.setTag(str);
        webView.setLayoutParams(new LinearLayout.LayoutParams(i, i2));
        webView.getSettings().setJavaScriptEnabled(true);
        webView.loadUrl(str2);
        webView.setWebViewClient(new OooO00o());
        return webView;
    }

    public final CheckBox OooO0Oo(String str, String str2, int i, int i2, boolean z) {
        CheckBox checkBox = (CheckBox) LayoutInflater.from(this.OooO00o).inflate(R.layout.ui_show_checkbox, (ViewGroup) null);
        checkBox.setTag(str);
        checkBox.setText(str2);
        checkBox.setChecked(z);
        checkBox.setLayoutParams(OooOOoo(i, i2));
        checkBox.setPadding(0, 0, 0, 0);
        return checkBox;
    }

    public final ImageView OooO0o0(int i, String str, int i2, int i3, String str2) {
        ImageView imageView = new ImageView(this.OooO00o);
        imageView.setId(i);
        imageView.setTag(str);
        imageView.setLayoutParams(OooOOoo(i2, i3));
        imageView.setImageURI(Uri.fromFile(new File(str2)));
        return imageView;
    }

    public final LinearLayout OooO0oO(int i, String str) {
        LinearLayout linearLayout = (LinearLayout) this.OooO0O0.inflate(R.layout.ui_show_tab_layout, (ViewGroup) null);
        linearLayout.setId(i);
        linearLayout.setTag(str);
        return linearLayout;
    }

    public final RadioGroup OooO0oo(String str, List<String> list, int i, int i2, int i3) {
        RadioGroup radioGroup = new RadioGroup(this.OooO00o);
        radioGroup.setTag(str);
        radioGroup.setLayoutParams(OooOOoo(i2, i3));
        for (int i4 = 0; i4 < list.size(); i4++) {
            RadioButton radioButton = (RadioButton) this.OooO0O0.inflate(R.layout.ui_show_radio_button, (ViewGroup) null);
            radioButton.setId(i4);
            radioButton.setText(list.get(i4));
            radioButton.setLayoutParams(OooOOoo(-2, -2));
            radioButton.setPadding(0, OooO0O0(5), 0, OooO0O0(5));
            radioGroup.addView(radioButton);
            if (i4 >= 100) {
                break;
            }
        }
        radioGroup.clearCheck();
        if (i >= radioGroup.getChildCount()) {
            i = 0;
        }
        radioGroup.check(i);
        return radioGroup;
    }

    public final TextView OooOO0O(String str, String str2, int i, int i2) {
        return OooOoO0(str, str2, i, i2);
    }

    public final com.cyjh.mobileanjian.ipc.ui.j OooOOO0(String str, int i, int i2, int i3, int i4) {
        return new com.cyjh.mobileanjian.ipc.ui.j(this.OooO00o, str, i, i2, i3, i4);
    }

    public final af OooOOOO(String str, int i, int i2) {
        return new af(this.OooO00o, str, i, i2);
    }

    public final Button OooOOo(String str, String str2, int i, int i2) {
        return OooOoOO(str, str2, i, i2);
    }

    public final EditText OooOo(String str, String str2, int i, int i2) {
        EditText editText = (EditText) this.OooO0O0.inflate(R.layout.ui_show_edit_text, (ViewGroup) null);
        editText.setTag(str);
        editText.setText(str2);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i2);
        layoutParams.setMargins(0, 0, OooO0O0(8), 0);
        editText.setLayoutParams(layoutParams);
        editText.setBackgroundResource(R.drawable.bg_edit_text);
        return editText;
    }

    public final LinearLayout OooOo00(String str, int i, int i2) {
        LinearLayout linearLayout = new LinearLayout(this.OooO00o);
        linearLayout.setTag(str);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(-16777216);
        if (i == -1) {
            i = 3000;
        }
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(i, i2));
        return linearLayout;
    }

    public final ImageView OooOo0O(String str, String str2, int i, int i2) {
        Bitmap bitmapDecodeStream = null;
        ImageView imageView = (ImageView) this.OooO0O0.inflate(R.layout.ui_show_image_view, (ViewGroup) null);
        imageView.setTag(str);
        try {
            bitmapDecodeStream = BitmapFactory.decodeStream(new FileInputStream(str2));
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (bitmapDecodeStream != null) {
            imageView.setImageBitmap(bitmapDecodeStream);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (i != -2 && i2 != -2) {
            layoutParams.width = i;
            layoutParams.height = i2;
        }
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    public final LinearLayout OooOo0o(String str, int i, int i2) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.OooO00o).inflate(R.layout.ui_show_row, (ViewGroup) null);
        linearLayout.setOrientation(0);
        linearLayout.setTag(str);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(i, i2));
        return linearLayout;
    }
}
