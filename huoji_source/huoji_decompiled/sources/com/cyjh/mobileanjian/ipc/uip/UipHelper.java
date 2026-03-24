package com.cyjh.mobileanjian.ipc.uip;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.util.JsonReader;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TableLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.cyjh.mobileanjian.ipc.ui.SlidingTabLayout;
import com.cyjh.mobileanjian.ipc.uip.c.OooO00o;
import com.cyjh.mqsdk.R;
import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.FileUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import z2.cf;
import z2.df;

/* JADX INFO: loaded from: classes2.dex */
public class UipHelper implements View.OnClickListener, AdapterView.OnItemSelectedListener {
    private static final String Oooooo = new File(Environment.getExternalStorageDirectory(), ".uip.config.json").getAbsolutePath();
    public static final int UIP_MESSAGE = 0;
    private Context OoooOoO;
    private SlidingTabLayout OoooOoo;
    private a Ooooo00;
    private c Ooooo0o;
    private List<ScrollView> OooooO0;
    private boolean OooooOO;
    private Handler OooooOo = new OooO0O0();
    private JSONObject Oooooo0;

    public class OooO00o implements View.OnTouchListener {
        public OooO00o() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            view.requestFocusFromTouch();
            return false;
        }
    }

    public class OooO0O0 extends Handler {
        public OooO0O0() {
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what != 0) {
                return;
            }
            try {
                UiMessage.CommandToUip from = UiMessage.CommandToUip.parseFrom((ByteString) message.obj);
                UiMessage.CommandToUip.Command_Type command = from.getCommand();
                String controlId = from.getControlId();
                new StringBuilder("GET UIP Command -->").append(from);
                if (command == UiMessage.CommandToUip.Command_Type.GET_UIP_ATTRIBUTE) {
                    UipHelper.OooO0OO(UipHelper.this, controlId);
                } else if (command == UiMessage.CommandToUip.Command_Type.SET_UIP_ATTRIBUTE) {
                    UipHelper.OooO0Oo(UipHelper.this, controlId, from.getUipAttributeData());
                }
            } catch (InvalidProtocolBufferException e) {
                e.printStackTrace();
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    public UipHelper(Context context) {
        this.OoooOoO = context;
    }

    private LinearLayout OooO(String str, IUipJsonParser iUipJsonParser) throws Throwable {
        View horizontalLinearLayout;
        c cVar;
        if (iUipJsonParser == null) {
            iUipJsonParser = new DefaultUipJsonParser(this.OoooOoO);
        }
        this.Ooooo0o = new c(this.OoooOoO);
        JsonReader jsonReader = new JsonReader(new StringReader(str));
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext() && jsonReader.nextName().startsWith(this.OoooOoO.getString(R.string.ui_activity))) {
                jsonReader.beginObject();
                for (int i = 0; i < 32 && jsonReader.hasNext(); i++) {
                    String strNextName = jsonReader.nextName();
                    c cVar2 = this.Ooooo0o;
                    RadioButton radioButton = new RadioButton(cVar2.getContext());
                    radioButton.setId(c.OoooooO[cVar2.OooooOo]);
                    radioButton.setPadding(0, 0, 0, cVar2.Ooooo0o);
                    radioButton.setButtonDrawable(new BitmapDrawable((Bitmap) null));
                    radioButton.setTextColor(cVar2.getResources().getColorStateList(R.color.selector_tab));
                    radioButton.setText(strNextName);
                    radioButton.setLines(1);
                    radioButton.setEllipsize(TextUtils.TruncateAt.END);
                    cVar2.OoooOoO.addView(radioButton);
                    ScrollView scrollView = new ScrollView(cVar2.getContext());
                    cVar2.OooooOO = scrollView;
                    scrollView.setDescendantFocusability(131072);
                    cVar2.OooooOO.setFocusable(true);
                    cVar2.OooooOO.setFocusableInTouchMode(true);
                    cVar2.OooooOO.setOnTouchListener(cVar2.new OooO00o());
                    cVar2.OooooOO.setTag(strNextName);
                    cVar2.OooooOO.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
                    LinearLayout linearLayout = new LinearLayout(cVar2.getContext());
                    linearLayout.setOrientation(1);
                    linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
                    cVar2.OooooO0 = linearLayout;
                    cVar2.OooooOO.addView(linearLayout);
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String strNextName2 = jsonReader.nextName();
                        if (strNextName2.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_linearlayout))) {
                            horizontalLinearLayout = iUipJsonParser.parseHorizontalLinearLayout(jsonReader);
                            cVar = this.Ooooo0o;
                        } else if (strNextName2.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_textview))) {
                            horizontalLinearLayout = iUipJsonParser.parseTextView(jsonReader);
                            cVar = this.Ooooo0o;
                        } else if (strNextName2.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_button))) {
                            horizontalLinearLayout = iUipJsonParser.parseButton(jsonReader);
                            cVar = this.Ooooo0o;
                        } else if (strNextName2.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_edittext))) {
                            horizontalLinearLayout = iUipJsonParser.parseEditText(jsonReader);
                            cVar = this.Ooooo0o;
                        } else if (strNextName2.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_checkbox))) {
                            horizontalLinearLayout = iUipJsonParser.parseCheckBox(jsonReader);
                            cVar = this.Ooooo0o;
                        } else if (strNextName2.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_spinner))) {
                            horizontalLinearLayout = iUipJsonParser.parseSpinner(jsonReader);
                            cVar = this.Ooooo0o;
                        } else {
                            jsonReader.skipValue();
                        }
                        cVar.OooO0O0(horizontalLinearLayout);
                    }
                    jsonReader.endObject();
                    c cVar3 = this.Ooooo0o;
                    cVar3.Ooooo00.add(cVar3.OooooOO);
                    cVar3.OooooOo++;
                }
                jsonReader.endObject();
            }
            jsonReader.endObject();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        }
        this.Ooooo0o.setSelectTab(0);
        bindEvent(this.Ooooo0o.getScrollViewList());
        saveToConfigFile(Oooooo);
        return this.Ooooo0o;
    }

    private LinearLayout OooO00o(String str, IUipJsonParser iUipJsonParser) throws Throwable {
        View horizontalLinearLayout;
        if (iUipJsonParser == null) {
            iUipJsonParser = new DefaultUipJsonParser(this.OoooOoO);
        }
        LinearLayout linearLayout = new LinearLayout(this.OoooOoO);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        ViewPager viewPager = new ViewPager(this.OoooOoO);
        TableLayout.LayoutParams layoutParams2 = new TableLayout.LayoutParams(-1, -1);
        layoutParams2.weight = 1.0f;
        viewPager.setLayoutParams(layoutParams2);
        linearLayout.addView(viewPager);
        this.Ooooo00 = new a(this.OoooOoO);
        this.Ooooo00.setLayoutParams(new LinearLayout.LayoutParams(-2, this.Ooooo00.OooO00o(20.0f)));
        a aVar = this.Ooooo00;
        aVar.setPadding(0, aVar.OooO00o(10.0f), 0, 0);
        linearLayout.addView(this.Ooooo00);
        List<ScrollView> arrayList = new ArrayList<>(32);
        ArrayList arrayList2 = new ArrayList(32);
        JsonReader jsonReader = new JsonReader(new StringReader(str));
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext() && jsonReader.nextName().startsWith(this.OoooOoO.getString(R.string.ui_activity))) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String strNextName = jsonReader.nextName();
                    LinearLayout linearLayout2 = new LinearLayout(this.OoooOoO);
                    linearLayout2.setOrientation(1);
                    linearLayout2.setLayoutParams(layoutParams);
                    ScrollView scrollView = new ScrollView(this.OoooOoO);
                    scrollView.setTag(strNextName);
                    scrollView.setLayoutParams(layoutParams);
                    scrollView.addView(linearLayout2);
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String strNextName2 = jsonReader.nextName();
                        if (strNextName2.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_linearlayout))) {
                            horizontalLinearLayout = iUipJsonParser.parseHorizontalLinearLayout(jsonReader);
                        } else if (strNextName2.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_textview))) {
                            horizontalLinearLayout = iUipJsonParser.parseTextView(jsonReader);
                        } else if (strNextName2.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_button))) {
                            horizontalLinearLayout = iUipJsonParser.parseButton(jsonReader);
                        } else if (strNextName2.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_edittext))) {
                            horizontalLinearLayout = iUipJsonParser.parseEditText(jsonReader);
                        } else if (strNextName2.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_checkbox))) {
                            horizontalLinearLayout = iUipJsonParser.parseCheckBox(jsonReader);
                        } else if (strNextName2.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_spinner))) {
                            horizontalLinearLayout = iUipJsonParser.parseSpinner(jsonReader);
                        } else {
                            jsonReader.skipValue();
                        }
                        linearLayout2.addView(horizontalLinearLayout);
                    }
                    jsonReader.endObject();
                    if (arrayList.size() < 32) {
                        arrayList2.add(strNextName);
                        arrayList.add(scrollView);
                    }
                }
                jsonReader.endObject();
            }
            jsonReader.endObject();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        }
        viewPager.setAdapter(new df(arrayList, arrayList2));
        this.Ooooo00.setViewPager(viewPager);
        bindEvent(arrayList);
        saveToConfigFile(Oooooo);
        return linearLayout;
    }

    private void OooO0O0(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof b) || (childAt instanceof LinearLayout)) {
                OooO0O0((ViewGroup) childAt);
            } else if (!TextUtils.isEmpty((CharSequence) childAt.getTag(R.id.uip_function_key))) {
                if (childAt instanceof Spinner) {
                    ((Spinner) childAt).setOnItemSelectedListener(this);
                } else if (childAt instanceof CheckBox) {
                    ((CheckBox) childAt).setOnClickListener(this);
                } else if (childAt instanceof Button) {
                    ((Button) childAt).setOnClickListener(this);
                }
            }
        }
    }

    public static /* synthetic */ void OooO0OO(UipHelper uipHelper, String str) throws JSONException {
        String string;
        CharSequence text;
        JSONObject jSONObject = new JSONObject();
        Iterator<ScrollView> it = uipHelper.OooooO0.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            View viewFindViewWithTag = it.next().findViewWithTag(str);
            if (viewFindViewWithTag instanceof Spinner) {
                Spinner spinner = (Spinner) viewFindViewWithTag;
                jSONObject.put(uipHelper.OoooOoO.getString(R.string.ui_spinner_defaultitem), spinner.getSelectedItemPosition());
                List<String> list = ((cf) spinner.getAdapter()).OoooOoO;
                JSONArray jSONArray = new JSONArray();
                Iterator<String> it2 = list.iterator();
                while (it2.hasNext()) {
                    jSONArray.put(it2.next());
                }
                jSONObject.put(uipHelper.OoooOoO.getString(R.string.ui_spinner_items), jSONArray);
            } else if (viewFindViewWithTag instanceof CheckBox) {
                CheckBox checkBox = (CheckBox) viewFindViewWithTag;
                jSONObject.put(uipHelper.OoooOoO.getString(R.string.ui_checkbox_hintcontent), checkBox.getText().toString());
                jSONObject.put(uipHelper.OoooOoO.getString(R.string.ui_checkbox_checked), checkBox.isChecked());
                break;
            } else if (viewFindViewWithTag instanceof Button) {
                string = uipHelper.OoooOoO.getString(R.string.ui_textview_textcontent);
                text = ((Button) viewFindViewWithTag).getText();
                break;
            } else if (viewFindViewWithTag instanceof EditText) {
                EditText editText = (EditText) viewFindViewWithTag;
                jSONObject.put(uipHelper.OoooOoO.getString(R.string.ui_edittext_defaultcontent), editText.getText().toString());
                if (editText.getTransformationMethod() instanceof PasswordTransformationMethod) {
                    jSONObject.put("密码", true);
                } else {
                    jSONObject.put("密码", false);
                }
            } else if (viewFindViewWithTag instanceof TextView) {
                string = uipHelper.OoooOoO.getString(R.string.ui_textview_textcontent);
                text = ((TextView) viewFindViewWithTag).getText();
                break;
            }
        }
        jSONObject.put(string, text.toString());
        new StringBuilder("rtnJson:").append(jSONObject);
        UipEventStub.UiRequestReturn(UiMessage.UipToCommand.newBuilder().setCommand(UiMessage.UipToCommand.Command_Type.RSP_MSG).setIsSuccess(true).setUipAttributeData(jSONObject.toString()).build().toByteString());
    }

    public static /* synthetic */ void OooO0Oo(UipHelper uipHelper, String str, String str2) {
        JsonReader jsonReader = new JsonReader(new StringReader(str2));
        try {
            Iterator<ScrollView> it = uipHelper.OooooO0.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                View viewFindViewWithTag = it.next().findViewWithTag(str);
                if (viewFindViewWithTag instanceof Spinner) {
                    Spinner spinner = (Spinner) viewFindViewWithTag;
                    int iNextInt = -1;
                    ArrayList arrayList = null;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String strNextName = jsonReader.nextName();
                        if (strNextName.equalsIgnoreCase(uipHelper.OoooOoO.getString(R.string.ui_spinner_defaultitem))) {
                            iNextInt = jsonReader.nextInt();
                        } else if (strNextName.equalsIgnoreCase(uipHelper.OoooOoO.getString(R.string.ui_spinner_items))) {
                            arrayList = new ArrayList();
                            jsonReader.beginArray();
                            while (jsonReader.hasNext()) {
                                arrayList.add(jsonReader.nextString());
                            }
                            jsonReader.endArray();
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    if (arrayList != null) {
                        cf cfVar = new cf(uipHelper.OoooOoO, arrayList);
                        cfVar.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
                        spinner.setAdapter((SpinnerAdapter) cfVar);
                    }
                    if (iNextInt >= 0 && iNextInt < spinner.getCount()) {
                        spinner.setSelection(iNextInt);
                    }
                } else if (viewFindViewWithTag instanceof CheckBox) {
                    CheckBox checkBox = (CheckBox) viewFindViewWithTag;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String strNextName2 = jsonReader.nextName();
                        if (strNextName2.equalsIgnoreCase(uipHelper.OoooOoO.getString(R.string.ui_checkbox_hintcontent))) {
                            checkBox.setText(jsonReader.nextString());
                        } else if (strNextName2.equalsIgnoreCase(uipHelper.OoooOoO.getString(R.string.ui_checkbox_checked))) {
                            checkBox.setChecked(jsonReader.nextBoolean());
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                } else if (viewFindViewWithTag instanceof Button) {
                    Button button = (Button) viewFindViewWithTag;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        if (jsonReader.nextName().equalsIgnoreCase(uipHelper.OoooOoO.getString(R.string.ui_textview_textcontent))) {
                            button.setText(jsonReader.nextString());
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                } else if (viewFindViewWithTag instanceof EditText) {
                    EditText editText = (EditText) viewFindViewWithTag;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String strNextName3 = jsonReader.nextName();
                        if (strNextName3.equalsIgnoreCase(uipHelper.OoooOoO.getString(R.string.ui_edittext_defaultcontent))) {
                            editText.setText(jsonReader.nextString());
                        } else if (strNextName3.equalsIgnoreCase("密码")) {
                            boolean zNextBoolean = false;
                            try {
                                zNextBoolean = jsonReader.nextBoolean();
                            } catch (Exception unused) {
                            }
                            editText.setTransformationMethod(zNextBoolean ? PasswordTransformationMethod.getInstance() : HideReturnsTransformationMethod.getInstance());
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                } else if (viewFindViewWithTag instanceof TextView) {
                    TextView textView = (TextView) viewFindViewWithTag;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        if (jsonReader.nextName().equalsIgnoreCase(uipHelper.OoooOoO.getString(R.string.ui_textview_textcontent))) {
                            textView.setText(jsonReader.nextString());
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                }
            }
            jsonReader.endObject();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        }
        UipEventStub.UiRequestReturn(UiMessage.UipToCommand.newBuilder().setCommand(UiMessage.UipToCommand.Command_Type.RSP_MSG).setIsSuccess(true).build().toByteString());
    }

    private void OooO0o(String str, String str2) {
        JsonReader jsonReader = new JsonReader(new StringReader(str2));
        try {
            Iterator<ScrollView> it = this.OooooO0.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                View viewFindViewWithTag = it.next().findViewWithTag(str);
                if (viewFindViewWithTag instanceof Spinner) {
                    Spinner spinner = (Spinner) viewFindViewWithTag;
                    int iNextInt = -1;
                    ArrayList arrayList = null;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String strNextName = jsonReader.nextName();
                        if (strNextName.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_spinner_defaultitem))) {
                            iNextInt = jsonReader.nextInt();
                        } else if (strNextName.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_spinner_items))) {
                            arrayList = new ArrayList();
                            jsonReader.beginArray();
                            while (jsonReader.hasNext()) {
                                arrayList.add(jsonReader.nextString());
                            }
                            jsonReader.endArray();
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    if (arrayList != null) {
                        cf cfVar = new cf(this.OoooOoO, arrayList);
                        cfVar.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
                        spinner.setAdapter((SpinnerAdapter) cfVar);
                    }
                    if (iNextInt >= 0 && iNextInt < spinner.getCount()) {
                        spinner.setSelection(iNextInt);
                    }
                } else if (viewFindViewWithTag instanceof CheckBox) {
                    CheckBox checkBox = (CheckBox) viewFindViewWithTag;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String strNextName2 = jsonReader.nextName();
                        if (strNextName2.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_checkbox_hintcontent))) {
                            checkBox.setText(jsonReader.nextString());
                        } else if (strNextName2.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_checkbox_checked))) {
                            checkBox.setChecked(jsonReader.nextBoolean());
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                } else if (viewFindViewWithTag instanceof Button) {
                    Button button = (Button) viewFindViewWithTag;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        if (jsonReader.nextName().equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_textview_textcontent))) {
                            button.setText(jsonReader.nextString());
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                } else if (viewFindViewWithTag instanceof EditText) {
                    EditText editText = (EditText) viewFindViewWithTag;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String strNextName3 = jsonReader.nextName();
                        if (strNextName3.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_edittext_defaultcontent))) {
                            editText.setText(jsonReader.nextString());
                        } else if (strNextName3.equalsIgnoreCase("密码")) {
                            boolean zNextBoolean = false;
                            try {
                                zNextBoolean = jsonReader.nextBoolean();
                            } catch (Exception unused) {
                            }
                            editText.setTransformationMethod(zNextBoolean ? PasswordTransformationMethod.getInstance() : HideReturnsTransformationMethod.getInstance());
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                } else if (viewFindViewWithTag instanceof TextView) {
                    TextView textView = (TextView) viewFindViewWithTag;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        if (jsonReader.nextName().equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_textview_textcontent))) {
                            textView.setText(jsonReader.nextString());
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                }
            }
            jsonReader.endObject();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        }
        UipEventStub.UiRequestReturn(UiMessage.UipToCommand.newBuilder().setCommand(UiMessage.UipToCommand.Command_Type.RSP_MSG).setIsSuccess(true).build().toByteString());
    }

    private void OooO0o0(String str) throws JSONException {
        String string;
        Object string2;
        CharSequence text;
        JSONObject jSONObject = new JSONObject();
        Iterator<ScrollView> it = this.OooooO0.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            View viewFindViewWithTag = it.next().findViewWithTag(str);
            if (viewFindViewWithTag instanceof Spinner) {
                Spinner spinner = (Spinner) viewFindViewWithTag;
                jSONObject.put(this.OoooOoO.getString(R.string.ui_spinner_defaultitem), spinner.getSelectedItemPosition());
                List<String> list = ((cf) spinner.getAdapter()).OoooOoO;
                JSONArray jSONArray = new JSONArray();
                Iterator<String> it2 = list.iterator();
                while (it2.hasNext()) {
                    jSONArray.put(it2.next());
                }
                string = this.OoooOoO.getString(R.string.ui_spinner_items);
                string2 = jSONArray;
            } else if (viewFindViewWithTag instanceof CheckBox) {
                CheckBox checkBox = (CheckBox) viewFindViewWithTag;
                jSONObject.put(this.OoooOoO.getString(R.string.ui_checkbox_hintcontent), checkBox.getText().toString());
                jSONObject.put(this.OoooOoO.getString(R.string.ui_checkbox_checked), checkBox.isChecked());
                break;
            } else if (viewFindViewWithTag instanceof Button) {
                string = this.OoooOoO.getString(R.string.ui_textview_textcontent);
                text = ((Button) viewFindViewWithTag).getText();
                break;
            } else if (viewFindViewWithTag instanceof EditText) {
                EditText editText = (EditText) viewFindViewWithTag;
                jSONObject.put(this.OoooOoO.getString(R.string.ui_edittext_defaultcontent), editText.getText().toString());
                if (editText.getTransformationMethod() instanceof PasswordTransformationMethod) {
                    jSONObject.put("密码", true);
                } else {
                    jSONObject.put("密码", false);
                }
            } else if (viewFindViewWithTag instanceof TextView) {
                string = this.OoooOoO.getString(R.string.ui_textview_textcontent);
                text = ((TextView) viewFindViewWithTag).getText();
                break;
            }
        }
        string2 = text.toString();
        jSONObject.put(string, string2);
        new StringBuilder("rtnJson:").append(jSONObject);
        UipEventStub.UiRequestReturn(UiMessage.UipToCommand.newBuilder().setCommand(UiMessage.UipToCommand.Command_Type.RSP_MSG).setIsSuccess(true).setUipAttributeData(jSONObject.toString()).build().toByteString());
    }

    private LinearLayout OooO0oO(String str, IUipJsonParser iUipJsonParser) throws Throwable {
        View horizontalLinearLayout;
        if (iUipJsonParser == null) {
            iUipJsonParser = new DefaultUipJsonParser(this.OoooOoO);
        }
        LinearLayout linearLayout = new LinearLayout(this.OoooOoO);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        SlidingTabLayout slidingTabLayout = new SlidingTabLayout(this.OoooOoO);
        this.OoooOoo = slidingTabLayout;
        slidingTabLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.OoooOoo.setSelectedIndicatorColors(this.OoooOoO.getResources().getColor(R.color.ui_show_blue));
        this.OoooOoo.setDistributeEvenly(true);
        linearLayout.addView(this.OoooOoo);
        ViewPager viewPager = new ViewPager(this.OoooOoO);
        TableLayout.LayoutParams layoutParams2 = new TableLayout.LayoutParams(-1, -1);
        layoutParams2.weight = 1.0f;
        viewPager.setLayoutParams(layoutParams2);
        linearLayout.addView(viewPager);
        List<ScrollView> arrayList = new ArrayList<>(32);
        ArrayList arrayList2 = new ArrayList(32);
        JsonReader jsonReader = new JsonReader(new StringReader(str));
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext() && jsonReader.nextName().startsWith(this.OoooOoO.getString(R.string.ui_activity))) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String strNextName = jsonReader.nextName();
                    LinearLayout linearLayout2 = new LinearLayout(this.OoooOoO);
                    linearLayout2.setOrientation(1);
                    linearLayout2.setLayoutParams(layoutParams);
                    ScrollView scrollView = new ScrollView(this.OoooOoO);
                    scrollView.setTag(strNextName);
                    scrollView.setLayoutParams(layoutParams);
                    scrollView.addView(linearLayout2);
                    scrollView.setDescendantFocusability(131072);
                    scrollView.setFocusable(true);
                    scrollView.setFocusableInTouchMode(true);
                    scrollView.setOnTouchListener(new OooO00o());
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String strNextName2 = jsonReader.nextName();
                        if (strNextName2.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_linearlayout))) {
                            horizontalLinearLayout = iUipJsonParser.parseHorizontalLinearLayout(jsonReader);
                        } else if (strNextName2.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_textview))) {
                            horizontalLinearLayout = iUipJsonParser.parseTextView(jsonReader);
                        } else if (strNextName2.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_button))) {
                            horizontalLinearLayout = iUipJsonParser.parseButton(jsonReader);
                        } else if (strNextName2.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_edittext))) {
                            horizontalLinearLayout = iUipJsonParser.parseEditText(jsonReader);
                        } else if (strNextName2.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_checkbox))) {
                            horizontalLinearLayout = iUipJsonParser.parseCheckBox(jsonReader);
                        } else if (strNextName2.equalsIgnoreCase(this.OoooOoO.getString(R.string.ui_spinner))) {
                            horizontalLinearLayout = iUipJsonParser.parseSpinner(jsonReader);
                        } else {
                            jsonReader.skipValue();
                        }
                        linearLayout2.addView(horizontalLinearLayout);
                    }
                    jsonReader.endObject();
                    if (arrayList.size() < 32) {
                        arrayList2.add(strNextName);
                        arrayList.add(scrollView);
                    }
                }
                jsonReader.endObject();
            }
            jsonReader.endObject();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        }
        viewPager.setAdapter(new df(arrayList, arrayList2));
        this.OoooOoo.setViewPager(viewPager);
        bindEvent(arrayList);
        saveToConfigFile(Oooooo);
        return linearLayout;
    }

    private void OooO0oo(ViewGroup viewGroup) throws JSONException {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            String str = (String) childAt.getTag();
            if ((childAt instanceof LinearLayout) || (childAt instanceof b)) {
                OooO0oo((ViewGroup) childAt);
            } else if (childAt instanceof CheckBox) {
                this.Oooooo0.put(str, ((CheckBox) childAt).isChecked());
            } else if (childAt instanceof Spinner) {
                this.Oooooo0.put(str, ((Spinner) childAt).getSelectedItemPosition());
            } else if (childAt instanceof EditText) {
                this.Oooooo0.put(str, ((EditText) childAt).getText().toString());
            }
        }
    }

    public void bindEvent(List<ScrollView> list) {
        UipEventStub.registerHandler(this.OooooOo);
        this.OooooO0 = list;
        for (ScrollView scrollView : list) {
            scrollView.setScrollbarFadingEnabled(false);
            OooO0O0(scrollView);
        }
    }

    public void configViewFromFile(String str) {
        try {
            configViewFromJson(FileUtils.readFileToString(new File(str)));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void configViewFromJson(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.OooooOO = true;
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Iterator<ScrollView> it = this.OooooO0.iterator();
                while (it.hasNext()) {
                    View viewFindViewWithTag = it.next().findViewWithTag(next);
                    if (viewFindViewWithTag != null) {
                        if (viewFindViewWithTag instanceof CheckBox) {
                            ((CheckBox) viewFindViewWithTag).setChecked(jSONObject.getBoolean(next));
                        } else if (viewFindViewWithTag instanceof Spinner) {
                            Spinner spinner = (Spinner) viewFindViewWithTag;
                            spinner.setSelection(jSONObject.getInt(next) < spinner.getAdapter().getCount() ? jSONObject.getInt(next) : 0);
                        } else if (viewFindViewWithTag instanceof EditText) {
                            ((EditText) viewFindViewWithTag).setText(jSONObject.getString(next));
                        }
                    }
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        this.OooooOO = false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.OooooOO) {
            return;
        }
        UiMessage.ControlEvent.Builder type = UiMessage.ControlEvent.newBuilder().setControlId((String) view.getTag()).setType(UiMessage.ControlEvent.Event_Type.ON_CLICK);
        int i = R.id.uip_function_key;
        UipEventStub.hasEvent(UiMessage.UipToCommand.newBuilder().setCommand(UiMessage.UipToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(type.setEventFunctionName((String) view.getTag(i)).build()).build().toByteString());
        new StringBuilder("onClick Function Name: ").append((String) view.getTag(i));
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        new StringBuilder("isCodeEvent: ").append(this.OooooOO);
        if (this.OooooOO) {
            return;
        }
        UiMessage.ControlEvent controlEventBuild = UiMessage.ControlEvent.newBuilder().setControlId((String) adapterView.getTag()).setType(UiMessage.ControlEvent.Event_Type.ON_CLICK).setEventArgs(String.valueOf(i)).setEventFunctionName((String) adapterView.getTag(R.id.uip_function_key)).build();
        UipEventStub.hasEvent(UiMessage.UipToCommand.newBuilder().setCommand(UiMessage.UipToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(controlEventBuild).build().toByteString());
        new StringBuilder("onItemSelected: ").append(controlEventBuild);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public LinearLayout parseLayoutFromJson(String str, IUipJsonParser iUipJsonParser) {
        return this.OoooOoO.getResources().getConfiguration().orientation == 2 ? OooO(str, iUipJsonParser) : OooO0oO(str, iUipJsonParser);
    }

    public void restoreConfig() {
        configViewFromFile(Oooooo);
    }

    public String saveConfigToJson() {
        this.Oooooo0 = new JSONObject();
        Iterator<ScrollView> it = this.OooooO0.iterator();
        while (it.hasNext()) {
            try {
                OooO0oo((LinearLayout) it.next().getChildAt(0));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return this.Oooooo0.toString();
    }

    public void saveToConfigFile(String str) throws Throwable {
        try {
            FileUtils.writeStringToFile(new File(str), saveConfigToJson());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public View transform(int i) {
        for (ScrollView scrollView : this.OooooO0) {
            ViewParent parent = scrollView.getParent();
            if (parent != null) {
                ((ViewGroup) parent).removeView(scrollView);
            }
            new StringBuilder("childCount of scrollview: ").append(((ViewGroup) scrollView.getChildAt(0)).getChildCount());
        }
        if (i == 2) {
            c cVar = new c(this.OoooOoO);
            this.Ooooo0o = cVar;
            cVar.OooO0Oo(this.OooooO0);
            this.Ooooo0o.setSelectTab(this.OoooOoo.getViewPager().getCurrentItem());
            return this.Ooooo0o;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<ScrollView> it = this.OooooO0.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next().getTag());
        }
        LinearLayout linearLayout = new LinearLayout(this.OoooOoO);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout.setOrientation(1);
        SlidingTabLayout slidingTabLayout = new SlidingTabLayout(this.OoooOoO);
        this.OoooOoo = slidingTabLayout;
        slidingTabLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.OoooOoo.setSelectedIndicatorColors(this.OoooOoO.getResources().getColor(R.color.ui_show_blue));
        this.OoooOoo.setDistributeEvenly(true);
        linearLayout.addView(this.OoooOoo);
        ViewPager viewPager = new ViewPager(this.OoooOoO);
        TableLayout.LayoutParams layoutParams = new TableLayout.LayoutParams(-1, -1);
        layoutParams.weight = 1.0f;
        viewPager.setLayoutParams(layoutParams);
        linearLayout.addView(viewPager);
        viewPager.setAdapter(new df(this.OooooO0, arrayList));
        viewPager.setCurrentItem(this.Ooooo0o.getCurrentItem());
        this.OoooOoo.setViewPager(viewPager);
        return linearLayout;
    }
}
