package com.cyjh.mobileanjian.ipc.uip;

import android.content.Context;
import android.content.res.Resources;
import android.text.InputFilter;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.util.JsonReader;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.cyjh.mobileanjian.ipc.uip.b;
import com.cyjh.mqsdk.R;
import java.io.IOException;
import java.util.ArrayList;
import z2.cf;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultUipJsonParser implements IUipJsonParser {
    public Context mContext;
    private b.OooO00o mDefaultFlowLayoutChildLayoutParams;

    public class OooO00o implements View.OnClickListener {
        public OooO00o() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    public class OooO0O0 implements ActionMode.Callback {
        public OooO0O0() {
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return false;
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return false;
        }

        @Override // android.view.ActionMode.Callback
        public final void onDestroyActionMode(ActionMode actionMode) {
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return false;
        }
    }

    public DefaultUipJsonParser(Context context) {
        this.mContext = context;
        b.OooO00o oooO00o = new b.OooO00o(-2, -2);
        this.mDefaultFlowLayoutChildLayoutParams = oooO00o;
        oooO00o.OooO00o = 17;
    }

    @Override // com.cyjh.mobileanjian.ipc.uip.IUipJsonParser
    public Button parseButton(JsonReader jsonReader) throws IllegalStateException, IOException {
        Button button = new Button(this.mContext);
        button.setGravity(17);
        button.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        button.setTextSize(this.mContext.getResources().getInteger(R.integer.ui_textSize_normal));
        button.setAllCaps(false);
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (this.mContext.getString(R.string.ui_name).equalsIgnoreCase(strNextName)) {
                button.setTag(jsonReader.nextString());
            } else if (this.mContext.getString(R.string.ui_textview_textcontent).equalsIgnoreCase(strNextName)) {
                button.setText(jsonReader.nextString());
            } else if (this.mContext.getString(R.string.ui_onclick).equalsIgnoreCase(strNextName)) {
                button.setTag(R.id.uip_function_key, jsonReader.nextString());
            } else if (this.mContext.getString(R.string.ui_textsize).equalsIgnoreCase(strNextName)) {
                int iNextInt = jsonReader.nextInt();
                Resources resources = this.mContext.getResources();
                int i = R.integer.ui_textsize_min;
                if (iNextInt <= resources.getInteger(i)) {
                    if (iNextInt != this.mContext.getResources().getInteger(R.integer.ui_textSize_default)) {
                        iNextInt = this.mContext.getResources().getInteger(i);
                    }
                }
                button.setTextSize(iNextInt);
            } else if (this.mContext.getString(R.string.ui_layout_height).equalsIgnoreCase(strNextName)) {
                int iNextInt2 = jsonReader.nextInt();
                if (iNextInt2 > this.mContext.getResources().getInteger(R.integer.ui_default_height)) {
                    button.setHeight(iNextInt2);
                }
            } else if (this.mContext.getString(R.string.ui_layout_width).equalsIgnoreCase(strNextName)) {
                int iNextInt3 = jsonReader.nextInt();
                if (iNextInt3 > this.mContext.getResources().getInteger(R.integer.ui_default_width)) {
                    button.setWidth(iNextInt3);
                }
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return button;
    }

    @Override // com.cyjh.mobileanjian.ipc.uip.IUipJsonParser
    public CheckBox parseCheckBox(JsonReader jsonReader) throws IllegalStateException, IOException {
        CheckBox checkBox = new CheckBox(this.mContext);
        checkBox.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        checkBox.setTextSize(this.mContext.getResources().getInteger(R.integer.ui_textSize_normal));
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (this.mContext.getString(R.string.ui_name).equalsIgnoreCase(strNextName)) {
                checkBox.setTag(jsonReader.nextString());
            } else if (this.mContext.getString(R.string.ui_onclick).equalsIgnoreCase(strNextName)) {
                checkBox.setTag(R.id.uip_function_key, jsonReader.nextString());
            } else if (this.mContext.getString(R.string.ui_checkbox_hintcontent).equalsIgnoreCase(strNextName)) {
                checkBox.setText(jsonReader.nextString());
            } else if (this.mContext.getString(R.string.ui_checkbox_checked).equalsIgnoreCase(strNextName)) {
                checkBox.setChecked(jsonReader.nextBoolean());
            } else if (this.mContext.getString(R.string.ui_textsize).equalsIgnoreCase(strNextName)) {
                int iNextInt = jsonReader.nextInt();
                Resources resources = this.mContext.getResources();
                int i = R.integer.ui_textsize_min;
                if (iNextInt <= resources.getInteger(i)) {
                    if (iNextInt != this.mContext.getResources().getInteger(R.integer.ui_textSize_default)) {
                        iNextInt = this.mContext.getResources().getInteger(i);
                    }
                }
                checkBox.setTextSize(iNextInt);
            } else if (this.mContext.getString(R.string.ui_layout_height).equalsIgnoreCase(strNextName)) {
                int iNextInt2 = jsonReader.nextInt();
                if (iNextInt2 > this.mContext.getResources().getInteger(R.integer.ui_default_height)) {
                    checkBox.setHeight(iNextInt2);
                }
            } else if (this.mContext.getString(R.string.ui_layout_width).equalsIgnoreCase(strNextName)) {
                int iNextInt3 = jsonReader.nextInt();
                if (iNextInt3 > this.mContext.getResources().getInteger(R.integer.ui_default_width)) {
                    checkBox.setWidth(iNextInt3);
                }
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return checkBox;
    }

    @Override // com.cyjh.mobileanjian.ipc.uip.IUipJsonParser
    public EditText parseEditText(JsonReader jsonReader) throws IllegalStateException, IOException {
        EditText editText = new EditText(this.mContext);
        editText.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        editText.setTextSize(this.mContext.getResources().getInteger(R.integer.ui_textSize_normal));
        editText.setSingleLine(true);
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (this.mContext.getString(R.string.ui_name).equalsIgnoreCase(strNextName)) {
                editText.setTag(jsonReader.nextString());
            } else if (this.mContext.getString(R.string.ui_edittext_hintcontent).equalsIgnoreCase(strNextName)) {
                editText.setHint(jsonReader.nextString());
            } else if (this.mContext.getString(R.string.ui_textsize).equalsIgnoreCase(strNextName)) {
                int iNextInt = jsonReader.nextInt();
                Resources resources = this.mContext.getResources();
                int i = R.integer.ui_textsize_min;
                if (iNextInt <= resources.getInteger(i)) {
                    if (iNextInt != this.mContext.getResources().getInteger(R.integer.ui_textSize_default)) {
                        iNextInt = this.mContext.getResources().getInteger(i);
                    }
                }
                editText.setTextSize(iNextInt);
            } else if (this.mContext.getString(R.string.ui_layout_height).equalsIgnoreCase(strNextName)) {
                int iNextInt2 = jsonReader.nextInt();
                if (iNextInt2 > this.mContext.getResources().getInteger(R.integer.ui_default_height)) {
                    editText.setHeight(iNextInt2);
                }
            } else if (this.mContext.getString(R.string.ui_layout_width).equalsIgnoreCase(strNextName)) {
                int iNextInt3 = jsonReader.nextInt();
                if (iNextInt3 > this.mContext.getResources().getInteger(R.integer.ui_default_width)) {
                    editText.setWidth(iNextInt3);
                }
            } else {
                boolean zNextBoolean = false;
                if (this.mContext.getString(R.string.ui_edittext_maxlength).equalsIgnoreCase(strNextName)) {
                    int iNextInt4 = jsonReader.nextInt();
                    if (iNextInt4 > 0) {
                        editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(iNextInt4)});
                    }
                } else if (this.mContext.getString(R.string.ui_edittext_inputnumber).equalsIgnoreCase(strNextName)) {
                    try {
                        zNextBoolean = jsonReader.nextBoolean();
                    } catch (Exception unused) {
                    }
                    if (zNextBoolean) {
                        editText.setInputType(2);
                    }
                } else if ("密码".equalsIgnoreCase(strNextName)) {
                    try {
                        zNextBoolean = jsonReader.nextBoolean();
                    } catch (Exception unused2) {
                    }
                    editText.setTransformationMethod(zNextBoolean ? PasswordTransformationMethod.getInstance() : HideReturnsTransformationMethod.getInstance());
                } else if (this.mContext.getString(R.string.ui_edittext_defaultcontent).equalsIgnoreCase(strNextName)) {
                    editText.setText(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                }
            }
        }
        jsonReader.endObject();
        editText.setOnClickListener(new OooO00o());
        editText.setCustomSelectionActionModeCallback(new OooO0O0());
        return editText;
    }

    @Override // com.cyjh.mobileanjian.ipc.uip.IUipJsonParser
    public b parseHorizontalLinearLayout(JsonReader jsonReader) throws IllegalStateException, IOException {
        View textView;
        b bVar = new b(this.mContext);
        bVar.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        bVar.setGravity(16);
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (this.mContext.getString(R.string.ui_linearlayout).equalsIgnoreCase(strNextName)) {
                bVar.addView(parseHorizontalLinearLayout(jsonReader));
            } else {
                if (this.mContext.getString(R.string.ui_textview).equalsIgnoreCase(strNextName)) {
                    textView = parseTextView(jsonReader);
                } else if (this.mContext.getString(R.string.ui_edittext).equalsIgnoreCase(strNextName)) {
                    textView = parseEditText(jsonReader);
                } else if (this.mContext.getString(R.string.ui_checkbox).equals(strNextName)) {
                    textView = parseCheckBox(jsonReader);
                } else if (this.mContext.getString(R.string.ui_spinner).equalsIgnoreCase(strNextName)) {
                    textView = parseSpinner(jsonReader);
                } else if (this.mContext.getString(R.string.ui_button).equalsIgnoreCase(strNextName)) {
                    textView = parseButton(jsonReader);
                } else {
                    jsonReader.skipValue();
                }
                bVar.addView(textView, this.mDefaultFlowLayoutChildLayoutParams);
            }
        }
        jsonReader.endObject();
        return bVar;
    }

    @Override // com.cyjh.mobileanjian.ipc.uip.IUipJsonParser
    public Spinner parseSpinner(JsonReader jsonReader) throws IllegalStateException, IOException {
        Spinner spinner = new Spinner(this.mContext);
        spinner.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        spinner.setBackgroundResource(R.drawable.spinner_bg);
        spinner.setPadding(0, 0, 5, 0);
        spinner.setGravity(3);
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            ArrayList arrayList = new ArrayList();
            if (this.mContext.getString(R.string.ui_name).equalsIgnoreCase(strNextName)) {
                spinner.setTag(jsonReader.nextString());
            } else if (this.mContext.getString(R.string.ui_onSelect).equalsIgnoreCase(strNextName)) {
                spinner.setTag(R.id.uip_function_key, jsonReader.nextString());
            } else if (this.mContext.getString(R.string.ui_spinner_items).equalsIgnoreCase(strNextName)) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    arrayList.add(jsonReader.nextString());
                }
                jsonReader.endArray();
                cf cfVar = new cf(this.mContext, arrayList);
                cfVar.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
                spinner.setAdapter((SpinnerAdapter) cfVar);
            } else if (this.mContext.getString(R.string.ui_spinner_defaultitem).equalsIgnoreCase(strNextName)) {
                int iNextInt = jsonReader.nextInt();
                if (iNextInt >= spinner.getAdapter().getCount()) {
                    iNextInt = 0;
                }
                spinner.setSelection(iNextInt);
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return spinner;
    }

    @Override // com.cyjh.mobileanjian.ipc.uip.IUipJsonParser
    public TextView parseTextView(JsonReader jsonReader) throws IllegalStateException, IOException {
        TextView textView = new TextView(this.mContext);
        textView.setGravity(17);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        textView.setTextSize(this.mContext.getResources().getInteger(R.integer.ui_textSize_normal));
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (this.mContext.getString(R.string.ui_name).equalsIgnoreCase(strNextName)) {
                textView.setTag(jsonReader.nextString());
            } else if (this.mContext.getString(R.string.ui_textview_textcontent).equalsIgnoreCase(strNextName)) {
                textView.setText(jsonReader.nextString());
            } else if (this.mContext.getString(R.string.ui_textsize).equalsIgnoreCase(strNextName)) {
                int iNextInt = jsonReader.nextInt();
                Resources resources = this.mContext.getResources();
                int i = R.integer.ui_textsize_min;
                if (iNextInt <= resources.getInteger(i)) {
                    if (iNextInt != this.mContext.getResources().getInteger(R.integer.ui_textSize_default)) {
                        iNextInt = this.mContext.getResources().getInteger(i);
                    }
                }
                textView.setTextSize(iNextInt);
            } else if (this.mContext.getString(R.string.ui_layout_height).equalsIgnoreCase(strNextName)) {
                int iNextInt2 = jsonReader.nextInt();
                if (iNextInt2 > this.mContext.getResources().getInteger(R.integer.ui_default_height)) {
                    textView.setHeight(iNextInt2);
                }
            } else if (this.mContext.getString(R.string.ui_layout_width).equalsIgnoreCase(strNextName)) {
                int iNextInt3 = jsonReader.nextInt();
                if (iNextInt3 > this.mContext.getResources().getInteger(R.integer.ui_default_width)) {
                    textView.setWidth(iNextInt3);
                }
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return textView;
    }
}
