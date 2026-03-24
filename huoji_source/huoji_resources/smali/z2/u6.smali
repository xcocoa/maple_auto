.class public Lz2/u6;
.super Lz2/w9;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final o00oO0O:I = 0x18

.field private static final o00oO0o:I = 0x13

.field public static final oo000o:Ljava/lang/String;


# instance fields
.field private Ooooo0o:Landroid/widget/Switch;

.field private OooooO0:Landroid/widget/Switch;

.field private OooooOO:Landroid/widget/Switch;

.field private OooooOo:Landroid/widget/Switch;

.field private Oooooo:Landroid/widget/Switch;

.field private Oooooo0:Landroid/widget/Switch;

.field private OoooooO:Landroid/widget/Switch;

.field private Ooooooo:Landroid/widget/Switch;

.field private o00O0O:Landroid/widget/Switch;

.field private o00Oo0:Landroid/widget/LinearLayout;

.field public o00Ooo:Landroid/content/Context;

.field private o00o0O:Z

.field private o00ooo:[Ljava/lang/String;

.field private o0OoOo0:Landroid/widget/Spinner;

.field private ooOO:Landroid/widget/Switch;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lz2/u6;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/u6;->oo000o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const v0, 0x7f110191

    invoke-direct {p0, p1, v0}, Lz2/w9;-><init>(Landroid/content/Context;I)V

    const-string v0, "5\u79d2"

    const-string v1, "10\u79d2"

    const-string v2, "15\u79d2"

    const-string v3, "30\u79d2"

    const-string v4, "60\u79d2"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lz2/u6;->o00ooo:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/base/AppContext;

    iput-object p1, p0, Lz2/w9;->OoooOoO:Lcom/cyjh/elfin/base/AppContext;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7f6

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private OooO()V
    .locals 4

    invoke-static {}, Lz2/i4;->OooO00o()Lz2/i4;

    move-result-object v0

    invoke-virtual {v0}, Lz2/i4;->OooO0O0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lz2/t4;->OooOO0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1001d4

    invoke-static {v0, v1}, Lz2/c5;->OooO0O0(Landroid/content/Context;I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/u6;->o00o0O:Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "script.info"

    invoke-static {v0, v1}, Lz2/z8;->OooO0Oo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lz2/a4;->OooOO0O(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    invoke-direct {v2}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;-><init>()V

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v3

    invoke-virtual {v3}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    iput-object v1, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptVersion:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVersionRequest --> 1 ScriptId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",DeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ScriptVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lz2/kc;->OooOo00()Lz2/kc;

    move-result-object v0

    new-instance v1, Lz2/u6$OooO0O0;

    invoke-direct {v1, p0}, Lz2/u6$OooO0O0;-><init>(Lz2/u6;)V

    invoke-virtual {v0, v1}, Lz2/kc;->OooOo0O(Lz2/kc$OooO00o;)Lz2/kc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lz2/kc;->OooOo(ZLandroid/content/Context;Lcom/cyjh/http/bean/request/UpdateRequestInfo;)V

    return-void
.end method

.method private OooO0o()V
    .locals 4

    iget-object v0, p0, Lz2/u6;->Ooooo0o:Landroid/widget/Switch;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "com.cyjh.elfin.ui.activity.SettingActivity.swtCallStop"

    invoke-virtual {v1, v3, v2}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lz2/u6;->OooooO0:Landroid/widget/Switch;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v1

    const-string v3, "com.cyjh.elfin.ui.activity.SettingActivity.swtVolumeKeyCtrl"

    invoke-virtual {v1, v3, v2}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lz2/u6;->OooooOO:Landroid/widget/Switch;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v1

    const-string v3, "com.cyjh.elfin.ui.activity.SettingActivity.swtWaggleStop"

    invoke-virtual {v1, v3, v2}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lz2/u6;->OooooOo:Landroid/widget/Switch;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v1

    const-string v3, "com.cyjh.elfin.ui.activity.SettingActivity.swtFloatviewCtrl"

    invoke-virtual {v1, v3, v2}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lz2/u6;->Oooooo0:Landroid/widget/Switch;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v1

    const-string v3, "com.cyjh.elfin.ui.activity.SettingActivity.swtVibration"

    invoke-virtual {v1, v3, v2}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lz2/u6;->OoooooO:Landroid/widget/Switch;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "sp_key_switch_setting_open_run_script"

    invoke-virtual {v1, v3, v2}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lz2/u6;->ooOO:Landroid/widget/Switch;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v1

    const-string v3, "sp_key_switch_setting_logcat_collect"

    invoke-virtual {v1, v3, v2}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lz2/u6;->o00O0O:Landroid/widget/Switch;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v1

    const-string v3, "sp_key_switch_setting_error_dialog"

    invoke-virtual {v1, v3, v2}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lz2/u6;->Oooooo:Landroid/widget/Switch;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v1

    const-string v3, "sp_key_switch_setting_flash_back_auto_restart"

    invoke-virtual {v1, v3, v2}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lz2/u6;->Ooooooo:Landroid/widget/Switch;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v1

    const-string v3, "sp_key_switch_setting_auto_run_script"

    invoke-virtual {v1, v3, v2}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public static synthetic OooO0o0(Lz2/u6;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz2/u6;->o00ooo:[Ljava/lang/String;

    return-object p0
.end method

.method private OooO0oO()V
    .locals 5

    const v0, 0x7f0903f2

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lz2/u6;->Ooooo0o:Landroid/widget/Switch;

    const v0, 0x7f0903f6

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lz2/u6;->OooooO0:Landroid/widget/Switch;

    const v0, 0x7f0903f7

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lz2/u6;->OooooOO:Landroid/widget/Switch;

    const v0, 0x7f0903f3

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lz2/u6;->OooooOo:Landroid/widget/Switch;

    const v0, 0x7f0903f5

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lz2/u6;->Oooooo0:Landroid/widget/Switch;

    const v0, 0x7f09041d

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lz2/u6;->Oooooo:Landroid/widget/Switch;

    const v0, 0x7f0903f4

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lz2/u6;->OoooooO:Landroid/widget/Switch;

    const v0, 0x7f09041a

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lz2/u6;->Ooooooo:Landroid/widget/Switch;

    const v0, 0x7f090409

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lz2/u6;->o0OoOo0:Landroid/widget/Spinner;

    const v0, 0x7f09041b

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lz2/u6;->ooOO:Landroid/widget/Switch;

    const v0, 0x7f09041c

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lz2/u6;->o00O0O:Landroid/widget/Switch;

    const v0, 0x7f09033c

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lz2/u6;->o00Oo0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0903ef

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0903f0

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0903ee

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0903f1

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lz2/u6;->Ooooo0o:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lz2/u6;->OooooO0:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lz2/u6;->OooooOO:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lz2/u6;->OooooOo:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lz2/u6;->Oooooo0:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lz2/u6;->OoooooO:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lz2/u6;->ooOO:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lz2/u6;->o00O0O:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lz2/u6;->Oooooo:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lz2/u6;->Ooooooo:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lz2/u6;->OooO0o()V

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lz2/u6;->o00ooo:[Ljava/lang/String;

    const v3, 0x7f0c010e

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v1, p0, Lz2/u6;->o0OoOo0:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lz2/u6;->o0OoOo0:Landroid/widget/Spinner;

    new-instance v1, Lz2/u6$OooO00o;

    invoke-direct {v1, p0}, Lz2/u6$OooO00o;-><init>(Lz2/u6;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    const-string v1, "sp_key_setting_auto_run_script_countdown"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lz2/x4;->OooO0OO(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lz2/u6;->o00ooo:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u79d2"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lz2/u6;->o0OoOo0:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public OooO0oo()Z
    .locals 1

    iget-boolean v0, p0, Lz2/u6;->o00o0O:Z

    return v0
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {}, Lz2/kc;->OooOo00()Lz2/kc;

    move-result-object v0

    invoke-virtual {v0}, Lz2/kc;->OooOo0()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const/4 v0, 0x1

    const v1, 0x7f100277

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_0
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "sp_key_switch_setting_flash_back_auto_restart"

    goto/16 :goto_1

    :pswitch_1
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "sp_key_switch_setting_error_dialog"

    goto/16 :goto_1

    :pswitch_2
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "sp_key_switch_setting_logcat_collect"

    invoke-virtual {p1, v1, v0}, Lz2/x4;->OooO0o(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz p2, :cond_2

    new-instance p1, Lz2/p6;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lz2/p6;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2

    :pswitch_3
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "sp_key_switch_setting_auto_run_script"

    goto/16 :goto_1

    :pswitch_4
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "com.cyjh.elfin.ui.activity.SettingActivity.swtWaggleStop"

    goto/16 :goto_1

    :pswitch_5
    if-nez p2, :cond_0

    iget-object p1, p0, Lz2/u6;->OooooOo:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lz2/w9;->OoooOoO:Lcom/cyjh/elfin/base/AppContext;

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/base/AppContext;->OooOO0(I)V

    iget-object p1, p0, Lz2/u6;->OooooO0:Landroid/widget/Switch;

    goto :goto_0

    :cond_0
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "com.cyjh.elfin.ui.activity.SettingActivity.swtVolumeKeyCtrl"

    goto :goto_1

    :pswitch_6
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "com.cyjh.elfin.ui.activity.SettingActivity.swtVibration"

    goto :goto_1

    :pswitch_7
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "sp_key_switch_setting_open_run_script"

    invoke-virtual {p1, v1, v0}, Lz2/x4;->OooO0o(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lz2/a4;->OooOoo(Landroid/content/Context;Z)V

    goto :goto_2

    :pswitch_8
    if-nez p2, :cond_1

    iget-object p1, p0, Lz2/u6;->OooooO0:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lz2/w9;->OoooOoO:Lcom/cyjh/elfin/base/AppContext;

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/base/AppContext;->OooOO0(I)V

    iget-object p1, p0, Lz2/u6;->OooooOo:Landroid/widget/Switch;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2

    :cond_1
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "com.cyjh.elfin.ui.activity.SettingActivity.swtFloatviewCtrl"

    invoke-virtual {p1, v0, p2}, Lz2/x4;->OooO0o(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object p1

    invoke-virtual {p1}, Lz2/z6;->OooO0OO()Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OoooOoo()V

    goto :goto_2

    :pswitch_9
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "com.cyjh.elfin.ui.activity.SettingActivity.swtCallStop"

    :goto_1
    invoke-virtual {p1, v0, p2}, Lz2/x4;->OooO0o(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_2
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0903f2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f09041a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iput-boolean v0, p0, Lz2/u6;->o00o0O:Z

    invoke-virtual {p0}, Lz2/u6;->dismiss()V

    new-instance p1, Lz2/t6;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lz2/t6;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0}, Lz2/u6;->OooO()V

    goto/16 :goto_1

    :pswitch_2
    new-instance p1, Lz2/k4$OooO00o;

    const-string v1, ".log"

    invoke-direct {p1, v1}, Lz2/k4$OooO00o;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lz2/h6;->OooO0O0:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lz2/t8;

    invoke-direct {v1}, Lz2/t8;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    aget-object p1, p1, v0

    new-instance v0, Lcom/cyjh/elfin/entity/ScriptLog;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/ScriptLog;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/entity/ScriptLog;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Lz2/k4;->OooO0Oo(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/entity/ScriptLog;->setSize(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/entity/ScriptLog;->setFile(Ljava/io/File;)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.cyjh.elfin.ui.activity.SettingActivity.FlagLastLog"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.cyjh.elfin.ui.activity.ScriptLogActivity.ScriptLog"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iput-boolean v2, p0, Lz2/u6;->o00o0O:Z

    invoke-virtual {p0}, Lz2/u6;->dismiss()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lz2/w9;->OoooOoO:Lcom/cyjh/elfin/base/AppContext;

    const/high16 v0, 0x7f100000

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/base/AppContext;->OooOO0(I)V

    return-void

    :pswitch_3
    iput-boolean v0, p0, Lz2/u6;->o00o0O:Z

    iget-object p1, p0, Lz2/u6;->o00Ooo:Landroid/content/Context;

    if-eqz p1, :cond_2

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    invoke-static {}, Lz2/ii;->OooO0O0()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_3

    const-string v0, "com.cyjh.elfin:download_server"

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0903ee
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lz2/w9;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c012b

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, p1}, Lz2/w9;->OooO0O0(F)V

    const p1, 0x3f666666    # 0.9f

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p0, p1, v0}, Lz2/w9;->OooO0Oo(FF)V

    invoke-direct {p0}, Lz2/u6;->OooO0oO()V

    return-void
.end method
