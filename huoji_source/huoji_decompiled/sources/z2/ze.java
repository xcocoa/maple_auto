package z2;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.cyjh.mobileanjian.ipc.view.ExToast;
import com.cyjh.mqsdk.R;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.io.FileUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class ze implements View.OnClickListener, AdapterView.OnItemSelectedListener {
    private static final int Oooooo = 32;
    private static final String Oooooo0 = "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})";
    private Context Ooooo00;
    public xe Ooooo0o;
    public af[] OoooOoO = new af[32];
    public int OoooOoo = 0;
    public HashMap<String, Integer> OooooO0 = new HashMap<>();
    public HashMap[] OooooOO = new HashMap[32];
    public int OooooOo = 1;

    public class OooO00o implements View.OnClickListener {
        public final /* synthetic */ String OoooOoO;

        public OooO00o(String str) {
            this.OoooOoO = str;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            eb.OooO0OO(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(this.OoooOoO).setType(UiMessage.ControlEvent.Event_Type.ON_CLOSE_CONTINUE).build()).build().toByteString());
        }
    }

    public class OooO0O0 implements View.OnClickListener {
        public final /* synthetic */ String OoooOoO;

        public OooO0O0(String str) {
            this.OoooOoO = str;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            UiMessage.UiToCommand uiToCommandBuild = UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(this.OoooOoO).setType(UiMessage.ControlEvent.Event_Type.ON_CLOSE_EXIT).build()).setIsSuccess(true).build();
            eb.OooO0OO(uiToCommandBuild.toByteString());
            new StringBuilder("exit event: ").append(uiToCommandBuild);
        }
    }

    public static /* synthetic */ class OooO0OO {
        public static final /* synthetic */ int[] OooO00o;
        public static final /* synthetic */ int[] OooO0O0;

        static {
            int[] iArr = new int[com.cyjh.mobileanjian.ipc.ui.m.values().length];
            OooO0O0 = iArr;
            try {
                iArr[com.cyjh.mobileanjian.ipc.ui.m.TEXT_VIEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                OooO0O0[com.cyjh.mobileanjian.ipc.ui.m.EDIT_TEXT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                OooO0O0[com.cyjh.mobileanjian.ipc.ui.m.BUTTON.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                OooO0O0[com.cyjh.mobileanjian.ipc.ui.m.CHECK_BOX.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                OooO0O0[com.cyjh.mobileanjian.ipc.ui.m.RADIIO_GROUP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                OooO0O0[com.cyjh.mobileanjian.ipc.ui.m.SPINNER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[UiMessage.CommandToUi.Command_Type.values().length];
            OooO00o = iArr2;
            try {
                iArr2[UiMessage.CommandToUi.Command_Type.SAVE_PROFILE.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.LOAD_PROFILE.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.NEW_LAYOUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SHOW_LAYOUT.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.CLOSE_LAYOUT.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.CLOSE_CONTINUE_ACK.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.CLOSE_EXIT_ACK.ordinal()] = 7;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.NEW_ROW.ordinal()] = 8;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_TITLE_TEXT.ordinal()] = 9;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.GET_TITLE_TEXT.ordinal()] = 10;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_TITLE_BACKCOLOR.ordinal()] = 11;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.ADD_LINE.ordinal()] = 12;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.ADD_TEXT_VIEW.ordinal()] = 13;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.ADD_EDIT_TEXT.ordinal()] = 14;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.ADD_BUTTON.ordinal()] = 15;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.ADD_RADIO_GROUP.ordinal()] = 16;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.ADD_CHECK_BOX.ordinal()] = 17;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.ADD_IMAGE_VIEW.ordinal()] = 18;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.ADD_WEB_VIEW.ordinal()] = 19;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.ADD_SPINNER.ordinal()] = 20;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.ADD_TAB_HOST.ordinal()] = 21;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.ADD_TAB.ordinal()] = 22;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_TEXT_VIEW.ordinal()] = 23;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_EDIT_TEXT.ordinal()] = 24;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_BOTTON.ordinal()] = 25;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_CHECK_BOX.ordinal()] = 26;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_IMAGE_VIEW.ordinal()] = 27;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_WEB_VIEW.ordinal()] = 28;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_RADIO_GROUP.ordinal()] = 29;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_SPINNER.ordinal()] = 30;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_ENABLED.ordinal()] = 31;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_LINE.ordinal()] = 32;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_VISIBLE.ordinal()] = 33;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_FULLSCREEN.ordinal()] = 34;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_TEXT.ordinal()] = 35;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_FONT.ordinal()] = 36;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_EDIT_INPUT_TYPE.ordinal()] = 37;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.GET_TEXT.ordinal()] = 38;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_TEXTCOLOR.ordinal()] = 39;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_BACKCOLOR.ordinal()] = 40;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.GET_VALUE.ordinal()] = 41;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.GET_ENABLED.ordinal()] = 42;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.GET_VISIBLE.ordinal()] = 43;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.GET_TEXTCOLOR.ordinal()] = 44;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.GET_BACKCOLOR.ordinal()] = 45;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_CONTROL_GRAVITY.ordinal()] = 46;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_WINDOW_GRAVITY.ordinal()] = 47;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.SET_PADDING.ordinal()] = 48;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                OooO00o[UiMessage.CommandToUi.Command_Type.NEW_FLOAT.ordinal()] = 49;
            } catch (NoSuchFieldError unused55) {
            }
        }
    }

    public class OooO0o implements TextWatcher {
        private String OoooOoO;

        public OooO0o(String str) {
            this.OoooOoO = str;
        }

        private String OooO00o() {
            return this.OoooOoO;
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            eb.OooO0OO(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(this.OoooOoO).setType(UiMessage.ControlEvent.Event_Type.ON_CHANGE).build()).setIsSuccess(true).build().toByteString());
            ze.this.OoooOoO[ze.this.OoooOoo].OooOOO();
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public ze(Context context) {
        this.Ooooo00 = context;
        this.Ooooo0o = xe.OooOO0o(context);
    }

    private void OooO0Oo(String str, int i, int i2) {
        int i3 = this.OoooOoo + 1;
        this.OoooOoo = i3;
        this.OoooOoO[i3] = this.Ooooo0o.OooOOOO(str, i, i2);
        this.OooooO0.put(str, Integer.valueOf(this.OoooOoo));
        this.OooooOO[this.OoooOoo] = new HashMap();
        this.OoooOoO[this.OoooOoo].OooO0oO = new OooO00o(str);
        this.OoooOoO[this.OoooOoo].OooO0o = new OooO0O0(str);
    }

    public static void OooO0o0(boolean z) {
        eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(z).build().toByteString());
    }

    private boolean OooO0oO(String str, String str2) {
        if (this.OooooO0.get(str) == null) {
            OooO0O0(R.string.ui_show_not_found_ui, str);
            return false;
        }
        this.OoooOoO[this.OooooO0.get(str).intValue()].OooO0oo(str2);
        return true;
    }

    public static void OooOOOO(String str) {
        eb.OooO0OO(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(str).setType(UiMessage.ControlEvent.Event_Type.ON_CLOSE_CONTINUE).build()).build().toByteString());
    }

    private void OooOOOo() {
        OooOOO0();
        this.OoooOoo = 0;
        this.OooooOo = 1;
        for (int i = 0; i < 32; i++) {
            this.OoooOoO[i] = null;
            HashMap[] mapArr = this.OooooOO;
            if (mapArr[i] != null) {
                mapArr[i].clear();
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void OooOOo0(UiMessage.CommandToUi commandToUi) {
        af afVar;
        View view;
        CharSequence text;
        String string;
        TextPaint paint;
        String controlId = commandToUi.getControlId();
        UiMessage.CommandToUi.Command_Type command = commandToUi.getCommand();
        new StringBuilder("command: ").append(commandToUi);
        int i = 3;
        boolean zOooOOo = true;
        try {
        } catch (IOException e) {
            e.printStackTrace();
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        switch (OooO0OO.OooO00o[command.ordinal()]) {
            case 1:
                OooO0OO(commandToUi.getPath());
                OooO0o0(zOooOOo);
                break;
            case 2:
                OooOO0o(commandToUi.getPath());
                OooO0o0(zOooOOo);
                break;
            case 3:
                int width = commandToUi.getWidth();
                int height = commandToUi.getHeight();
                int i2 = this.OoooOoo + 1;
                this.OoooOoo = i2;
                this.OoooOoO[i2] = this.Ooooo0o.OooOOOO(controlId, width, height);
                this.OooooO0.put(controlId, Integer.valueOf(this.OoooOoo));
                this.OooooOO[this.OoooOoo] = new HashMap();
                this.OoooOoO[this.OoooOoo].OooO0oO = new OooO00o(controlId);
                this.OoooOoO[this.OoooOoo].OooO0o = new OooO0O0(controlId);
                OooO0o0(zOooOOo);
                break;
            case 4:
                if (this.OooooO0.get(controlId) == null) {
                    OooO0O0(R.string.ui_show_not_found_ui, controlId);
                    OooO0o0(false);
                } else if (!this.OoooOoO[this.OooooO0.get(controlId).intValue()].OooOOo0) {
                    this.OoooOoO[this.OooooO0.get(controlId).intValue()].OooOOoo();
                    OooO0o0(true);
                    eb.OooO0OO(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(controlId).setType(UiMessage.ControlEvent.Event_Type.ON_SHOW).build()).build().toByteString());
                } else {
                    OooO0o0(false);
                }
                break;
            case 5:
                OooOOOO(controlId);
                OooO0o0(zOooOOo);
                break;
            case 6:
                zOooOOo = OooOOo(controlId);
                OooO0o0(zOooOOo);
                break;
            case 7:
                OooOOO0();
                OooO0o0(zOooOOo);
                break;
            case 8:
                af[] afVarArr = this.OoooOoO;
                int i3 = this.OoooOoo;
                if (afVarArr[i3] != null) {
                    af afVar2 = afVarArr[i3];
                    OooO00o();
                    afVar2.OooOO0(controlId, commandToUi.getParentId(), commandToUi.getWidth(), commandToUi.getHeight());
                }
                OooO0o0(zOooOOo);
                break;
            case 9:
                String text2 = commandToUi.getText();
                if (this.OooooO0.get(controlId) == null) {
                    OooO0O0(R.string.ui_show_not_found_ui, controlId);
                    zOooOOo = false;
                } else {
                    this.OoooOoO[this.OooooO0.get(controlId).intValue()].OooO0oo(text2);
                }
                OooO0o0(zOooOOo);
                break;
            case 10:
                if (this.OooooO0.get(controlId) != null) {
                    eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(this.OoooOoO[this.OooooO0.get(controlId).intValue()].OooO0O0()).build()).build().toByteString());
                } else {
                    OooO0O0(R.string.ui_show_not_found_ui, controlId);
                    OooO0o0(false);
                }
                break;
            case 11:
                String controlId2 = commandToUi.getControlId();
                String color = commandToUi.getColor();
                if (this.OooooO0.get(controlId2) == null) {
                    OooO0O0(R.string.ui_show_not_found_ui, controlId2);
                    OooO0o0(false);
                } else if (!color.matches(Oooooo0)) {
                    OooO0O0(R.string.ui_show_invalid_color_value, new Object[0]);
                    OooO0o0(false);
                } else {
                    if (!color.startsWith("#")) {
                        color = "#".concat(String.valueOf(color));
                    }
                    this.OoooOoO[this.OooooO0.get(controlId2).intValue()].OooOOOO(Cif.OooO00o(Color.parseColor(color)));
                    OooO0o0(true);
                }
                break;
            case 12:
                if (this.OoooOoO[this.OoooOoo] != null) {
                    xe xeVar = this.Ooooo0o;
                    OooO00o();
                    LinearLayout linearLayoutOooOo00 = xeVar.OooOo00(controlId, commandToUi.getWidth(), commandToUi.getHeight());
                    this.OooooOO[this.OoooOoo].put(controlId, com.cyjh.mobileanjian.ipc.ui.m.LINE);
                    view = linearLayoutOooOo00;
                    afVar = this.OoooOoO[this.OoooOoo];
                    afVar.OooO0oO(view, commandToUi.getParentId());
                }
                OooO0o0(zOooOOo);
                break;
            case 13:
                if (this.OoooOoO[this.OoooOoo] != null) {
                    xe xeVar2 = this.Ooooo0o;
                    OooO00o();
                    TextView textViewOooOO0O = xeVar2.OooOO0O(controlId, commandToUi.getText(), commandToUi.getWidth(), commandToUi.getHeight());
                    this.OooooOO[this.OoooOoo].put(controlId, com.cyjh.mobileanjian.ipc.ui.m.TEXT_VIEW);
                    view = textViewOooOO0O;
                    afVar = this.OoooOoO[this.OoooOoo];
                    afVar.OooO0oO(view, commandToUi.getParentId());
                }
                OooO0o0(zOooOOo);
                break;
            case 14:
                if (this.OoooOoO[this.OoooOoo] != null) {
                    xe xeVar3 = this.Ooooo0o;
                    OooO00o();
                    EditText editTextOooOo = xeVar3.OooOo(controlId, commandToUi.getText(), commandToUi.getWidth(), commandToUi.getHeight());
                    this.OooooOO[this.OoooOoo].put(controlId, com.cyjh.mobileanjian.ipc.ui.m.EDIT_TEXT);
                    this.OoooOoO[this.OoooOoo].OooO0oO(editTextOooOo, commandToUi.getParentId());
                    editTextOooOo.addTextChangedListener(new OooO0o(controlId));
                }
                OooO0o0(zOooOOo);
                break;
            case 15:
                if (this.OoooOoO[this.OoooOoo] != null) {
                    xe xeVar4 = this.Ooooo0o;
                    OooO00o();
                    Button buttonOooOOo = xeVar4.OooOOo(controlId, commandToUi.getText(), commandToUi.getWidth(), commandToUi.getHeight());
                    this.OooooOO[this.OoooOoo].put(controlId, com.cyjh.mobileanjian.ipc.ui.m.BUTTON);
                    buttonOooOOo.setOnClickListener(this);
                    view = buttonOooOOo;
                    afVar = this.OoooOoO[this.OoooOoo];
                    afVar.OooO0oO(view, commandToUi.getParentId());
                }
                OooO0o0(zOooOOo);
                break;
            case 16:
                if (this.OoooOoO[this.OoooOoo] != null) {
                    xe xeVar5 = this.Ooooo0o;
                    OooO00o();
                    RadioGroup radioGroupOooO0oo = xeVar5.OooO0oo(controlId, commandToUi.getItemTextList(), commandToUi.getDefaultItemIndex(), commandToUi.getWidth(), commandToUi.getHeight());
                    this.OooooOO[this.OoooOoo].put(controlId, com.cyjh.mobileanjian.ipc.ui.m.RADIIO_GROUP);
                    view = radioGroupOooO0oo;
                    afVar = this.OoooOoO[this.OoooOoo];
                    afVar.OooO0oO(view, commandToUi.getParentId());
                }
                OooO0o0(zOooOOo);
                break;
            case 17:
                if (this.OoooOoO[this.OoooOoo] != null) {
                    xe xeVar6 = this.Ooooo0o;
                    OooO00o();
                    CheckBox checkBoxOooO0Oo = xeVar6.OooO0Oo(controlId, commandToUi.getText(), commandToUi.getWidth(), commandToUi.getHeight(), commandToUi.getDefaultCheckStatus());
                    this.OooooOO[this.OoooOoo].put(controlId, com.cyjh.mobileanjian.ipc.ui.m.CHECK_BOX);
                    view = checkBoxOooO0Oo;
                    afVar = this.OoooOoO[this.OoooOoo];
                    afVar.OooO0oO(view, commandToUi.getParentId());
                }
                OooO0o0(zOooOOo);
                break;
            case 18:
                if (this.OoooOoO[this.OoooOoo] != null) {
                    ImageView imageViewOooO0o0 = this.Ooooo0o.OooO0o0(OooO00o(), controlId, commandToUi.getWidth(), commandToUi.getHeight(), commandToUi.getPath());
                    this.OooooOO[this.OoooOoo].put(controlId, com.cyjh.mobileanjian.ipc.ui.m.IMAGE_VIEW);
                    imageViewOooO0o0.setOnClickListener(this);
                    view = imageViewOooO0o0;
                    afVar = this.OoooOoO[this.OoooOoo];
                    afVar.OooO0oO(view, commandToUi.getParentId());
                }
                OooO0o0(zOooOOo);
                break;
            case 19:
                if (this.OoooOoO[this.OoooOoo] != null) {
                    xe xeVar7 = this.Ooooo0o;
                    OooO00o();
                    WebView webViewOooO0OO = xeVar7.OooO0OO(controlId, commandToUi.getWidth(), commandToUi.getHeight(), commandToUi.getUrl());
                    this.OooooOO[this.OoooOoo].put(controlId, com.cyjh.mobileanjian.ipc.ui.m.WEB_VIEW);
                    view = webViewOooO0OO;
                    afVar = this.OoooOoO[this.OoooOoo];
                    afVar.OooO0oO(view, commandToUi.getParentId());
                }
                OooO0o0(zOooOOo);
                break;
            case 20:
                if (this.OoooOoO[this.OoooOoo] != null) {
                    xe xeVar8 = this.Ooooo0o;
                    OooO00o();
                    List<String> itemTextList = commandToUi.getItemTextList();
                    int defaultItemIndex = commandToUi.getDefaultItemIndex();
                    commandToUi.getWidth();
                    commandToUi.getHeight();
                    Spinner spinnerOooO = xeVar8.OooO(controlId, itemTextList, defaultItemIndex);
                    this.OooooOO[this.OoooOoo].put(controlId, com.cyjh.mobileanjian.ipc.ui.m.SPINNER);
                    this.OoooOoO[this.OoooOoo].OooO0oO(spinnerOooO, commandToUi.getParentId());
                    spinnerOooO.setOnItemSelectedListener(this);
                }
                OooO0o0(zOooOOo);
                break;
            case 21:
                af[] afVarArr2 = this.OoooOoO;
                int i4 = this.OoooOoo;
                if (afVarArr2[i4] != null) {
                    afVarArr2[i4].OooO(commandToUi.getControlId(), commandToUi.getHeight());
                }
                OooO0o0(zOooOOo);
                break;
            case 22:
                af[] afVarArr3 = this.OoooOoO;
                int i5 = this.OoooOoo;
                if (afVarArr3[i5] != null) {
                    zOooOOo = afVarArr3[i5].OooOO0O(OooO00o(), commandToUi.getControlId(), commandToUi.getParentId(), commandToUi.getText());
                }
                OooO0o0(zOooOOo);
                break;
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
                zOooOOo = OooO0o(commandToUi);
                OooO0o0(zOooOOo);
                break;
            case 34:
                if (this.OooooO0.get(controlId) != null) {
                    OooO0o0(true);
                } else if (this.OooooOO[this.OoooOoo].get(controlId) == null) {
                    OooO0o0(false);
                } else {
                    View viewOooOOO0 = this.OoooOoO[this.OoooOoo].OooOOO0(controlId);
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewOooOOO0.getLayoutParams();
                    layoutParams.width = -1;
                    viewOooOOO0.setLayoutParams(layoutParams);
                }
                OooO0o0(zOooOOo);
                break;
            case 35:
                OooOOO(commandToUi);
                break;
            case 36:
                OooOO0O(commandToUi);
                break;
            case 37:
                if (this.OoooOoO[this.OoooOoo] != null) {
                    String controlId3 = commandToUi.getControlId();
                    commandToUi.getText();
                    View viewOooOOO02 = this.OoooOoO[this.OoooOoo].OooOOO0(controlId3);
                    if (viewOooOOO02 == null) {
                        OooO0o0(false);
                    } else if (this.OooooOO[this.OoooOoo].get(controlId3) == com.cyjh.mobileanjian.ipc.ui.m.EDIT_TEXT) {
                        ((EditText) viewOooOOO02).setInputType(commandToUi.getEditInputType());
                        OooO0o0(true);
                    } else {
                        OooO0o0(false);
                    }
                } else {
                    OooO0o0(false);
                }
                break;
            case 38:
                if (this.OoooOoO[this.OoooOoo] == null) {
                    OooO0o0(false);
                    break;
                } else {
                    String controlId4 = commandToUi.getControlId();
                    if (this.OooooOO[this.OoooOoo].get(controlId4) == null) {
                        OooO0o0(false);
                        break;
                    } else {
                        switch (OooO0OO.OooO0O0[((com.cyjh.mobileanjian.ipc.ui.m) this.OooooOO[this.OoooOoo].get(controlId4)).ordinal()]) {
                            case 1:
                            case 2:
                            case 3:
                                text = ((TextView) this.OoooOoO[this.OoooOoo].OooOOO0(controlId4)).getText();
                                string = text.toString();
                                eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(string).build()).build().toByteString());
                                break;
                            case 4:
                                text = ((CheckBox) this.OoooOoO[this.OoooOoo].OooOOO0(controlId4)).getText();
                                string = text.toString();
                                eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(string).build()).build().toByteString());
                                break;
                            case 5:
                                RadioButton radioButton = (RadioButton) ((RadioGroup) this.OoooOoO[this.OoooOoo].OooOOO0(controlId4)).findViewById(commandToUi.getItemIndex());
                                if (radioButton != null) {
                                    text = radioButton.getText();
                                    string = text.toString();
                                    eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(string).build()).build().toByteString());
                                } else {
                                    OooO0o0(false);
                                }
                                break;
                            case 6:
                                Spinner spinner = (Spinner) this.OoooOoO[this.OoooOoo].OooOOO0(controlId4);
                                if (commandToUi.getItemIndex() < spinner.getCount()) {
                                    new StringBuilder("Spinner Get pos: ").append(spinner.getItemAtPosition(commandToUi.getItemIndex()));
                                    string = (String) spinner.getItemAtPosition(commandToUi.getItemIndex());
                                    eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(string).build()).build().toByteString());
                                } else {
                                    OooO0o0(false);
                                }
                                break;
                            default:
                                OooO0o0(false);
                                break;
                        }
                    }
                }
                break;
            case 39:
                if (this.OoooOoO[this.OoooOoo] != null) {
                    String controlId5 = commandToUi.getControlId();
                    String color2 = commandToUi.getColor();
                    if (!color2.matches(Oooooo0)) {
                        OooO0O0(R.string.ui_show_invalid_color_value, new Object[0]);
                        OooO0o0(false);
                    } else {
                        if (!color2.startsWith("#")) {
                            color2 = "#".concat(String.valueOf(color2));
                        }
                        int iOooO00o = Cif.OooO00o(Color.parseColor(color2));
                        if (this.OooooO0.get(controlId5) == null) {
                            View viewOooOOO03 = this.OoooOoO[this.OoooOoo].OooOOO0(controlId5);
                            if (viewOooOOO03 == null) {
                                OooO0o0(false);
                                break;
                            } else {
                                switch (OooO0OO.OooO0O0[((com.cyjh.mobileanjian.ipc.ui.m) this.OooooOO[this.OoooOoo].get(controlId5)).ordinal()]) {
                                    case 1:
                                    case 2:
                                    case 3:
                                        ((TextView) viewOooOOO03).setTextColor(iOooO00o);
                                        break;
                                    case 4:
                                        ((CheckBox) viewOooOOO03).setTextColor(iOooO00o);
                                        break;
                                    case 5:
                                        RadioButton radioButton2 = (RadioButton) ((RadioGroup) viewOooOOO03).findViewById(commandToUi.getItemIndex());
                                        if (radioButton2 != null) {
                                            radioButton2.setTextColor(iOooO00o);
                                        } else {
                                            OooO0o0(false);
                                        }
                                        break;
                                    case 6:
                                        if (commandToUi.getItemIndex() >= ((Spinner) viewOooOOO03).getCount()) {
                                            OooO0o0(false);
                                        }
                                        break;
                                    default:
                                        OooO0o0(false);
                                        break;
                                }
                            }
                        } else {
                            this.OoooOoO[this.OooooO0.get(controlId5).intValue()].OooO0OO(iOooO00o);
                        }
                        OooO0o0(true);
                    }
                } else {
                    OooO0o0(false);
                }
                break;
            case 40:
                if (this.OoooOoO[this.OoooOoo] != null) {
                    String controlId6 = commandToUi.getControlId();
                    View viewOooOOO04 = this.OoooOoO[this.OoooOoo].OooOOO0(controlId6);
                    if (viewOooOOO04 != null) {
                        String color3 = commandToUi.getColor();
                        if (!color3.matches(Oooooo0)) {
                            OooO0O0(R.string.ui_show_invalid_color_value, new Object[0]);
                            OooO0o0(false);
                        } else {
                            if (!color3.startsWith("#")) {
                                color3 = "#".concat(String.valueOf(color3));
                            }
                            int iOooO00o2 = Cif.OooO00o(Color.parseColor(color3));
                            if (this.OooooOO[this.OoooOoo].get(controlId6) != com.cyjh.mobileanjian.ipc.ui.m.BUTTON) {
                                if (this.OooooOO[this.OoooOoo].get(controlId6) != com.cyjh.mobileanjian.ipc.ui.m.SPINNER) {
                                    viewOooOOO04.setBackgroundColor(iOooO00o2);
                                }
                                OooO0o0(true);
                            } else {
                                GradientDrawable gradientDrawable = new GradientDrawable();
                                gradientDrawable.setColor(iOooO00o2);
                                gradientDrawable.setCornerRadius(OooO());
                                if (Build.VERSION.SDK_INT >= 16) {
                                    viewOooOOO04.setBackground(gradientDrawable);
                                } else {
                                    viewOooOOO04.setBackgroundDrawable(gradientDrawable);
                                }
                                OooO0o0(true);
                            }
                        }
                    } else {
                        OooO0o0(false);
                    }
                } else {
                    OooO0o0(false);
                }
                break;
            case 41:
                OooOo00(controlId);
                break;
            case 42:
                af[] afVarArr4 = this.OoooOoO;
                int i6 = this.OoooOoo;
                if (afVarArr4[i6] != null) {
                    View viewOooOOO05 = afVarArr4[i6].OooOOO0(controlId);
                    if (viewOooOOO05 != null) {
                        boolean zIsEnabled = viewOooOOO05.isEnabled();
                        if (this.OooooOO[this.OoooOoo].get(controlId) == com.cyjh.mobileanjian.ipc.ui.m.EDIT_TEXT) {
                            zIsEnabled = ((EditText) viewOooOOO05).isFocusable();
                        }
                        eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.BOOL).setBoolValue(zIsEnabled).build()).build().toByteString());
                    } else {
                        OooO0o0(false);
                    }
                } else {
                    OooO0o0(false);
                }
                break;
            case 43:
                af[] afVarArr5 = this.OoooOoO;
                int i7 = this.OoooOoo;
                if (afVarArr5[i7] != null) {
                    View viewOooOOO06 = afVarArr5[i7].OooOOO0(controlId);
                    if (viewOooOOO06 != null) {
                        int visibility = viewOooOOO06.getVisibility();
                        if (visibility == 0) {
                            i = 1;
                        } else if (visibility == 4) {
                            i = 2;
                        } else if (visibility != 8) {
                        }
                        eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.INT).setIntValue(i).build()).build().toByteString());
                    } else {
                        OooO0o0(false);
                    }
                } else {
                    OooO0o0(false);
                }
                break;
            case 44:
                if (this.OoooOoO[this.OoooOoo] != null) {
                    String controlId7 = commandToUi.getControlId();
                    if (this.OooooOO[this.OoooOoo].get(controlId7) != null) {
                        int i8 = OooO0OO.OooO0O0[((com.cyjh.mobileanjian.ipc.ui.m) this.OooooOO[this.OoooOoo].get(controlId7)).ordinal()];
                        if (i8 == 1 || i8 == 2 || i8 == 3) {
                            paint = ((TextView) this.OoooOoO[this.OoooOoo].OooOOO0(controlId7)).getPaint();
                        } else if (i8 == 4) {
                            paint = ((CheckBox) this.OoooOoO[this.OoooOoo].OooOOO0(controlId7)).getPaint();
                        } else if (i8 != 5) {
                            OooO0o0(false);
                        } else {
                            RadioButton radioButton3 = (RadioButton) ((RadioGroup) this.OoooOoO[this.OoooOoo].OooOOO0(controlId7)).findViewById(commandToUi.getItemIndex());
                            if (radioButton3 == null) {
                                OooO0o0(false);
                            } else {
                                paint = radioButton3.getPaint();
                            }
                        }
                        int color4 = paint.getColor();
                        eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId7).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(String.format("%02X%02X%02X", Integer.valueOf(Color.blue(color4)), Integer.valueOf(Color.green(color4)), Integer.valueOf(Color.red(color4)))).build()).build().toByteString());
                    } else {
                        OooO0o0(false);
                    }
                } else {
                    OooO0o0(false);
                }
                break;
            case 45:
            case 47:
            default:
                OooO0o0(zOooOOo);
                break;
            case 46:
                if (this.OoooOoO[this.OoooOoo] != null) {
                    View viewOooOOO07 = this.OoooOoO[this.OoooOoo].OooOOO0(commandToUi.getControlId());
                    if (viewOooOOO07 != null) {
                        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) viewOooOOO07.getLayoutParams();
                        layoutParams2.gravity = commandToUi.getAlignType();
                        viewOooOOO07.setLayoutParams(layoutParams2);
                        new StringBuilder("set gravity ok; ").append(layoutParams2);
                        OooO0o0(true);
                    } else {
                        OooO0o0(false);
                    }
                } else {
                    OooO0o0(false);
                }
                break;
            case 48:
                if (this.OoooOoO[this.OoooOoo] != null) {
                    View viewOooOOO08 = this.OoooOoO[this.OoooOoo].OooOOO0(commandToUi.getControlId());
                    if (viewOooOOO08 != null) {
                        UiMessage.Padding_Var padding = commandToUi.getPadding();
                        new StringBuilder("padding: ").append(padding.getLeft());
                        new StringBuilder("padding: ").append(padding.getTop());
                        new StringBuilder("padding: ").append(padding.getRight());
                        new StringBuilder("padding: ").append(padding.getBottom());
                        viewOooOOO08.setPadding(padding.getLeft(), padding.getTop(), padding.getRight(), padding.getBottom());
                        OooO0o0(true);
                    } else {
                        OooO0o0(false);
                    }
                } else {
                    OooO0o0(false);
                }
                break;
        }
    }

    private void OooOOoo(UiMessage.CommandToUi commandToUi) {
        if (this.OoooOoO[this.OoooOoo] == null) {
            OooO0o0(false);
            return;
        }
        String controlId = commandToUi.getControlId();
        commandToUi.getText();
        View viewOooOOO0 = this.OoooOoO[this.OoooOoo].OooOOO0(controlId);
        if (viewOooOOO0 == null) {
            OooO0o0(false);
        } else if (this.OooooOO[this.OoooOoo].get(controlId) != com.cyjh.mobileanjian.ipc.ui.m.EDIT_TEXT) {
            OooO0o0(false);
        } else {
            ((EditText) viewOooOOO0).setInputType(commandToUi.getEditInputType());
            OooO0o0(true);
        }
    }

    private void OooOo(String str) {
        af[] afVarArr = this.OoooOoO;
        int i = this.OoooOoo;
        if (afVarArr[i] == null) {
            OooO0o0(false);
            return;
        }
        View viewOooOOO0 = afVarArr[i].OooOOO0(str);
        if (viewOooOOO0 == null) {
            OooO0o0(false);
            return;
        }
        boolean zIsEnabled = viewOooOOO0.isEnabled();
        if (this.OooooOO[this.OoooOoo].get(str) == com.cyjh.mobileanjian.ipc.ui.m.EDIT_TEXT) {
            zIsEnabled = ((EditText) viewOooOOO0).isFocusable();
        }
        eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(str).setType(UiMessage.ControlVar.Data_Type.BOOL).setBoolValue(zIsEnabled).build()).build().toByteString());
    }

    private void OooOo0(UiMessage.CommandToUi commandToUi) {
        if (this.OoooOoO[this.OoooOoo] == null) {
            OooO0o0(false);
            return;
        }
        String controlId = commandToUi.getControlId();
        String color = commandToUi.getColor();
        if (!color.matches(Oooooo0)) {
            OooO0O0(R.string.ui_show_invalid_color_value, new Object[0]);
            OooO0o0(false);
            return;
        }
        if (!color.startsWith("#")) {
            color = "#".concat(String.valueOf(color));
        }
        int iOooO00o = Cif.OooO00o(Color.parseColor(color));
        if (this.OooooO0.get(controlId) != null) {
            this.OoooOoO[this.OooooO0.get(controlId).intValue()].OooO0OO(iOooO00o);
            OooO0o0(true);
            return;
        }
        View viewOooOOO0 = this.OoooOoO[this.OoooOoo].OooOOO0(controlId);
        if (viewOooOOO0 == null) {
            OooO0o0(false);
            return;
        }
        switch (OooO0OO.OooO0O0[((com.cyjh.mobileanjian.ipc.ui.m) this.OooooOO[this.OoooOoo].get(controlId)).ordinal()]) {
            case 1:
            case 2:
            case 3:
                ((TextView) viewOooOOO0).setTextColor(iOooO00o);
                break;
            case 4:
                ((CheckBox) viewOooOOO0).setTextColor(iOooO00o);
                break;
            case 5:
                RadioButton radioButton = (RadioButton) ((RadioGroup) viewOooOOO0).findViewById(commandToUi.getItemIndex());
                if (radioButton == null) {
                    OooO0o0(false);
                    return;
                }
                radioButton.setTextColor(iOooO00o);
                break;
            case 6:
                if (commandToUi.getItemIndex() >= ((Spinner) viewOooOOO0).getCount()) {
                    OooO0o0(false);
                    return;
                }
                break;
            default:
                OooO0o0(false);
                return;
        }
        OooO0o0(true);
    }

    private void OooOo0O(String str) {
        if (this.OooooO0.get(str) != null) {
            OooO0o0(true);
            return;
        }
        if (this.OooooOO[this.OoooOoo].get(str) == null) {
            OooO0o0(false);
            return;
        }
        View viewOooOOO0 = this.OoooOoO[this.OoooOoo].OooOOO0(str);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewOooOOO0.getLayoutParams();
        layoutParams.width = -1;
        viewOooOOO0.setLayoutParams(layoutParams);
    }

    private void OooOo0o(UiMessage.CommandToUi commandToUi) {
        if (this.OoooOoO[this.OoooOoo] == null) {
            OooO0o0(false);
            return;
        }
        String controlId = commandToUi.getControlId();
        View viewOooOOO0 = this.OoooOoO[this.OoooOoo].OooOOO0(controlId);
        if (viewOooOOO0 == null) {
            OooO0o0(false);
            return;
        }
        String color = commandToUi.getColor();
        if (!color.matches(Oooooo0)) {
            OooO0O0(R.string.ui_show_invalid_color_value, new Object[0]);
            OooO0o0(false);
            return;
        }
        if (!color.startsWith("#")) {
            color = "#".concat(String.valueOf(color));
        }
        int iOooO00o = Cif.OooO00o(Color.parseColor(color));
        if (this.OooooOO[this.OoooOoo].get(controlId) != com.cyjh.mobileanjian.ipc.ui.m.BUTTON) {
            if (this.OooooOO[this.OoooOoo].get(controlId) != com.cyjh.mobileanjian.ipc.ui.m.SPINNER) {
                viewOooOOO0.setBackgroundColor(iOooO00o);
            }
            OooO0o0(true);
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(iOooO00o);
        gradientDrawable.setCornerRadius(OooO());
        if (Build.VERSION.SDK_INT >= 16) {
            viewOooOOO0.setBackground(gradientDrawable);
        } else {
            viewOooOOO0.setBackgroundDrawable(gradientDrawable);
        }
        OooO0o0(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void OooOoO(String str) {
        int i;
        af[] afVarArr = this.OoooOoO;
        int i2 = this.OoooOoo;
        if (afVarArr[i2] == null) {
            OooO0o0(false);
            return;
        }
        View viewOooOOO0 = afVarArr[i2].OooOOO0(str);
        if (viewOooOOO0 == null) {
            OooO0o0(false);
            return;
        }
        int visibility = viewOooOOO0.getVisibility();
        if (visibility == 0) {
            i = 1;
        } else if (visibility == 4) {
            i = 2;
        } else if (visibility == 8) {
            i = 3;
        }
        eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(str).setType(UiMessage.ControlVar.Data_Type.INT).setIntValue(i).build()).build().toByteString());
    }

    private void OooOoO0(UiMessage.CommandToUi commandToUi) {
        if (this.OoooOoO[this.OoooOoo] == null) {
            OooO0o0(false);
            return;
        }
        View viewOooOOO0 = this.OoooOoO[this.OoooOoo].OooOOO0(commandToUi.getControlId());
        if (viewOooOOO0 == null) {
            OooO0o0(false);
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewOooOOO0.getLayoutParams();
        layoutParams.gravity = commandToUi.getAlignType();
        viewOooOOO0.setLayoutParams(layoutParams);
        new StringBuilder("set gravity ok; ").append(layoutParams);
        OooO0o0(true);
    }

    private void OooOoOO(UiMessage.CommandToUi commandToUi) {
        if (this.OoooOoO[this.OoooOoo] == null) {
            OooO0o0(false);
            return;
        }
        View viewOooOOO0 = this.OoooOoO[this.OoooOoo].OooOOO0(commandToUi.getControlId());
        if (viewOooOOO0 == null) {
            OooO0o0(false);
            return;
        }
        UiMessage.Padding_Var padding = commandToUi.getPadding();
        new StringBuilder("padding: ").append(padding.getLeft());
        new StringBuilder("padding: ").append(padding.getTop());
        new StringBuilder("padding: ").append(padding.getRight());
        new StringBuilder("padding: ").append(padding.getBottom());
        viewOooOOO0.setPadding(padding.getLeft(), padding.getTop(), padding.getRight(), padding.getBottom());
        OooO0o0(true);
    }

    private void OooOoo(UiMessage.CommandToUi commandToUi) {
        TextPaint paint;
        if (this.OoooOoO[this.OoooOoo] == null) {
            OooO0o0(false);
            return;
        }
        String controlId = commandToUi.getControlId();
        if (this.OooooOO[this.OoooOoo].get(controlId) == null) {
            OooO0o0(false);
            return;
        }
        int i = OooO0OO.OooO0O0[((com.cyjh.mobileanjian.ipc.ui.m) this.OooooOO[this.OoooOoo].get(controlId)).ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            paint = ((TextView) this.OoooOoO[this.OoooOoo].OooOOO0(controlId)).getPaint();
        } else if (i == 4) {
            paint = ((CheckBox) this.OoooOoO[this.OoooOoo].OooOOO0(controlId)).getPaint();
        } else {
            if (i != 5) {
                OooO0o0(false);
                return;
            }
            RadioButton radioButton = (RadioButton) ((RadioGroup) this.OoooOoO[this.OoooOoo].OooOOO0(controlId)).findViewById(commandToUi.getItemIndex());
            if (radioButton == null) {
                OooO0o0(false);
                return;
            }
            paint = radioButton.getPaint();
        }
        int color = paint.getColor();
        eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(String.format("%02X%02X%02X", Integer.valueOf(Color.blue(color)), Integer.valueOf(Color.green(color)), Integer.valueOf(Color.red(color)))).build()).build().toByteString());
    }

    private void OooOoo0(String str) {
        af[] afVarArr = this.OoooOoO;
        int i = this.OoooOoo;
        if (afVarArr[i] == null) {
            OooO0o0(false);
            return;
        }
        View viewOooOOO0 = afVarArr[i].OooOOO0(str);
        if (viewOooOOO0 == null) {
            OooO0o0(false);
            return;
        }
        eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(str).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue("#" + Integer.toHexString(Cif.OooO00o(viewOooOOO0.getSolidColor()) & ViewCompat.MEASURED_SIZE_MASK)).build()).build().toByteString());
    }

    private void OooOooO(String str) {
        if (this.OooooO0.get(str) == null) {
            OooO0O0(R.string.ui_show_not_found_ui, str);
            OooO0o0(false);
        } else {
            if (this.OoooOoO[this.OooooO0.get(str).intValue()].OooOOo0) {
                OooO0o0(false);
                return;
            }
            this.OoooOoO[this.OooooO0.get(str).intValue()].OooOOoo();
            OooO0o0(true);
            eb.OooO0OO(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(str).setType(UiMessage.ControlEvent.Event_Type.ON_SHOW).build()).build().toByteString());
        }
    }

    private void OooOooo(UiMessage.CommandToUi commandToUi) {
        CharSequence text;
        String string;
        if (this.OoooOoO[this.OoooOoo] == null) {
            OooO0o0(false);
        }
        String controlId = commandToUi.getControlId();
        if (this.OooooOO[this.OoooOoo].get(controlId) == null) {
            OooO0o0(false);
            return;
        }
        switch (OooO0OO.OooO0O0[((com.cyjh.mobileanjian.ipc.ui.m) this.OooooOO[this.OoooOoo].get(controlId)).ordinal()]) {
            case 1:
            case 2:
            case 3:
                text = ((TextView) this.OoooOoO[this.OoooOoo].OooOOO0(controlId)).getText();
                string = text.toString();
                eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(string).build()).build().toByteString());
                break;
            case 4:
                text = ((CheckBox) this.OoooOoO[this.OoooOoo].OooOOO0(controlId)).getText();
                string = text.toString();
                eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(string).build()).build().toByteString());
                break;
            case 5:
                RadioButton radioButton = (RadioButton) ((RadioGroup) this.OoooOoO[this.OoooOoo].OooOOO0(controlId)).findViewById(commandToUi.getItemIndex());
                if (radioButton != null) {
                    text = radioButton.getText();
                    string = text.toString();
                    eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(string).build()).build().toByteString());
                } else {
                    OooO0o0(false);
                }
                break;
            case 6:
                Spinner spinner = (Spinner) this.OoooOoO[this.OoooOoo].OooOOO0(controlId);
                if (commandToUi.getItemIndex() < spinner.getCount()) {
                    new StringBuilder("Spinner Get pos: ").append(spinner.getItemAtPosition(commandToUi.getItemIndex()));
                    string = (String) spinner.getItemAtPosition(commandToUi.getItemIndex());
                    eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(string).build()).build().toByteString());
                } else {
                    OooO0o0(false);
                }
                break;
            default:
                OooO0o0(false);
                break;
        }
    }

    private void Oooo000(String str) {
        if (this.OooooO0.get(str) != null) {
            eb.OooO00o(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(str).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(this.OoooOoO[this.OooooO0.get(str).intValue()].OooO0O0()).build()).build().toByteString());
        } else {
            OooO0O0(R.string.ui_show_not_found_ui, str);
            OooO0o0(false);
        }
    }

    private void Oooo00O(UiMessage.CommandToUi commandToUi) {
        String controlId = commandToUi.getControlId();
        String color = commandToUi.getColor();
        if (this.OooooO0.get(controlId) == null) {
            OooO0O0(R.string.ui_show_not_found_ui, controlId);
            OooO0o0(false);
        } else {
            if (!color.matches(Oooooo0)) {
                OooO0O0(R.string.ui_show_invalid_color_value, new Object[0]);
                OooO0o0(false);
                return;
            }
            if (!color.startsWith("#")) {
                color = "#".concat(String.valueOf(color));
            }
            this.OoooOoO[this.OooooO0.get(controlId).intValue()].OooOOOO(Cif.OooO00o(Color.parseColor(color)));
            OooO0o0(true);
        }
    }

    public final int OooO() {
        return (int) ((this.Ooooo00.getResources().getDisplayMetrics().densityDpi / 160.0f) * 5.0f);
    }

    public final int OooO00o() {
        int i = this.OooooOo + 1;
        this.OooooOo = i;
        return i;
    }

    public final void OooO0O0(int i, Object... objArr) {
        Context context = this.Ooooo00;
        ExToast.makeText(context, String.format(context.getString(i), objArr), ExToast.LENGTH_LONG).show();
    }

    public final void OooO0OO(String str) throws JSONException, IOException {
        if (this.OoooOoO[this.OoooOoo] == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : this.OooooOO[this.OoooOoo].entrySet()) {
            String str2 = (String) entry.getKey();
            int i = OooO0OO.OooO0O0[((com.cyjh.mobileanjian.ipc.ui.m) entry.getValue()).ordinal()];
            if (i == 2) {
                jSONObject.put(str2, ((EditText) this.OoooOoO[this.OoooOoo].OooOOO0(str2)).getText().toString());
            } else if (i == 4) {
                jSONObject.put(str2, ((CheckBox) this.OoooOoO[this.OoooOoo].OooOOO0(str2)).isChecked());
            } else if (i == 5) {
                jSONObject.put(str2, ((RadioGroup) this.OoooOoO[this.OoooOoo].OooOOO0(str2)).getCheckedRadioButtonId());
            } else if (i == 6) {
                jSONObject.put(str2, ((Spinner) this.OoooOoO[this.OoooOoo].OooOOO0(str2)).getSelectedItemId());
            }
        }
        FileUtils.writeStringToFile(new File(str), jSONObject.toString());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final boolean OooO0o(UiMessage.CommandToUi commandToUi) {
        int i;
        if (this.OoooOoO[this.OoooOoo] == null) {
            return false;
        }
        String controlId = commandToUi.getControlId();
        View viewOooOOO0 = this.OoooOoO[this.OoooOoo].OooOOO0(controlId);
        if (viewOooOOO0 == null) {
            OooO0O0(R.string.ui_show_not_found_widget, controlId);
            return false;
        }
        switch (OooO0OO.OooO00o[commandToUi.getCommand().ordinal()]) {
            case 23:
                if (this.OooooOO[this.OoooOoo].get(controlId) != com.cyjh.mobileanjian.ipc.ui.m.TEXT_VIEW) {
                    return false;
                }
                TextView textView = (TextView) viewOooOOO0;
                textView.setText(commandToUi.getText());
                textView.setLayoutParams(new LinearLayout.LayoutParams(commandToUi.getWidth(), commandToUi.getHeight()));
                return true;
            case 24:
                if (this.OooooOO[this.OoooOoo].get(controlId) != com.cyjh.mobileanjian.ipc.ui.m.EDIT_TEXT) {
                    return false;
                }
                EditText editText = (EditText) viewOooOOO0;
                editText.setText(commandToUi.getText());
                editText.setLayoutParams(new LinearLayout.LayoutParams(commandToUi.getWidth(), commandToUi.getHeight()));
                return true;
            case 25:
                if (this.OooooOO[this.OoooOoo].get(controlId) != com.cyjh.mobileanjian.ipc.ui.m.BUTTON) {
                    return false;
                }
                Button button = (Button) viewOooOOO0;
                button.setText(commandToUi.getText());
                button.setLayoutParams(new LinearLayout.LayoutParams(commandToUi.getWidth(), commandToUi.getHeight()));
                return true;
            case 26:
                if (this.OooooOO[this.OoooOoo].get(controlId) != com.cyjh.mobileanjian.ipc.ui.m.CHECK_BOX) {
                    return false;
                }
                CheckBox checkBox = (CheckBox) viewOooOOO0;
                checkBox.setChecked(commandToUi.getDefaultCheckStatus());
                checkBox.setText(commandToUi.getText());
                checkBox.getLayoutParams().width = commandToUi.getWidth();
                checkBox.getLayoutParams().height = commandToUi.getHeight();
                return true;
            case 27:
                if (this.OooooOO[this.OoooOoo].get(controlId) != com.cyjh.mobileanjian.ipc.ui.m.IMAGE_VIEW) {
                    return false;
                }
                ImageView imageView = (ImageView) viewOooOOO0;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewOooOOO0.getLayoutParams();
                layoutParams.width = commandToUi.getWidth();
                layoutParams.height = commandToUi.getHeight();
                imageView.setLayoutParams(layoutParams);
                imageView.setImageURI(Uri.fromFile(new File(commandToUi.getPath())));
                return true;
            case 28:
                if (this.OooooOO[this.OoooOoo].get(controlId) != com.cyjh.mobileanjian.ipc.ui.m.WEB_VIEW) {
                    return false;
                }
                String url = commandToUi.getUrl();
                if (!url.startsWith("http://") && !url.startsWith("https://")) {
                    url = "http://".concat(String.valueOf(url));
                }
                WebView webView = (WebView) viewOooOOO0;
                webView.loadUrl(url);
                webView.setLayoutParams(new LinearLayout.LayoutParams(commandToUi.getWidth(), commandToUi.getHeight()));
                return true;
            case 29:
                if (this.OooooOO[this.OoooOoo].get(controlId) != com.cyjh.mobileanjian.ipc.ui.m.RADIIO_GROUP) {
                    return false;
                }
                RadioGroup radioGroup = (RadioGroup) viewOooOOO0;
                radioGroup.clearCheck();
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) viewOooOOO0.getLayoutParams();
                layoutParams2.weight = commandToUi.getWidth();
                layoutParams2.height = commandToUi.getHeight();
                radioGroup.setLayoutParams(layoutParams2);
                radioGroup.removeAllViews();
                List<String> itemTextList = commandToUi.getItemTextList();
                for (int i2 = 0; i2 < itemTextList.size(); i2++) {
                    RadioButton radioButton = (RadioButton) LayoutInflater.from(this.Ooooo00).inflate(R.layout.ui_show_radio_button, (ViewGroup) null);
                    radioButton.setId(i2);
                    radioButton.setText(itemTextList.get(i2));
                    radioButton.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
                    radioButton.setPadding(0, OooO(), 0, OooO());
                    radioGroup.addView(radioButton);
                }
                ((RadioButton) radioGroup.findViewById(commandToUi.getDefaultItemIndex() < radioGroup.getChildCount() ? commandToUi.getDefaultItemIndex() : 0)).setChecked(true);
                return true;
            case 30:
                if (this.OooooOO[this.OoooOoo].get(controlId) != com.cyjh.mobileanjian.ipc.ui.m.SPINNER) {
                    return false;
                }
                Spinner spinner = (Spinner) viewOooOOO0;
                ArrayAdapter arrayAdapter = new ArrayAdapter(this.Ooooo00, R.layout.ui_show_spinner_dropdown_item, commandToUi.getItemTextList());
                spinner.setAdapter((SpinnerAdapter) arrayAdapter);
                spinner.setSelection(commandToUi.getDefaultItemIndex() < arrayAdapter.getCount() ? commandToUi.getDefaultItemIndex() : 0);
                return true;
            case 31:
                if (this.OooooOO[this.OoooOoo].get(controlId) == com.cyjh.mobileanjian.ipc.ui.m.RADIIO_GROUP) {
                    viewOooOOO0.setEnabled(commandToUi.getEnabledStatus());
                    RadioGroup radioGroup2 = (RadioGroup) viewOooOOO0;
                    while (i < radioGroup2.getChildCount()) {
                        radioGroup2.getChildAt(i).setEnabled(commandToUi.getEnabledStatus());
                        i++;
                    }
                } else if (this.OooooOO[this.OoooOoo].get(controlId) == com.cyjh.mobileanjian.ipc.ui.m.EDIT_TEXT) {
                    new StringBuilder("set edittext enabled. ").append(commandToUi.getEnabledStatus());
                    EditText editText2 = (EditText) viewOooOOO0;
                    editText2.setFocusable(commandToUi.getEnabledStatus());
                    editText2.setFocusableInTouchMode(commandToUi.getEnabledStatus());
                } else {
                    viewOooOOO0.setEnabled(commandToUi.getEnabledStatus());
                }
                return true;
            case 32:
                if (this.OooooOO[this.OoooOoo].get(controlId) != com.cyjh.mobileanjian.ipc.ui.m.LINE) {
                    return false;
                }
                ((LinearLayout) viewOooOOO0).setLayoutParams(new LinearLayout.LayoutParams(commandToUi.getWidth(), commandToUi.getHeight()));
                return true;
            case 33:
                int visibleStatus = commandToUi.getVisibleStatus();
                if (visibleStatus == 2) {
                    i = 4;
                } else {
                    if (visibleStatus != 3) {
                        viewOooOOO0.setVisibility(0);
                        return true;
                    }
                    i = 8;
                }
                viewOooOOO0.setVisibility(i);
                return true;
            default:
                return true;
        }
    }

    public final void OooOO0O(UiMessage.CommandToUi commandToUi) {
        if (this.OoooOoO[this.OoooOoo] == null) {
            OooO0o0(false);
            return;
        }
        new StringBuilder("SET FONT type: ").append(commandToUi.getFontType());
        String controlId = commandToUi.getControlId();
        Typeface typefaceCreate = Typeface.create(commandToUi.getFontType(), 0);
        if (typefaceCreate == null) {
            OooO0o0(false);
            return;
        }
        int fontSize = commandToUi.getFontSize() < 0 ? 14 : commandToUi.getFontSize();
        if (this.OooooO0.get(controlId) != null && this.OoooOoO[this.OooooO0.get(controlId).intValue()] != null) {
            this.OoooOoO[this.OooooO0.get(controlId).intValue()].OooO0o0(typefaceCreate, fontSize);
            OooO0o0(true);
            return;
        }
        View viewOooOOO0 = this.OoooOoO[this.OoooOoo].OooOOO0(controlId);
        if (viewOooOOO0 == null) {
            OooO0o0(false);
            return;
        }
        if (this.OooooOO[this.OoooOoo].get(controlId) == null) {
            OooO0o0(false);
            return;
        }
        int i = OooO0OO.OooO0O0[((com.cyjh.mobileanjian.ipc.ui.m) this.OooooOO[this.OoooOoo].get(controlId)).ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            TextView textView = (TextView) viewOooOOO0;
            textView.setTypeface(typefaceCreate);
            textView.setTextSize(2, fontSize);
        } else if (i == 4) {
            CheckBox checkBox = (CheckBox) viewOooOOO0;
            checkBox.setTypeface(typefaceCreate);
            checkBox.setTextSize(2, fontSize);
        } else {
            if (i != 5) {
                OooO0o0(false);
                return;
            }
            RadioGroup radioGroup = (RadioGroup) viewOooOOO0;
            radioGroup.findViewById(commandToUi.getItemIndex());
            for (int i2 = 0; i2 < radioGroup.getChildCount(); i2++) {
                RadioButton radioButton = (RadioButton) radioGroup.getChildAt(i2);
                radioButton.setTypeface(typefaceCreate);
                radioButton.setTextSize(2, fontSize);
            }
        }
        OooO0o0(true);
    }

    public final void OooOO0o(String str) throws JSONException, IOException {
        if (this.OooooOO[this.OoooOoo] == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject(FileUtils.readFileToString(new File(str)));
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (this.OooooOO[this.OoooOoo].get(next) != null) {
                int i = OooO0OO.OooO0O0[((com.cyjh.mobileanjian.ipc.ui.m) this.OooooOO[this.OoooOoo].get(next)).ordinal()];
                if (i == 2) {
                    ((EditText) this.OoooOoO[this.OoooOoo].OooOOO0(next)).setText(jSONObject.getString(next));
                } else if (i == 4) {
                    ((CheckBox) this.OoooOoO[this.OoooOoo].OooOOO0(next)).setChecked(jSONObject.getBoolean(next));
                } else if (i == 5) {
                    RadioGroup radioGroup = (RadioGroup) this.OoooOoO[this.OoooOoo].OooOOO0(next);
                    if (jSONObject.getInt(next) < radioGroup.getChildCount()) {
                        ((RadioButton) radioGroup.findViewById(jSONObject.getInt(next))).setChecked(true);
                    }
                } else if (i == 6) {
                    Spinner spinner = (Spinner) this.OoooOoO[this.OoooOoo].OooOOO0(next);
                    if (jSONObject.getInt(next) < spinner.getCount()) {
                        spinner.setSelection(jSONObject.getInt(next));
                    }
                }
            }
        }
    }

    public final void OooOOO(UiMessage.CommandToUi commandToUi) {
        if (this.OoooOoO[this.OoooOoo] == null) {
            OooO0o0(false);
            return;
        }
        String controlId = commandToUi.getControlId();
        String text = commandToUi.getText();
        View viewOooOOO0 = this.OoooOoO[this.OoooOoo].OooOOO0(controlId);
        if (viewOooOOO0 == null) {
            OooO0o0(false);
            return;
        }
        if (this.OooooOO[this.OoooOoo].get(controlId) == null) {
            OooO0o0(false);
            return;
        }
        switch (OooO0OO.OooO0O0[((com.cyjh.mobileanjian.ipc.ui.m) this.OooooOO[this.OoooOoo].get(controlId)).ordinal()]) {
            case 1:
            case 2:
            case 3:
                ((TextView) viewOooOOO0).setText(text);
                break;
            case 4:
                ((CheckBox) viewOooOOO0).setText(text);
                break;
            case 5:
                RadioButton radioButton = (RadioButton) ((RadioGroup) viewOooOOO0).findViewById(commandToUi.getItemIndex());
                if (radioButton == null) {
                    OooO0o0(false);
                    return;
                }
                radioButton.setText(text);
                break;
            case 6:
                Spinner spinner = (Spinner) viewOooOOO0;
                if (commandToUi.getItemIndex() >= spinner.getCount()) {
                    OooO0o0(false);
                    return;
                }
                ArrayAdapter arrayAdapter = (ArrayAdapter) spinner.getAdapter();
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < arrayAdapter.getCount(); i++) {
                    arrayList.add((String) arrayAdapter.getItem(i));
                }
                arrayList.set(commandToUi.getItemIndex(), text);
                ArrayAdapter arrayAdapter2 = new ArrayAdapter(this.Ooooo00, R.layout.ui_show_spinner_dropdown_item, arrayList);
                spinner.setAdapter((SpinnerAdapter) arrayAdapter2);
                arrayAdapter2.notifyDataSetChanged();
                break;
                break;
            default:
                OooO0o0(false);
                return;
        }
        OooO0o0(true);
    }

    public final void OooOOO0() {
        for (int i = 31; i > 0; i--) {
            af afVar = this.OoooOoO[i];
            if (afVar != null && afVar.OooOOo0) {
                afVar.OooOo0();
            }
        }
    }

    public final boolean OooOOo(String str) {
        int i;
        if (this.OooooO0.get(str) == null) {
            OooO0O0(R.string.ui_show_not_found_ui, str);
            return false;
        }
        if (!this.OoooOoO[this.OooooO0.get(str).intValue()].OooOOo0) {
            return false;
        }
        this.OoooOoO[this.OooooO0.get(str).intValue()].OooOo0();
        int iIntValue = this.OooooO0.get(str).intValue();
        int i2 = this.OoooOoo;
        if (iIntValue == i2) {
            this.OoooOoo = i2 - 1;
            while (true) {
                i = this.OoooOoo;
                if (i <= 0 || this.OoooOoO[i] != null) {
                    break;
                }
                this.OoooOoo = i - 1;
            }
            if (i < 0) {
                this.OoooOoo = 0;
            }
        }
        return true;
    }

    public final void OooOo00(String str) {
        UiMessage.ControlVar.Builder type;
        int checkedRadioButtonId;
        UiMessage.UiToCommand uiToCommandBuild;
        UiMessage.UiToCommand.Builder isSuccess = UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true);
        UiMessage.ControlVar.Builder controlId = UiMessage.ControlVar.newBuilder().setControlId(str);
        com.cyjh.mobileanjian.ipc.ui.m mVar = null;
        int i = 0;
        while (true) {
            if (i >= 32) {
                i = 0;
                break;
            }
            HashMap[] mapArr = this.OooooOO;
            if (mapArr[i] != null && (mVar = (com.cyjh.mobileanjian.ipc.ui.m) mapArr[i].get(str)) != null) {
                break;
            } else {
                i++;
            }
        }
        StringBuilder sb = new StringBuilder("type=");
        sb.append(mVar);
        sb.append("; tempIndex=");
        sb.append(i);
        if (mVar == null) {
            OooO0O0(R.string.ui_show_not_found_widget, str);
            uiToCommandBuild = isSuccess.setIsSuccess(false).build();
        } else {
            switch (OooO0OO.OooO0O0[mVar.ordinal()]) {
                case 1:
                case 2:
                case 3:
                    controlId.setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(((TextView) this.OoooOoO[i].OooOOO0(str)).getText().toString());
                    isSuccess.addVarTable(controlId.build());
                    break;
                case 4:
                    controlId.setType(UiMessage.ControlVar.Data_Type.BOOL).setBoolValue(((CheckBox) this.OoooOoO[i].OooOOO0(str)).isChecked());
                    isSuccess.addVarTable(controlId.build());
                    break;
                case 5:
                    RadioGroup radioGroup = (RadioGroup) this.OoooOoO[i].OooOOO0(str);
                    type = controlId.setType(UiMessage.ControlVar.Data_Type.INT);
                    checkedRadioButtonId = radioGroup.getCheckedRadioButtonId();
                    type.setIntValue(checkedRadioButtonId);
                    isSuccess.addVarTable(controlId.build());
                    break;
                case 6:
                    Spinner spinner = (Spinner) this.OoooOoO[i].OooOOO0(str);
                    type = controlId.setType(UiMessage.ControlVar.Data_Type.INT);
                    checkedRadioButtonId = spinner.getSelectedItemPosition();
                    type.setIntValue(checkedRadioButtonId);
                    isSuccess.addVarTable(controlId.build());
                    break;
                default:
                    isSuccess.setIsSuccess(false);
                    break;
            }
            new StringBuilder("Ui.getValue result: ").append(isSuccess.build());
            uiToCommandBuild = isSuccess.build();
        }
        eb.OooO00o(uiToCommandBuild.toByteString());
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        eb.OooO0OO(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setEvent(UiMessage.ControlEvent.newBuilder().setControlId((String) view.getTag()).setType(UiMessage.ControlEvent.Event_Type.ON_CLICK).build()).setIsSuccess(true).build().toByteString());
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        eb.OooO0OO(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setEvent(UiMessage.ControlEvent.newBuilder().setControlId((String) adapterView.getTag()).setEventArgs(String.valueOf(i)).setType(UiMessage.ControlEvent.Event_Type.ON_CLICK).build()).setIsSuccess(true).build().toByteString());
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView<?> adapterView) {
    }
}
