package z2;

import android.R;
import android.content.Context;
import android.text.InputFilter;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.cyjh.mqm.MiscUtilities;
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import org.apache.commons.io.FileUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ti implements vi {
    public ArrayList<CheckBox> OooO00o = new ArrayList<>();
    public ArrayList<Spinner> OooO0O0 = new ArrayList<>();
    public ArrayList<EditText> OooO0OO = new ArrayList<>();
    private Context OooO0Oo;
    private File OooO0o;
    private File OooO0o0;
    private String OooO0oO;

    public ti(Context context) {
        this.OooO0Oo = context;
    }

    public ti(Context context, String str, String str2) {
        this.OooO0o0 = new File(str);
        this.OooO0o = new File(str2);
        this.OooO0Oo = context;
    }

    private EditText OooO(JsonReader jsonReader) throws IOException {
        EditText editText = new EditText(this.OooO0Oo);
        editText.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        editText.setTextSize(OooOOO(xi.OooO00o(this.OooO0Oo, "integer", "ui_textSize_normal")));
        editText.setSingleLine(true);
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            Context context = this.OooO0Oo;
            if (context.getString(xi.OooO00o(context, com.anythink.expressad.foundation.h.i.g, "ui_name")).equalsIgnoreCase(strNextName)) {
                editText.setTag(jsonReader.nextString());
            } else {
                Context context2 = this.OooO0Oo;
                if (context2.getString(xi.OooO00o(context2, com.anythink.expressad.foundation.h.i.g, "ui_edittext_hintcontent")).equalsIgnoreCase(strNextName)) {
                    editText.setHint(jsonReader.nextString());
                } else {
                    Context context3 = this.OooO0Oo;
                    if (context3.getString(xi.OooO00o(context3, com.anythink.expressad.foundation.h.i.g, "ui_textsize")).equalsIgnoreCase(strNextName)) {
                        int iNextInt = jsonReader.nextInt();
                        if (iNextInt <= OooOOO(xi.OooO00o(this.OooO0Oo, "integer", "ui_textsize_min"))) {
                            if (iNextInt != OooOOO(xi.OooO00o(this.OooO0Oo, "integer", "ui_textSize_default"))) {
                                iNextInt = OooOOO(xi.OooO00o(this.OooO0Oo, "integer", "ui_textsize_min"));
                            }
                        }
                        editText.setTextSize(iNextInt);
                    } else {
                        Context context4 = this.OooO0Oo;
                        if (context4.getString(xi.OooO00o(context4, com.anythink.expressad.foundation.h.i.g, "ui_layout_height")).equalsIgnoreCase(strNextName)) {
                            int iNextInt2 = jsonReader.nextInt();
                            if (iNextInt2 > OooOOO(xi.OooO00o(this.OooO0Oo, "integer", "ui_default_height"))) {
                                editText.setHeight(iNextInt2);
                            }
                        } else {
                            Context context5 = this.OooO0Oo;
                            if (context5.getString(xi.OooO00o(context5, com.anythink.expressad.foundation.h.i.g, "ui_layout_width")).equalsIgnoreCase(strNextName)) {
                                int iNextInt3 = jsonReader.nextInt();
                                if (iNextInt3 > OooOOO(xi.OooO00o(this.OooO0Oo, "integer", "ui_default_width"))) {
                                    editText.setWidth(iNextInt3);
                                }
                            } else {
                                Context context6 = this.OooO0Oo;
                                boolean zNextBoolean = false;
                                if (context6.getString(xi.OooO00o(context6, com.anythink.expressad.foundation.h.i.g, "ui_edittext_maxlength")).equalsIgnoreCase(strNextName)) {
                                    int iNextInt4 = jsonReader.nextInt();
                                    if (iNextInt4 > 0) {
                                        editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(iNextInt4)});
                                    }
                                } else {
                                    Context context7 = this.OooO0Oo;
                                    if (context7.getString(xi.OooO00o(context7, com.anythink.expressad.foundation.h.i.g, "ui_edittext_inputnumber")).equalsIgnoreCase(strNextName)) {
                                        try {
                                            zNextBoolean = jsonReader.nextBoolean();
                                        } catch (Exception unused) {
                                        }
                                        if (zNextBoolean) {
                                            editText.setInputType(2);
                                        }
                                    } else {
                                        Context context8 = this.OooO0Oo;
                                        if (context8.getString(xi.OooO00o(context8, com.anythink.expressad.foundation.h.i.g, "ui_edittext_defaultcontent")).equalsIgnoreCase(strNextName)) {
                                            editText.setText(jsonReader.nextString());
                                        } else {
                                            jsonReader.skipValue();
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        this.OooO0OO.add(editText);
        jsonReader.endObject();
        return editText;
    }

    private LinearLayout OooO0o(JsonReader jsonReader) throws IOException {
        View viewOooOO0;
        LinearLayout linearLayout = new LinearLayout(this.OooO0Oo);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout.setOrientation(1);
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            Context context = this.OooO0Oo;
            if (context.getString(xi.OooO00o(context, com.anythink.expressad.foundation.h.i.g, "ui_linearlayout")).equalsIgnoreCase(strNextName)) {
                viewOooOO0 = OooOO0(jsonReader);
            } else {
                Context context2 = this.OooO0Oo;
                if (context2.getString(xi.OooO00o(context2, com.anythink.expressad.foundation.h.i.g, "ui_textview")).equalsIgnoreCase(strNextName)) {
                    viewOooOO0 = OooOO0O(jsonReader);
                } else {
                    Context context3 = this.OooO0Oo;
                    if (context3.getString(xi.OooO00o(context3, com.anythink.expressad.foundation.h.i.g, "ui_edittext")).equalsIgnoreCase(strNextName)) {
                        viewOooOO0 = OooO(jsonReader);
                    } else {
                        Context context4 = this.OooO0Oo;
                        if (context4.getString(xi.OooO00o(context4, com.anythink.expressad.foundation.h.i.g, "ui_checkbox")).equals(strNextName)) {
                            viewOooOO0 = OooO0oo(jsonReader);
                        } else {
                            Context context5 = this.OooO0Oo;
                            if (context5.getString(xi.OooO00o(context5, com.anythink.expressad.foundation.h.i.g, "ui_spinner")).equalsIgnoreCase(strNextName)) {
                                viewOooOO0 = OooO0oO(jsonReader);
                            }
                        }
                    }
                }
            }
            linearLayout.addView(viewOooOO0);
        }
        jsonReader.endObject();
        return linearLayout;
    }

    private Spinner OooO0oO(JsonReader jsonReader) throws IOException {
        Spinner spinner = new Spinner(this.OooO0Oo);
        spinner.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            try {
                String strNextName = jsonReader.nextName();
                ArrayList arrayList = new ArrayList();
                Context context = this.OooO0Oo;
                if (context.getString(xi.OooO00o(context, com.anythink.expressad.foundation.h.i.g, "ui_name")).equalsIgnoreCase(strNextName)) {
                    spinner.setTag(jsonReader.nextString());
                } else {
                    Context context2 = this.OooO0Oo;
                    if (context2.getString(xi.OooO00o(context2, com.anythink.expressad.foundation.h.i.g, "ui_spinner_items")).equalsIgnoreCase(strNextName)) {
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            try {
                                arrayList.add(jsonReader.nextString());
                            } catch (Exception unused) {
                            }
                        }
                        jsonReader.endArray();
                        ArrayAdapter arrayAdapter = new ArrayAdapter(this.OooO0Oo, R.layout.simple_spinner_item, arrayList);
                        arrayAdapter.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
                        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
                    } else {
                        Context context3 = this.OooO0Oo;
                        if (context3.getString(xi.OooO00o(context3, com.anythink.expressad.foundation.h.i.g, "ui_spinner_defaultitem")).equalsIgnoreCase(strNextName)) {
                            try {
                                spinner.setSelection(jsonReader.nextInt(), true);
                            } catch (Exception unused2) {
                                spinner.setSelection(0);
                            }
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        jsonReader.endObject();
        this.OooO0O0.add(spinner);
        return spinner;
    }

    private CheckBox OooO0oo(JsonReader jsonReader) throws IOException {
        CheckBox checkBox = new CheckBox(this.OooO0Oo);
        checkBox.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        checkBox.setTextSize(OooOOO(xi.OooO00o(this.OooO0Oo, "integer", "ui_textSize_normal")));
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            Context context = this.OooO0Oo;
            if (context.getString(xi.OooO00o(context, com.anythink.expressad.foundation.h.i.g, "ui_name")).equalsIgnoreCase(strNextName)) {
                checkBox.setTag(jsonReader.nextString());
            } else {
                Context context2 = this.OooO0Oo;
                if (context2.getString(xi.OooO00o(context2, com.anythink.expressad.foundation.h.i.g, "ui_checkbox_hintcontent")).equalsIgnoreCase(strNextName)) {
                    checkBox.setText(jsonReader.nextString());
                } else {
                    Context context3 = this.OooO0Oo;
                    if (context3.getString(xi.OooO00o(context3, com.anythink.expressad.foundation.h.i.g, "ui_checkbox_checked")).equalsIgnoreCase(strNextName)) {
                        checkBox.setChecked(jsonReader.nextBoolean());
                    } else {
                        Context context4 = this.OooO0Oo;
                        if (context4.getString(xi.OooO00o(context4, com.anythink.expressad.foundation.h.i.g, "ui_textsize")).equalsIgnoreCase(strNextName)) {
                            int iNextInt = jsonReader.nextInt();
                            if (iNextInt <= OooOOO(xi.OooO00o(this.OooO0Oo, "integer", "ui_textsize_min"))) {
                                if (iNextInt != OooOOO(xi.OooO00o(this.OooO0Oo, "integer", "ui_textSize_default"))) {
                                    iNextInt = OooOOO(xi.OooO00o(this.OooO0Oo, "integer", "ui_textsize_min"));
                                }
                            }
                            checkBox.setTextSize(iNextInt);
                        } else {
                            Context context5 = this.OooO0Oo;
                            if (context5.getString(xi.OooO00o(context5, com.anythink.expressad.foundation.h.i.g, "ui_layout_height")).equalsIgnoreCase(strNextName)) {
                                int iNextInt2 = jsonReader.nextInt();
                                if (iNextInt2 > OooOOO(xi.OooO00o(this.OooO0Oo, "integer", "ui_default_height"))) {
                                    checkBox.setHeight(iNextInt2);
                                }
                            } else {
                                Context context6 = this.OooO0Oo;
                                if (context6.getString(xi.OooO00o(context6, com.anythink.expressad.foundation.h.i.g, "ui_layout_width")).equalsIgnoreCase(strNextName)) {
                                    int iNextInt3 = jsonReader.nextInt();
                                    if (iNextInt3 > OooOOO(xi.OooO00o(this.OooO0Oo, "integer", "ui_default_width"))) {
                                        checkBox.setWidth(iNextInt3);
                                    }
                                } else {
                                    jsonReader.skipValue();
                                }
                            }
                        }
                    }
                }
            }
        }
        this.OooO00o.add(checkBox);
        jsonReader.endObject();
        return checkBox;
    }

    private LinearLayout OooOO0(JsonReader jsonReader) throws IOException {
        View viewOooOO0;
        LinearLayout linearLayout = new LinearLayout(this.OooO0Oo);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            Context context = this.OooO0Oo;
            if (context.getString(xi.OooO00o(context, com.anythink.expressad.foundation.h.i.g, "ui_linearlayout")).equalsIgnoreCase(strNextName)) {
                viewOooOO0 = OooOO0(jsonReader);
            } else {
                Context context2 = this.OooO0Oo;
                if (context2.getString(xi.OooO00o(context2, com.anythink.expressad.foundation.h.i.g, "ui_textview")).equalsIgnoreCase(strNextName)) {
                    viewOooOO0 = OooOO0O(jsonReader);
                } else {
                    Context context3 = this.OooO0Oo;
                    if (context3.getString(xi.OooO00o(context3, com.anythink.expressad.foundation.h.i.g, "ui_edittext")).equalsIgnoreCase(strNextName)) {
                        viewOooOO0 = OooO(jsonReader);
                    } else {
                        Context context4 = this.OooO0Oo;
                        if (context4.getString(xi.OooO00o(context4, com.anythink.expressad.foundation.h.i.g, "ui_checkbox")).equals(strNextName)) {
                            viewOooOO0 = OooO0oo(jsonReader);
                        } else {
                            Context context5 = this.OooO0Oo;
                            if (context5.getString(xi.OooO00o(context5, com.anythink.expressad.foundation.h.i.g, "ui_spinner")).equalsIgnoreCase(strNextName)) {
                                viewOooOO0 = OooO0oO(jsonReader);
                            } else {
                                jsonReader.skipValue();
                            }
                        }
                    }
                }
            }
            linearLayout.addView(viewOooOO0);
        }
        jsonReader.endObject();
        return linearLayout;
    }

    private TextView OooOO0O(JsonReader jsonReader) throws IOException {
        TextView textView = new TextView(this.OooO0Oo);
        textView.setGravity(17);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        textView.setTextSize(OooOOO(xi.OooO00o(this.OooO0Oo, "integer", "ui_textSize_normal")));
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            Context context = this.OooO0Oo;
            if (context.getString(xi.OooO00o(context, com.anythink.expressad.foundation.h.i.g, "ui_name")).equalsIgnoreCase(strNextName)) {
                textView.setTag(jsonReader.nextString());
            } else {
                Context context2 = this.OooO0Oo;
                if (context2.getString(xi.OooO00o(context2, com.anythink.expressad.foundation.h.i.g, "ui_textview_textcontent")).equalsIgnoreCase(strNextName)) {
                    textView.setText(jsonReader.nextString());
                } else {
                    Context context3 = this.OooO0Oo;
                    if (context3.getString(xi.OooO00o(context3, com.anythink.expressad.foundation.h.i.g, "ui_textsize")).equalsIgnoreCase(strNextName)) {
                        int iNextInt = jsonReader.nextInt();
                        if (iNextInt <= OooOOO(xi.OooO00o(this.OooO0Oo, "integer", "ui_textsize_min"))) {
                            if (iNextInt != OooOOO(xi.OooO00o(this.OooO0Oo, "integer", "ui_textSize_default"))) {
                                iNextInt = OooOOO(xi.OooO00o(this.OooO0Oo, "integer", "ui_textsize_min"));
                            }
                        }
                        textView.setTextSize(iNextInt);
                    } else {
                        Context context4 = this.OooO0Oo;
                        if (context4.getString(xi.OooO00o(context4, com.anythink.expressad.foundation.h.i.g, "ui_layout_height")).equalsIgnoreCase(strNextName)) {
                            int iNextInt2 = jsonReader.nextInt();
                            if (iNextInt2 > OooOOO(xi.OooO00o(this.OooO0Oo, "integer", "ui_default_height"))) {
                                textView.setHeight(iNextInt2);
                            }
                        } else {
                            Context context5 = this.OooO0Oo;
                            if (context5.getString(xi.OooO00o(context5, com.anythink.expressad.foundation.h.i.g, "ui_layout_width")).equalsIgnoreCase(strNextName)) {
                                int iNextInt3 = jsonReader.nextInt();
                                if (iNextInt3 > OooOOO(xi.OooO00o(this.OooO0Oo, "integer", "ui_default_width"))) {
                                    textView.setWidth(iNextInt3);
                                }
                            } else {
                                jsonReader.skipValue();
                            }
                        }
                    }
                }
            }
        }
        jsonReader.endObject();
        return textView;
    }

    private LinearLayout OooOO0o(String str) {
        JsonReader jsonReader = new JsonReader(new StringReader(str));
        LinearLayout linearLayout = new LinearLayout(this.OooO0Oo);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                Context context = this.OooO0Oo;
                if (strNextName.startsWith(context.getString(xi.OooO00o(context, com.anythink.expressad.foundation.h.i.g, "ui_activity")))) {
                    linearLayout = OooO0o(jsonReader);
                } else {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
            jsonReader.close();
        } catch (Exception unused) {
        }
        return linearLayout;
    }

    private int OooOOO(int i) {
        return this.OooO0Oo.getResources().getInteger(i);
    }

    private void OooOOOO(File file) throws JSONException {
        if (file == null || !file.exists() || file.isDirectory() || file.length() == 0) {
            return;
        }
        String fileToString = null;
        try {
            fileToString = TextUtils.isEmpty(this.OooO0oO) ? FileUtils.readFileToString(file, "UTF-8") : this.OooO0oO;
        } catch (IOException e) {
            e.printStackTrace();
        }
        JSONObject jSONObject = new JSONObject(fileToString);
        for (Spinner spinner : this.OooO0O0) {
            try {
                int i = jSONObject.getInt(spinner.getTag().toString());
                if (i >= spinner.getCount()) {
                    spinner.setSelection(0);
                } else {
                    spinner.setSelection(i);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        for (CheckBox checkBox : this.OooO00o) {
            try {
                checkBox.setChecked(jSONObject.getBoolean(checkBox.getTag().toString()));
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        for (EditText editText : this.OooO0OO) {
            try {
                editText.setText(jSONObject.getString(editText.getTag().toString()));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    @Override // z2.vi
    public String OooO00o() {
        return null;
    }

    @Override // z2.vi
    public void OooO0O0(String str) {
    }

    @Override // z2.vi
    public void OooO0OO(String str) {
        this.OooO0oO = str;
    }

    @Override // z2.vi
    public void OooO0Oo() throws JSONException {
        try {
            OooOOOO(this.OooO0o);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // z2.vi
    public String OooO0o0() throws Exception {
        return OooOOO0(this.OooO0o);
    }

    public String OooOOO0(File file) throws Exception {
        if (file == null || file.isDirectory()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        for (CheckBox checkBox : this.OooO00o) {
            try {
                jSONObject.put(checkBox.getTag().toString(), checkBox.isChecked());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        for (Spinner spinner : this.OooO0O0) {
            try {
                jSONObject.put(spinner.getTag().toString(), spinner.getSelectedItemPosition());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        for (EditText editText : this.OooO0OO) {
            try {
                jSONObject.put(editText.getTag().toString(), editText.getText().toString());
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        FileUtils.writeStringToFile(file, jSONObject.toString(), "UTF-8");
        return jSONObject.toString();
    }

    @Override // z2.vi
    public LinearLayout read() throws Exception {
        if (!this.OooO0o0.exists()) {
            return new LinearLayout(this.OooO0Oo);
        }
        String strLoadUIFile = new MiscUtilities().LoadUIFile(this.OooO0o0.getAbsolutePath(), true);
        Log.e("a111111", "ScriptUiModel parseui begin");
        LinearLayout linearLayoutOooOO0o = OooOO0o(strLoadUIFile);
        Log.e("a111111", "ScriptUiModel end");
        return linearLayoutOooOO0o;
    }
}
