.class public Lcom/cyjh/elfin/ui/activity/SettingActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO;,
        Lcom/cyjh/elfin/ui/activity/SettingActivity$OooOO0;
    }
.end annotation


# static fields
.field public static final o000000:I = 0x3e8

.field private static final o000000O:I = 0x1

.field public static final o000OOo:I = 0xbb8

.field public static final o0O0O00:Ljava/lang/String;


# instance fields
.field private OooooO0:Landroid/widget/Switch;

.field private OooooOO:Landroid/widget/Switch;

.field private OooooOo:Landroid/widget/Switch;

.field private Oooooo:Landroid/widget/Switch;

.field private Oooooo0:Landroid/widget/Switch;

.field private OoooooO:Landroid/widget/Switch;

.field private Ooooooo:Landroid/widget/Switch;

.field private o00O0O:Landroid/widget/Switch;

.field private o00Oo0:Landroid/widget/Switch;

.field private o00Ooo:Landroid/widget/Switch;

.field private o00o0O:Landroid/widget/LinearLayout;

.field private o00oO0O:Landroid/widget/Button;

.field private o00oO0o:Landroid/widget/Button;

.field private o00ooo:Lcom/cyjh/elfin/ui/activity/SettingActivity$OooOO0;

.field private o0OO00O:Landroid/widget/LinearLayout;

.field private o0OOO0o:Landroid/widget/TextView;

.field private o0Oo0oo:Landroid/widget/LinearLayout;

.field private o0OoOo0:Landroid/widget/Switch;

.field private o0ooOO0:Landroid/widget/Button;

.field private o0ooOOo:Landroid/widget/Button;

.field private o0ooOoO:Landroid/widget/TextView;

.field private oo000o:Lz2/jb;

.field private oo0o0Oo:[Ljava/lang/String;

.field private ooOO:Landroid/widget/Spinner;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06e0\u06e4\u06e0\u06e8\u06d8\u06da\u06e2\u06df\u06d6\u06e6\u06d6\u06d8\u06e8\u06d8\u06d8\u06e6\u06d6\u06d8\u06d6\u06e5\u06df\u06e1\u06e1\u06eb\u06d9\u06e7\u06d6\u06da\u06db\u06d6\u06d8\u06e0\u06e5\u06d7\u06e7\u06e2\u06e2\u06d9\u06e5\u06ec\u06e7\u06e2\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x25c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3e0

    const/16 v2, 0x29a

    const v3, -0x12d54c45

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-class v0, Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o0O0O00:Ljava/lang/String;

    const-string v0, "\u06dc\u06e4\u06da\u06e5\u06d8\u06d6\u06e1\u06dc\u06e8\u06e1\u06e0\u06da\u06e1\u06e2\u06e4\u06e2\u06e8\u06e2\u06d8\u06e8\u06d8\u06e1\u06e2\u06d6\u06d8\u06e8\u06e2\u06dc\u06d9\u06d6\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0xe1ba2bd -> :sswitch_1
        -0x1b4192f -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "5\u79d2"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "10\u79d2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "15\u79d2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "30\u79d2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "60\u79d2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->oo0o0Oo:[Ljava/lang/String;

    return-void
.end method

.method private OooO()V
    .locals 10

    const/4 v2, 0x0

    const-string v0, "\u06e0\u06d6\u06dc\u06db\u06e1\u06ec\u06d8\u06e4\u06e2\u06df\u06e6\u06d9\u06e6\u06d6\u06e4\u06db\u06e4\u06d8\u06d8\u06e1\u06d7\u06e8\u06e4\u06da\u06dc\u06e2\u06d7\u06dc\u06d8\u06d6\u06da\u06e0\u06e0\u06dc\u06e8\u06d8\u06e6\u06d7\u06e6\u06d8"

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v8, 0x368

    xor-int/2addr v2, v8

    xor-int/lit16 v2, v2, 0x177

    const/16 v8, 0x322

    const v9, 0x28881332

    xor-int/2addr v2, v8

    xor-int/2addr v2, v9

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e8\u06d7\u06e4\u06e2\u06df\u06d7\u06e5\u06e7\u06d8\u06e0\u06e6\u06d8\u06d6\u06da\u06e8\u06d8\u06dc\u06eb\u06d8\u06e5\u06e7\u06d6\u06ec\u06ec\u06e6\u06d8\u06e5\u06e5\u06d6\u06d8\u06d9\u06e8\u06d6\u06ec\u06d6\u06e6\u06d8\u06e4\u06e0\u06e5\u06d8\u06e1\u06e6\u06da\u06dc\u06db\u06d6"

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OooooO0:Landroid/widget/Switch;

    const-string v0, "\u06d9\u06e5\u06dc\u06e5\u06e2\u06d6\u06d8\u06e4\u06df\u06dc\u06d8\u06e1\u06e4\u06d8\u06e7\u06d8\u06d9\u06eb\u06e8\u06df\u06dc\u06e5\u06e7\u06d8\u06df\u06e1\u06e8\u06d8\u06d6\u06e6\u06e7\u06da\u06d8\u06e6\u06d8\u06e1\u06e0\u06e8\u06d8\u06d6\u06dc\u06e0\u06eb\u06da\u06d9\u06e1\u06e8\u06e5\u06df\u06d9\u06e5\u06d8\u06e4\u06d7\u06e5\u06d8\u06d8\u06e4\u06e8\u06e7\u06da\u06d6"

    move-object v7, v2

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v2

    const-string v0, "\u06e4\u06dc\u06e1\u06eb\u06ec\u06e0\u06e5\u06d6\u06e2\u06e7\u06e2\u06d6\u06d8\u06db\u06dc\u06e4\u06df\u06e0\u06d7\u06d7\u06e6\u06e5\u06db\u06e5\u06e6\u06e5\u06eb\u06e5\u06d8\u06e0\u06df\u06da\u06eb\u06da\u06e1\u06e2\u06e4\u06df"

    move-object v6, v2

    goto :goto_0

    :sswitch_3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "\u06e4\u06e6\u06d6\u06e0\u06e5\u06d6\u06d8\u06e7\u06d8\u06dc\u06e5\u06df\u06ec\u06d8\u06d7\u06e0\u06e5\u06e6\u06e0\u06d9\u06e1\u06d9\u06db\u06df\u06e1\u06d8\u06e2\u06e0\u06d8\u06e0\u06e4\u06e5\u06df\u06ec\u06e8\u06d8\u06e4\u06d9\u06e8\u06e5\u06ec\u06e6\u06e2\u06eb\u06e1\u06e0\u06e0\u06e6\u06dc\u06d9\u06e0\u06d9\u06e1\u06e4"

    move-object v5, v2

    goto :goto_0

    :sswitch_4
    const-string v0, "com.cyjh.elfin.ui.activity.SettingActivity.swtCallStop"

    invoke-virtual {v6, v0, v5}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/Switch;->setChecked(Z)V

    const-string v0, "\u06e6\u06d7\u06e8\u06d8\u06d7\u06d9\u06e0\u06e2\u06eb\u06e6\u06e8\u06e7\u06dc\u06e2\u06e2\u06e5\u06d7\u06d7\u06eb\u06ec\u06d8\u06d8\u06d7\u06db\u06e8\u06d9\u06e2\u06dc\u06d9\u06e1\u06d8\u06d6\u06d6\u06d8\u06e8\u06eb\u06dc\u06dc\u06d6\u06e7\u06db\u06d7\u06d6\u06e2\u06df\u06d7\u06e1\u06e4"

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OooooOO:Landroid/widget/Switch;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v2

    const-string v8, "com.cyjh.elfin.ui.activity.SettingActivity.swtVolumeKeyCtrl"

    invoke-virtual {v2, v8, v5}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    const-string v0, "\u06e6\u06da\u06eb\u06ec\u06ec\u06e7\u06df\u06e6\u06e6\u06d8\u06d6\u06d7\u06df\u06e6\u06db\u06e6\u06da\u06e8\u06d8\u06ec\u06db\u06eb\u06da\u06d9\u06d7\u06e2\u06ec\u06dc\u06e2\u06eb\u06d8\u06ec\u06e6\u06d8\u06e0\u06db\u06d6\u06d8\u06d9\u06e6\u06db\u06d6\u06df\u06e6\u06e5\u06e6\u06e5\u06db\u06e4\u06e1\u06d8"

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->Oooooo0:Landroid/widget/Switch;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v2

    const-string v8, "com.cyjh.elfin.ui.activity.SettingActivity.swtWaggleStop"

    invoke-virtual {v2, v8, v5}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    const-string v0, "\u06ec\u06ec\u06e8\u06d8\u06eb\u06d8\u06dc\u06e6\u06dc\u06e5\u06d8\u06e5\u06da\u06dc\u06d9\u06dc\u06e5\u06d8\u06e4\u06e4\u06e6\u06d9\u06da\u06e1\u06d8\u06d6\u06e6\u06e5\u06d8\u06ec\u06da\u06dc\u06df\u06dc\u06ec"

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->Oooooo:Landroid/widget/Switch;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v2

    const-string v8, "com.cyjh.elfin.ui.activity.SettingActivity.swtFloatviewCtrl"

    invoke-virtual {v2, v8, v5}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    const-string v0, "\u06e0\u06d7\u06e5\u06e0\u06e5\u06e6\u06d8\u06e4\u06db\u06e4\u06e0\u06d6\u06e6\u06df\u06e6\u06e8\u06d8\u06d6\u06e1\u06e8\u06d7\u06e4\u06e8\u06e1\u06d7\u06e1\u06d9\u06eb\u06dc\u06e8\u06db\u06eb\u06df\u06dc\u06e8\u06d8\u06e1\u06d8\u06df\u06e4\u06d7\u06e6\u06e4\u06e0\u06e5\u06db\u06e5\u06ec\u06d6\u06dc\u06e2\u06e8\u06e6\u06e5\u06d8\u06e6\u06e1\u06e7"

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OoooooO:Landroid/widget/Switch;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v2

    const-string v8, "com.cyjh.elfin.ui.activity.SettingActivity.swtVibration"

    invoke-virtual {v2, v8, v5}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    const-string v0, "\u06d9\u06da\u06d6\u06e7\u06e7\u06db\u06e1\u06d9\u06e7\u06d9\u06d8\u06e0\u06db\u06d7\u06e0\u06e7\u06db\u06d6\u06d8\u06da\u06d9\u06e1\u06d8\u06e5\u06d9\u06d6\u06df\u06dc\u06e7\u06e0\u06db\u06e1\u06da\u06df\u06e1\u06d8\u06e7\u06d9\u06d9\u06e0\u06d8\u06dc\u06d8\u06eb\u06e2\u06d6"

    goto :goto_0

    :sswitch_9
    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o00O0O:Landroid/widget/Switch;

    const-string v0, "\u06d8\u06dc\u06dc\u06e2\u06d8\u06d9\u06e5\u06ec\u06d6\u06da\u06dc\u06e2\u06eb\u06eb\u06e2\u06e2\u06e0\u06da\u06e0\u06ec\u06dc\u06d8\u06e8\u06d6\u06d8\u06d8\u06ec\u06e1\u06e0\u06dc\u06d7\u06dc\u06d8\u06e0\u06e7\u06df\u06e1\u06e7\u06e1\u06d8\u06e0\u06d6\u06d8\u06e2\u06eb\u06e1\u06d8\u06ec\u06e8\u06e8\u06d8\u06e0\u06d7\u06e5\u06d8"

    move-object v4, v2

    goto/16 :goto_0

    :sswitch_a
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v2

    const-string v0, "\u06e0\u06e2\u06e4\u06ec\u06d9\u06d7\u06dc\u06da\u06d7\u06e5\u06d8\u06e7\u06d7\u06e8\u06e7\u06e0\u06e6\u06ec\u06d8\u06eb\u06d6\u06d8\u06e4\u06e5\u06d9\u06e2\u06da\u06e1\u06d8\u06e4\u06e2\u06d9"

    move-object v3, v2

    goto/16 :goto_0

    :sswitch_b
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "\u06eb\u06d6\u06dc\u06d8\u06e0\u06d6\u06d7\u06da\u06e7\u06e0\u06d7\u06e7\u06e8\u06e7\u06dc\u06e6\u06e1\u06e6\u06d8\u06e8\u06d7\u06db\u06eb\u06da\u06e4\u06e5\u06d9\u06db\u06e1\u06da\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "sp_key_switch_setting_open_run_script"

    invoke-virtual {v3, v0, v1}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    const-string v0, "\u06e2\u06e4\u06e8\u06d8\u06d6\u06e1\u06e7\u06d8\u06e2\u06e5\u06df\u06d8\u06dc\u06eb\u06e6\u06e0\u06d9\u06e0\u06dc\u06d6\u06d8\u06e8\u06d9\u06df\u06eb\u06d8\u06e7\u06d8\u06df\u06e6\u06e1\u06e2\u06e2\u06e1\u06d8\u06e6\u06e8\u06e6\u06eb\u06e8\u06dc\u06d8\u06ec\u06e6\u06e1\u06ec\u06e7\u06e5\u06dc\u06d8\u06e6\u06d8\u06d8\u06e4\u06e5\u06d8\u06eb\u06ec\u06e0\u06dc\u06e6"

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o00Oo0:Landroid/widget/Switch;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v2

    const-string v8, "sp_key_switch_setting_logcat_collect"

    invoke-virtual {v2, v8, v1}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    const-string v0, "\u06d6\u06ec\u06df\u06e6\u06d9\u06df\u06d8\u06da\u06e6\u06e4\u06da\u06e6\u06e8\u06ec\u06e0\u06db\u06e4\u06d9\u06d9\u06d7\u06e0\u06e2\u06d6\u06e0\u06e4\u06dc\u06e1\u06d8\u06ec\u06ec\u06e5\u06d8\u06e4\u06db\u06e8\u06e8\u06e8\u06e6\u06d8\u06e1\u06e0\u06e6\u06dc\u06d7\u06e8\u06e8\u06e2\u06dc\u06d8\u06e8\u06df\u06e1"

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o00Ooo:Landroid/widget/Switch;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v2

    const-string v8, "sp_key_switch_setting_error_dialog"

    invoke-virtual {v2, v8, v1}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    const-string v0, "\u06e5\u06e1\u06dc\u06d7\u06e7\u06e2\u06e0\u06ec\u06d8\u06e8\u06e1\u06d7\u06db\u06e6\u06d6\u06d8\u06e8\u06e7\u06e5\u06d8\u06e1\u06e2\u06dc\u06d8\u06d8\u06e2\u06e8\u06d8\u06df\u06db\u06da\u06e6\u06eb\u06e8"

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->Ooooooo:Landroid/widget/Switch;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v2

    const-string v8, "sp_key_switch_setting_flash_back_auto_restart"

    invoke-virtual {v2, v8, v1}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    const-string v0, "\u06d8\u06e7\u06dc\u06d8\u06e7\u06eb\u06da\u06e1\u06e5\u06d6\u06d8\u06d9\u06dc\u06e8\u06d8\u06d6\u06e2\u06d8\u06e7\u06d6\u06e0\u06eb\u06df\u06e1\u06eb\u06e5\u06ec\u06da\u06d9\u06e8\u06e1\u06e7\u06eb\u06da\u06e1\u06e4\u06e1\u06e5"

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o0OoOo0:Landroid/widget/Switch;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v2

    const-string v8, "sp_key_switch_setting_auto_run_script"

    invoke-virtual {v2, v8, v1}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    const-string v0, "\u06db\u06e8\u06e6\u06d8\u06eb\u06e6\u06e1\u06d8\u06d7\u06dc\u06e7\u06ec\u06e5\u06db\u06e8\u06d6\u06ec\u06d8\u06e5\u06d8\u06ec\u06e8\u06e5\u06e2\u06d8\u06da\u06eb\u06d9\u06d8\u06d8\u06e1\u06e7\u06d8\u06d8\u06e2\u06da\u06db\u06e8\u06eb\u06d9\u06df\u06e6\u06e5\u06d6\u06ec\u06db\u06d8\u06d6\u06d9\u06e2\u06d8\u06e7"

    goto/16 :goto_0

    :sswitch_11
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6e61e54e -> :sswitch_11
        -0x6b91a8d6 -> :sswitch_0
        -0x6746cdd2 -> :sswitch_6
        -0x575c334d -> :sswitch_3
        -0x40cdfb4d -> :sswitch_b
        -0x2ac40f2a -> :sswitch_a
        -0x196cc108 -> :sswitch_10
        -0x1776d9b7 -> :sswitch_9
        -0x16e63c10 -> :sswitch_f
        -0x2cb1468 -> :sswitch_5
        0x7fbf4fb -> :sswitch_1
        0xaae0ae3 -> :sswitch_8
        0x199ab2c7 -> :sswitch_c
        0x1e6484ca -> :sswitch_d
        0x47f7b102 -> :sswitch_7
        0x67e99a68 -> :sswitch_2
        0x7f8c7395 -> :sswitch_e
        0x7f920d6c -> :sswitch_4
    .end sparse-switch
.end method

.method public static synthetic OooO0oO(Lcom/cyjh/elfin/ui/activity/SettingActivity;)[Ljava/lang/String;
    .locals 4

    const-string v0, "\u06db\u06e0\u06e4\u06da\u06d6\u06e5\u06e8\u06dc\u06ec\u06d8\u06d8\u06da\u06e6\u06e2\u06d6\u06d6\u06e1\u06e4\u06d9\u06d7\u06e8\u06d7\u06e7\u06e8\u06e6\u06d6\u06db\u06df\u06e6\u06d8\u06dc\u06d6\u06e1\u06d8\u06df\u06e0\u06dc\u06ec\u06d9\u06e1\u06d8\u06d8\u06e1\u06e0\u06d6\u06e6\u06ec\u06ec\u06e6\u06e7\u06df\u06dc\u06d8\u06d8\u06d8\u06e0\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xbf

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x12

    const/16 v2, 0x37f

    const v3, -0x3b7e4afd

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06e7\u06e8\u06d8\u06d7\u06dc\u06e7\u06d8\u06e4\u06e8\u06e2\u06e1\u06e0\u06e4\u06df\u06dc\u06e1\u06e1\u06e2\u06e2\u06da\u06e0\u06df\u06e5\u06df\u06dc\u06d8\u06da\u06da\u06e6\u06d8\u06d9\u06e5\u06e7\u06d7\u06db\u06e1\u06d8\u06d7\u06e2\u06df\u06ec\u06da\u06db\u06da\u06d8\u06da\u06eb\u06df\u06d6\u06d8\u06e8\u06d6\u06d6\u06dc\u06d7\u06d8\u06d7\u06d8\u06e1"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->oo0o0Oo:[Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x69a12b6f -> :sswitch_1
        0x36ffbf5b -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooO0oo(Lcom/cyjh/elfin/ui/activity/SettingActivity;)Lz2/jb;
    .locals 4

    const-string v0, "\u06e1\u06e0\u06db\u06e7\u06dc\u06e7\u06e7\u06d9\u06e4\u06eb\u06d8\u06df\u06df\u06d9\u06ec\u06e2\u06d7\u06da\u06db\u06e1\u06d8\u06e5\u06da\u06e6\u06d8\u06ec\u06e6\u06d7\u06eb\u06df\u06da\u06db\u06e8\u06d6\u06d8\u06e8\u06e7\u06d7\u06e4\u06e7\u06e2\u06e0\u06e1\u06e2\u06e4\u06e8\u06d6\u06d8\u06ec\u06db\u06df\u06e0\u06d9\u06e4\u06e4\u06df\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x29a

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x206

    const/16 v2, 0x389

    const v3, 0x188161e1

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06d8\u06eb\u06d8\u06d8\u06ec\u06eb\u06e6\u06d8\u06d8\u06da\u06d8\u06d6\u06d8\u06e8\u06e8\u06e6\u06df\u06db\u06d6\u06d8\u06e0\u06e8\u06e5\u06e2\u06db\u06e2\u06e7\u06e2\u06d7\u06da\u06dc\u06e6\u06e6\u06da\u06d9\u06e6\u06ec\u06d6\u06d8\u06e6\u06d8\u06df\u06eb\u06df\u06e5\u06d8\u06db\u06e8\u06dc\u06d8\u06e6\u06d8\u06e1\u06e8\u06e1\u06e1\u06d8\u06e1\u06e8\u06d6"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->oo000o:Lz2/jb;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x5f11ab48 -> :sswitch_1
        0x78bd0fde -> :sswitch_0
    .end sparse-switch
.end method

.method private OooOO0()V
    .locals 6

    const/4 v3, 0x0

    const-string v0, "\u06e8\u06db\u06d8\u06e2\u06dc\u06e8\u06d8\u06d6\u06e4\u06db\u06da\u06d9\u06dc\u06d8\u06d9\u06d6\u06e5\u06e5\u06e8\u06d8\u06e5\u06db\u06e7\u06e1\u06ec\u06e6\u06d6\u06d6\u06e2\u06df\u06db\u06da"

    move-object v1, v0

    move-object v2, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v4, 0x69

    xor-int/2addr v0, v4

    xor-int/lit16 v0, v0, 0x135

    const/16 v4, 0x2d6

    const v5, 0xc3311b4

    xor-int/2addr v0, v4

    xor-int/2addr v0, v5

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e7\u06e8\u06e2\u06e2\u06e6\u06df\u06e5\u06db\u06e0\u06e1\u06e2\u06ec\u06e4\u06e0\u06e2\u06e6\u06ec\u06d9\u06e7\u06d6\u06d8\u06da\u06e0\u06da\u06d9\u06db\u06e1\u06d8\u06d7\u06ec\u06e8\u06e7\u06d9\u06e8\u06e0\u06dc\u06d8\u06d8\u06df\u06e5\u06e2\u06e5"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f090440

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const-string v1, "\u06e7\u06d6\u06df\u06d8\u06d6\u06d6\u06d8\u06d8\u06df\u06d6\u06e2\u06e4\u06d7\u06e4\u06d6\u06e5\u06dc\u06ec\u06ec\u06e6\u06e6\u06e7\u06e7\u06e6\u06e1\u06d8\u06e6\u06e8\u06df\u06da\u06e8\u06e1\u06d8\u06e0\u06db\u06e2\u06e8\u06e0\u06e1\u06d8\u06e6\u06df\u06e1\u06e8\u06e6\u06d8"

    move-object v2, v0

    goto :goto_0

    :sswitch_2
    const v0, 0x7f100274

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    const-string v0, "\u06e8\u06eb\u06d8\u06d6\u06e7\u06e7\u06db\u06e4\u06da\u06e6\u06ec\u06df\u06ec\u06eb\u06e1\u06d8\u06eb\u06ec\u06df\u06e8\u06dc\u06dc\u06ec\u06e8\u06d9\u06e7\u06e7\u06eb\u06e4\u06e8\u06e5\u06d8\u06db\u06e7\u06e8\u06eb\u06da\u06dc\u06e4\u06d7\u06df\u06d6\u06dc\u06e6\u06d8\u06d7\u06da\u06e5\u06e7\u06d9\u06d8\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityLeftImage(I)V

    const-string v0, "\u06d6\u06e5\u06e4\u06d6\u06db\u06e6\u06d8\u06ec\u06e6\u06e7\u06d6\u06eb\u06e1\u06d8\u06e7\u06d9\u06e0\u06d6\u06eb\u06db\u06d9\u06db\u06eb\u06e0\u06dc\u06da\u06eb\u06eb\u06e5\u06e2\u06da"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0801c9

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    const-string v0, "\u06eb\u06d8\u06e4\u06e7\u06d7\u06d8\u06d8\u06e4\u06dc\u06e8\u06d9\u06e5\u06e7\u06d8\u06d8\u06dc\u06e7\u06e2\u06e2\u06d7\u06e8\u06e8\u06e2\u06ec\u06e6\u06d8\u06d8\u06e2\u06dc\u06e1\u06d8\u06db\u06d9\u06d8\u06d8\u06d8\u06d6\u06e5\u06e0\u06db\u06e5\u06df\u06ec\u06e4\u06e1\u06da\u06e1"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO;

    invoke-direct {v0, p0, v3}, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO;-><init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO00o;)V

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;)V

    const-string v0, "\u06d9\u06eb\u06d8\u06d8\u06e8\u06eb\u06d8\u06eb\u06d8\u06df\u06ec\u06d9\u06eb\u06eb\u06e8\u06da\u06ec\u06e7\u06eb\u06e6\u06d6\u06d8\u06d8\u06dc\u06e4\u06e2\u06d9\u06e4\u06e6\u06e0\u06e8\u06e6\u06e0\u06e5\u06e5\u06d8\u06e0\u06d9\u06e5\u06da\u06da\u06e6\u06e1\u06df\u06e1"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const-string v0, "\u06eb\u06e6\u06dc\u06d8\u06db\u06da\u06d6\u06df\u06e2\u06d7\u06e1\u06e6\u06dc\u06d8\u06e2\u06d7\u06e1\u06d8\u06e8\u06e2\u06df\u06e7\u06db\u06da\u06d6\u06da\u06e4\u06ec\u06d8\u06e7\u06e5\u06db\u06e2\u06dc\u06d7\u06d7\u06d7\u06db\u06db"

    move-object v1, v0

    goto :goto_0

    :sswitch_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76aa57ae -> :sswitch_0
        -0x2f66eea8 -> :sswitch_6
        -0x2b4616a5 -> :sswitch_5
        0x15a4fe7d -> :sswitch_4
        0x2f233cda -> :sswitch_2
        0x33c10551 -> :sswitch_3
        0x762421e2 -> :sswitch_1
        0x7e3fef14 -> :sswitch_7
    .end sparse-switch
.end method

.method private OooOO0O()V
    .locals 8

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-string v0, "\u06e2\u06da\u06e7\u06e4\u06e4\u06e8\u06d8\u06eb\u06df\u06e8\u06d8\u06dc\u06e8\u06d8\u06d8\u06eb\u06dc\u06e2\u06e7\u06d6\u06e6\u06d8\u06e7\u06ec\u06da\u06df\u06e4\u06e2\u06e4\u06dc\u06d9\u06e4\u06e4\u06e8\u06d8\u06eb\u06e8\u06e6\u06eb\u06e8\u06e8\u06e2\u06d8\u06e5\u06d8\u06e5\u06df\u06e8\u06d8"

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v6, 0x18a

    xor-int/2addr v2, v6

    xor-int/lit16 v2, v2, 0x2a1

    const/16 v6, 0x282

    const v7, -0x742e6657

    xor-int/2addr v2, v6

    xor-int/2addr v2, v7

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06e2\u06e6\u06e6\u06e5\u06d8\u06e7\u06e1\u06d9\u06e8\u06d6\u06df\u06e7\u06e7\u06e7\u06da\u06e2\u06e0\u06ec\u06da\u06d8\u06d8\u06da\u06d8\u06eb\u06ec\u06e5\u06e2\u06da\u06e8\u06eb\u06e2\u06dc\u06dc\u06dc\u06d9\u06da\u06d7\u06e5\u06d6\u06e4\u06e4\u06e4\u06d7\u06e2\u06e2\u06e4\u06e2\u06dc\u06da\u06e5\u06d8\u06e2\u06da\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o0ooOoO:Landroid/widget/TextView;

    const-string v0, "\u06d8\u06d7\u06e1\u06df\u06e6\u06d8\u06dc\u06e8\u06d7\u06ec\u06df\u06e1\u06d8\u06d6\u06e6\u06e1\u06d7\u06eb\u06da\u06d6\u06ec\u06e8\u06d8\u06da\u06d6\u06e1\u06dc\u06e2\u06d8\u06e1\u06d7\u06e2\u06d9\u06e4\u06ec\u06e4\u06d7\u06e4\u06df\u06e1\u06e4\u06e6\u06d8\u06ec\u06d8\u06e5\u06db\u06e4\u06e4\u06eb\u06d9\u06df\u06eb\u06e8\u06da"

    move-object v5, v2

    goto :goto_0

    :sswitch_2
    const v2, -0x19d97616

    const-string v0, "\u06dc\u06e2\u06d7\u06e2\u06dc\u06e8\u06d6\u06d6\u06ec\u06e0\u06e0\u06ec\u06e7\u06e0\u06d8\u06d8\u06e0\u06eb\u06eb\u06ec\u06dc\u06eb\u06eb\u06da\u06e6\u06ec\u06d6\u06ec\u06d9\u06e6\u06df\u06e0\u06e4\u06db\u06db\u06ec\u06dc\u06e8\u06da\u06dc\u06da\u06e5\u06e1\u06dc\u06d8\u06e6\u06e0\u06df\u06db"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v2

    sparse-switch v6, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06e8\u06df\u06df\u06e4\u06d6\u06e0\u06dc\u06ec\u06d6\u06d8\u06e0\u06da\u06db\u06ec\u06d9\u06eb\u06d7\u06d8\u06d7\u06d9\u06d8\u06e2\u06db\u06d7\u06ec\u06eb\u06da\u06e4\u06d7\u06e7\u06da\u06eb\u06eb\u06d6\u06d8\u06d9\u06d6\u06e1\u06d8\u06e5\u06dc\u06ec\u06e8\u06ec\u06d6\u06ec\u06eb\u06e8\u06d8\u06ec\u06df\u06d8\u06d8\u06ec\u06d8\u06e7\u06d8\u06e4\u06e2\u06eb"

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06e2\u06da\u06e6\u06d9\u06ec\u06e5\u06eb\u06e5\u06e6\u06da\u06da\u06e6\u06d8\u06e8\u06ec\u06e1\u06d8\u06d9\u06e7\u06d6\u06d8\u06e1\u06dc\u06d8\u06d8\u06d9\u06e4\u06d9\u06dc\u06db\u06e2\u06e6\u06e2\u06db\u06e4\u06e4\u06d6\u06ec\u06e4\u06db\u06e6\u06e1\u06e5\u06da\u06eb\u06e8\u06ec\u06eb\u06d6\u06e2\u06e8\u06d8"

    goto :goto_1

    :sswitch_5
    const v6, -0x7cd578b6

    const-string v0, "\u06df\u06dc\u06e2\u06e6\u06da\u06e1\u06d8\u06d9\u06db\u06e6\u06d8\u06da\u06e2\u06d8\u06d8\u06e2\u06e2\u06df\u06d8\u06e1\u06da\u06e5\u06d7\u06da\u06da\u06d8\u06d9\u06e8\u06e8\u06d8\u06e6\u06e5\u06e7\u06e6\u06e7\u06dc\u06d8\u06dc\u06d8\u06eb\u06e1\u06d8\u06d8\u06d7\u06e4\u06e7"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v7, v6

    sparse-switch v7, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06da\u06d8\u06df\u06eb\u06e8\u06df\u06e6\u06ec\u06ec\u06e7\u06d9\u06d8\u06da\u06db\u06eb\u06d9\u06e0\u06ec\u06db\u06e1\u06d8\u06d8\u06e5\u06db\u06e8\u06d9\u06dc\u06d8\u06e2\u06da\u06df\u06e8\u06e1\u06eb\u06e1\u06df\u06e4\u06d8\u06e2\u06df\u06db\u06e4\u06d6\u06d8\u06e2\u06e5\u06d9\u06df\u06d6\u06e7"

    goto :goto_2

    :cond_0
    const-string v0, "\u06dc\u06e4\u06e5\u06d7\u06e5\u06e6\u06e0\u06e6\u06df\u06eb\u06e8\u06e8\u06d8\u06e0\u06ec\u06e5\u06da\u06db\u06e1\u06d8\u06e6\u06d7\u06e6\u06d8\u06e1\u06d8\u06ec\u06da\u06e7\u06dc\u06d8\u06e4\u06d6\u06e5\u06d8"

    goto :goto_2

    :sswitch_7
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/base/AppContext;->OoooOoO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06e8\u06eb\u06d7\u06e6\u06e6\u06d6\u06d8\u06e1\u06e1\u06dc\u06d8\u06d9\u06d6\u06e1\u06d8\u06da\u06e1\u06d8\u06e6\u06d7\u06e6\u06d8\u06e7\u06eb\u06d7\u06e5\u06e7\u06d6\u06eb\u06da\u06dc\u06e2\u06ec\u06e6\u06d8\u06eb\u06e4\u06ec\u06e6\u06e5\u06df\u06d9\u06ec\u06e0\u06e8\u06e0\u06dc\u06dc\u06e8\u06e8\u06dc\u06e6\u06dc\u06d8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e1\u06df\u06dc\u06e5\u06da\u06e0\u06db\u06eb\u06e6\u06d8\u06e6\u06d6\u06d9\u06e6\u06eb\u06e8\u06d8\u06eb\u06e2\u06e7\u06d9\u06d7\u06d7\u06e5\u06dc\u06e7\u06ec\u06df\u06e1\u06d8\u06df\u06e0\u06e4\u06e1\u06eb\u06da\u06dc\u06dc\u06e2\u06e0\u06e5\u06dc\u06d8\u06da\u06e0\u06d7\u06e6\u06dc\u06ec\u06eb\u06dc"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06df\u06e4\u06ec\u06eb\u06e5\u06e1\u06ec\u06e1\u06e2\u06d9\u06db\u06e2\u06e1\u06e5\u06e7\u06d8\u06d9\u06d9\u06ec\u06e4\u06e5\u06d8\u06df\u06d9\u06dc\u06e4\u06e6\u06dc\u06d9\u06d7\u06e5"

    goto :goto_0

    :sswitch_a
    const v4, 0x7f1001e8

    const-string v0, "\u06eb\u06e5\u06e8\u06d8\u06dc\u06e4\u06e7\u06e5\u06dc\u06e2\u06d8\u06e1\u06d6\u06d8\u06e8\u06e4\u06d6\u06d6\u06db\u06d6\u06eb\u06e2\u06ec\u06e0\u06eb\u06da\u06e0\u06e7\u06d6\u06d8\u06eb\u06df\u06d6\u06d8\u06da\u06eb\u06dc\u06e2\u06e4\u06e7\u06e0\u06ec\u06e8\u06dc\u06d8\u06d8\u06e4\u06e1\u06e4\u06e8\u06e1\u06e1"

    goto :goto_0

    :sswitch_b
    const-string v0, "\u06d8\u06e8\u06e5\u06e1\u06d8\u06e5\u06d8\u06e0\u06ec\u06e6\u06d8\u06d9\u06da\u06e1\u06dc\u06eb\u06db\u06e7\u06d8\u06e7\u06e8\u06d8\u06e1\u06d6\u06dc\u06e6\u06d8\u06db\u06e0\u06e7\u06e4\u06e4\u06da\u06d9\u06e0\u06e0\u06e5\u06d8\u06d8\u06db\u06e0\u06e1\u06d8\u06ec\u06d8\u06e5\u06d8\u06e8\u06df\u06d6\u06e5\u06e8\u06e8\u06e0\u06d9\u06d6\u06d8\u06e0\u06d9\u06e8"

    move v3, v4

    goto :goto_0

    :sswitch_c
    const v1, 0x7f10004e

    const-string v0, "\u06e8\u06d7\u06e0\u06e1\u06ec\u06e7\u06e2\u06d8\u06e5\u06e6\u06e5\u06e5\u06d8\u06eb\u06d6\u06e1\u06e1\u06e1\u06d6\u06d8\u06d9\u06d8\u06d8\u06d8\u06da\u06dc\u06e6\u06e8\u06df\u06e2\u06e2\u06e6\u06d8\u06e8\u06d8\u06d8\u06d8\u06e7\u06da\u06e6\u06eb\u06e1\u06d6\u06db\u06d6\u06e0\u06e5\u06e2\u06e6\u06e2\u06ec\u06eb\u06d7\u06e2\u06e6\u06d8\u06ec\u06e1\u06d8"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06eb\u06db\u06e5\u06e0\u06d6\u06d8\u06d8\u06dc\u06e2\u06d7\u06e5\u06df\u06d8\u06d8\u06e8\u06e2\u06e5\u06d9\u06e7\u06e0\u06e1\u06e7\u06e5\u06d8\u06e8\u06e4\u06ec\u06dc\u06db\u06e6\u06dc\u06e4\u06e5\u06d8"

    move v3, v1

    goto :goto_0

    :sswitch_e
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u06e2\u06ec\u06dc\u06e5\u06db\u06d8\u06d8\u06e5\u06e4\u06df\u06e2\u06eb\u06e1\u06d8\u06db\u06dc\u06e5\u06d8\u06dc\u06d7\u06e1\u06eb\u06e0\u06e1\u06e1\u06e1\u06eb\u06e1\u06d8\u06e2\u06d9\u06df"

    goto :goto_0

    :sswitch_f
    const-string v0, "\u06e0\u06d6\u06e6\u06e5\u06e7\u06e1\u06eb\u06df\u06d6\u06e4\u06da\u06e4\u06e7\u06e1\u06d8\u06e4\u06da\u06d8\u06e0\u06e6\u06eb\u06e1\u06e5\u06d9\u06e4\u06db\u06e6\u06e0\u06e2\u06e2"

    goto :goto_0

    :sswitch_10
    const-string v0, "\u06eb\u06db\u06e5\u06e0\u06d6\u06d8\u06d8\u06dc\u06e2\u06d7\u06e5\u06df\u06d8\u06d8\u06e8\u06e2\u06e5\u06d9\u06e7\u06e0\u06e1\u06e7\u06e5\u06d8\u06e8\u06e4\u06ec\u06dc\u06db\u06e6\u06dc\u06e4\u06e5\u06d8"

    goto :goto_0

    :sswitch_11
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x79274364 -> :sswitch_a
        -0x72dad7ce -> :sswitch_d
        -0x51927ca5 -> :sswitch_0
        -0x4aefb940 -> :sswitch_c
        -0x489201ae -> :sswitch_e
        0x18cd95f4 -> :sswitch_2
        0x18fd1b8c -> :sswitch_b
        0x313c7e77 -> :sswitch_1
        0x3fd350d8 -> :sswitch_11
        0x43028673 -> :sswitch_10
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x5096cd9e -> :sswitch_5
        -0x1f087ab -> :sswitch_f
        0x12bf4072 -> :sswitch_9
        0x253f88c0 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x717d9fd0 -> :sswitch_4
        0x400ba80e -> :sswitch_8
        0x4c7c8e2e -> :sswitch_6
        0x67d7fb40 -> :sswitch_7
    .end sparse-switch
.end method

.method private OooOO0o(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const-string v0, "\u06e1\u06e2\u06e0\u06d6\u06e0\u06e5\u06e4\u06d8\u06d8\u06d8\u06d7\u06eb\u06e5\u06d8\u06e5\u06eb\u06d8\u06d8\u06d9\u06db\u06e6\u06d8\u06e7\u06d6\u06e5\u06ec\u06da\u06d9\u06e5\u06dc\u06dc\u06df\u06e7\u06e8\u06d7\u06db\u06d8\u06d8\u06e7\u06eb\u06eb\u06dc\u06e2\u06e5\u06d8\u06e2\u06e6\u06e4\u06da\u06dc\u06e8\u06d8\u06e7\u06e2\u06e7"

    move-object v1, v2

    move-object v6, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x268

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x1ee

    const/16 v3, 0x261

    const v4, -0x28b53754

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06d8\u06d8\u06d8\u06eb\u06ec\u06e1\u06e0\u06d9\u06e8\u06e7\u06da\u06df\u06dc\u06ec\u06d8\u06e1\u06e1\u06ec\u06dc\u06db\u06d6\u06db\u06e0\u06e8\u06da\u06df\u06e1\u06d8\u06e8\u06dc\u06da\u06e1\u06eb\u06e8\u06d8\u06e0\u06eb\u06e8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06e7\u06da\u06d9\u06eb\u06dc\u06d8\u06e8\u06e5\u06ec\u06d9\u06dc\u06db\u06da\u06e5\u06d8\u06e7\u06e2\u06e0\u06e6\u06d7\u06e1\u06dc\u06eb\u06df\u06d7\u06e6\u06d8\u06d8\u06df\u06e6\u06e5\u06d8\u06eb\u06e1\u06e8\u06eb\u06e2\u06e6\u06ec\u06ec\u06e8\u06d8\u06e7\u06e0\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v2

    const-string v0, "\u06e0\u06e1\u06da\u06dc\u06e0\u06e5\u06e6\u06e8\u06eb\u06df\u06e1\u06e7\u06d8\u06dc\u06d6\u06d6\u06e0\u06dc\u06e1\u06e8\u06e2\u06d9\u06d7\u06d7\u06d6\u06e7\u06d6\u06e0\u06e2\u06d9\u06e7\u06e7\u06e4\u06e2\u06db\u06ec\u06d9\u06dc\u06e6\u06db\u06e8\u06e5"

    move-object v6, v2

    goto :goto_0

    :sswitch_3
    new-instance v1, Lcom/elf/studio/enity/IMResultInfo;

    invoke-direct {v1}, Lcom/elf/studio/enity/IMResultInfo;-><init>()V

    const-string v0, "\u06db\u06e4\u06e5\u06d8\u06d7\u06e0\u06e2\u06d7\u06e0\u06d7\u06d9\u06d6\u06d6\u06d8\u06e8\u06e7\u06d8\u06d9\u06eb\u06dc\u06d8\u06eb\u06e7\u06e0\u06e7\u06df\u06e6\u06d8\u06d9\u06e0\u06d6\u06e8\u06da\u06ec"

    goto :goto_0

    :sswitch_4
    iput-object p1, v1, Lcom/elf/studio/enity/IMResultInfo;->IMToken:Ljava/lang/String;

    const-string v0, "\u06e5\u06ec\u06e8\u06df\u06da\u06d8\u06d8\u06e2\u06e7\u06d8\u06da\u06d7\u06e7\u06e0\u06e0\u06eb\u06d6\u06df\u06e6\u06e2\u06e7\u06db\u06ec\u06d7\u06e6\u06e1\u06d9\u06e8\u06d9\u06df\u06e8\u06d8\u06db\u06eb\u06e7\u06e8\u06e4\u06d8\u06d8"

    goto :goto_0

    :sswitch_5
    const v0, 0x7f100132

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    iget-object v0, v0, Lz2/gc;->OooO0O0:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object v4, v0, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    invoke-static {}, Lz2/ii;->OooO0oo()Z

    move-result v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lz2/dh;->OooOOoo(Landroid/content/Context;Lcom/elf/studio/enity/IMResultInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "\u06e8\u06df\u06e8\u06d8\u06e2\u06e7\u06db\u06da\u06e7\u06ec\u06e7\u06e7\u06d8\u06d8\u06d6\u06e7\u06d6\u06d9\u06e7\u06e2\u06d7\u06d6\u06da\u06e8\u06d9\u06ec\u06e0\u06d6\u06e6\u06e6\u06e4\u06d7"

    goto :goto_0

    :sswitch_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d4ed32e -> :sswitch_1
        -0x3c69bb02 -> :sswitch_0
        -0x2ff4dd24 -> :sswitch_5
        -0x2afdd50d -> :sswitch_3
        0x18c478c9 -> :sswitch_4
        0x2d971199 -> :sswitch_2
        0x5d77e903 -> :sswitch_6
    .end sparse-switch
.end method

.method private OooOOO0()V
    .locals 8

    const/4 v2, 0x0

    const-string v0, "\u06d9\u06e0\u06d9\u06e8\u06da\u06dc\u06d7\u06d9\u06e2\u06e4\u06db\u06d8\u06e4\u06e4\u06da\u06db\u06db\u06dc\u06d8\u06e1\u06ec\u06d8\u06d8\u06e0\u06d7\u06e6\u06d8\u06df\u06d8\u06e0\u06eb\u06db\u06d6\u06d7\u06e0\u06e8\u06d8\u06d9\u06e7\u06d9\u06e8\u06e1\u06ec\u06e2\u06e1\u06e1\u06e4\u06d8\u06eb\u06e7\u06e8\u06e4\u06e1\u06d9\u06e5\u06e5\u06d8\u06ec"

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v6, 0x109

    xor-int/2addr v2, v6

    xor-int/lit16 v2, v2, 0x142

    const/16 v6, 0x368

    const v7, 0x7ab6f3cd

    xor-int/2addr v2, v6

    xor-int/2addr v2, v7

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06df\u06da\u06dc\u06e0\u06e1\u06d8\u06df\u06dc\u06df\u06e4\u06e4\u06ec\u06e7\u06d9\u06d8\u06d8\u06d6\u06d7\u06d9\u06e0\u06e4\u06d8\u06e0\u06e1\u06dc\u06da\u06e6\u06e0\u06e8\u06db\u06da\u06e2\u06e1\u06d8\u06d8\u06da\u06eb"

    goto :goto_0

    :sswitch_1
    const v2, -0x526344da

    const-string v0, "\u06ec\u06d9\u06df\u06e0\u06e1\u06e4\u06e4\u06e0\u06e8\u06e0\u06da\u06e7\u06e7\u06e8\u06d9\u06d8\u06eb\u06e4\u06e6\u06d7\u06e1\u06d8\u06e5\u06df\u06d8\u06d8\u06e8\u06e8\u06e7\u06e2\u06e2\u06e4\u06dc\u06ec\u06e1\u06ec\u06df\u06e1\u06d9\u06db\u06e5\u06d9\u06e8\u06e1\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v2

    sparse-switch v6, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const v6, -0x4c8e5035

    const-string v0, "\u06d9\u06db\u06d8\u06d8\u06d7\u06e2\u06e4\u06e6\u06e6\u06dc\u06d8\u06e2\u06eb\u06e5\u06d8\u06df\u06db\u06e1\u06d8\u06e8\u06da\u06e2\u06e4\u06da\u06d6\u06d8\u06da\u06e0\u06e2\u06e1\u06db\u06e4\u06dc\u06da\u06e7"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v7, v6

    sparse-switch v7, :sswitch_data_2

    goto :goto_2

    :sswitch_3
    const-string v0, "\u06eb\u06ec\u06d6\u06dc\u06d9\u06e2\u06ec\u06d6\u06e2\u06e6\u06d7\u06dc\u06d8\u06ec\u06e4\u06e6\u06d8\u06d6\u06e5\u06df\u06e1\u06d7\u06eb\u06e1\u06db\u06d8\u06e8\u06df\u06e5\u06d8\u06e7\u06d9\u06e5\u06d8\u06e5\u06e0\u06e7\u06d7\u06d6\u06dc\u06d8\u06d8\u06e0\u06d6\u06d9\u06e5\u06dc\u06d8\u06e1\u06e6\u06dc\u06d8\u06df\u06e1\u06d8\u06ec\u06dc\u06ec\u06eb\u06d6\u06e5\u06d8"

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06d9\u06e8\u06d6\u06e8\u06e7\u06e7\u06d9\u06e2\u06e1\u06e6\u06ec\u06e8\u06d6\u06e2\u06e8\u06d8\u06e2\u06e2\u06e8\u06d8\u06db\u06d8\u06e1\u06e4\u06e5\u06d6\u06dc\u06ec\u06e0\u06e7\u06e5\u06ec"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e8\u06d8\u06e6\u06e1\u06d8\u06dc\u06d8\u06eb\u06da\u06e7\u06ec\u06d7\u06e0\u06e5\u06d7\u06d6\u06d8\u06d7\u06e1\u06da\u06dc\u06d6\u06e2\u06d9\u06d6\u06ec\u06e4\u06e8\u06df\u06d9\u06eb\u06db\u06db\u06e4\u06dc\u06d8\u06e8\u06d8\u06e1\u06e2\u06d6\u06d7\u06e8\u06d9"

    goto :goto_2

    :sswitch_5
    invoke-static {}, Lz2/i4;->OooO00o()Lz2/i4;

    move-result-object v0

    invoke-virtual {v0}, Lz2/i4;->OooO0O0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06dc\u06db\u06e4\u06e2\u06d9\u06d8\u06e5\u06d7\u06e2\u06d7\u06e4\u06e1\u06e0\u06e4\u06da\u06e7\u06d6\u06da\u06e6\u06e5\u06d8\u06e2\u06e7\u06d9\u06d9\u06db\u06e6\u06d8\u06e7\u06d9\u06dc\u06d8\u06e4\u06e6\u06e1\u06d7\u06e6\u06e0\u06d6\u06e1\u06e4\u06eb\u06e4\u06d8\u06d8\u06e4\u06db\u06e5\u06d8\u06d9\u06e7\u06d6\u06d8"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06d7\u06e5\u06d8\u06ec\u06d9\u06e2\u06e4\u06d9\u06d8\u06d8\u06e5\u06e0\u06db\u06d7\u06e6\u06d6\u06e2\u06dc\u06eb\u06d9\u06df\u06e7\u06d6\u06db\u06e8\u06d8\u06df\u06e6\u06db\u06d7\u06e0\u06e6\u06d8\u06d6\u06dc\u06d6\u06d9\u06d6\u06df"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06eb\u06d8\u06d8\u06d8\u06da\u06e2\u06e1\u06d8\u06db\u06df\u06dc\u06dc\u06e0\u06e5\u06e6\u06eb\u06e0\u06d8\u06dc\u06d8\u06e1\u06eb\u06e1\u06e1\u06da\u06dc\u06d8\u06df\u06e6\u06e1\u06d8\u06dc\u06d8\u06e4\u06e4\u06e5\u06d6\u06db\u06e4\u06e8\u06d8\u06db\u06ec\u06e5\u06d8\u06db\u06e8"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06e6\u06e2\u06eb\u06eb\u06e7\u06df\u06db\u06e8\u06db\u06db\u06e6\u06e1\u06e7\u06d8\u06d9\u06e6\u06e1\u06e5\u06e5\u06e5\u06e7\u06d8\u06e1\u06eb\u06e8\u06d8\u06d8\u06e8\u06e1\u06e1\u06d8\u06e6\u06eb\u06df\u06e1\u06d8\u06e6\u06e2\u06e4\u06e6\u06e2\u06e2\u06db\u06e4\u06e8"

    goto :goto_0

    :sswitch_9
    const v2, 0x702f2997

    const-string v0, "\u06da\u06dc\u06d7\u06dc\u06d6\u06e5\u06d7\u06da\u06e2\u06e2\u06e8\u06e5\u06d8\u06e6\u06ec\u06e8\u06d8\u06d7\u06d8\u06d8\u06d8\u06d7\u06e6\u06d9\u06ec\u06e7\u06e6\u06d8\u06e6\u06db\u06e1\u06e7\u06d7\u06e6\u06d8\u06d7\u06e2\u06e1\u06e1\u06e2\u06e1\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v2

    sparse-switch v6, :sswitch_data_3

    goto :goto_3

    :sswitch_a
    const v6, -0x4bb57406

    const-string v0, "\u06e0\u06df\u06e6\u06d8\u06e7\u06dc\u06d9\u06ec\u06d8\u06e8\u06e5\u06e6\u06e5\u06e6\u06df\u06e5\u06d8\u06d9\u06e0\u06d6\u06d8\u06e7\u06e5\u06e1\u06da\u06da\u06d8\u06d8\u06e2\u06da\u06eb\u06db\u06d9\u06e1\u06e4\u06dc\u06e1\u06d8\u06e6\u06e4\u06df"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v7, v6

    sparse-switch v7, :sswitch_data_4

    goto :goto_4

    :sswitch_b
    const-string v0, "\u06d6\u06e6\u06e6\u06e4\u06db\u06ec\u06df\u06d8\u06e5\u06d8\u06e2\u06e8\u06e8\u06e1\u06da\u06d8\u06d8\u06d7\u06d8\u06e2\u06da\u06eb\u06e1\u06ec\u06d6\u06d7\u06e4\u06d6\u06df\u06e1\u06d9\u06e1\u06ec\u06db\u06da\u06d8\u06ec\u06e5\u06e4\u06e1\u06d7\u06e2\u06df\u06e6\u06e8\u06eb\u06e6\u06e4\u06e1\u06d8"

    goto :goto_4

    :sswitch_c
    const-string v0, "\u06db\u06e5\u06e4\u06e0\u06e1\u06e8\u06d8\u06dc\u06dc\u06e5\u06dc\u06eb\u06e5\u06d8\u06d8\u06e6\u06e6\u06dc\u06e5\u06e5\u06d8\u06ec\u06d8\u06e6\u06ec\u06d7\u06db\u06d8\u06d8\u06e0\u06eb\u06e6\u06d8\u06d6\u06df\u06d7\u06dc\u06db\u06d8"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e0\u06e7\u06d6\u06dc\u06e7\u06e4\u06db\u06df\u06d7\u06d7\u06db\u06e8\u06e7\u06d6\u06e7\u06d8\u06d6\u06e4\u06db\u06db\u06d9\u06e8\u06db\u06e4\u06db\u06d8\u06df\u06dc\u06d8\u06d7\u06ec\u06da\u06e8\u06db\u06ec\u06dc\u06e1\u06e6\u06e5\u06e6\u06d9\u06d8\u06da\u06e7\u06d7\u06d7\u06e1\u06d8\u06eb\u06e7\u06e6\u06d8"

    goto :goto_4

    :sswitch_d
    invoke-static {p0}, Lz2/t4;->OooOO0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u06e6\u06d8\u06eb\u06e5\u06db\u06e4\u06e8\u06e7\u06d8\u06e2\u06d9\u06e2\u06dc\u06eb\u06d6\u06e6\u06d9\u06e6\u06d8\u06df\u06db\u06db\u06d8\u06e2\u06e6\u06d8\u06eb\u06da\u06d9\u06e8\u06e5\u06d8\u06e2\u06dc\u06e8\u06d8\u06e2\u06e6\u06e2\u06dc\u06eb\u06d6\u06d7\u06e4\u06e2\u06d8\u06e0\u06e6\u06df\u06df\u06dc\u06d8\u06dc\u06d6\u06eb\u06d6\u06e7\u06e0"

    goto :goto_4

    :sswitch_e
    const-string v0, "\u06eb\u06da\u06e5\u06dc\u06e6\u06e7\u06d8\u06e0\u06e2\u06d6\u06d8\u06db\u06df\u06e6\u06d6\u06d6\u06d6\u06d8\u06e1\u06ec\u06da\u06e1\u06e8\u06df\u06dc\u06db\u06e0\u06e7\u06dc\u06e6\u06df\u06dc\u06d8\u06ec\u06d9\u06e6\u06df\u06e5\u06e1\u06d8\u06db\u06d6\u06db\u06e2\u06e4\u06e6\u06d9\u06d8\u06d8\u06d8\u06e6\u06dc\u06d6"

    goto :goto_3

    :sswitch_f
    const-string v0, "\u06e4\u06e5\u06d6\u06da\u06df\u06e4\u06d9\u06e7\u06d6\u06d7\u06e4\u06ec\u06e6\u06e1\u06e6\u06d8\u06e7\u06d9\u06db\u06e5\u06da\u06dc\u06e8\u06d7\u06e4\u06d9\u06e6\u06d6\u06d8\u06d9\u06dc\u06e7\u06e0\u06d8\u06e6\u06da\u06e1\u06dc\u06e8\u06e2\u06da\u06e1\u06dc\u06e6\u06d8\u06e4\u06ec\u06e8\u06d8\u06e6\u06e8\u06dc\u06d8\u06d7\u06d8\u06e4\u06d9\u06ec\u06da"

    goto :goto_3

    :sswitch_10
    const-string v0, "\u06d6\u06df\u06eb\u06da\u06d8\u06e1\u06d8\u06d6\u06da\u06e5\u06d9\u06e2\u06e8\u06d8\u06eb\u06dc\u06dc\u06d8\u06e5\u06d7\u06db\u06d6\u06e2\u06e0\u06e5\u06d8\u06e8\u06e7\u06d6\u06d8\u06e4\u06e8\u06d8\u06eb\u06df\u06dc\u06d8\u06e1\u06da\u06e2\u06e8\u06d8\u06d8\u06d8\u06ec\u06dc\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1001d4

    invoke-static {v0, v2}, Lz2/c5;->OooO0O0(Landroid/content/Context;I)V

    const-string v0, "\u06dc\u06da\u06e6\u06e8\u06db\u06eb\u06db\u06e0\u06e8\u06ec\u06eb\u06e8\u06da\u06e7\u06e8\u06d8\u06e5\u06eb\u06e5\u06d9\u06d7\u06eb\u06df\u06e5\u06dc\u06d8\u06df\u06e6\u06df\u06da\u06d9\u06eb"

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "script.info"

    invoke-static {p0, v0}, Lz2/z8;->OooO0Oo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "\u06dc\u06e1\u06df\u06db\u06e1\u06eb\u06da\u06e7\u06d9\u06eb\u06da\u06d8\u06d9\u06e0\u06e1\u06e8\u06d6\u06d8\u06e0\u06e7\u06df\u06ec\u06d9\u06e2\u06e5\u06e4\u06e8\u06eb\u06e2\u06e2\u06e8\u06d9\u06e0\u06e5\u06e2\u06d8\u06dc\u06e2\u06d8\u06df\u06e8\u06e7\u06e0\u06d8\u06d6\u06ec\u06d7\u06e2\u06eb\u06e0\u06dc\u06d8\u06e6\u06e7\u06e6\u06d8"

    move-object v5, v2

    goto/16 :goto_0

    :sswitch_13
    invoke-static {p0}, Lz2/a4;->OooOO0O(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "\u06eb\u06d7\u06e1\u06e1\u06db\u06e4\u06da\u06eb\u06e1\u06d8\u06e0\u06e0\u06e4\u06e1\u06da\u06e5\u06d8\u06eb\u06d6\u06dc\u06ec\u06e4\u06df\u06e1\u06d7\u06df\u06e8\u06e6\u06e1\u06e8\u06ec\u06e4"

    move-object v4, v2

    goto/16 :goto_0

    :sswitch_14
    new-instance v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    invoke-direct {v2}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;-><init>()V

    const-string v0, "\u06e5\u06eb\u06e1\u06d8\u06ec\u06eb\u06dc\u06e8\u06e2\u06d8\u06dc\u06d9\u06e0\u06e6\u06e4\u06d6\u06db\u06e4\u06eb\u06e5\u06eb\u06e5\u06e1\u06e6\u06d8\u06e2\u06e0\u06e1\u06d8\u06d9\u06e5\u06e1\u06d8"

    move-object v3, v2

    goto/16 :goto_0

    :sswitch_15
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    const-string v0, "\u06d7\u06e0\u06d8\u06e1\u06e8\u06e1\u06d8\u06e1\u06e7\u06e7\u06e8\u06d8\u06e7\u06e1\u06da\u06e6\u06e0\u06d9\u06e8\u06d7\u06ec\u06dc\u06eb\u06d9\u06d9\u06e4\u06dc\u06d8\u06dc\u06e1\u06e0\u06df\u06e1\u06d7\u06d9\u06d7\u06db\u06df\u06db\u06e2\u06d7\u06d7\u06d6\u06d9\u06e4\u06eb\u06e6\u06dc\u06d8\u06e5\u06d7\u06eb\u06e8\u06e8\u06e6"

    goto/16 :goto_0

    :sswitch_16
    iput-object v4, v3, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    const-string v0, "\u06e7\u06e8\u06d6\u06e1\u06db\u06e7\u06e0\u06da\u06e7\u06d7\u06e6\u06da\u06d8\u06e6\u06d8\u06d8\u06df\u06e1\u06eb\u06eb\u06eb\u06dc\u06df\u06df\u06e0\u06d7\u06e4\u06e2\u06d9\u06e6\u06d9\u06db\u06ec\u06e6\u06d8\u06e2\u06e4\u06e0\u06e6\u06eb\u06da\u06e6\u06db\u06e1\u06e8\u06d9\u06ec\u06da\u06da\u06d6\u06e4\u06e1\u06d8\u06df\u06e1\u06e8"

    goto/16 :goto_0

    :sswitch_17
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptVersion:I

    const-string v0, "\u06dc\u06d7\u06e6\u06d8\u06e0\u06d9\u06ec\u06dc\u06e2\u06d9\u06e5\u06ec\u06e5\u06dc\u06e0\u06e2\u06d7\u06d9\u06e8\u06d8\u06e8\u06e2\u06eb\u06d8\u06df\u06da\u06d8\u06e6\u06dc\u06d8\u06e6\u06da\u06d6\u06d8\u06e0\u06d7\u06e6\u06e7\u06da\u06d9\u06d8\u06e1\u06e1\u06e1\u06e7\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06ec\u06e6\u06e6\u06db\u06e8\u06da\u06d8\u06db\u06ec\u06da\u06e0\u06db\u06df\u06ec\u06d7\u06e8\u06eb\u06ec\u06e1\u06d8\u06e0\u06df\u06dc\u06d8\u06db\u06ec\u06d8\u06db\u06e5\u06e5\u06d8\u06d8\u06e8\u06d6\u06d8\u06e7\u06d6\u06e6\u06db\u06db\u06e2\u06e1\u06da\u06df\u06da\u06d9\u06e8\u06df\u06d8\u06d7\u06df\u06db\u06d8\u06d8\u06e4\u06da\u06d6"

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "updateVersionRequest --> 1 ScriptId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d8\u06e8\u06dc\u06d9\u06eb\u06e8\u06d8\u06e0\u06d9\u06e5\u06d9\u06e5\u06e5\u06d8\u06eb\u06e6\u06e1\u06d8\u06e5\u06d6\u06e0\u06e2\u06da\u06d7\u06e7\u06da\u06dc\u06e7\u06e0\u06ec\u06e7\u06e0\u06d8\u06df\u06e0\u06e4\u06dc\u06eb\u06e7\u06e5\u06e7\u06d8\u06e8\u06dc\u06d8\u06e7\u06dc\u06d8\u06d9\u06e5\u06df"

    goto/16 :goto_0

    :sswitch_1a
    iget-object v0, v3, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e0\u06eb\u06eb\u06e8\u06eb\u06e8\u06db\u06e4\u06d6\u06d6\u06d8\u06e8\u06e1\u06db\u06db\u06da\u06e0\u06e4\u06e5\u06d9\u06e7\u06d8\u06d6\u06d8\u06e6\u06d7\u06dc\u06d8\u06e1\u06ec\u06d7"

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, ",DeviceName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d7\u06e7\u06e6\u06d9\u06eb\u06d6\u06d8\u06da\u06e7\u06e6\u06d8\u06d7\u06e2\u06d6\u06dc\u06e1\u06d8\u06d7\u06d7\u06e8\u06df\u06d6\u06e5\u06d8\u06db\u06e4\u06e5\u06d8\u06ec\u06e2\u06e7\u06d8\u06d7\u06db\u06ec\u06e8\u06d6\u06dc\u06ec\u06e7"

    goto/16 :goto_0

    :sswitch_1c
    iget-object v0, v3, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06df\u06d9\u06df\u06df\u06d7\u06e1\u06d8\u06ec\u06db\u06e5\u06e6\u06e5\u06e5\u06d6\u06d9\u06df\u06eb\u06da\u06e2\u06e6\u06e2\u06e4\u06d7\u06e8\u06d6\u06d8\u06e5\u06d6\u06e7\u06da\u06e8\u06e8\u06eb\u06e4\u06e4\u06e1\u06da\u06df\u06ec\u06da\u06da\u06e4\u06d8\u06df\u06e0\u06e6\u06d8\u06e5\u06e0\u06e1"

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, ",ScriptVersion="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06da\u06e6\u06e7\u06d8\u06db\u06e5\u06e0\u06da\u06e0\u06e5\u06d8\u06d6\u06da\u06d6\u06d8\u06e0\u06d6\u06dc\u06e0\u06e6\u06e5\u06d6\u06ec\u06e0\u06d9\u06e2\u06e1\u06e7\u06d7\u06d6\u06d8\u06e5\u06dc\u06e6\u06e8\u06dc\u06e0\u06e2\u06ec\u06d9"

    goto/16 :goto_0

    :sswitch_1e
    iget v0, v3, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptVersion:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u06dc\u06ec\u06e5\u06da\u06d8\u06e4\u06e1\u06e5\u06d7\u06db\u06dc\u06e7\u06dc\u06e0\u06e1\u06d6\u06d7\u06e4\u06dc\u06e5\u06e2\u06d8\u06e1\u06df\u06ec\u06e7\u06e0\u06d9\u06e0\u06e5\u06d9\u06eb\u06eb\u06e7\u06e8"

    goto/16 :goto_0

    :sswitch_1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "\u06e8\u06da\u06e0\u06db\u06dc\u06df\u06eb\u06da\u06e0\u06e5\u06d9\u06dc\u06d8\u06e4\u06e4\u06e0\u06e2\u06e6\u06ec\u06df\u06e5\u06ec\u06e1\u06d8\u06e5\u06d9\u06e8\u06df\u06d7\u06dc\u06df\u06eb\u06d7\u06da\u06df\u06e8\u06e2"

    goto/16 :goto_0

    :sswitch_20
    invoke-static {}, Lz2/kc;->OooOo00()Lz2/kc;

    move-result-object v0

    new-instance v2, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO0OO;

    invoke-direct {v2, p0}, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO0OO;-><init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;)V

    invoke-virtual {v0, v2}, Lz2/kc;->OooOo0O(Lz2/kc$OooO00o;)Lz2/kc;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0, v3}, Lz2/kc;->OooOo(ZLandroid/content/Context;Lcom/cyjh/http/bean/request/UpdateRequestInfo;)V

    const-string v0, "\u06eb\u06df\u06d6\u06ec\u06e8\u06e4\u06d6\u06e2\u06e5\u06d8\u06e1\u06e8\u06e8\u06d8\u06e4\u06d8\u06e2\u06dc\u06e7\u06e1\u06e8\u06e0\u06eb\u06e7\u06eb\u06e8\u06d8\u06d8\u06e8\u06e8\u06e5\u06eb\u06e6\u06df\u06d8\u06ec\u06d6\u06d6\u06df\u06e1\u06e2\u06d9\u06e5\u06d8\u06d8\u06e7\u06d7\u06dc\u06d7\u06e8\u06d9\u06da\u06d6\u06d8\u06ec\u06e0\u06e0"

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "\u06d6\u06d7\u06e1\u06df\u06e5\u06db\u06e5\u06e4\u06e6\u06e2\u06e2\u06d8\u06d6\u06e1\u06e8\u06d9\u06e6\u06d6\u06e5\u06e5\u06e1\u06d8\u06d7\u06eb\u06e7\u06e2\u06e4\u06d6\u06d8\u06e1\u06e7\u06e0\u06dc\u06da\u06d6\u06e7\u06db\u06d6\u06e7\u06e8\u06e6\u06d8\u06df\u06e2"

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "\u06eb\u06e0\u06da\u06dc\u06d7\u06d8\u06d8\u06d9\u06e6\u06d6\u06d8\u06d7\u06e2\u06dc\u06e4\u06e8\u06e1\u06db\u06db\u06d7\u06e8\u06ec\u06eb\u06d9\u06e5\u06d6\u06e1\u06d8\u06e7\u06d8\u06e1\u06e2\u06da\u06e4\u06e6\u06eb"

    goto/16 :goto_0

    :sswitch_23
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x68f0008a -> :sswitch_17
        -0x4bf12408 -> :sswitch_20
        -0x4bd2e09e -> :sswitch_13
        -0x46a1bbdf -> :sswitch_23
        -0x43db40ed -> :sswitch_14
        -0x280beed1 -> :sswitch_1e
        -0x201ed47e -> :sswitch_9
        -0x11929ed9 -> :sswitch_1a
        -0xd07713e -> :sswitch_19
        -0xc912927 -> :sswitch_23
        -0x5604c64 -> :sswitch_1d
        0x18d6eaf9 -> :sswitch_1
        0x269a4925 -> :sswitch_11
        0x2e4414c5 -> :sswitch_16
        0x4d40c6b5 -> :sswitch_15
        0x4f3a5feb -> :sswitch_1c
        0x596c5906 -> :sswitch_18
        0x63808133 -> :sswitch_1b
        0x6f890467 -> :sswitch_0
        0x77b4bc54 -> :sswitch_1f
        0x7e992c1e -> :sswitch_23
        0x7ff62439 -> :sswitch_12
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x6c9d6b00 -> :sswitch_21
        -0x44ee3c9c -> :sswitch_2
        0x592dc3b -> :sswitch_7
        0x238e7275 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x1f099762 -> :sswitch_3
        -0x1d381f22 -> :sswitch_5
        0x380e6ac3 -> :sswitch_6
        0x7be5ff58 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x1b95057 -> :sswitch_a
        0x357fb003 -> :sswitch_10
        0x4fb1004d -> :sswitch_f
        0x57f83701 -> :sswitch_22
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x399a14b9 -> :sswitch_b
        -0x1cdf548b -> :sswitch_d
        -0x15918473 -> :sswitch_e
        0x457cb738 -> :sswitch_c
    .end sparse-switch
.end method

.method private initListener()V
    .locals 9

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v0, "\u06d9\u06e1\u06e2\u06eb\u06e8\u06e1\u06ec\u06da\u06dc\u06e6\u06d8\u06e0\u06e7\u06e4\u06ec\u06df\u06e1\u06e7\u06d8\u06db\u06e2\u06df\u06e6\u06ec\u06e6\u06e0\u06e5\u06e8\u06d8\u06e7\u06d7\u06d8\u06e4\u06d9\u06e6\u06d7\u06e8\u06e2\u06e5\u06d6\u06dc\u06e8\u06ec"

    move v1, v2

    move-object v3, v4

    move-object v5, v4

    move v6, v2

    move-object v7, v4

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v4, 0x4c

    xor-int/2addr v2, v4

    xor-int/lit16 v2, v2, 0x361

    const/16 v4, 0x3b7

    const v8, -0x43731991

    xor-int/2addr v2, v4

    xor-int/2addr v2, v8

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e6\u06dc\u06e1\u06e7\u06e7\u06e1\u06e6\u06df\u06e4\u06e4\u06eb\u06eb\u06db\u06d6\u06e7\u06da\u06e5\u06ec\u06e0\u06d6\u06ec\u06e4\u06e8\u06d8\u06ec\u06da\u06e0\u06dc\u06e1\u06e8\u06da\u06e4\u06d9\u06e7\u06e2\u06e5\u06d6\u06e8\u06e6\u06d8\u06e6\u06df\u06e8\u06d8\u06d9\u06d8\u06db\u06e8\u06e2\u06ec\u06d6\u06d7\u06dc\u06e4\u06e0\u06e0"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OooooO0:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v0, "\u06e0\u06d8\u06eb\u06d8\u06e7\u06e2\u06da\u06df\u06d7\u06e4\u06db\u06df\u06dc\u06e7\u06e0\u06e8\u06e4\u06e0\u06eb\u06e6\u06dc\u06e7\u06db\u06d6\u06d9\u06eb\u06d6\u06d7\u06db\u06e7\u06dc\u06da\u06db\u06e7\u06d6\u06d6\u06e7\u06e4\u06da\u06d8\u06e8\u06e1\u06d8\u06d8\u06df\u06e6\u06e0\u06e6\u06df\u06da\u06d7\u06df\u06d7"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OooooOO:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v0, "\u06e8\u06dc\u06eb\u06da\u06eb\u06eb\u06dc\u06e7\u06e6\u06d8\u06df\u06df\u06d6\u06d8\u06dc\u06e5\u06e1\u06d8\u06d6\u06d7\u06d8\u06eb\u06d6\u06eb\u06e7\u06ec\u06e1\u06d6\u06e7\u06d6\u06d8\u06ec\u06e8\u06df\u06d9\u06e8\u06e1\u06d8\u06da\u06e0\u06e1\u06ec\u06d6\u06d8\u06da\u06d8\u06eb\u06d6\u06db\u06e0\u06df\u06d7\u06d7\u06e8\u06e6\u06db\u06df"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OooooOo:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v0, "\u06e6\u06e0\u06e2\u06e6\u06d6\u06e8\u06d6\u06e8\u06eb\u06e7\u06e1\u06e6\u06dc\u06ec\u06e2\u06d8\u06d8\u06e7\u06ec\u06db\u06e5\u06e8\u06db\u06d6\u06d6\u06e8\u06db\u06e2\u06d6\u06d9\u06e6\u06e6\u06e8\u06d8\u06ec\u06d7\u06e5\u06e1\u06e5\u06d8\u06d8\u06df\u06e2\u06e1"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->Oooooo0:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v0, "\u06dc\u06d8\u06e7\u06ec\u06e8\u06e2\u06e6\u06e1\u06d6\u06d8\u06d7\u06d7\u06df\u06e4\u06eb\u06e8\u06d8\u06e8\u06e8\u06e7\u06d8\u06dc\u06e8\u06e4\u06e0\u06eb\u06dc\u06e7\u06e0\u06ec\u06e0\u06df\u06e8\u06d8\u06e6\u06e8\u06e0\u06e8\u06df\u06dc\u06d8"

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->Oooooo:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v0, "\u06e0\u06eb\u06e1\u06d8\u06e7\u06e8\u06d7\u06d7\u06d6\u06e4\u06ec\u06d7\u06dc\u06d8\u06ec\u06d8\u06d8\u06d8\u06e5\u06e6\u06d8\u06d8\u06e7\u06e4\u06db\u06e4\u06eb\u06e1\u06e6\u06e1\u06e1\u06da\u06db\u06d8\u06e0\u06d8\u06db\u06e5\u06e0\u06e6\u06d8\u06e2\u06e7\u06e1\u06e6\u06d7"

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OoooooO:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v0, "\u06d8\u06df\u06d7\u06dc\u06e0\u06e5\u06d9\u06e8\u06d8\u06e0\u06dc\u06dc\u06d8\u06ec\u06db\u06db\u06ec\u06d7\u06d6\u06d8\u06dc\u06da\u06e4\u06e2\u06e6\u06e8\u06d8\u06e8\u06e4\u06e0\u06e1\u06e5\u06e1\u06d8"

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o00O0O:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v0, "\u06db\u06d8\u06df\u06df\u06eb\u06e6\u06d8\u06e0\u06d7\u06e6\u06d8\u06eb\u06da\u06e7\u06d8\u06e7\u06dc\u06d8\u06ec\u06d6\u06e1\u06eb\u06eb\u06e8\u06dc\u06d9\u06e7\u06e2\u06df\u06ec\u06db\u06dc\u06e7\u06e5\u06e8\u06d6\u06e0\u06df\u06d6\u06d8\u06d9\u06dc\u06db\u06e2\u06d8\u06e7\u06d8"

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o00Oo0:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v0, "\u06eb\u06e4\u06e0\u06e8\u06e4\u06da\u06df\u06da\u06e0\u06e6\u06e6\u06e0\u06d8\u06dc\u06e4\u06d6\u06e0\u06dc\u06da\u06d6\u06df\u06e2\u06e6\u06d8\u06e0\u06e7\u06d6\u06db\u06eb\u06d6\u06e5\u06d8\u06e7\u06d8\u06d9\u06e2\u06d9"

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o00Ooo:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v0, "\u06d9\u06e4\u06e1\u06d8\u06df\u06da\u06e6\u06d8\u06e2\u06e5\u06d8\u06dc\u06e7\u06d8\u06d8\u06d8\u06df\u06e1\u06d9\u06d8\u06d8\u06e6\u06e4\u06d8\u06d8\u06e5\u06df\u06d6\u06d8\u06d7\u06eb\u06e7\u06d8\u06e8\u06df\u06e5\u06d6\u06dc\u06e2\u06e7\u06e8\u06d8\u06db\u06e6\u06d6\u06ec\u06e6\u06ec\u06e7\u06e7\u06e0\u06d7\u06e8\u06e6\u06d8"

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->Ooooooo:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v0, "\u06d6\u06e0\u06eb\u06ec\u06db\u06eb\u06e0\u06d6\u06e7\u06d8\u06d7\u06d8\u06e7\u06e0\u06db\u06e5\u06d9\u06df\u06dc\u06d6\u06e4\u06e1\u06d8\u06e4\u06eb\u06da\u06e2\u06e1\u06e0\u06e0\u06e8\u06e8\u06d8\u06ec\u06e1\u06e2\u06e8\u06e5\u06d6\u06d8\u06dc\u06df\u06db\u06e0\u06e0\u06ec\u06e0\u06e8\u06d8\u06d8\u06df\u06e7\u06d7\u06e5\u06e8\u06ec\u06dc\u06da"

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o0OoOo0:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v0, "\u06e6\u06dc\u06d8\u06dc\u06e0\u06e1\u06d8\u06d8\u06ec\u06e5\u06df\u06e5\u06e1\u06d8\u06e8\u06db\u06db\u06e2\u06ec\u06da\u06e7\u06e6\u06e1\u06d8\u06d7\u06e8\u06e7\u06e6\u06e0\u06d9\u06db\u06e8\u06e8\u06d8"

    goto :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o00oO0o:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06dc\u06e7\u06e2\u06db\u06eb\u06e0\u06e1\u06d7\u06db\u06ec\u06db\u06ec\u06df\u06e1\u06e5\u06d8\u06eb\u06e6\u06d6\u06d8\u06e8\u06e5\u06e1\u06e0\u06e4\u06da\u06d8\u06e1\u06e4\u06e0\u06df\u06e5\u06d8\u06d8\u06eb\u06d7\u06dc\u06e2\u06e1\u06d8\u06e5\u06e4\u06e6\u06e4\u06e2\u06df"

    goto :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o00oO0O:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06e2\u06d6\u06e8\u06d8\u06d8\u06e5\u06e6\u06d8\u06eb\u06e7\u06df\u06e1\u06eb\u06dc\u06dc\u06e6\u06d8\u06e0\u06d6\u06e1\u06d8\u06db\u06d9\u06e1\u06d7\u06e5\u06d7\u06d7\u06eb\u06da\u06d8\u06d9\u06e8\u06d8"

    goto :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o0ooOO0:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06d8\u06dc\u06e1\u06d8\u06ec\u06e8\u06e8\u06da\u06da\u06db\u06e7\u06eb\u06d6\u06d8\u06d8\u06e1\u06e2\u06db\u06e0\u06da\u06e4\u06e7\u06d6\u06d8\u06e1\u06d9\u06d8\u06da\u06dc\u06ec\u06df\u06da\u06e6\u06eb\u06dc\u06d6\u06e1\u06d6\u06e1\u06d8\u06e0\u06e2\u06ec\u06d9\u06e6\u06eb\u06e5\u06d7\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o0ooOOo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06eb\u06da\u06db\u06d6\u06da\u06d9\u06e7\u06d6\u06e6\u06d8\u06e0\u06d6\u06dc\u06d8\u06e4\u06da\u06e1\u06d8\u06dc\u06d8\u06d8\u06d8\u06e0\u06e4\u06e1\u06eb\u06d7\u06e1\u06d8\u06e6\u06d6\u06e7\u06d7\u06d7\u06d8\u06d8\u06df\u06ec\u06eb\u06da\u06e0\u06d9"

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o0Oo0oo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06e1\u06e2\u06dc\u06d8\u06dc\u06da\u06d6\u06d8\u06e0\u06db\u06d7\u06d7\u06e5\u06ec\u06e4\u06e5\u06dc\u06df\u06d7\u06e8\u06da\u06e6\u06db\u06dc\u06e8\u06eb\u06d7\u06e2\u06d8\u06d8\u06e1\u06e8\u06e2\u06e0\u06ec\u06d6\u06e5\u06d7\u06e8\u06d8\u06dc\u06e4\u06db\u06e6\u06e5\u06db\u06df\u06e6\u06df\u06e7\u06e2\u06d7"

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o0OO00O:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06d8\u06d9\u06d8\u06d8\u06d9\u06db\u06ec\u06e1\u06e2\u06e6\u06e0\u06e6\u06eb\u06e8\u06e2\u06df\u06eb\u06d8\u06e6\u06d8\u06e2\u06e2\u06e6\u06e2\u06e7\u06d7\u06e0\u06e1\u06e0\u06e0\u06d9\u06eb\u06e7\u06e5\u06db\u06e8\u06e4\u06e6\u06e1\u06eb\u06db"

    goto/16 :goto_0

    :sswitch_12
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v0, 0x7f0c010e

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->oo0o0Oo:[Ljava/lang/String;

    invoke-direct {v4, p0, v0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const-string v0, "\u06da\u06d6\u06d9\u06e5\u06ec\u06e1\u06d8\u06e1\u06e6\u06e7\u06db\u06e4\u06d7\u06e6\u06d9\u06d6\u06df\u06e7\u06d7\u06d9\u06d7\u06e7\u06d7\u06dc\u06d6\u06d8\u06eb\u06e8\u06e5\u06df\u06e6\u06e4\u06e8\u06e7\u06d8\u06eb\u06d8\u06df\u06e0\u06e5\u06da\u06d9\u06d9\u06dc\u06d8\u06e4\u06e1\u06d7\u06eb\u06e1\u06e6"

    move-object v7, v4

    goto/16 :goto_0

    :sswitch_13
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->ooOO:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const-string v0, "\u06d8\u06d9\u06dc\u06d8\u06e4\u06db\u06d6\u06d8\u06e1\u06e1\u06dc\u06d7\u06da\u06e8\u06db\u06d9\u06e0\u06d6\u06e6\u06d8\u06d8\u06eb\u06d9\u06e2\u06e8\u06e1\u06d6\u06d8\u06da\u06e7\u06d6\u06e0\u06d9\u06e6"

    goto/16 :goto_0

    :sswitch_14
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->ooOO:Landroid/widget/Spinner;

    new-instance v2, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO00o;

    invoke-direct {v2, p0}, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO00o;-><init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const-string v0, "\u06dc\u06e6\u06e0\u06e7\u06ec\u06e5\u06d9\u06e7\u06d7\u06e7\u06e8\u06df\u06e7\u06e2\u06d6\u06db\u06ec\u06d9\u06da\u06e1\u06d8\u06eb\u06ec\u06e0\u06da\u06e1\u06e1\u06d8\u06d6\u06dc\u06d6\u06d8\u06dc\u06e8\u06e0\u06e1\u06d6\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_15
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    const-string v2, "sp_key_setting_auto_run_script_countdown"

    const/4 v4, 0x5

    invoke-virtual {v0, v2, v4}, Lz2/x4;->OooO0OO(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "\u06ec\u06d9\u06d6\u06d8\u06d7\u06d9\u06da\u06ec\u06e0\u06e7\u06e8\u06e0\u06e1\u06df\u06e1\u06dc\u06d7\u06da\u06e1\u06d8\u06d7\u06e2\u06e6\u06e8\u06e7\u06dc\u06dc\u06e1\u06e8\u06d8\u06d7\u06e6\u06e8"

    move v6, v2

    goto/16 :goto_0

    :sswitch_16
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->oo0o0Oo:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v0, "\u06e7\u06ec\u06d7\u06ec\u06e7\u06e6\u06d8\u06ec\u06e4\u06dc\u06d6\u06ec\u06eb\u06e1\u06e4\u06d7\u06dc\u06e5\u06e6\u06d8\u06e7\u06dc\u06dc\u06ec\u06ec\u06e2\u06df\u06eb\u06ec\u06d6\u06d9\u06ec\u06e0\u06e7\u06e5\u06d8\u06e1\u06d8\u06e5\u06d8\u06dc\u06d7\u06dc\u06d8\u06d7\u06e1\u06d7"

    move-object v5, v4

    goto/16 :goto_0

    :sswitch_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06d6\u06d6\u06e7\u06d9\u06d6\u06d8\u06d8\u06db\u06d8\u06e7\u06d8\u06eb\u06d9\u06db\u06e4\u06e8\u06dc\u06d7\u06ec\u06e1\u06ec\u06d7\u06d6\u06da\u06d6\u06e7\u06e4\u06e8\u06da\u06da\u06e8\u06d8"

    move-object v3, v2

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u06e2\u06e8\u06e7\u06d8\u06e1\u06d7\u06d6\u06d8\u06dc\u06da\u06e6\u06e7\u06d6\u06d6\u06d8\u06df\u06eb\u06e2\u06dc\u06e4\u06d7\u06e5\u06e7\u06e8\u06d8\u06e7\u06e8\u06da\u06e8\u06da\u06e4\u06e2\u06e2\u06e5\u06d8\u06e7\u06da\u06e6\u06d9\u06da\u06d8\u06eb\u06e8\u06d8\u06e6\u06eb\u06e0"

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "\u79d2"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d8\u06db\u06e6\u06d8\u06d7\u06e7\u06dc\u06d8\u06db\u06dc\u06db\u06e2\u06d8\u06d8\u06e0\u06e6\u06e6\u06ec\u06db\u06e2\u06e6\u06d6\u06d6\u06e5\u06d9\u06ec\u06d8\u06e0\u06e2\u06d7\u06e8\u06df\u06e4\u06e5\u06da\u06d9\u06e2\u06e0\u06e6\u06d8\u06d8\u06d8\u06e8\u06e5\u06d8\u06e8\u06da\u06e5\u06e0\u06e4\u06e7\u06dc\u06da\u06e8\u06d8\u06ec\u06da\u06db"

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const-string v0, "\u06ec\u06d6\u06e6\u06d7\u06d8\u06e1\u06d8\u06da\u06e8\u06d6\u06d8\u06e5\u06d6\u06d8\u06e7\u06ec\u06d8\u06da\u06dc\u06da\u06e0\u06d9\u06eb\u06db\u06d7\u06e1\u06e5\u06e1\u06d8\u06e1\u06d9\u06d9\u06e5\u06d6\u06d8\u06e5\u06dc\u06e7\u06d8\u06ec\u06d7\u06e0\u06ec\u06ec\u06e5\u06d9\u06db\u06e5\u06e7\u06da\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_1b
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->ooOO:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    const-string v0, "\u06eb\u06df\u06e6\u06da\u06d6\u06eb\u06e2\u06d8\u06e1\u06e1\u06d6\u06db\u06dc\u06d8\u06e6\u06d8\u06e7\u06e0\u06d6\u06eb\u06df\u06e6\u06d8\u06e4\u06e8\u06e8\u06d8\u06e6\u06d7\u06eb\u06d8\u06e2\u06dc\u06d8\u06d7\u06ec\u06d8\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_1c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b6b247c -> :sswitch_4
        -0x618e756e -> :sswitch_f
        -0x60d763c5 -> :sswitch_7
        -0x5e46796b -> :sswitch_14
        -0x4606a5b7 -> :sswitch_0
        -0x451ea2f7 -> :sswitch_13
        -0x43f9926b -> :sswitch_9
        -0x3b32dbcd -> :sswitch_1
        -0x3168eb62 -> :sswitch_1c
        -0x2c216908 -> :sswitch_11
        -0x25ca487a -> :sswitch_1b
        -0xd17b97c -> :sswitch_10
        -0xac2e70c -> :sswitch_8
        0x380a3f -> :sswitch_12
        0x15dc630 -> :sswitch_b
        0x164fafd -> :sswitch_e
        0xb5dd078 -> :sswitch_16
        0x1892da42 -> :sswitch_5
        0x20a6ffce -> :sswitch_15
        0x252548d0 -> :sswitch_19
        0x255c131a -> :sswitch_17
        0x457fdde0 -> :sswitch_c
        0x4fafa911 -> :sswitch_2
        0x58d89ada -> :sswitch_6
        0x5b05f8ee -> :sswitch_3
        0x6467e636 -> :sswitch_18
        0x6a15eb56 -> :sswitch_d
        0x6aa94457 -> :sswitch_a
        0x7eb826f3 -> :sswitch_1a
    .end sparse-switch
.end method

.method private initView()V
    .locals 6

    const/16 v5, 0x8

    const/4 v1, 0x0

    const-string v0, "\u06e8\u06da\u06e1\u06e1\u06df\u06dc\u06e4\u06d8\u06dc\u06eb\u06e2\u06e8\u06e2\u06db\u06db\u06d6\u06e0\u06e0\u06da\u06d7\u06e1\u06e8\u06df\u06e1\u06d8\u06d8\u06e1\u06db\u06d8\u06e1\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x71

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x19d

    const/16 v3, 0x19c

    const v4, 0x9995170    # 3.6909994E-33f

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06d9\u06ec\u06e5\u06e2\u06e0\u06dc\u06e2\u06e8\u06eb\u06e6\u06e5\u06ec\u06e5\u06d7\u06dc\u06e2\u06e0\u06df\u06eb\u06e5\u06e0\u06e5\u06d8\u06e1\u06e4\u06d6\u06d8\u06e5\u06dc\u06e1\u06e2\u06ec\u06e6\u06d8\u06e4\u06d9\u06dc\u06e8\u06e2\u06dc\u06d8\u06e6\u06e5\u06e2"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OooOO0()V

    const-string v0, "\u06e7\u06d8\u06e1\u06d9\u06db\u06e1\u06d9\u06ec\u06d9\u06db\u06da\u06e8\u06e0\u06e8\u06e7\u06db\u06e8\u06d6\u06e0\u06e1\u06eb\u06dc\u06e8\u06e6\u06e5\u06e6\u06e8\u06d8\u06e8\u06e7\u06db\u06d9\u06e1\u06ec\u06e4\u06e0\u06df\u06da\u06d6\u06d8\u06df\u06e6\u06e5\u06ec\u06d8\u06e8\u06d8\u06e4\u06e4\u06e5\u06d8\u06d7\u06e0\u06da\u06e0\u06eb\u06d9"

    goto :goto_0

    :sswitch_2
    const v0, 0x7f09041e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OooooO0:Landroid/widget/Switch;

    const-string v0, "\u06eb\u06d9\u06dc\u06d8\u06d8\u06d8\u06da\u06e8\u06df\u06e6\u06e0\u06eb\u06e7\u06d6\u06d8\u06d7\u06e0\u06dc\u06d6\u06dc\u06da\u06e5\u06d8\u06db\u06da\u06dc\u06e8\u06da\u06e7\u06da\u06e2\u06ec"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f090422

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OooooOO:Landroid/widget/Switch;

    const-string v0, "\u06e7\u06d9\u06e1\u06d8\u06e8\u06e8\u06ec\u06df\u06e7\u06e2\u06e7\u06e8\u06e4\u06d7\u06e1\u06d6\u06d8\u06d7\u06e8\u06e2\u06db\u06e5\u06d7\u06e6\u06e4\u06e7\u06dc\u06eb\u06e8\u06e6\u06d6\u06e1\u06e6\u06e1\u06dc\u06e2\u06d7\u06dc\u06eb\u06e8\u06db\u06e2\u06e2\u06da\u06e7\u06e4\u06e7\u06e4\u06e1\u06d8"

    goto :goto_0

    :sswitch_4
    const v0, 0x7f090420

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OooooOo:Landroid/widget/Switch;

    const-string v0, "\u06d6\u06ec\u06e7\u06db\u06e5\u06dc\u06dc\u06e2\u06e2\u06e2\u06dc\u06e8\u06d8\u06dc\u06e2\u06d9\u06e5\u06e8\u06d8\u06d8\u06e1\u06d8\u06d8\u06d8\u06eb\u06e0\u06e5\u06df\u06e6\u06e5\u06ec\u06da\u06dc\u06d8\u06e6\u06e0\u06eb\u06db\u06d9\u06e6\u06e1\u06dc\u06e5\u06e2\u06e1\u06dc\u06d6\u06e4\u06e1\u06e1\u06db\u06e5\u06ec\u06db\u06d9\u06d9\u06e0\u06e1"

    goto :goto_0

    :sswitch_5
    const v0, 0x7f090423

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->Oooooo0:Landroid/widget/Switch;

    const-string v0, "\u06e2\u06e2\u06e1\u06d9\u06da\u06ec\u06e2\u06dc\u06e2\u06e5\u06ec\u06df\u06d6\u06df\u06e6\u06d8\u06d7\u06e0\u06e8\u06d8\u06d8\u06d7\u06e0\u06dc\u06e4\u06e0\u06e2\u06d8\u06e6\u06e7\u06ec\u06e1"

    goto :goto_0

    :sswitch_6
    const v0, 0x7f09041f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->Oooooo:Landroid/widget/Switch;

    const-string v0, "\u06e2\u06d7\u06dc\u06eb\u06df\u06e5\u06d8\u06e6\u06e1\u06e5\u06d8\u06e2\u06e8\u06d7\u06d9\u06da\u06da\u06eb\u06db\u06d8\u06dc\u06d6\u06d9\u06e4\u06d6\u06e6\u06d6\u06d8\u06e1\u06db\u06e1\u06d8"

    goto :goto_0

    :sswitch_7
    const v0, 0x7f090421

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OoooooO:Landroid/widget/Switch;

    const-string v0, "\u06d9\u06df\u06ec\u06e1\u06df\u06dc\u06e7\u06d8\u06ec\u06e2\u06db\u06e4\u06df\u06d6\u06e2\u06d7\u06df\u06e4\u06d6\u06dc\u06ec\u06db\u06d7\u06d8\u06eb\u06d8\u06e5\u06d9\u06d6\u06d8\u06da\u06e6\u06ec\u06d8\u06d6\u06df"

    goto :goto_0

    :sswitch_8
    const v0, 0x7f09041d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->Ooooooo:Landroid/widget/Switch;

    const-string v0, "\u06e8\u06da\u06ec\u06df\u06e0\u06da\u06e6\u06e0\u06e6\u06d8\u06e0\u06db\u06e5\u06dc\u06e6\u06e6\u06d8\u06e7\u06da\u06d9\u06ec\u06d9\u06e0\u06df\u06e8\u06e1\u06d8\u06d9\u06e4\u06da\u06e0\u06d6\u06d6\u06e1\u06d8\u06e5\u06d8\u06e6\u06ec\u06d8\u06da\u06eb\u06df\u06eb\u06dc\u06df\u06df\u06da\u06d8\u06d8\u06e7\u06eb\u06e0\u06df\u06dc\u06d8\u06e8\u06eb"

    goto :goto_0

    :sswitch_9
    const v0, 0x7f09041a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o0OoOo0:Landroid/widget/Switch;

    const-string v0, "\u06d8\u06e5\u06e8\u06e6\u06eb\u06e2\u06dc\u06db\u06e8\u06dc\u06db\u06e0\u06dc\u06da\u06d6\u06e8\u06e6\u06e5\u06d8\u06db\u06e2\u06ec\u06db\u06df\u06db\u06d9\u06e2\u06d6\u06d8\u06e7\u06ec\u06e1\u06d8\u06d8\u06e2\u06dc\u06d8\u06e1\u06d8\u06da\u06dc\u06e7\u06d8\u06e1\u06e6\u06df\u06dc\u06e4\u06df\u06e1\u06ec\u06e1\u06d8\u06dc\u06ec\u06e0\u06d9\u06db\u06eb"

    goto/16 :goto_0

    :sswitch_a
    const v0, 0x7f090409

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->ooOO:Landroid/widget/Spinner;

    const-string v0, "\u06e5\u06e8\u06da\u06d9\u06e4\u06ec\u06e5\u06eb\u06dc\u06da\u06e7\u06e8\u06da\u06d6\u06d7\u06d8\u06db\u06e0\u06db\u06d7\u06e6\u06d8\u06df\u06dc\u06d6\u06d8\u06e4\u06e0\u06e7\u06dc\u06d7\u06e2\u06e4\u06d9\u06ec\u06d7\u06da\u06da"

    goto/16 :goto_0

    :sswitch_b
    const v0, 0x7f09041b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o00Oo0:Landroid/widget/Switch;

    const-string v0, "\u06e5\u06d8\u06da\u06e2\u06dc\u06e7\u06d8\u06ec\u06d7\u06e1\u06d8\u06d9\u06e1\u06e2\u06e5\u06e0\u06da\u06e2\u06dc\u06e2\u06d9\u06e0\u06e0\u06e1\u06da\u06eb\u06d7\u06e1\u06e6\u06e8\u06df\u06e6"

    goto/16 :goto_0

    :sswitch_c
    const v0, 0x7f09041c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o00Ooo:Landroid/widget/Switch;

    const-string v0, "\u06e0\u06e8\u06d8\u06df\u06e2\u06df\u06e2\u06d8\u06e4\u06d9\u06da\u06dc\u06d8\u06e2\u06d7\u06e5\u06e7\u06dc\u06df\u06d7\u06db\u06da\u06e1\u06db\u06e7\u06da\u06da\u06d7\u06e7\u06e8\u06d8\u06e0\u06db\u06da\u06d7\u06e8\u06e7\u06d8\u06dc\u06d6\u06d8\u06d8\u06e1\u06e1"

    goto/16 :goto_0

    :sswitch_d
    const v0, 0x7f09023a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o00oO0o:Landroid/widget/Button;

    const-string v0, "\u06e5\u06e6\u06df\u06db\u06e7\u06dc\u06e4\u06e7\u06e8\u06df\u06eb\u06d9\u06d7\u06d7\u06d6\u06e1\u06df\u06e1\u06d8\u06e7\u06d9\u06ec\u06e1\u06e2\u06e6\u06d8\u06e6\u06e2\u06dc\u06d8\u06d6\u06da\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_e
    const v0, 0x7f0903f0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o00oO0O:Landroid/widget/Button;

    const-string v0, "\u06e6\u06df\u06df\u06e7\u06e1\u06db\u06e7\u06d9\u06da\u06e0\u06d7\u06d9\u06df\u06eb\u06da\u06e7\u06e7\u06d9\u06d7\u06d7\u06ec\u06db\u06d6\u06d8\u06d7\u06d8\u06e6\u06e2\u06eb\u06e0\u06e1\u06e7\u06e6\u06e1\u06ec\u06d6\u06d8\u06df\u06da\u06e8\u06d8\u06d6\u06e5\u06e6\u06eb\u06dc\u06e1\u06d8\u06e5\u06d7\u06ec\u06db\u06db\u06e8\u06e5\u06dc\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_f
    const v0, 0x7f0903ee

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o0ooOO0:Landroid/widget/Button;

    const-string v0, "\u06da\u06eb\u06e6\u06d8\u06e0\u06e7\u06e5\u06e4\u06da\u06db\u06df\u06e7\u06eb\u06e4\u06da\u06db\u06dc\u06ec\u06df\u06e8\u06d6\u06e2\u06dc\u06dc\u06e5\u06e8\u06e6\u06da\u06df\u06db\u06e6\u06e0\u06df\u06d6\u06d7\u06e8\u06e4\u06e5\u06e1\u06d8\u06d9\u06e0\u06d8\u06d8\u06e4\u06e8\u06d6\u06d8\u06db\u06df\u06e5\u06d8\u06dc\u06eb\u06dc\u06d8\u06d7\u06db"

    goto/16 :goto_0

    :sswitch_10
    const v0, 0x7f09023f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o0ooOOo:Landroid/widget/Button;

    const-string v0, "\u06dc\u06e7\u06db\u06e8\u06e5\u06e7\u06d8\u06e8\u06e4\u06e4\u06e0\u06db\u06df\u06e6\u06e8\u06e2\u06da\u06ec\u06da\u06e2\u06d6\u06d7\u06e1\u06e4\u06e8\u06d8\u06e6\u06db\u06e4\u06ec\u06e2\u06df\u06d9\u06d6\u06e5\u06e7\u06e7\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_11
    const v0, 0x7f0903f4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o00O0O:Landroid/widget/Switch;

    const-string v0, "\u06e5\u06df\u06e6\u06d8\u06db\u06dc\u06e5\u06e8\u06e5\u06e7\u06e8\u06e6\u06eb\u06d6\u06db\u06db\u06d7\u06ec\u06da\u06e6\u06d8\u06ec\u06d6\u06eb\u06ec\u06e5\u06df\u06d9\u06eb\u06e4\u06da\u06d7\u06dc\u06d6\u06db\u06da\u06d9\u06d7\u06dc\u06dc\u06da\u06e8\u06e4\u06dc\u06e7\u06d8\u06e6\u06df\u06d9\u06d6\u06e7\u06d9\u06ec\u06e0\u06ec"

    goto/16 :goto_0

    :sswitch_12
    const v0, 0x7f09033c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o00o0O:Landroid/widget/LinearLayout;

    const-string v0, "\u06d7\u06e0\u06d9\u06dc\u06d6\u06d6\u06dc\u06d6\u06d8\u06e8\u06df\u06d9\u06d6\u06d8\u06dc\u06e8\u06eb\u06d6\u06e8\u06da\u06e1\u06d8\u06e1\u06e1\u06d8\u06e6\u06d6\u06d8\u06d6\u06d6\u06d8\u06df\u06e5\u06da\u06df\u06d9\u06d7\u06e5\u06e4\u06e8\u06db\u06dc\u06ec\u06e8\u06e6\u06d6\u06d8\u06e5\u06ec\u06d7"

    goto/16 :goto_0

    :sswitch_13
    const v0, 0x7f09035d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o0Oo0oo:Landroid/widget/LinearLayout;

    const-string v0, "\u06e8\u06d9\u06e2\u06e8\u06e0\u06e1\u06d8\u06e6\u06e5\u06e0\u06e2\u06da\u06e7\u06e8\u06d6\u06e8\u06d8\u06db\u06df\u06df\u06e4\u06e7\u06dc\u06db\u06db\u06d6\u06da\u06d7\u06e6\u06d8\u06e0\u06e2\u06ec\u06da\u06e5\u06dc\u06d8\u06e2\u06e4\u06d9"

    goto/16 :goto_0

    :sswitch_14
    const v0, 0x7f090360

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o0OO00O:Landroid/widget/LinearLayout;

    const-string v0, "\u06dc\u06d6\u06e5\u06d7\u06eb\u06d9\u06e5\u06ec\u06e5\u06e1\u06e2\u06e2\u06ec\u06e8\u06e4\u06d9\u06d6\u06d8\u06d7\u06e1\u06e6\u06d6\u06d6\u06da\u06df\u06ec\u06db\u06d8\u06e6\u06ec"

    goto/16 :goto_0

    :sswitch_15
    const v0, 0x7f090467

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o0ooOoO:Landroid/widget/TextView;

    const-string v0, "\u06e7\u06e2\u06e7\u06df\u06e0\u06d7\u06eb\u06eb\u06dc\u06d8\u06e2\u06e1\u06e5\u06d8\u06e6\u06e4\u06eb\u06df\u06d8\u06d6\u06d8\u06df\u06d7\u06e8\u06ec\u06e8\u06e1\u06d8\u06e6\u06e6\u06d8\u06ec\u06db\u06ec\u06da\u06e4\u06e8\u06e2\u06df\u06e4"

    goto/16 :goto_0

    :sswitch_16
    const v0, 0x7f09045a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o0OOO0o:Landroid/widget/TextView;

    const-string v0, "\u06d8\u06e1\u06d6\u06d8\u06d8\u06e2\u06da\u06d6\u06e4\u06e6\u06d8\u06d9\u06dc\u06dc\u06d8\u06db\u06e5\u06e8\u06d8\u06e6\u06e4\u06eb\u06d8\u06e5\u06d9\u06e4\u06e7\u06e5\u06d8\u06e0\u06da\u06e6\u06e8\u06e2\u06e7\u06da\u06db\u06df\u06d9\u06e0\u06d8\u06e0\u06eb\u06e8\u06da\u06e4\u06e6\u06e8\u06df\u06e7\u06e1\u06dc\u06e7\u06d8"

    goto/16 :goto_0

    :sswitch_17
    invoke-static {p0}, Lz2/a4;->OooOO0O(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u06e7\u06d6\u06e5\u06db\u06eb\u06e1\u06d8\u06d8\u06eb\u06e0\u06d6\u06e1\u06e7\u06e4\u06e6\u06d6\u06e0\u06dc\u06e8\u06e4\u06e6\u06e6\u06d8\u06d7\u06da\u06e4\u06e7\u06e8\u06d7\u06e8\u06dc\u06eb\u06db\u06db\u06da\u06d8\u06e4\u06dc\u06dc\u06d8\u06d8\u06e7\u06e0\u06eb\u06e1\u06e6\u06e7\u06db\u06ec\u06d7\u06e8\u06e8\u06d8\u06e6\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_18
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o0OOO0o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u06e0\u06e0\u06e5\u06d8\u06dc\u06d6\u06e6\u06e2\u06d8\u06d9\u06db\u06df\u06e6\u06ec\u06e5\u06d7\u06e6\u06e4\u06d8\u06d8\u06ec\u06e0\u06e4\u06da\u06d6\u06da\u06df\u06e0\u06e4\u06e7\u06da\u06ec\u06d9\u06d8\u06e6\u06e2\u06e6\u06e1\u06e4\u06e8\u06e7\u06eb\u06e0\u06dc\u06dc\u06e2\u06ec\u06d7\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_19
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OooOO0O()V

    const-string v0, "\u06e7\u06e5\u06e1\u06e0\u06d6\u06da\u06dc\u06e1\u06d9\u06d9\u06e8\u06d8\u06d9\u06df\u06e4\u06e8\u06d6\u06eb\u06df\u06e5\u06d8\u06e5\u06d6\u06db\u06e2\u06db\u06e2\u06e8\u06e1\u06da\u06eb\u06ec\u06d6\u06e8\u06e7\u06d9\u06db\u06df\u06e2\u06eb\u06e2\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_1a
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OooO()V

    const-string v0, "\u06d6\u06e1\u06e4\u06e6\u06d7\u06e7\u06e5\u06d8\u06e0\u06e4\u06e1\u06d8\u06d8\u06ec\u06d6\u06df\u06d8\u06e4\u06e5\u06dc\u06d8\u06d8\u06d8\u06db\u06d8\u06d8\u06df\u06e1\u06e4\u06e6\u06e2\u06ec\u06e4\u06df\u06dc\u06e8\u06d7\u06d9\u06e6\u06d9\u06d8\u06d8\u06e6\u06db\u06d6\u06d8\u06e4\u06d7\u06dc\u06d8\u06d7\u06e6\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_1b
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->initListener()V

    const-string v0, "\u06d6\u06e6\u06df\u06df\u06d8\u06d8\u06d8\u06d6\u06db\u06e4\u06df\u06e0\u06e1\u06d9\u06d8\u06d8\u06d8\u06e7\u06e1\u06e8\u06e4\u06eb\u06d9\u06e2\u06e6\u06d8\u06d8\u06db\u06d8\u06e8\u06d8\u06d7\u06e2\u06ec"

    goto/16 :goto_0

    :sswitch_1c
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o0OO00O:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "\u06dc\u06e5\u06d9\u06d6\u06d7\u06db\u06e1\u06d9\u06e1\u06da\u06e2\u06dc\u06e4\u06e6\u06e8\u06e4\u06e1\u06eb\u06dc\u06e5\u06e7\u06d9\u06e1\u06e1\u06e4\u06ec\u06e5\u06e4\u06d6\u06db\u06d8\u06df\u06da\u06da\u06e1\u06e1\u06d7\u06d7\u06e4\u06d9\u06ec"

    goto/16 :goto_0

    :sswitch_1d
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o0Oo0oo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "\u06e0\u06d6\u06d8\u06e0\u06dc\u06e8\u06d8\u06e0\u06e6\u06d8\u06dc\u06e0\u06e1\u06e5\u06d8\u06e8\u06d8\u06db\u06e5\u06e5\u06d8\u06df\u06e7\u06e4\u06e5\u06d6\u06dc\u06e8\u06e8\u06d6\u06d8\u06e0\u06d6\u06db\u06d9\u06e5\u06dc\u06e6\u06d8\u06d9\u06e5\u06e7\u06d8\u06e0\u06e7\u06e4\u06d7\u06e2\u06e8\u06e0\u06e0\u06d8"

    goto/16 :goto_0

    :sswitch_1e
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o00o0O:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "\u06d8\u06e8\u06da\u06e4\u06e2\u06da\u06dc\u06e8\u06db\u06eb\u06d7\u06e7\u06eb\u06e2\u06e8\u06d8\u06dc\u06db\u06e7\u06e0\u06d6\u06d6\u06d8\u06df\u06eb\u06d6\u06e6\u06e4\u06e0\u06e2\u06e6\u06e7\u06d8\u06d7\u06e0\u06d6\u06db\u06db\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_1f
    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/l10;->OooOo00(Ljava/lang/Object;)V

    const-string v0, "\u06df\u06e6\u06e4\u06e5\u06e5\u06eb\u06df\u06df\u06e6\u06db\u06df\u06ec\u06e6\u06e0\u06eb\u06dc\u06df\u06d9\u06e7\u06e0\u06dc\u06d8\u06d9\u06e1\u06d8\u06d8\u06d6\u06ec\u06e0\u06d9\u06ec\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_20
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e441634 -> :sswitch_9
        -0x7dc4db86 -> :sswitch_b
        -0x7c36365f -> :sswitch_16
        -0x5f962450 -> :sswitch_a
        -0x57fdfb01 -> :sswitch_1b
        -0x55c6d414 -> :sswitch_1d
        -0x4935aa59 -> :sswitch_1a
        -0x488bd2b4 -> :sswitch_7
        -0x419140bd -> :sswitch_19
        -0x2dfe6d55 -> :sswitch_f
        -0x1f2f263c -> :sswitch_1c
        -0x1bb76bdc -> :sswitch_18
        -0x164d8af4 -> :sswitch_2
        -0x62da6d1 -> :sswitch_13
        -0x480c22f -> :sswitch_10
        0x15e86d6 -> :sswitch_0
        0x1dedbe93 -> :sswitch_8
        0x2698f041 -> :sswitch_14
        0x28d17c4f -> :sswitch_e
        0x2a6cc4ed -> :sswitch_11
        0x2eaf1611 -> :sswitch_1
        0x300778bb -> :sswitch_c
        0x34011539 -> :sswitch_3
        0x3619e63d -> :sswitch_20
        0x41eca834 -> :sswitch_1e
        0x41fa153e -> :sswitch_15
        0x51560896 -> :sswitch_17
        0x52393691 -> :sswitch_6
        0x553ac20b -> :sswitch_d
        0x6047e400 -> :sswitch_4
        0x687f42d4 -> :sswitch_12
        0x6cb468d2 -> :sswitch_5
        0x7063199c -> :sswitch_1f
    .end sparse-switch
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v6, 0x0

    const-string v0, "\u06e2\u06e0\u06dc\u06d8\u06dc\u06ec\u06d6\u06e0\u06e0\u06d9\u06da\u06e8\u06d8\u06d8\u06df\u06ec\u06dc\u06da\u06e0\u06e8\u06e2\u06e0\u06dc\u06d8\u06dc\u06e4\u06d6\u06d7\u06e4\u06d9\u06e6\u06d8\u06dc\u06eb\u06e7\u06ec\u06dc\u06dc\u06eb\u06eb\u06e0\u06da\u06e6\u06e6\u06e7\u06d8\u06e1\u06e7\u06d8\u06e7\u06db"

    move-object v1, v0

    move-object v2, v6

    move-object v7, v6

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0xd4

    xor-int/2addr v0, v3

    xor-int/lit16 v0, v0, 0x2dc

    const/16 v3, 0x26d

    const v4, 0x5ee5409a

    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06d6\u06da\u06d6\u06d9\u06d9\u06d9\u06e2\u06d7\u06d7\u06e7\u06e2\u06e1\u06ec\u06e7\u06da\u06e2\u06e6\u06d7\u06e8\u06e6\u06d6\u06e2\u06df\u06e1\u06e6\u06d8\u06eb\u06db\u06df\u06e5\u06d6\u06eb\u06da\u06d7\u06db\u06d8\u06db\u06e5\u06dc\u06e0\u06da\u06dc\u06df\u06d6\u06db\u06e6\u06eb\u06d9\u06eb\u06e7\u06d6\u06d7\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06da\u06d6\u06d8\u06e1\u06da\u06e8\u06e7\u06e4\u06d9\u06e4\u06e8\u06d6\u06dc\u06da\u06e4\u06e1\u06e6\u06d8\u06e5\u06d8\u06df\u06e0\u06e2\u06e6\u06d8\u06d8\u06d8\u06e7\u06d8\u06d7\u06d8\u06e1\u06df\u06eb\u06dc\u06d7\u06e6\u06dc\u06d7\u06dc\u06e7\u06e5\u06d9\u06e5\u06dc\u06da\u06e2\u06e5\u06da\u06da\u06db\u06e1\u06dc\u06e2\u06e8\u06e6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06d9\u06dc\u06e0\u06eb\u06df\u06d8\u06d8\u06e4\u06df\u06da\u06dc\u06e7\u06e6\u06e1\u06e7\u06e8\u06d8\u06ec\u06d9\u06e7\u06e7\u06e6\u06e1\u06d8\u06e8\u06e8\u06d8\u06ec\u06db\u06e6\u06d8\u06e1\u06e1\u06df\u06d7\u06e6\u06df\u06e0\u06e5\u06e1\u06eb\u06d9\u06df\u06db\u06ec\u06d7\u06e8\u06d9\u06e7\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06db\u06dc\u06db\u06d7\u06e1\u06d8\u06e4\u06d9\u06e6\u06e1\u06e6\u06e6\u06d8\u06d8\u06e8\u06d7\u06e5\u06eb\u06e2\u06e4\u06d8\u06dc\u06eb\u06df\u06d9\u06eb\u06ec\u06e1\u06e4\u06e4\u06e8\u06e6\u06da\u06df\u06e8\u06d8\u06d7\u06e8\u06e7\u06e6\u06d8\u06e1\u06e8\u06e4\u06ec\u06dc\u06e4\u06e6\u06ec\u06df"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "\u06db\u06d6\u06d6\u06d8\u06e1\u06df\u06db\u06dc\u06d8\u06df\u06e4\u06d6\u06e0\u06e1\u06d8\u06d8\u06d8\u06ec\u06eb\u06d7\u06ec\u06e7\u06dc\u06ec\u06dc\u06dc\u06d8\u06d6\u06e8\u06e7\u06d8\u06e2\u06e4\u06da\u06e7\u06d7\u06d6\u06d8\u06dc\u06d6\u06e0"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    const v1, -0x49589109

    const-string v0, "\u06eb\u06e6\u06d6\u06d8\u06dc\u06d6\u06e4\u06e6\u06e0\u06d6\u06d8\u06ec\u06d6\u06e2\u06e1\u06e8\u06eb\u06e6\u06df\u06dc\u06e6\u06df\u06df\u06e4\u06eb\u06e8\u06d8\u06e7\u06da\u06e8\u06e4\u06e1\u06dc\u06e2\u06e1\u06d9\u06e7\u06e2\u06ec\u06e1\u06e6\u06e4\u06d6\u06e6\u06d6\u06d8\u06e5\u06df\u06d6\u06d8\u06e6\u06e7\u06dc\u06e4\u06df\u06e0\u06e4\u06e4\u06e1\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_6
    const v3, 0x61682143

    const-string v0, "\u06df\u06d8\u06e4\u06e8\u06d7\u06d7\u06da\u06eb\u06eb\u06db\u06ec\u06e1\u06e8\u06d7\u06da\u06df\u06e5\u06db\u06e8\u06e5\u06eb\u06e4\u06da\u06da\u06d7\u06e2\u06d8\u06d8\u06e8\u06d8\u06da\u06d9\u06e5\u06d8\u06d8\u06db\u06d8\u06e1\u06ec\u06eb\u06e8\u06df\u06da\u06e8\u06d8\u06d8\u06d7\u06d6\u06e6"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e7\u06eb\u06eb\u06e7\u06df\u06e8\u06d8\u06dc\u06df\u06e7\u06e1\u06e7\u06d7\u06e5\u06d7\u06e7\u06e1\u06e7\u06d6\u06d8\u06e2\u06e4\u06d9\u06dc\u06e5\u06dc\u06d8\u06e1\u06d9\u06e6\u06ec\u06e6\u06d8\u06eb\u06df\u06e1\u06e0\u06da\u06db\u06d8\u06d7\u06df\u06d9\u06ec\u06e2"

    goto :goto_1

    :cond_0
    const-string v0, "\u06df\u06ec\u06da\u06e7\u06e5\u06e6\u06e7\u06d6\u06df\u06db\u06e6\u06e1\u06e1\u06e4\u06e0\u06d6\u06da\u06e5\u06e2\u06e6\u06d6\u06d6\u06d8\u06d6\u06e2\u06dc\u06e5\u06d7\u06e5\u06ec\u06d8\u06e8\u06ec\u06e4\u06d9\u06e8\u06e6\u06e8\u06d8\u06e0\u06db\u06d8\u06d8\u06d7\u06da\u06ec\u06db\u06db\u06e1\u06d8\u06d6\u06e4\u06e1\u06d7\u06e5\u06e7\u06d8"

    goto :goto_2

    :sswitch_8
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string v0, "\u06e1\u06dc\u06e7\u06d8\u06d8\u06df\u06d8\u06dc\u06e6\u06dc\u06d8\u06e5\u06e7\u06e4\u06e0\u06e8\u06df\u06d8\u06e5\u06d8\u06d8\u06e6\u06dc\u06d8\u06df\u06dc\u06e7\u06d8\u06dc\u06db\u06e6\u06e7\u06d9\u06dc\u06d8\u06db\u06d7\u06da\u06e0\u06e7\u06d6\u06d8\u06ec\u06d6\u06e6\u06e8"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06d8\u06e7\u06d6\u06d8\u06e0\u06db\u06d8\u06da\u06e1\u06e4\u06e2\u06e0\u06e0\u06eb\u06d8\u06e1\u06d8\u06e4\u06da\u06d9\u06d6\u06da\u06e0\u06db\u06ec\u06e1\u06d8\u06d9\u06db\u06dc\u06d8\u06e4\u06d9\u06db\u06e6\u06e8\u06d7\u06e1\u06ec\u06db\u06d8\u06e2\u06dc\u06dc\u06eb\u06e1\u06d7\u06dc\u06e8\u06d8\u06e5\u06d6\u06e1\u06d8"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06da\u06dc\u06d6\u06d8\u06e5\u06d6\u06df\u06d6\u06e1\u06e8\u06e8\u06e2\u06eb\u06e0\u06e5\u06ec\u06db\u06e7\u06e8\u06dc\u06e0\u06e2\u06e2\u06d9\u06e5\u06e4\u06e4\u06d6\u06d6\u06da\u06e5\u06e0\u06e1\u06dc\u06d6\u06d8\u06e2\u06e2\u06d6\u06d8\u06e0\u06e0\u06e5\u06d8\u06db\u06ec\u06e2\u06e2\u06e8\u06e5\u06d8"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06ec\u06d8\u06e7\u06e5\u06d7\u06ec\u06d7\u06d8\u06e7\u06d8\u06df\u06e0\u06e5\u06e2\u06e4\u06e8\u06d6\u06d6\u06e6\u06d8\u06d6\u06db\u06e4\u06eb\u06df\u06e4\u06e2\u06db\u06e8\u06e6\u06df\u06e0\u06d8\u06d6\u06e5\u06e8\u06e8\u06d7\u06eb\u06d6\u06e0\u06e6\u06e5\u06e5\u06d8\u06e5\u06e7\u06df\u06eb\u06e0\u06dc\u06d8\u06dc\u06e0\u06d7\u06d8\u06e8\u06e1"

    goto :goto_1

    :sswitch_c
    const-string v0, "\u06e2\u06da\u06dc\u06d8\u06eb\u06eb\u06e6\u06d8\u06ec\u06db\u06d6\u06da\u06dc\u06e5\u06db\u06e0\u06e6\u06d8\u06e0\u06db\u06dc\u06dc\u06e4\u06e1\u06dc\u06d6\u06d8\u06d6\u06e7\u06e1\u06d8\u06eb\u06ec\u06d6\u06db\u06dc\u06d9\u06e4\u06e0\u06e4"

    move-object v1, v0

    goto :goto_0

    :sswitch_d
    const v1, -0x58c6abfa

    const-string v0, "\u06e4\u06e0\u06e1\u06e8\u06e4\u06eb\u06e8\u06da\u06e8\u06d6\u06d6\u06e6\u06e1\u06ec\u06e5\u06e1\u06da\u06e7\u06eb\u06e5\u06db\u06eb\u06e6\u06dc\u06da\u06e4\u06e6\u06d8\u06e4\u06ec\u06e4\u06dc\u06e8\u06e1\u06d8\u06da\u06e0\u06dc\u06d7\u06eb\u06e5\u06d8\u06e2\u06e4\u06dc"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_e
    const-string v0, "\u06e2\u06eb\u06dc\u06d8\u06ec\u06d9\u06e6\u06dc\u06e2\u06e1\u06d8\u06db\u06dc\u06df\u06d6\u06e8\u06e2\u06ec\u06da\u06e1\u06d6\u06e1\u06ec\u06e8\u06e5\u06e2\u06e2\u06d6\u06ec\u06db\u06e8\u06da\u06d8\u06d8\u06e1\u06ec\u06e6\u06e6\u06e4\u06e2\u06df\u06e7\u06d8\u06e7\u06eb\u06e4\u06e1\u06d8\u06e7\u06da\u06e5\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_f
    const-string v0, "\u06e1\u06d9\u06e5\u06e6\u06d8\u06d6\u06d8\u06e5\u06e6\u06e7\u06d8\u06eb\u06d9\u06d6\u06e8\u06e4\u06e6\u06d7\u06d6\u06e7\u06e1\u06e7\u06e5\u06e8\u06e7\u06e7\u06da\u06df\u06e8\u06d8\u06eb\u06e0\u06e1\u06d8"

    goto :goto_3

    :sswitch_10
    const v3, 0x57d26aa0

    const-string v0, "\u06d6\u06e6\u06db\u06da\u06e6\u06d7\u06d7\u06df\u06db\u06e2\u06d9\u06e2\u06eb\u06db\u06dc\u06ec\u06e8\u06d8\u06d8\u06e2\u06d9\u06db\u06e8\u06d8\u06ec\u06e2\u06d6\u06e2\u06e8\u06d7\u06d6\u06d8\u06e5\u06da\u06df\u06e2\u06df\u06e5\u06dc\u06e1\u06d9\u06d8\u06e2\u06df\u06ec\u06d8\u06d9\u06e1\u06dc\u06ec\u06e1\u06e7\u06e6\u06e2\u06df\u06ec"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_4

    goto :goto_4

    :sswitch_11
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const-string v0, "\u06e0\u06e6\u06e6\u06d8\u06e5\u06d8\u06e8\u06e4\u06eb\u06e6\u06e6\u06e8\u06e0\u06df\u06d6\u06e8\u06d8\u06eb\u06e5\u06e6\u06d6\u06e4\u06e4\u06e7\u06df\u06e4\u06e5\u06e0\u06e6\u06d8\u06e7\u06da\u06eb\u06e8\u06e6\u06d7\u06db\u06e6\u06e8\u06e2\u06e6\u06e8\u06d8\u06e1\u06e0\u06e6\u06d8\u06e8\u06e8\u06e0\u06df\u06df\u06d8\u06d8"

    goto :goto_4

    :cond_1
    const-string v0, "\u06e1\u06e8\u06e4\u06eb\u06ec\u06e1\u06e1\u06db\u06e1\u06d8\u06e7\u06e1\u06d6\u06d9\u06da\u06e5\u06d8\u06e8\u06df\u06d8\u06d8\u06e4\u06d6\u06ec\u06dc\u06d8\u06d8\u06db\u06d7\u06d7\u06e7\u06e1\u06e1\u06d8\u06e8\u06d7\u06df\u06e7\u06e5\u06eb"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06da\u06dc\u06d6\u06d9\u06e7\u06e6\u06d8\u06e4\u06dc\u06db\u06d6\u06d8\u06e8\u06d8\u06e8\u06e0\u06e1\u06e1\u06d6\u06e1\u06d8\u06e2\u06dc\u06e2\u06e4\u06e4\u06e5\u06d6\u06e1\u06ec\u06e4\u06eb\u06d6\u06d8\u06e8\u06e5\u06e6\u06d8\u06df\u06dc\u06ec\u06d8\u06e1\u06eb\u06da\u06e4\u06e6\u06dc\u06e4\u06e1\u06da\u06e6\u06d7"

    goto :goto_4

    :sswitch_13
    const-string v0, "\u06e8\u06d6\u06e1\u06d8\u06df\u06eb\u06e8\u06d8\u06e8\u06eb\u06dc\u06e2\u06d9\u06e0\u06e8\u06e4\u06d8\u06d8\u06e1\u06da\u06d7\u06e0\u06e2\u06e0\u06e5\u06dc\u06e1\u06d8\u06e2\u06e1\u06d9\u06e6\u06e1\u06e8\u06ec\u06e8\u06d6\u06e7\u06d7\u06e2\u06e8\u06e7\u06e4\u06df\u06df\u06e2\u06db\u06d7\u06e8\u06d8\u06e6\u06e0\u06dc\u06d8"

    goto :goto_3

    :sswitch_14
    const-string v0, "\u06e2\u06d9\u06ec\u06d8\u06e2\u06e1\u06d6\u06e4\u06d9\u06d7\u06d7\u06d7\u06db\u06d9\u06d9\u06db\u06d6\u06ec\u06db\u06e0\u06e8\u06e7\u06e7\u06df\u06dc\u06eb\u06e2\u06df\u06e5\u06e1\u06d8\u06e1\u06e1\u06da\u06e1\u06dc\u06df\u06d8\u06d8\u06e0\u06e2\u06db\u06e4\u06e2\u06d6\u06eb\u06d8\u06dc\u06e8\u06d8\u06d8\u06d9\u06dc\u06e4\u06d9\u06dc"

    goto :goto_3

    :sswitch_15
    new-instance v3, Lz2/jb;

    invoke-direct {v3, p0}, Lz2/jb;-><init>(Landroid/content/Context;)V

    const-string v0, "\u06d8\u06d8\u06d8\u06e2\u06e8\u06da\u06d6\u06e5\u06da\u06e2\u06e0\u06dc\u06d8\u06d6\u06e0\u06ec\u06d9\u06d6\u06e1\u06d9\u06d9\u06e8\u06d8\u06d6\u06d7\u06e2\u06d8\u06e1\u06da\u06df\u06e1\u06e1\u06e5\u06e6\u06dc\u06d8\u06db\u06e7\u06da\u06ec\u06e5\u06df\u06e7\u06e5\u06d9\u06d8\u06e0\u06d6\u06da\u06e0\u06e1\u06dc\u06e1\u06dc\u06d7\u06db\u06d8\u06d8"

    move-object v1, v0

    move-object v7, v3

    goto/16 :goto_0

    :sswitch_16
    iput-object v7, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->oo000o:Lz2/jb;

    const-string v0, "\u06e1\u06ec\u06dc\u06d8\u06e0\u06dc\u06e1\u06db\u06e2\u06e4\u06d8\u06e6\u06d8\u06eb\u06d6\u06eb\u06e2\u06e5\u06e5\u06db\u06ec\u06d9\u06df\u06e8\u06e0\u06eb\u06ec\u06e6\u06e4\u06d6\u06e1\u06e1\u06e0\u06df\u06eb\u06d7\u06d9\u06e5\u06d9\u06db\u06ec\u06e8\u06e5"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    const-string v0, "\u06df\u06d7\u06e8\u06d8\u06d8\u06e1\u06df\u06dc\u06df\u06ec\u06ec\u06e6\u06e7\u06e1\u06db\u06e4\u06e5\u06d8\u06da\u06e5\u06e1\u06e5\u06eb\u06d7\u06da\u06e2\u06e6\u06e1\u06d8\u06e5\u06db\u06e0\u06e5\u06d6\u06e4\u06df\u06dc\u06e2\u06e1\u06e2\u06e8\u06d8\u06e6\u06d9\u06e8\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_18
    new-instance v0, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooOO0;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooOO0;-><init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;JJLcom/cyjh/elfin/ui/activity/SettingActivity$OooO00o;)V

    const-string v1, "\u06e6\u06e6\u06e6\u06d7\u06db\u06df\u06e2\u06d8\u06e8\u06e4\u06df\u06e0\u06d8\u06e1\u06d6\u06e5\u06e4\u06db\u06e0\u06e1\u06e1\u06d8\u06d7\u06df\u06d6\u06d8\u06e2\u06df\u06d6\u06d9\u06e1\u06eb\u06da\u06e7\u06e5\u06e7\u06d6\u06e8\u06db\u06e5\u06e7\u06e4"

    move-object v2, v0

    goto/16 :goto_0

    :sswitch_19
    iput-object v2, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o00ooo:Lcom/cyjh/elfin/ui/activity/SettingActivity$OooOO0;

    const-string v0, "\u06e6\u06eb\u06d7\u06d7\u06d8\u06e5\u06d8\u06e8\u06e4\u06d6\u06d8\u06e2\u06e2\u06d6\u06e8\u06e6\u06ec\u06d6\u06d9\u06da\u06df\u06e6\u06db\u06d7\u06da\u06d7\u06e4\u06e6\u06d8\u06e1\u06d8\u06ec\u06e1\u06da\u06e4\u06df\u06df\u06e1\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const-string v0, "\u06eb\u06d6\u06e7\u06ec\u06e8\u06df\u06e6\u06db\u06e6\u06db\u06db\u06e1\u06e2\u06df\u06da\u06e0\u06e1\u06d8\u06e0\u06dc\u06dc\u06ec\u06e1\u06e6\u06db\u06e5\u06d8\u06d8\u06da\u06db\u06d7\u06d9\u06e2\u06e0\u06eb\u06db\u06e8\u06d8\u06d7\u06e8\u06e2\u06e5\u06e6\u06e1\u06e7\u06e8\u06e7\u06d8\u06d9\u06e7\u06e6"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "\u06d7\u06e5\u06e6\u06dc\u06e1\u06dc\u06ec\u06e5\u06d8\u06d8\u06e0\u06e8\u06d7\u06e6\u06d8\u06ec\u06e8\u06e5\u06e2\u06e0\u06e4\u06ec\u06e5\u06d8\u06df\u06d8\u06e5\u06db\u06e7\u06db\u06e0\u06e4\u06db\u06e7\u06e0\u06e5\u06d8O\u06e1\u06e1\u06e4\u06e5\u06e8\u06eb\u06e6\u06e6\u06db\u06db\u06e1\u06dc\u06d8\u06eb\u06e7\u06e7"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "\u06eb\u06d6\u06e7\u06ec\u06e8\u06df\u06e6\u06db\u06e6\u06db\u06db\u06e1\u06e2\u06df\u06da\u06e0\u06e1\u06d8\u06e0\u06dc\u06dc\u06ec\u06e1\u06e6\u06db\u06e5\u06d8\u06d8\u06da\u06db\u06d7\u06d9\u06e2\u06e0\u06eb\u06db\u06e8\u06d8\u06d7\u06e8\u06e2\u06e5\u06e6\u06e1\u06e7\u06e8\u06e7\u06d8\u06d9\u06e7\u06e6"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_1d
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x596e0580 -> :sswitch_15
        -0x50e55d64 -> :sswitch_2
        -0x41b40ccb -> :sswitch_1d
        -0x3d886296 -> :sswitch_17
        -0x25fa3dec -> :sswitch_19
        -0x22855588 -> :sswitch_4
        -0x1c827d57 -> :sswitch_5
        -0xb699f49 -> :sswitch_1a
        0x11673b09 -> :sswitch_3
        0x2457619e -> :sswitch_18
        0x37dd91a3 -> :sswitch_16
        0x3a2e994f -> :sswitch_1c
        0x48e608f0 -> :sswitch_0
        0x53d21d6b -> :sswitch_1
        0x7e9623a5 -> :sswitch_d
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x380899af -> :sswitch_b
        0x34752749 -> :sswitch_6
        0x67cede34 -> :sswitch_c
        0x7d2f1db9 -> :sswitch_1b
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x362259cc -> :sswitch_8
        -0x6fa07b7 -> :sswitch_a
        -0x2e1b8af -> :sswitch_7
        0x636f9f82 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x721a7c4c -> :sswitch_10
        -0x7112bdc5 -> :sswitch_1c
        -0x385f63dd -> :sswitch_14
        -0x3838728c -> :sswitch_e
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x7a2002f7 -> :sswitch_11
        -0x41402d4c -> :sswitch_f
        0x607cff3 -> :sswitch_13
        0x2cf99acb -> :sswitch_12
    .end sparse-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 43

    const/16 v40, 0x0

    const/16 v37, 0x0

    const/16 v35, 0x0

    const/16 v39, 0x0

    const/16 v33, 0x0

    const/16 v31, 0x0

    const/16 v30, 0x0

    const/16 v29, 0x0

    const/16 v28, 0x0

    const/16 v27, 0x0

    const/16 v26, 0x0

    const/16 v25, 0x0

    const/16 v24, 0x0

    const/16 v32, 0x0

    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    const-string v3, "\u06d8\u06e0\u06d8\u06e4\u06df\u06dc\u06e7\u06e2\u06d6\u06d8\u06e8\u06df\u06da\u06db\u06e0\u06e1\u06d8\u06e8\u06d6\u06e5\u06d6\u06d8\u06e1\u06e0\u06e7\u06e8\u06d8\u06e2\u06db\u06e6\u06e8\u06e5\u06d8\u06da\u06d8\u06e5\u06d8\u06df\u06e4\u06eb"

    move-object v4, v3

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v41, 0x25a

    xor-int v3, v3, v41

    xor-int/lit16 v3, v3, 0x389

    const/16 v41, 0x34c

    const v42, -0x67f1748e

    xor-int v3, v3, v41

    xor-int v3, v3, v42

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "\u06e6\u06d8\u06eb\u06db\u06e1\u06eb\u06e8\u06d9\u06eb\u06d7\u06dc\u06e2\u06ec\u06e0\u06dc\u06e1\u06dc\u06e8\u06df\u06e1\u06e1\u06d8\u06ec\u06e6\u06d6\u06eb\u06ec\u06e6\u06d8\u06e0\u06d9"

    move-object v4, v3

    goto :goto_0

    :sswitch_1
    const-string v3, "\u06ec\u06d7\u06d6\u06d8\u06d7\u06eb\u06d6\u06e0\u06e4\u06da\u06e0\u06e8\u06e5\u06d8\u06d9\u06df\u06d7\u06df\u06e1\u06e4\u06e2\u06e0\u06e0\u06eb\u06df\u06da\u06d6\u06d6\u06db\u06df\u06d7\u06d8\u06d8\u06e1\u06e6\u06d8\u06d9\u06dc\u06e4\u06e6\u06dc\u06e4\u06e5\u06d7\u06e1\u06d8\u06e7\u06e7\u06da\u06d9\u06e0\u06d6\u06ec\u06e6\u06e2\u06e5\u06ec\u06e6"

    move-object v4, v3

    goto :goto_0

    :sswitch_2
    const-string v3, "\u06dc\u06e8\u06e7\u06d8\u06db\u06d9\u06d8\u06eb\u06e2\u06e8\u06d8\u06e6\u06df\u06df\u06da\u06eb\u06e8\u06d8\u06dc\u06e0\u06d6\u06d8\u06eb\u06eb\u06df\u06e5\u06db\u06eb\u06e7\u06e1\u06d8\u06e4\u06d7\u06e1\u06d8\u06e4\u06d7\u06dc\u06d7\u06d9\u06df"

    move-object v4, v3

    goto :goto_0

    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v40

    const-string v3, "\u06e0\u06db\u06db\u06e8\u06db\u06e8\u06d8\u06dc\u06dc\u06e7\u06d8\u06d7\u06e7\u06e7\u06e6\u06e4\u06e2\u06db\u06e4\u06e7\u06d6\u06d8\u06e7\u06eb\u06db\u06e5\u06d8\u06dc\u06e6\u06df\u06d7\u06d8\u06d6\u06e5\u06e4\u06eb\u06d6\u06e1\u06e7\u06d8\u06e5\u06d7\u06e5\u06e8\u06e1\u06e8\u06d8\u06d8\u06df\u06df\u06d8\u06e1\u06dc\u06d8\u06d9\u06df\u06d6\u06d8\u06d6\u06e7\u06d6"

    move-object v4, v3

    goto :goto_0

    :sswitch_4
    const v4, -0x202ddf08

    const-string v3, "\u06e4\u06d7\u06db\u06e8\u06e7\u06dc\u06e7\u06eb\u06d8\u06d7\u06e4\u06e8\u06d8\u06e5\u06e6\u06d8\u06da\u06e0\u06e5\u06d8\u06eb\u06e5\u06d8\u06ec\u06e2\u06db\u06e5\u06ec\u06db\u06df\u06e4\u06e7\u06df\u06d8\u06da\u06e0\u06e1\u06e0\u06e5\u06db\u06e5\u06d8\u06e1\u06e6\u06d7\u06e6\u06e1\u06d6\u06e5\u06d8"

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v41

    xor-int v41, v41, v4

    sparse-switch v41, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v3, "\u06e7\u06e8\u06e7\u06dc\u06df\u06d8\u06e0\u06d6\u06e8\u06e0\u06db\u06d8\u06db\u06db\u06e6\u06df\u06e4\u06e0\u06e0\u06d7\u06dc\u06d7\u06e8\u06e5\u06e4\u06ec\u06e1\u06d8\u06d7\u06df\u06e1\u06eb\u06da\u06e8\u06e1\u06d6\u06e4\u06e7\u06db\u06e4\u06d9\u06dc\u06e7\u06d8\u06e7\u06ec\u06d6\u06d8\u06d6\u06e0\u06e0"

    move-object v4, v3

    goto :goto_0

    :sswitch_6
    const-string v3, "\u06e4\u06e2\u06d9\u06db\u06d7\u06d6\u06e2\u06d8\u06dc\u06d8\u06d9\u06d7\u06da\u06e8\u06dc\u06d8\u06e6\u06d9\u06d9\u06ec\u06e1\u06e5\u06d8\u06eb\u06dc\u06d8\u06d8\u06e5\u06e8\u06e7\u06d8\u06d8\u06dc\u06dc\u06d8\u06e4\u06e6\u06e1\u06d8\u06db\u06e1\u06d7\u06d8\u06db\u06d6\u06d8\u06e1\u06d9\u06df\u06db\u06ec\u06e7\u06e0\u06e1\u06d7\u06e6\u06e0\u06d8\u06d8\u06e1\u06e7\u06e0"

    goto :goto_1

    :sswitch_7
    const v41, 0x53f5133a

    const-string v3, "\u06e7\u06d9\u06e7\u06ec\u06e7\u06e5\u06ec\u06e7\u06e8\u06e4\u06d8\u06e0\u06e5\u06d7\u06da\u06e6\u06d8\u06e4\u06e0\u06d8\u06d6\u06ec\u06e0\u06e8\u06df\u06e7\u06d7\u06d6\u06d8\u06e4\u06d7\u06df\u06e6\u06d8\u06d6\u06e4\u06e1\u06ec\u06d7\u06e6\u06e5\u06e1\u06e7\u06d8\u06ec\u06ec\u06d9\u06e8\u06e5\u06db"

    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v42

    xor-int v42, v42, v41

    sparse-switch v42, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    const-string v3, "\u06db\u06e7\u06e1\u06dc\u06e7\u06d6\u06eb\u06d7\u06df\u06ec\u06e7\u06e4\u06ec\u06e6\u06e5\u06d8\u06da\u06eb\u06dc\u06e1\u06e5\u06eb\u06e5\u06ec\u06d6\u06d8\u06e8\u06d6\u06d6\u06d8\u06e7\u06df\u06e1\u06ec\u06dc\u06df\u06dc\u06d8\u06dc\u06d8\u06e4\u06df\u06e8\u06db\u06db\u06e7"

    goto :goto_2

    :cond_0
    const-string v3, "\u06da\u06d8\u06e7\u06e4\u06e6\u06e1\u06e6\u06e0\u06ec\u06e7\u06d9\u06d8\u06d8\u06e8\u06dc\u06e8\u06d8\u06d7\u06eb\u06e5\u06e2\u06e5\u06dc\u06dc\u06df\u06eb\u06eb\u06da\u06e1\u06ec\u06e5\u06e4\u06db\u06dc\u06e6\u06df\u06d8\u06e4\u06e4\u06d7\u06d8\u06d8\u06dc\u06e5\u06df\u06da\u06e2\u06db\u06e8\u06df\u06df\u06eb\u06df\u06e5\u06d8\u06d9\u06d7\u06d9"

    goto :goto_2

    :sswitch_9
    const v3, 0x7f0903f4

    move/from16 v0, v40

    if-eq v0, v3, :cond_0

    const-string v3, "\u06d8\u06e0\u06df\u06e2\u06d7\u06ec\u06d7\u06dc\u06e7\u06d8\u06da\u06d7\u06d8\u06d8\u06dc\u06e4\u06d6\u06d8\u06db\u06eb\u06d7\u06d8\u06e1\u06e6\u06d8\u06d9\u06d8\u06eb\u06d7\u06e4\u06dc\u06d9\u06d6\u06e6\u06d8"

    goto :goto_2

    :sswitch_a
    const-string v3, "\u06d8\u06e5\u06da\u06df\u06da\u06d8\u06d8\u06e7\u06eb\u06ec\u06dc\u06e6\u06e2\u06e7\u06e0\u06e6\u06d9\u06e2\u06e2\u06d8\u06db\u06d8\u06ec\u06dc\u06eb\u06da\u06d7\u06e5\u06d8\u06e4\u06e6\u06e5\u06df\u06e0\u06e0\u06e7\u06e1\u06ec\u06e5\u06db\u06d9\u06eb\u06da\u06e8\u06ec\u06dc\u06d9\u06e7"

    goto :goto_1

    :sswitch_b
    const-string v3, "\u06df\u06d9\u06e0\u06e7\u06e1\u06e1\u06d8\u06e8\u06d8\u06db\u06dc\u06e2\u06da\u06d7\u06e4\u06e6\u06eb\u06d9\u06da\u06e4\u06d9\u06df\u06e2\u06e4\u06d6\u06e4\u06e7\u06e4\u06e6\u06d6\u06dc\u06d8"

    goto :goto_1

    :sswitch_c
    const-string v3, "\u06d9\u06e6\u06e8\u06dc\u06d9\u06d8\u06d8\u06e0\u06d7\u06eb\u06da\u06e5\u06da\u06d9\u06e6\u06eb\u06e4\u06d6\u06db\u06e8\u06d7\u06dc\u06d8\u06ec\u06e8\u06e8\u06d7\u06e8\u06dc\u06e0\u06e0\u06df\u06ec\u06d7\u06e4\u06e2\u06da\u06e8\u06e6\u06e8\u06e5\u06d8\u06d9"

    move-object v4, v3

    goto :goto_0

    :sswitch_d
    packed-switch v40, :pswitch_data_0

    const-string v3, "\u06df\u06ec\u06d6\u06d8\u06e8\u06e2\u06ec\u06df\u06e4\u06e6\u06e7\u06e5\u06df\u06da\u06e4\u06e0\u06e7\u06d7\u06e4\u06e8\u06e8\u06e6\u06d8\u06e7\u06db\u06d7\u06e4\u06d8\u06d8\u06d7\u06d7\u06e5"

    move-object v4, v3

    goto :goto_0

    :sswitch_e
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v37

    const-string v3, "\u06d6\u06d7\u06e8\u06d8\u06e2\u06e6\u06e8\u06d9\u06e0\u06ec\u06e6\u06dc\u06e5\u06d8\u06d6\u06df\u06d9\u06e4\u06e2\u06d9\u06ec\u06e5\u06eb\u06e1\u06e5\u06e5\u06d8\u06dc\u06df\u06e4\u06e2\u06da\u06e8\u06d8\u06e2\u06d8\u06d8\u06d8\u06e5\u06e1\u06df\u06e7\u06d7\u06df\u06ec\u06e6\u06d7\u06e2\u06d6\u06e8\u06e6\u06e0\u06e8\u06e8\u06e0\u06e2\u06e4\u06d7\u06df"

    move-object v4, v3

    goto :goto_0

    :sswitch_f
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    const-string v3, "\u06e7\u06d8\u06e8\u06ec\u06da\u06e7\u06dc\u06d8\u06df\u06e5\u06eb\u06d9\u06d6\u06e0\u06da\u06e4\u06e7\u06d9\u06df\u06e1\u06d6\u06e2\u06da\u06e0\u06dc\u06d8\u06d7\u06eb\u06d9\u06da\u06ec\u06e8\u06d8\u06eb\u06eb\u06e8"

    move-object v4, v3

    goto :goto_0

    :sswitch_10
    const-string v39, "com.cyjh.elfin.ui.activity.SettingActivity.swtWaggleStop"

    const-string v3, "\u06da\u06db\u06eb\u06e8\u06d6\u06d8\u06d8\u06dc\u06e5\u06d7\u06da\u06e1\u06df\u06d9\u06e5\u06d8\u06e7\u06e2\u06d7\u06dc\u06d9\u06d8\u06d8\u06d6\u06e5\u06dc\u06d9\u06e6\u06e6\u06d8\u06dc\u06db\u06df\u06e1\u06e7\u06e1\u06e5\u06e7\u06d8\u06d6\u06e7\u06e7\u06da\u06ec\u06e2"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_11
    const-string v3, "\u06da\u06e6\u06dc\u06d8\u06ec\u06e4\u06e8\u06db\u06d6\u06e6\u06d8\u06db\u06e0\u06d6\u06d8\u06d6\u06d6\u06ec\u06eb\u06d7\u06e4\u06e1\u06e6\u06df\u06ec\u06eb\u06e8\u06d6\u06e8\u06e5\u06d8\u06e8\u06df\u06e8\u06d8"

    move-object v4, v3

    move-object/from16 v38, v39

    goto/16 :goto_0

    :sswitch_12
    const-string v3, "\u06e2\u06d8\u06db\u06e2\u06db\u06e5\u06d8\u06da\u06db\u06e2\u06e2\u06df\u06e7\u06df\u06da\u06e4\u06e4\u06e2\u06e0\u06d9\u06e0\u06e6\u06d7\u06ec\u06df\u06e8\u06e8\u06e7\u06d6\u06e4\u06d6\u06e5\u06eb\u06e8\u06e6\u06df\u06e6\u06d6\u06db\u06db\u06df\u06eb\u06d9\u06d8\u06d8\u06da\u06e0\u06df"

    move-object v4, v3

    move-object/from16 v36, v37

    goto/16 :goto_0

    :sswitch_13
    const-string v3, "\u06d7\u06df\u06e1\u06db\u06e7\u06e0\u06eb\u06e2\u06e5\u06e2\u06e2\u06e2\u06e7\u06eb\u06db\u06d8\u06db\u06e8\u06d8\u06d9\u06e0\u06df\u06e2\u06e7\u06db\u06e4\u06d6\u06e2\u06e8\u06e2\u06e4"

    move-object v4, v3

    move-object/from16 v34, v35

    goto/16 :goto_0

    :sswitch_14
    const v4, 0x314c274

    const-string v3, "\u06db\u06d6\u06e1\u06e1\u06e8\u06ec\u06eb\u06e6\u06d9\u06e5\u06d9\u06e6\u06dc\u06d8\u06d6\u06e1\u06e5\u06e7\u06eb\u06e5\u06dc\u06e8\u06d6\u06d8\u06e1\u06df\u06e2\u06e4\u06db\u06d6"

    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v41

    xor-int v41, v41, v4

    sparse-switch v41, :sswitch_data_3

    goto :goto_3

    :sswitch_15
    const-string v3, "\u06dc\u06e7\u06e0\u06e4\u06d7\u06e8\u06d8\u06e8\u06db\u06da\u06e1\u06e4\u06e8\u06e7\u06da\u06d8\u06d9\u06d8\u06ec\u06e6\u06da\u06d7\u06db\u06df\u06e2\u06e1\u06d9\u06da\u06e5\u06e5\u06e7\u06d8\u06e5\u06d9\u06d6\u06e5\u06d7\u06e8\u06e6\u06da\u06e4\u06e0\u06d8\u06d8"

    goto :goto_3

    :sswitch_16
    const-string v3, "\u06e8\u06ec\u06eb\u06e5\u06ec\u06d9\u06d6\u06d8\u06eb\u06e8\u06db\u06e8\u06d7\u06e6\u06e6\u06d8\u06e0\u06da\u06ec\u06d6\u06d8\u06ec\u06d7\u06d9\u06d9\u06e4\u06e6\u06e0\u06e8\u06e0\u06df\u06d8\u06d8\u06d8\u06da\u06e6\u06e4\u06e4\u06d6\u06d8\u06e5\u06ec\u06d8\u06d8"

    goto :goto_3

    :sswitch_17
    const v41, -0x557bc7f6

    const-string v3, "\u06dc\u06dc\u06df\u06d9\u06d6\u06e5\u06d8\u06d7\u06d9\u06e2\u06e0\u06da\u06e7\u06d9\u06e6\u06e6\u06d8\u06db\u06eb\u06e2\u06df\u06d7\u06da\u06da\u06d6\u06d8\u06e1\u06db\u06eb\u06e1\u06db\u06d7\u06e2\u06db\u06e4\u06d7\u06df\u06e5\u06e5\u06ec\u06d9\u06dc\u06db\u06eb\u06e5\u06e8\u06e7\u06e6\u06ec\u06e6\u06d8"

    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v42

    xor-int v42, v42, v41

    sparse-switch v42, :sswitch_data_4

    goto :goto_4

    :sswitch_18
    const-string v3, "\u06e4\u06e5\u06e6\u06d8\u06da\u06d8\u06da\u06d7\u06d8\u06df\u06e6\u06dc\u06d9\u06eb\u06e8\u06d8\u06e0\u06d8\u06e7\u06d7\u06db\u06e7\u06d8\u06eb\u06d6\u06da\u06e8\u06e0\u06e2\u06da\u06da\u06db\u06e2\u06dc\u06d8\u06db\u06e8\u06e0"

    goto :goto_3

    :cond_1
    const-string v3, "\u06d7\u06e0\u06e5\u06d8\u06d6\u06d9\u06df\u06e4\u06ec\u06dc\u06d7\u06e1\u06e7\u06d8\u06e2\u06df\u06da\u06e0\u06e5\u06dc\u06e4\u06d7\u06da\u06e8\u06dc\u06e6\u06d8\u06d6\u06e6\u06e5\u06d8\u06e0\u06e1\u06dc\u06d8\u06e6\u06e8\u06dc\u06d8\u06e2\u06e8\u06d7\u06e5\u06df\u06dc\u06e7\u06e8\u06e6\u06d8"

    goto :goto_4

    :sswitch_19
    if-nez p2, :cond_1

    const-string v3, "\u06ec\u06e6\u06e8\u06d8\u06d6\u06d8\u06e5\u06eb\u06e7\u06e6\u06d8\u06d9\u06df\u06d6\u06d8\u06e2\u06e5\u06db\u06dc\u06d6\u06e6\u06dc\u06dc\u06d7\u06dc\u06d8\u06d9\u06e0\u06d7\u06d8\u06dc\u06e4\u06e7\u06e5\u06d6\u06d8\u06e4\u06dc\u06dc"

    goto :goto_4

    :sswitch_1a
    const-string v3, "\u06e1\u06e2\u06e8\u06e0\u06e7\u06e8\u06d8\u06df\u06e0\u06e2\u06df\u06eb\u06df\u06db\u06d6\u06df\u06e4\u06df\u06e7\u06e7\u06eb\u06dc\u06db\u06e8\u06d8\u06d8\u06eb\u06ec\u06e4\u06e5\u06e5\u06d8\u06dc\u06d6\u06e5\u06d8\u06e5\u06eb\u06d8\u06e4\u06d6\u06e8\u06e7\u06d9\u06e5\u06d8\u06e6\u06d7\u06e1\u06d8\u06d9\u06d8\u06e6"

    goto :goto_4

    :sswitch_1b
    const-string v3, "\u06e7\u06e0\u06e4\u06e5\u06e7\u06ec\u06db\u06ec\u06d6\u06d8\u06da\u06d7\u06e5\u06d8\u06e8\u06db\u06da\u06da\u06db\u06d8\u06e5\u06d8\u06db\u06e1\u06e8\u06e5\u06d9\u06e2\u06d6\u06e1\u06df\u06e5\u06e5\u06dc\u06d8\u06da\u06e8\u06e8\u06d8\u06df\u06d6\u06d6\u06d8\u06e0\u06e6\u06dc\u06d8\u06e2\u06e2\u06e6\u06d9\u06d6\u06e8\u06eb\u06da\u06e8\u06d8\u06d6\u06e8\u06eb"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_1c
    const v4, 0x18a17009

    const-string v3, "\u06d7\u06e1\u06e2\u06e7\u06d7\u06d8\u06ec\u06e7\u06e4\u06da\u06e8\u06e6\u06e8\u06e2\u06d8\u06d7\u06d8\u06e1\u06e4\u06e7\u06e4\u06e0\u06d8\u06eb\u06eb\u06e7\u06d8\u06e1\u06e1\u06d8\u06d8\u06e0\u06ec\u06da\u06e6\u06e4\u06e5\u06d8"

    :goto_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v41

    xor-int v41, v41, v4

    sparse-switch v41, :sswitch_data_5

    goto :goto_5

    :sswitch_1d
    const-string v3, "\u06dc\u06eb\u06dc\u06db\u06e1\u06e7\u06e6\u06e6\u06dc\u06e4\u06da\u06d8\u06d8\u06dc\u06e4\u06eb\u06e2\u06da\u06d7\u06d7\u06e1\u06e7\u06df\u06d9\u06e5\u06eb\u06d7\u06da\u06e6"

    goto :goto_5

    :sswitch_1e
    const-string v3, "\u06ec\u06e4\u06eb\u06e2\u06e2\u06e8\u06d8\u06e0\u06e8\u06e8\u06da\u06e0\u06db\u06db\u06d6\u06e2\u06e2\u06dc\u06d8\u06df\u06e6\u06dc\u06d6\u06ec\u06df\u06e5\u06eb\u06d8\u06d6\u06eb\u06eb\u06e4\u06d9\u06e0\u06df\u06e6\u06da"

    goto :goto_5

    :sswitch_1f
    const v41, 0x4f15a2f5

    const-string v3, "\u06e6\u06e0\u06e5\u06d8\u06e0\u06df\u06dc\u06d8\u06e5\u06df\u06e5\u06e6\u06e7\u06d8\u06d6\u06eb\u06e6\u06d8\u06da\u06d7\u06d6\u06da\u06e7\u06d8\u06e6\u06d6\u06e0\u06d6\u06d6\u06d9\u06dc\u06dc\u06e6\u06d9\u06ec\u06e8\u06d8\u06e5\u06ec\u06e5\u06d8\u06e7\u06d8\u06eb\u06e4\u06e1\u06e5\u06d8\u06dc\u06d8\u06db\u06ec\u06e1\u06d9"

    :goto_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v42

    xor-int v42, v42, v41

    sparse-switch v42, :sswitch_data_6

    goto :goto_6

    :sswitch_20
    const-string v3, "\u06e5\u06e8\u06db\u06d7\u06e4\u06da\u06d6\u06d8\u06e6\u06d8\u06d9\u06d7\u06dc\u06d8\u06e5\u06e8\u06e1\u06db\u06e5\u06e1\u06d8\u06e0\u06d9\u06da\u06e2\u06d7\u06e6\u06d8\u06e4\u06e6\u06db\u06e0\u06ec\u06da\u06d8\u06d6\u06df\u06df\u06e2\u06e7\u06d9\u06e5\u06ec\u06da\u06d7\u06e1\u06d7\u06e6\u06eb\u06d8\u06e0"

    goto :goto_6

    :cond_2
    const-string v3, "\u06da\u06e2\u06e4\u06da\u06e8\u06e5\u06e5\u06d8\u06e0\u06d9\u06e5\u06eb\u06da\u06e7\u06d6\u06d8\u06e6\u06d9\u06ec\u06e6\u06df\u06d7\u06e7\u06e1\u06d8\u06e1\u06db\u06d8\u06d8\u06e1\u06df\u06dc\u06d8\u06e2\u06e0\u06eb\u06d6\u06e2\u06dc\u06d8"

    goto :goto_6

    :sswitch_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->Oooooo:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "\u06e6\u06dc\u06d6\u06eb\u06ec\u06e8\u06d8\u06df\u06d8\u06ec\u06dc\u06e2\u06e0\u06e2\u06e7\u06e8\u06e7\u06e4\u06d6\u06d8\u06e4\u06e7\u06e5\u06df\u06e8\u06da\u06db\u06e2\u06d6\u06d8\u06db\u06e4\u06e4\u06e8\u06d8\u06df\u06d6\u06d6\u06d7\u06d9\u06e7\u06d9\u06e4\u06d6\u06d8"

    goto :goto_6

    :sswitch_22
    const-string v3, "\u06e6\u06d9\u06e6\u06d8\u06e5\u06e2\u06e7\u06d7\u06d7\u06e4\u06e8\u06e0\u06e6\u06dc\u06d8\u06d8\u06d6\u06e7\u06e2\u06d6\u06d6\u06d8\u06eb\u06df\u06e1\u06d8\u06ec\u06d8\u06d6\u06d8\u06da\u06d7\u06db\u06ec\u06da\u06d6\u06d8\u06da\u06e6\u06e6\u06d8\u06e6\u06d8\u06d7\u06db\u06d8\u06da\u06d7\u06eb\u06d7\u06e8\u06e5\u06e7\u06d8"

    goto :goto_5

    :sswitch_23
    const-string v3, "\u06e7\u06db\u06d6\u06d8\u06db\u06d7\u06e5\u06d8\u06d6\u06e1\u06e1\u06e6\u06e1\u06da\u06da\u06d9\u06e7\u06ec\u06e0\u06da\u06e2\u06e0\u06e0\u06df\u06e7\u06ec\u06e2\u06da\u06eb\u06dc\u06dc\u06d6\u06d8\u06df\u06e1\u06e1\u06d8\u06e4\u06dc\u06eb\u06d6\u06da\u06e1\u06d8\u06e4\u06d7\u06e8\u06d7\u06e7\u06d6\u06d9\u06e1\u06e1\u06e4\u06e6\u06d8\u06d8\u06e5\u06db\u06ec"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_24
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v3

    const v4, 0x7f100277

    invoke-virtual {v3, v4}, Lcom/cyjh/elfin/base/AppContext;->OooOO0(I)V

    const-string v3, "\u06dc\u06d7\u06e6\u06d9\u06e4\u06e6\u06da\u06d9\u06d6\u06d8\u06e8\u06d6\u06e6\u06d8\u06e4\u06e8\u06d6\u06df\u06ec\u06da\u06df\u06e0\u06df\u06e0\u06d9\u06e8\u06e0\u06df\u06e6\u06e5\u06d6\u06d9\u06df\u06df\u06da\u06e6\u06e1\u06d8\u06d8\u06e7\u06dc\u06da\u06d7\u06e8\u06e5\u06d8\u06e5\u06df\u06df\u06e1\u06e4\u06db\u06eb\u06d7\u06db\u06e8\u06e0\u06e6"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OooooOO:Landroid/widget/Switch;

    move-object/from16 v33, v0

    const-string v3, "\u06d8\u06e1\u06e1\u06e1\u06e5\u06e6\u06dc\u06ec\u06df\u06df\u06e7\u06db\u06d8\u06da\u06db\u06d8\u06eb\u06e1\u06d8\u06e8\u06e2\u06e1\u06d8\u06d8\u06d7\u06e6\u06d8\u06d9\u06da\u06dc\u06da\u06eb\u06d9\u06dc\u06d9\u06eb\u06ec\u06d9\u06e7\u06e2\u06ec\u06e0\u06db\u06e5\u06e0"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_26
    const-string v3, "\u06e6\u06d6\u06e2\u06ec\u06e7\u06e8\u06d8\u06dc\u06e4\u06e2\u06e0\u06e0\u06e5\u06e1\u06dc\u06e2\u06e1\u06dc\u06d6\u06e1\u06d8\u06e1\u06e6\u06e6\u06e4\u06e2\u06e8\u06eb\u06e4\u06d7\u06e4\u06eb\u06df\u06d7\u06db\u06d7"

    move-object v4, v3

    move-object/from16 v32, v33

    goto/16 :goto_0

    :sswitch_27
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v31

    const-string v3, "\u06d8\u06ec\u06e0\u06d6\u06d8\u06d9\u06d7\u06e7\u06eb\u06e4\u06e0\u06e7\u06e4\u06ec\u06d6\u06d8\u06df\u06ec\u06e0\u06d9\u06e0\u06d8\u06d8\u06df\u06db\u06eb\u06d6\u06e2\u06e6\u06dc\u06e4\u06eb\u06ec\u06ec\u06d7\u06d6"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_28
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    const-string v3, "\u06db\u06e0\u06d7\u06e7\u06df\u06df\u06e1\u06e8\u06ec\u06da\u06df\u06e4\u06d9\u06df\u06e1\u06e5\u06e0\u06dc\u06e8\u06ec\u06e7\u06db\u06dc\u06e6\u06e4\u06d6\u06db\u06e8\u06e2"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_29
    const-string v29, "com.cyjh.elfin.ui.activity.SettingActivity.swtVolumeKeyCtrl"

    const-string v3, "\u06eb\u06db\u06e5\u06d8\u06d9\u06e8\u06e7\u06d8\u06e8\u06d9\u06e8\u06d8\u06d6\u06dc\u06e5\u06da\u06d6\u06e5\u06e7\u06dc\u06e8\u06dc\u06e1\u06e5\u06db\u06e7\u06d8\u06e8\u06e1\u06dc\u06d9\u06e2\u06e4\u06da\u06ec\u06e6\u06d6\u06e5\u06db\u06e2\u06d8\u06e0\u06eb\u06d7"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_2a
    const-string v3, "\u06d6\u06e2\u06d7\u06e1\u06d9\u06e5\u06d8\u06e2\u06da\u06e1\u06d8\u06d6\u06df\u06d6\u06ec\u06eb\u06e0\u06eb\u06d8\u06d8\u06e8\u06e1\u06db\u06d6\u06db\u06d9\u06e5\u06e8\u06e8\u06d8\u06eb\u06da\u06df\u06e6\u06e6\u06e7\u06e8\u06da\u06df\u06e7\u06df\u06e5\u06d7\u06e6\u06eb"

    move-object v4, v3

    move-object/from16 v38, v29

    goto/16 :goto_0

    :sswitch_2b
    const-string v3, "\u06d6\u06dc\u06df\u06da\u06e5\u06e6\u06d8\u06e1\u06df\u06ec\u06e8\u06dc\u06e7\u06e8\u06d9\u06e5\u06e2\u06e1\u06d8\u06db\u06e4\u06d7\u06da\u06e5\u06dc\u06d8\u06db\u06e1\u06db\u06dc\u06e2\u06d9\u06d7\u06e2\u06d6\u06e8\u06e0\u06d9\u06d9\u06ec\u06d6\u06e8\u06e7\u06ec\u06eb\u06d7\u06db\u06e5\u06dc\u06e7\u06eb\u06e0\u06d9\u06eb\u06d6\u06e5\u06d8"

    move-object v4, v3

    move-object/from16 v36, v31

    goto/16 :goto_0

    :sswitch_2c
    const-string v3, "\u06e1\u06d6\u06dc\u06e4\u06d9\u06e4\u06e1\u06e4\u06e8\u06e4\u06e5\u06e0\u06d9\u06e5\u06ec\u06df\u06d7\u06dc\u06e4\u06e5\u06e7\u06d7\u06e4\u06d9\u06d9\u06d6\u06d6\u06e0\u06d8\u06d8\u06e8\u06e4\u06d7\u06e5\u06df\u06dc\u06d9\u06e7\u06df\u06dc\u06eb\u06e5\u06e6\u06e2\u06d6\u06d7\u06e4\u06e5\u06dc\u06df\u06da\u06e2\u06d7\u06dc\u06d8"

    move-object v4, v3

    move-object/from16 v34, v30

    goto/16 :goto_0

    :sswitch_2d
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v28

    const-string v3, "\u06e2\u06e8\u06e2\u06e5\u06e8\u06e4\u06da\u06d8\u06ec\u06e0\u06e4\u06dc\u06d8\u06e6\u06e5\u06e7\u06d8\u06d9\u06e8\u06eb\u06eb\u06ec\u06dc\u06e4\u06db\u06e0\u06e5\u06db\u06ec\u06ec\u06e0\u06d6\u06d8\u06d7\u06e0\u06d8\u06d8\u06d8\u06e6\u06ec"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_2e
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    const-string v3, "\u06db\u06d7\u06e2\u06d7\u06eb\u06d6\u06d8\u06d8\u06d7\u06da\u06d9\u06e1\u06e5\u06d6\u06d6\u06e1\u06e7\u06df\u06ec\u06d6\u06e5\u06dc\u06e0\u06e6\u06d8\u06d8\u06e5\u06d6\u06e8\u06d8\u06e5\u06df\u06ec\u06eb\u06d8\u06e8\u06e1\u06e6\u06e4\u06e1\u06d8\u06d6\u06dc\u06e1\u06d8\u06e7\u06d8\u06e1\u06d8\u06d8\u06e2\u06e5"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_2f
    const-string v26, "com.cyjh.elfin.ui.activity.SettingActivity.swtVibration"

    const-string v3, "\u06e5\u06e4\u06dc\u06e4\u06e1\u06e0\u06eb\u06da\u06e2\u06e0\u06ec\u06d7\u06d6\u06ec\u06d8\u06d7\u06d7\u06da\u06ec\u06da\u06e5\u06ec\u06d8\u06da\u06e6\u06e7\u06db\u06d6\u06e7\u06e1\u06d7\u06ec\u06db\u06e7\u06e1\u06e4\u06ec\u06e4\u06e4\u06df\u06d7\u06ec\u06e6\u06d7\u06e6\u06d8\u06e7\u06e1"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_30
    const-string v3, "\u06d8\u06d6\u06d8\u06e4\u06e6\u06e1\u06d8\u06d8\u06d6\u06e4\u06d9\u06d7\u06e6\u06df\u06da\u06db\u06e1\u06da\u06dc\u06d9\u06df\u06d8\u06dc\u06e0\u06dc\u06df\u06df\u06e6\u06db\u06df\u06e1\u06da\u06e7\u06d8\u06e0"

    move-object v4, v3

    move-object/from16 v38, v26

    goto/16 :goto_0

    :sswitch_31
    const-string v3, "\u06e5\u06d9\u06e6\u06d8\u06e1\u06d8\u06e8\u06d8\u06da\u06e6\u06e0\u06d6\u06e6\u06d6\u06d9\u06d6\u06d6\u06e1\u06d8\u06e5\u06df\u06e1\u06d8\u06e2\u06e2\u06e1\u06d8\u06e8\u06e1\u06e2\u06ec\u06eb\u06dc\u06e2\u06d6\u06e7\u06d8\u06e2\u06e5\u06dc\u06df\u06d9\u06e6\u06d8\u06e1\u06e8\u06ec\u06df\u06e5\u06d6\u06d8\u06e0\u06e2\u06d9\u06e5\u06e7\u06d8\u06e6\u06d9\u06e8"

    move-object v4, v3

    move-object/from16 v36, v28

    goto/16 :goto_0

    :sswitch_32
    const-string v3, "\u06e5\u06ec\u06d9\u06d8\u06d6\u06e5\u06d8\u06d7\u06d7\u06e1\u06d8\u06d7\u06da\u06e6\u06d8\u06e4\u06e0\u06e6\u06d8\u06d6\u06da\u06e1\u06d8\u06e4\u06e5\u06e6\u06d8\u06ec\u06db\u06dc\u06d8\u06db\u06d8\u06d8\u06e1\u06df\u06db\u06e4\u06d6\u06df\u06e6\u06e0\u06e1\u06d8\u06e5\u06e1\u06d8\u06d6\u06e4\u06dc\u06e1\u06e2\u06e4\u06e4\u06e6\u06df\u06d8\u06d7\u06df\u06da\u06d6\u06d7"

    move-object v4, v3

    move-object/from16 v34, v27

    goto/16 :goto_0

    :sswitch_33
    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v25

    const-string v3, "\u06e6\u06e8\u06e4\u06eb\u06df\u06d9\u06e2\u06df\u06d6\u06d8\u06ec\u06da\u06dc\u06d8\u06eb\u06d7\u06e6\u06ec\u06e8\u06e7\u06d8\u06d7\u06d9\u06df\u06ec\u06df\u06ec\u06db\u06e4\u06eb\u06df\u06ec\u06d6\u06e7\u06e8\u06e6\u06d9\u06d8\u06e7"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_34
    const v4, -0x65e0e93a

    const-string v3, "\u06d6\u06d7\u06df\u06e4\u06e6\u06d8\u06eb\u06df\u06d8\u06d8\u06df\u06e0\u06da\u06da\u06d6\u06d6\u06d8\u06e6\u06db\u06e6\u06d8\u06ec\u06d8\u06e2\u06dc\u06dc\u06d6\u06d8\u06d7\u06eb\u06d8\u06eb\u06dc\u06eb\u06e6\u06e4\u06e5\u06d8\u06eb\u06df\u06dc\u06e4\u06e5\u06d6\u06d8\u06ec\u06e7\u06d6\u06d8"

    :goto_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v41

    xor-int v41, v41, v4

    sparse-switch v41, :sswitch_data_7

    goto :goto_7

    :sswitch_35
    const-string v3, "\u06d7\u06e2\u06e6\u06e4\u06e2\u06d6\u06e8\u06dc\u06eb\u06e0\u06e4\u06d8\u06e4\u06e1\u06d8\u06d8\u06e1\u06e1\u06eb\u06e7\u06e6\u06df\u06eb\u06d9\u06e5\u06d8\u06e8\u06e5\u06e7\u06dc\u06e2\u06d6\u06e7\u06d6\u06e2\u06e2\u06e8\u06e6\u06d8"

    goto :goto_7

    :sswitch_36
    const-string v3, "\u06e1\u06d8\u06d6\u06d8\u06ec\u06e7\u06e5\u06d8\u06eb\u06e5\u06da\u06eb\u06d6\u06e1\u06d8\u06df\u06e1\u06db\u06e6\u06e2\u06d7\u06e0\u06d9\u06ec\u06ec\u06d6\u06d8\u06dc\u06e2\u06da\u06e2\u06e0\u06e8\u06d8\u06d9\u06da\u06eb\u06ec\u06e6\u06df\u06dc\u06e5\u06d8\u06eb\u06e4\u06e5\u06d8\u06ec\u06e4\u06ec\u06d7\u06eb\u06e1\u06d8\u06e2\u06e2\u06e5\u06d8\u06e0\u06e7\u06e1\u06d8"

    goto :goto_7

    :sswitch_37
    const v41, 0x573c4839

    const-string v3, "\u06e1\u06d6\u06e6\u06d8\u06e5\u06d9\u06ec\u06d8\u06da\u06d8\u06d8\u06ec\u06d9\u06e6\u06d8\u06e8\u06d7\u06d8\u06d8\u06e6\u06e2\u06e8\u06e6\u06e2\u06e0\u06d6\u06ec\u06dc\u06da\u06e2\u06d9\u06da\u06e1\u06d8\u06e6\u06d7\u06e6\u06d6\u06df\u06e6\u06d8\u06db\u06da\u06e1\u06e8\u06d7\u06d7\u06db\u06dc\u06db\u06e6\u06db\u06d8\u06d8"

    :goto_8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v42

    xor-int v42, v42, v41

    sparse-switch v42, :sswitch_data_8

    goto :goto_8

    :sswitch_38
    const-string v3, "\u06e4\u06e7\u06d8\u06d6\u06e7\u06e4\u06db\u06eb\u06db\u06e5\u06e0\u06e1\u06e2\u06e1\u06d7\u06df\u06d8\u06e6\u06e6\u06e6\u06e5\u06d8\u06d7\u06d9\u06e2\u06e4\u06d9\u06da\u06d6\u06dc\u06d8\u06e4\u06e4\u06d6\u06e6\u06e2\u06e8\u06d8\u06df\u06e7\u06e1\u06e1\u06e6\u06dc\u06d8"

    goto :goto_8

    :cond_3
    const-string v3, "\u06d9\u06e1\u06d8\u06d8\u06e6\u06e6\u06e5\u06dc\u06db\u06e6\u06eb\u06e6\u06dc\u06e0\u06d7\u06df\u06e5\u06eb\u06d7\u06d9\u06dc\u06e5\u06d8\u06d8\u06ec\u06e6\u06d8\u06d6\u06db\u06e2\u06d6\u06df\u06d8\u06d8\u06d8\u06e7\u06d9\u06d8\u06e5\u06e0\u06df\u06dc\u06e7\u06e5\u06ec\u06d6\u06d8\u06d6\u06e0\u06e8\u06d8\u06d8\u06db\u06e6"

    goto :goto_8

    :sswitch_39
    if-eqz p2, :cond_3

    const-string v3, "\u06ec\u06e2\u06d9\u06e1\u06d7\u06eb\u06d7\u06e2\u06e5\u06d8\u06e4\u06e7\u06ec\u06d7\u06e4\u06d8\u06df\u06e7\u06e8\u06e5\u06e2\u06d6\u06d8\u06da\u06e8\u06e4\u06e1\u06e5\u06df\u06e5\u06e6\u06d8\u06d8\u06d6\u06e7\u06d8\u06e2\u06e2\u06df\u06e2\u06ec\u06dc\u06d8\u06e8\u06d6\u06e6\u06df\u06e5\u06d7\u06e7\u06df\u06da\u06e5\u06e6\u06da\u06d6\u06eb\u06d6\u06d8"

    goto :goto_8

    :sswitch_3a
    const-string v3, "\u06e1\u06e7\u06e1\u06d8\u06d9\u06e6\u06e6\u06d8\u06e6\u06dc\u06d7\u06d9\u06e2\u06d8\u06d8\u06d6\u06e0\u06e5\u06db\u06eb\u06d6\u06d8\u06da\u06e6\u06e0\u06e7\u06d8\u06d8\u06e6\u06e4\u06e0\u06e2\u06e5\u06e8\u06d8\u06d9\u06d7\u06d8\u06ec\u06d6\u06da\u06db\u06eb\u06eb\u06db\u06e5\u06ec"

    goto :goto_7

    :sswitch_3b
    const-string v3, "\u06e6\u06eb\u06e6\u06d8\u06d9\u06d7\u06db\u06e4\u06e6\u06e0\u06e8\u06d6\u06e8\u06da\u06e1\u06d7\u06d6\u06dc\u06e8\u06d8\u06e7\u06d9\u06e1\u06d8\u06e6\u06e6\u06e8\u06e0\u06e5\u06e2\u06dc\u06e4\u06eb\u06ec\u06e4\u06e2\u06e5\u06ec"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_3c
    invoke-virtual/range {v25 .. v25}, Lz2/i7;->OooOoOO()V

    const-string v3, "\u06e2\u06d6\u06d6\u06e4\u06d7\u06d8\u06d8\u06e6\u06e8\u06e6\u06d8\u06dc\u06e2\u06e6\u06e6\u06e1\u06d8\u06d8\u06e6\u06e5\u06d8\u06d9\u06e8\u06d9\u06e1\u06ec\u06e0\u06e7\u06eb\u06e0\u06d7\u06da\u06eb\u06d9\u06e0\u06db\u06d8\u06da\u06e8\u06d8"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_3d
    invoke-virtual/range {v25 .. v25}, Lz2/i7;->OooOoo()V

    const-string v3, "\u06d8\u06e2\u06e2\u06da\u06d8\u06e1\u06e1\u06db\u06d6\u06da\u06e1\u06d8\u06d8\u06ec\u06eb\u06dc\u06d8\u06eb\u06e0\u06e0\u06db\u06e0\u06e1\u06d8\u06e5\u06e6\u06e7\u06d8\u06df\u06d9\u06dc\u06e1\u06d6\u06e0"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_3e
    const v4, 0x75ec6486

    const-string v3, "\u06db\u06dc\u06e1\u06ec\u06da\u06e5\u06d8\u06e7\u06e2\u06d7\u06db\u06e4\u06d8\u06d8\u06e0\u06dc\u06e5\u06e7\u06d9\u06d8\u06d8\u06e2\u06e4\u06dc\u06d9\u06db\u06ec\u06ec\u06da\u06d6\u06d8\u06df\u06eb\u06da"

    :goto_9
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v41

    xor-int v41, v41, v4

    sparse-switch v41, :sswitch_data_9

    goto :goto_9

    :sswitch_3f
    const-string v3, "\u06d9\u06d7\u06e6\u06d9\u06d9\u06e6\u06d6\u06e8\u06e1\u06d8\u06e1\u06df\u06ec\u06e1\u06e8\u06eb\u06df\u06e1\u06e1\u06d8\u06e7\u06ec\u06d8\u06d8\u06da\u06db\u06d8\u06d8\u06df\u06e5\u06e5\u06e6\u06d8\u06d7\u06e0\u06d9\u06e4\u06e8\u06dc\u06d8"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_40
    const-string v3, "\u06e1\u06e6\u06df\u06d8\u06d6\u06d6\u06d7\u06db\u06d8\u06d8\u06ec\u06e8\u06d8\u06d8\u06e2\u06d9\u06d7\u06e8\u06e4\u06e0\u06eb\u06d7\u06e8\u06d8\u06e8\u06da\u06e1\u06db\u06d7\u06e6\u06ec\u06da\u06e6\u06e4\u06dc\u06e2\u06dc\u06d7\u06e8\u06d8\u06e5\u06e0\u06df\u06e6\u06e4\u06df"

    goto :goto_9

    :sswitch_41
    const v41, -0x3308b245

    const-string v3, "\u06d6\u06e8\u06e5\u06d7\u06df\u06e5\u06d8\u06e4\u06dc\u06eb\u06e2\u06dc\u06d6\u06d8\u06d8\u06e8\u06d7\u06e1\u06df\u06e6\u06d8\u06eb\u06e7\u06d6\u06d9\u06eb\u06d8\u06e0\u06e2\u06e0\u06da\u06e7\u06e8\u06d8\u06e6\u06da\u06e6\u06da\u06e2\u06ec\u06e4\u06e0\u06e4\u06e4\u06e2\u06d7\u06d8\u06db\u06ec\u06e0\u06df\u06df"

    :goto_a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v42

    xor-int v42, v42, v41

    sparse-switch v42, :sswitch_data_a

    goto :goto_a

    :sswitch_42
    const-string v3, "\u06e8\u06ec\u06e1\u06d9\u06d8\u06e5\u06e1\u06d9\u06d8\u06d8\u06e1\u06e6\u06e2\u06d7\u06ec\u06ec\u06e2\u06db\u06d6\u06db\u06df\u06e4\u06da\u06eb\u06e5\u06d8\u06df\u06d7\u06e6\u06d6\u06db\u06d8\u06e1\u06d9\u06df\u06dc\u06e2\u06e1\u06df\u06e4\u06e8\u06d8\u06e0\u06e8\u06d9\u06e4\u06dc\u06e7\u06e0\u06e4"

    goto :goto_9

    :cond_4
    const-string v3, "\u06e4\u06db\u06e4\u06d9\u06db\u06e6\u06ec\u06e7\u06e1\u06d8\u06e7\u06da\u06e8\u06d8\u06eb\u06e8\u06e1\u06d8\u06da\u06e1\u06d8\u06da\u06d8\u06ec\u06df\u06e5\u06e6\u06d8\u06eb\u06d7\u06dc\u06d8\u06d6\u06da\u06e8\u06d6\u06d9\u06e8\u06df\u06e8\u06e2\u06da\u06e0\u06db\u06df\u06e1\u06e5\u06d8\u06e1\u06eb\u06e5\u06d8\u06e2\u06da\u06da"

    goto :goto_a

    :sswitch_43
    if-nez p2, :cond_4

    const-string v3, "\u06db\u06e4\u06df\u06d9\u06d8\u06d7\u06e2\u06e6\u06df\u06db\u06e0\u06d8\u06df\u06e8\u06d7\u06eb\u06dc\u06d8\u06ec\u06ec\u06d8\u06d8\u06d9\u06e8\u06e7\u06d8\u06e7\u06e8\u06d8\u06d9\u06df\u06d7\u06e6\u06e1\u06d8\u06d8\u06e1\u06eb\u06db\u06e1\u06d8\u06e6\u06db\u06e6\u06e0\u06e6\u06e7\u06e1\u06d8\u06df\u06e7\u06da\u06d8\u06da\u06eb\u06d6\u06e1\u06d8"

    goto :goto_a

    :sswitch_44
    const-string v3, "\u06e2\u06e6\u06e6\u06e8\u06d8\u06e6\u06d8\u06db\u06e4\u06e5\u06d8\u06db\u06e8\u06ec\u06e8\u06e1\u06e4\u06d7\u06e8\u06e1\u06e7\u06e8\u06db\u06eb\u06d6\u06e4\u06ec\u06ec\u06e4\u06d6\u06e2\u06d7\u06e1\u06d8\u06d8\u06d7\u06db\u06e4\u06e6\u06db\u06e0\u06e0\u06e5\u06d9\u06eb\u06d6\u06d9\u06db\u06ec\u06db"

    goto :goto_a

    :sswitch_45
    const-string v3, "\u06ec\u06e4\u06e1\u06dc\u06e0\u06eb\u06d6\u06db\u06d6\u06d8\u06da\u06e6\u06eb\u06e0\u06e0\u06d9\u06e6\u06ec\u06eb\u06df\u06ec\u06d8\u06ec\u06d6\u06da\u06df\u06e8\u06e8\u06d8\u06e4\u06da\u06df"

    goto :goto_9

    :sswitch_46
    const-string v3, "\u06e1\u06da\u06d8\u06d8\u06d7\u06e1\u06dc\u06e1\u06e0\u06d8\u06d8\u06ec\u06d7\u06db\u06df\u06eb\u06ec\u06e4\u06eb\u06d6\u06df\u06e7\u06df\u06e5\u06ec\u06e4\u06e0\u06d7\u06d7\u06e4\u06d6\u06e7\u06d8"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_47
    const v4, 0x73911169

    const-string v3, "\u06e4\u06d6\u06d8\u06df\u06e2\u06d8\u06d8\u06e8\u06e0\u06e7\u06d7\u06dc\u06e2\u06e5\u06dc\u06d7\u06df\u06eb\u06e7\u06e5\u06d8\u06eb\u06e2\u06e4\u06d8\u06da\u06d9\u06da\u06df\u06df\u06dc\u06d8\u06db\u06d6\u06e8\u06d8\u06e1\u06e8\u06d8\u06e5\u06df\u06dc\u06e6\u06d9\u06dc"

    :goto_b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v41

    xor-int v41, v41, v4

    sparse-switch v41, :sswitch_data_b

    goto :goto_b

    :sswitch_48
    const v41, 0xc51c098

    const-string v3, "\u06d9\u06eb\u06e4\u06d8\u06e4\u06d6\u06d8\u06e1\u06e8\u06e8\u06d8\u06eb\u06db\u06e8\u06e7\u06d8\u06db\u06e5\u06d8\u06d9\u06d6\u06dc\u06d6\u06ec\u06e5\u06d8\u06d8\u06eb\u06df\u06d9\u06e7\u06da\u06eb\u06eb\u06d9\u06da\u06eb\u06d7\u06e4\u06d7\u06e8\u06d7\u06d6\u06da\u06e5\u06d8\u06d9\u06d7\u06d7\u06e7\u06e1\u06e7"

    :goto_c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v42

    xor-int v42, v42, v41

    sparse-switch v42, :sswitch_data_c

    goto :goto_c

    :sswitch_49
    const-string v3, "\u06e6\u06df\u06e8\u06d8\u06da\u06e7\u06dc\u06e6\u06da\u06d8\u06d8\u06d6\u06d7\u06d7\u06df\u06e6\u06df\u06eb\u06da\u06e1\u06d8\u06da\u06d8\u06e7\u06d9\u06e6\u06d8\u06d8\u06eb\u06ec\u06e7\u06d7\u06d8\u06e6\u06d8\u06e0\u06ec\u06e5\u06d8\u06dc\u06ec\u06d8\u06ec\u06eb\u06e5\u06d8"

    goto :goto_c

    :sswitch_4a
    const-string v3, "\u06e1\u06e6\u06d6\u06d8\u06d7\u06d6\u06d8\u06d6\u06eb\u06eb\u06e1\u06d9\u06d8\u06e1\u06d6\u06e6\u06ec\u06dc\u06e8\u06e4\u06e8\u06d8\u06d8\u06e1\u06dc\u06e6\u06d8\u06da\u06e7\u06e7\u06e8\u06db\u06e8\u06d8\u06e0\u06d6\u06e7\u06d8\u06d7\u06ec\u06e1\u06d8\u06db\u06d9\u06d9\u06d9\u06d6\u06e6\u06da\u06e1\u06d6\u06e4\u06db\u06e7\u06eb\u06eb\u06d6\u06e6\u06d6\u06d6\u06d8"

    goto :goto_b

    :cond_5
    const-string v3, "\u06d9\u06e5\u06e1\u06d8\u06da\u06df\u06d8\u06d8\u06e4\u06e7\u06e8\u06d8\u06e5\u06e4\u06dc\u06d6\u06e1\u06df\u06e6\u06eb\u06e6\u06eb\u06ec\u06e6\u06dc\u06d9\u06df\u06e2\u06e6\u06ec\u06df\u06d8\u06d8\u06e5\u06db\u06eb\u06e5\u06d7\u06e2\u06e1\u06d8\u06e5\u06d8\u06d7\u06e7\u06e5\u06d8\u06e0\u06dc\u06d8\u06d8\u06ec\u06d7\u06eb"

    goto :goto_c

    :sswitch_4b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OooooOO:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "\u06e6\u06d8\u06e0\u06e4\u06d7\u06e0\u06db\u06e6\u06df\u06ec\u06e2\u06e4\u06e8\u06e5\u06d8\u06db\u06e8\u06d9\u06ec\u06d9\u06d7\u06d9\u06df\u06e8\u06d8\u06e0\u06e4\u06e0\u06d7\u06e7\u06d9\u06e4\u06eb\u06d8\u06e2\u06e6\u06e1\u06e5\u06e1\u06ec\u06db\u06e8\u06d6\u06d8"

    goto :goto_c

    :sswitch_4c
    const-string v3, "\u06e1\u06db\u06dc\u06d8\u06e7\u06e0\u06dc\u06d9\u06e0\u06ec\u06d7\u06d9\u06e8\u06e4\u06e1\u06d7\u06d8\u06df\u06e8\u06e1\u06dc\u06ec\u06d8\u06ec\u06ec\u06dc\u06db\u06d9\u06e5\u06eb\u06e1\u06dc\u06da\u06dc\u06d8\u06e2\u06e7\u06e0"

    goto :goto_b

    :sswitch_4d
    const-string v3, "\u06da\u06e8\u06e5\u06dc\u06d6\u06d8\u06d8\u06d8\u06d8\u06e5\u06d8\u06ec\u06e4\u06e7\u06e4\u06e4\u06d7\u06e8\u06df\u06d7\u06d6\u06e8\u06e5\u06d8\u06d6\u06d6\u06e6\u06d8\u06e4\u06db\u06db\u06e7\u06e7\u06e4"

    goto :goto_b

    :sswitch_4e
    const-string v3, "\u06d7\u06e7\u06e8\u06d8\u06eb\u06d6\u06d8\u06e2\u06da\u06e5\u06e6\u06e6\u06e7\u06e1\u06e8\u06ec\u06d7\u06dc\u06db\u06e2\u06d9\u06e1\u06d8\u06eb\u06e6\u06e4\u06e0\u06dc\u06d8\u06e6\u06e0\u06dc\u06d8\u06d9\u06da\u06d8\u06d8\u06dc\u06e6\u06e7\u06d8"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_4f
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v3

    const v4, 0x7f100277

    invoke-virtual {v3, v4}, Lcom/cyjh/elfin/base/AppContext;->OooOO0(I)V

    const-string v3, "\u06e0\u06da\u06dc\u06ec\u06dc\u06d6\u06d8\u06d7\u06e2\u06e1\u06d8\u06eb\u06dc\u06e8\u06e7\u06e0\u06e1\u06d8\u06d9\u06ec\u06db\u06df\u06e8\u06e5\u06d8\u06db\u06db\u06db\u06d7\u06dc\u06e1\u06e8\u06e0\u06dc\u06d8\u06eb\u06eb\u06e6\u06d8\u06e6\u06e0\u06db"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->Oooooo:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const-string v3, "\u06e8\u06e4\u06e5\u06d8\u06ec\u06db\u06d8\u06d9\u06d7\u06e7\u06e4\u06d8\u06d6\u06d8\u06d9\u06e8\u06dc\u06df\u06d7\u06db\u06e0\u06ec\u06e8\u06e1\u06db\u06eb\u06e4\u06e6\u06d8\u06e8\u06e0\u06d9\u06e5\u06e6\u06d8\u06da\u06e7\u06e1"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_51
    const-string v3, "\u06db\u06e1\u06e5\u06d8\u06eb\u06e6\u06db\u06d6\u06ec\u06eb\u06db\u06ec\u06dc\u06d8\u06eb\u06e5\u06d7\u06d9\u06e6\u06e7\u06e6\u06e4\u06e8\u06d8\u06ec\u06e1\u06dc\u06e8\u06e0\u06eb\u06dc\u06e6\u06e8\u06d8\u06df\u06e7\u06e7\u06df\u06e4\u06e7\u06ec\u06e8\u06d8\u06df\u06e1\u06d7\u06e6\u06d6\u06e5\u06e2\u06d6\u06e8\u06dc\u06ec\u06e8\u06d8"

    move-object v4, v3

    move-object/from16 v32, v24

    goto/16 :goto_0

    :sswitch_52
    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    const-string v3, "\u06d7\u06d8\u06d9\u06d9\u06da\u06d6\u06d8\u06e6\u06e2\u06e8\u06d8\u06da\u06e1\u06e1\u06d8\u06da\u06e6\u06e2\u06ec\u06e2\u06da\u06e5\u06d8\u06d8\u06d8\u06da\u06d7\u06e6\u06d8\u06d8\u06e4\u06e1\u06e5\u06eb"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_53
    const/16 v3, 0x65

    invoke-static {v3}, Lz2/y8;->OooOO0o(I)V

    const-string v3, "\u06dc\u06d6\u06d9\u06e0\u06d7\u06dc\u06d7\u06d7\u06e8\u06ec\u06dc\u06da\u06e4\u06eb\u06eb\u06dc\u06df\u06e1\u06d8\u06e8\u06da\u06d9\u06e8\u06e5\u06d8\u06d8\u06e6\u06e7\u06e6\u06d6\u06e7\u06dc\u06d8\u06eb\u06ec\u06db\u06d9\u06e8\u06d8"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_54
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v23

    const-string v3, "\u06d8\u06dc\u06ec\u06e7\u06db\u06e8\u06df\u06e7\u06dc\u06d8\u06ec\u06db\u06e1\u06d6\u06e7\u06df\u06e1\u06eb\u06d8\u06d8\u06e1\u06db\u06e7\u06da\u06ec\u06df\u06d9\u06dc\u06d6\u06da\u06db\u06e1\u06e6\u06ec\u06d8\u06d8\u06e2\u06ec\u06e1\u06d8\u06d9\u06e0\u06e8\u06d8\u06db\u06d8\u06ec\u06e0\u06df\u06ec\u06e1\u06d6\u06e0\u06e6\u06e4\u06d9\u06dc\u06d7"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_55
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    const-string v3, "\u06df\u06d8\u06e6\u06ec\u06ec\u06e8\u06d8\u06dc\u06da\u06e5\u06dc\u06ec\u06da\u06df\u06e2\u06e6\u06d9\u06db\u06d6\u06ec\u06db\u06e8\u06d8\u06da\u06e7\u06dc\u06e7\u06e7\u06e0\u06d8\u06db\u06e5\u06d8\u06e0\u06e7\u06eb\u06eb\u06df\u06eb\u06e8\u06e4\u06e4\u06d6\u06db\u06e6\u06d8\u06eb\u06e5\u06e5\u06d8\u06dc\u06d6\u06e6"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_56
    const-string v21, "com.cyjh.elfin.ui.activity.SettingActivity.swtFloatviewCtrl"

    const-string v3, "\u06e2\u06e1\u06e6\u06d8\u06d9\u06d8\u06d7\u06df\u06d9\u06dc\u06dc\u06e8\u06e7\u06d8\u06e4\u06e8\u06d8\u06d9\u06e5\u06e1\u06d8\u06e1\u06e8\u06d6\u06d8\u06dc\u06d7\u06e1\u06e0\u06dc\u06db\u06e2\u06ec\u06db"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_57
    const-string v3, "\u06da\u06e1\u06d6\u06ec\u06dc\u06e5\u06e1\u06d9\u06e0\u06d8\u06df\u06e0\u06e2\u06dc\u06dc\u06eb\u06e4\u06d8\u06ec\u06d8\u06dc\u06e5\u06dc\u06e6\u06e0\u06ec\u06e5\u06d8\u06d6\u06e8\u06d6\u06d8"

    move-object v4, v3

    move-object/from16 v38, v21

    goto/16 :goto_0

    :sswitch_58
    const-string v3, "\u06d6\u06df\u06d8\u06d8\u06ec\u06df\u06ec\u06e6\u06d9\u06e5\u06d8\u06e8\u06d9\u06ec\u06d6\u06e6\u06e7\u06d8\u06e7\u06d8\u06e1\u06d8\u06e8\u06e2\u06d9\u06df\u06dc\u06e1\u06d8\u06e7\u06ec\u06d6\u06e2\u06da\u06d8\u06d6\u06d7\u06d6\u06e7\u06dc\u06df\u06e8\u06d8\u06e0\u06d8\u06d8\u06e1\u06d8"

    move-object v4, v3

    move-object/from16 v36, v23

    goto/16 :goto_0

    :sswitch_59
    const-string v3, "\u06dc\u06d8\u06e1\u06e4\u06d6\u06d9\u06d8\u06d8\u06e5\u06e8\u06d7\u06db\u06df\u06e5\u06d8\u06d8\u06d8\u06e8\u06ec\u06e1\u06e4\u06df\u06e6\u06d7\u06e0\u06db\u06da\u06e8\u06d8\u06e8\u06d8\u06df\u06d7\u06e2\u06eb\u06e1\u06e0\u06ec\u06e6\u06eb\u06e8\u06e5\u06e1"

    move-object v4, v3

    move-object/from16 v34, v22

    goto/16 :goto_0

    :sswitch_5a
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v20

    const-string v3, "\u06dc\u06da\u06da\u06d7\u06e5\u06d7\u06e4\u06e8\u06d9\u06ec\u06ec\u06e2\u06da\u06e0\u06d8\u06d9\u06e4\u06e6\u06d8\u06e0\u06da\u06d6\u06d8\u06db\u06e2\u06e4\u06d9\u06e6\u06d8\u06d8\u06d6\u06e8\u06ec\u06df\u06e1\u06e1\u06eb\u06d9\u06e1\u06e7\u06e4\u06e0\u06d7\u06e5\u06e4\u06e7\u06e7\u06eb\u06d7\u06e5\u06d8"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_5b
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    const-string v3, "\u06e4\u06d7\u06e2\u06e7\u06eb\u06d8\u06d8\u06da\u06e4\u06e8\u06df\u06e1\u06e1\u06d8\u06d9\u06e5\u06d8\u06da\u06e0\u06e5\u06d9\u06e8\u06df\u06ec\u06db\u06eb\u06e1\u06d7\u06d6\u06da\u06db\u06e8\u06d7\u06dc\u06e1\u06d7\u06d9\u06e7\u06d8\u06d8\u06e6\u06d8\u06da\u06ec\u06da\u06d7\u06d9\u06ec\u06d8"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_5c
    const-string v18, "com.cyjh.elfin.ui.activity.SettingActivity.swtCallStop"

    const-string v3, "\u06d9\u06d9\u06e8\u06eb\u06d6\u06ec\u06db\u06e6\u06e6\u06e8\u06e7\u06d8\u06e8\u06e2\u06e5\u06d6\u06e6\u06d8\u06df\u06e5\u06e1\u06d7\u06ec\u06e5\u06df\u06d8\u06e1\u06d8\u06d9\u06e2\u06e6\u06e0\u06e8\u06d8\u06d9\u06eb\u06e4\u06e1\u06d7\u06e5\u06d8\u06da\u06db\u06d6"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_5d
    const-string v3, "\u06e6\u06dc\u06d8\u06d6\u06e2\u06e5\u06d8\u06e4\u06e5\u06da\u06e6\u06ec\u06e7\u06df\u06dc\u06e7\u06d8\u06d7\u06dc\u06d8\u06dc\u06d8\u06e2\u06db\u06d8\u06db\u06dc\u06e8\u06e2\u06d9\u06eb\u06e8\u06d8\u06df\u06e4\u06e1\u06e7\u06d8\u06ec"

    move-object v4, v3

    move-object/from16 v38, v18

    goto/16 :goto_0

    :sswitch_5e
    const-string v3, "\u06df\u06d9\u06dc\u06e4\u06e2\u06da\u06da\u06e6\u06da\u06e7\u06e1\u06df\u06e2\u06e6\u06e0\u06d7\u06e1\u06d8\u06eb\u06d6\u06e8\u06e0\u06e4\u06e0\u06ec\u06d9\u06d8\u06ec\u06ec\u06d6"

    move-object v4, v3

    move-object/from16 v36, v20

    goto/16 :goto_0

    :sswitch_5f
    const-string v3, "\u06d8\u06d6\u06d7\u06e5\u06db\u06e1\u06d8\u06d7\u06da\u06e4\u06eb\u06d8\u06e5\u06d8\u06db\u06d9\u06e7\u06d9\u06d6\u06d8\u06df\u06e0\u06da\u06e8\u06e4\u06e8\u06ec\u06da\u06eb\u06ec\u06e5\u06e0\u06e5\u06e8\u06dc\u06e1\u06d7\u06d6\u06d8\u06df\u06e8\u06dc\u06d8\u06db\u06d9\u06d8\u06d8"

    move-object v4, v3

    move-object/from16 v34, v19

    goto/16 :goto_0

    :sswitch_60
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v17

    const-string v3, "\u06db\u06e6\u06e1\u06eb\u06e6\u06d6\u06d8\u06e1\u06db\u06e5\u06d6\u06e7\u06d7\u06d9\u06e8\u06d8\u06d8\u06df\u06e6\u06e1\u06d8\u06e8\u06d7\u06e7\u06da\u06ec\u06e6\u06d6\u06dc\u06e8\u06d7\u06e8\u06e5\u06ec\u06db\u06d6\u06e2\u06df\u06dc\u06d8\u06df\u06dc\u06df\u06e6\u06e5\u06e5\u06d8\u06e2\u06e1\u06da\u06eb\u06e8\u06dc\u06d8\u06da\u06df\u06e5\u06d8\u06e6\u06e2\u06d7"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_61
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const-string v3, "\u06df\u06e2\u06df\u06e2\u06dc\u06ec\u06db\u06e1\u06d6\u06d7\u06d7\u06df\u06e5\u06eb\u06e7\u06dc\u06da\u06d8\u06d8\u06db\u06e0\u06d6\u06df\u06ec\u06e1\u06d8\u06ec\u06da\u06d6\u06d8\u06da\u06da\u06d6\u06e2\u06df\u06e4\u06db\u06e8\u06e1"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_62
    const-string v15, "sp_key_switch_setting_flash_back_auto_restart"

    const-string v3, "\u06db\u06ec\u06d8\u06e7\u06e0\u06d6\u06d9\u06d6\u06e8\u06dc\u06e6\u06dc\u06d8\u06e8\u06d7\u06d7\u06d6\u06e8\u06e1\u06e8\u06db\u06e8\u06e4\u06e6\u06e7\u06da\u06e4\u06e1\u06ec\u06e1\u06e5"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_63
    const-string v3, "\u06e0\u06e1\u06e5\u06d8\u06db\u06e8\u06e5\u06e7\u06e0\u06e5\u06d8\u06dc\u06e1\u06d7\u06ec\u06d6\u06e0\u06db\u06dc\u06d7\u06df\u06dc\u06e8\u06dc\u06e7\u06d6\u06d8\u06d9\u06e1\u06da\u06ec\u06dc\u06e2\u06e1\u06d9\u06e8\u06d9\u06e2\u06d9\u06e8\u06e2\u06d8\u06d8\u06d6\u06e6\u06e7"

    move-object v4, v3

    move-object/from16 v38, v15

    goto/16 :goto_0

    :sswitch_64
    const-string v3, "\u06eb\u06d6\u06e4\u06d7\u06e7\u06e6\u06e6\u06e6\u06e6\u06df\u06e1\u06da\u06ec\u06da\u06d8\u06d6\u06d8\u06d7\u06db\u06e8\u06d8\u06df\u06e7\u06e0\u06e0\u06d8\u06e0\u06df\u06e4\u06e6\u06d8\u06e7\u06d9\u06e7\u06ec\u06db\u06eb\u06e7\u06dc\u06ec\u06d7\u06e1\u06e6\u06e4\u06d6\u06e5\u06d8\u06e2\u06e1\u06e4"

    move-object v4, v3

    move-object/from16 v36, v17

    goto/16 :goto_0

    :sswitch_65
    const-string v3, "\u06df\u06e7\u06e4\u06da\u06d7\u06e8\u06df\u06db\u06d6\u06d8\u06e2\u06e5\u06e7\u06e8\u06ec\u06e1\u06df\u06eb\u06e5\u06da\u06d7\u06d9\u06d9\u06df\u06e1\u06e6\u06ec\u06e8\u06da\u06d6\u06d8\u06d7\u06e7\u06e1\u06d8\u06e2\u06e4\u06e1\u06e8\u06e2\u06da\u06da\u06eb\u06e0\u06db\u06d9\u06dc\u06da\u06e2\u06df\u06e7\u06e0\u06e2\u06ec\u06db\u06d9"

    move-object v4, v3

    move-object/from16 v34, v16

    goto/16 :goto_0

    :sswitch_66
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v14

    const-string v3, "\u06df\u06eb\u06d7\u06d7\u06ec\u06e1\u06dc\u06da\u06e0\u06e8\u06e0\u06e6\u06d8\u06e8\u06e0\u06e8\u06eb\u06e6\u06d6\u06e4\u06e0\u06eb\u06e4\u06e0\u06e5\u06db\u06dc\u06d7\u06ec\u06da\u06e8\u06d8\u06d7\u06df\u06e7\u06df\u06e1\u06e8\u06db\u06e2\u06e1\u06da\u06e0\u06df\u06e5\u06e4\u06d6\u06dc\u06e5\u06e5\u06e7\u06e4\u06d8\u06d8\u06d6\u06d6\u06dc\u06d8"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_67
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string v3, "\u06e4\u06da\u06d9\u06d9\u06e7\u06d8\u06dc\u06d7\u06e8\u06e8\u06d6\u06dc\u06d8\u06d9\u06d8\u06d8\u06e1\u06db\u06e4\u06ec\u06d6\u06d8\u06d9\u06e6\u06e6\u06df\u06d8\u06e5\u06d8\u06da\u06e1\u06eb\u06e6\u06dc\u06e6\u06d9\u06d6\u06e1"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_68
    const-string v12, "sp_key_switch_setting_error_dialog"

    const-string v3, "\u06df\u06d8\u06e6\u06d8\u06ec\u06db\u06e8\u06e7\u06db\u06e8\u06d8\u06df\u06e0\u06e4\u06df\u06ec\u06d6\u06d8\u06dc\u06df\u06d8\u06d8\u06e8\u06e6\u06d8\u06e6\u06e2\u06d7\u06d9\u06e4\u06e1\u06d8\u06e6\u06da\u06d6\u06d8"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_69
    const-string v3, "\u06dc\u06d8\u06dc\u06d8\u06db\u06e1\u06db\u06ec\u06e4\u06d8\u06df\u06e8\u06d6\u06d8\u06e0\u06d6\u06e7\u06ec\u06e5\u06da\u06d7\u06e0\u06eb\u06db\u06e2\u06dc\u06dc\u06e2\u06da\u06e5\u06d8\u06d8\u06ec\u06e7\u06e1\u06d8\u06eb\u06e4\u06eb\u06e8\u06e1\u06dc\u06e2\u06eb\u06e0\u06dc\u06dc\u06d6\u06d8\u06e6\u06da\u06df"

    move-object v4, v3

    move-object/from16 v38, v12

    goto/16 :goto_0

    :sswitch_6a
    const-string v3, "\u06e2\u06d7\u06e8\u06eb\u06e6\u06dc\u06e5\u06e8\u06dc\u06d8\u06eb\u06db\u06da\u06e6\u06e0\u06d6\u06d9\u06d8\u06e4\u06eb\u06e0\u06df\u06d6\u06dc\u06d9\u06e0\u06e4\u06da\u06e0\u06e7\u06dc\u06da\u06e7\u06e7\u06e1\u06dc\u06da\u06e1\u06eb\u06e7\u06d6\u06e1\u06e1\u06eb\u06da\u06e0\u06e6\u06e2\u06e8\u06e7\u06e5\u06d7\u06d8\u06da\u06e1\u06d8"

    move-object v4, v3

    move-object/from16 v36, v14

    goto/16 :goto_0

    :sswitch_6b
    const-string v3, "\u06e8\u06da\u06eb\u06ec\u06e1\u06ec\u06e1\u06e7\u06dc\u06d8\u06e0\u06d8\u06db\u06e6\u06ec\u06e5\u06d8\u06d9\u06eb\u06df\u06db\u06e8\u06d7\u06e2\u06d9\u06d8\u06d8\u06df\u06df\u06e1\u06d8\u06e2\u06e7\u06e8\u06d8\u06dc\u06dc\u06dc\u06e0\u06da\u06eb\u06da\u06eb\u06e7\u06d7\u06df\u06d7\u06dc\u06d9\u06e0\u06d6\u06ec\u06e6\u06d8\u06d7\u06e8\u06e5\u06d7\u06dc\u06e2"

    move-object v4, v3

    move-object/from16 v34, v13

    goto/16 :goto_0

    :sswitch_6c
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v3

    const-string v4, "sp_key_switch_setting_logcat_collect"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v3, v4, v0}, Lz2/x4;->OooO0o(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "\u06db\u06d6\u06e8\u06d8\u06e6\u06e4\u06e1\u06ec\u06e7\u06d6\u06d8\u06e4\u06df\u06eb\u06e7\u06ec\u06da\u06e4\u06d7\u06dc\u06e6\u06d8\u06e1\u06ec\u06e2\u06da\u06ec\u06df\u06e1\u06d6\u06d8\u06db\u06d8\u06d6\u06eb\u06e6\u06d7\u06e8\u06e7\u06dc\u06da\u06eb\u06e8\u06dc\u06d8\u06d8\u06e4\u06e1\u06eb\u06e8\u06d6\u06d8\u06db\u06d7\u06d6\u06ec\u06e0\u06d6"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_6d
    const v4, -0x713ea0fb

    const-string v3, "\u06d9\u06e1\u06e4\u06e5\u06eb\u06d7\u06df\u06e7\u06d7\u06d6\u06e5\u06e1\u06d8\u06e8\u06eb\u06dc\u06d8\u06e8\u06e0\u06ec\u06e7\u06d9\u06d9\u06d7\u06e8\u06e1\u06d8\u06d6\u06db\u06da\u06e1\u06e0\u06d8\u06d8\u06e0\u06e7\u06df\u06d8\u06da\u06d6\u06d8\u06e4\u06e1\u06e5\u06e8\u06d6"

    :goto_d
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v41

    xor-int v41, v41, v4

    sparse-switch v41, :sswitch_data_d

    goto :goto_d

    :sswitch_6e
    const-string v3, "\u06e7\u06e0\u06dc\u06d8\u06e6\u06e2\u06d9\u06e1\u06e1\u06e4\u06eb\u06e6\u06d8\u06d9\u06eb\u06e5\u06d8\u06e4\u06d8\u06dc\u06d8\u06ec\u06eb\u06ec\u06e5\u06e8\u06d8\u06d8\u06d9\u06e6\u06dc\u06e8\u06e0\u06e2\u06e8\u06d7\u06e5\u06ec\u06e7\u06e2\u06df\u06e1\u06d8\u06d8\u06e7\u06d6\u06e7\u06df\u06d8\u06d6\u06d8\u06da\u06e1\u06ec\u06e7\u06da\u06dc\u06d8\u06e5\u06e0\u06e1"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_6f
    const-string v3, "\u06df\u06e5\u06e1\u06eb\u06d6\u06d8\u06e2\u06db\u06d6\u06e1\u06e5\u06e8\u06d8\u06e5\u06eb\u06db\u06db\u06d7\u06e1\u06db\u06e1\u06db\u06eb\u06e6\u06dc\u06d8\u06db\u06db\u06df\u06df\u06da\u06d7\u06dc\u06d9\u06d7\u06ec\u06e8\u06d8\u06d8"

    goto :goto_d

    :sswitch_70
    const v41, 0x5d3f4910

    const-string v3, "\u06ec\u06e1\u06dc\u06d8\u06e6\u06e4\u06e1\u06d8\u06e6\u06db\u06e5\u06d8\u06e4\u06e6\u06e8\u06e2\u06da\u06db\u06d7\u06d8\u06e7\u06d7\u06dc\u06d9\u06d8\u06e0\u06e1\u06d8\u06ec\u06dc\u06d8\u06d8\u06d6\u06d8\u06db\u06e4\u06e4\u06e0\u06e5\u06df\u06e1\u06d8\u06db\u06d9\u06e1\u06d6\u06e2\u06d9"

    :goto_e
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v42

    xor-int v42, v42, v41

    sparse-switch v42, :sswitch_data_e

    goto :goto_e

    :sswitch_71
    if-eqz p2, :cond_6

    const-string v3, "\u06e4\u06d8\u06d8\u06d8\u06e2\u06e5\u06d9\u06e5\u06d9\u06e0\u06e0\u06eb\u06df\u06e6\u06e0\u06d6\u06d8\u06eb\u06d7\u06d9\u06e1\u06d7\u06d8\u06dc\u06e2\u06dc\u06d8\u06e2\u06db\u06e8\u06d7\u06e8\u06e4\u06e7\u06e8\u06eb\u06d8\u06e8\u06d8"

    goto :goto_e

    :cond_6
    const-string v3, "\u06e2\u06d8\u06dc\u06d8\u06e7\u06dc\u06e6\u06e0\u06e8\u06d6\u06d8\u06d6\u06dc\u06e5\u06e4\u06ec\u06ec\u06dc\u06d9\u06d7\u06dc\u06e7\u06e5\u06d6\u06d8\u06e0\u06d6\u06df\u06dc\u06e7\u06d8\u06ec\u06db\u06d8\u06da\u06d9\u06e1\u06e4\u06d9\u06d9\u06e6\u06eb\u06d6\u06d8"

    goto :goto_e

    :sswitch_72
    const-string v3, "\u06e5\u06e8\u06d7\u06df\u06eb\u06e2\u06da\u06e4\u06dc\u06d8\u06d7\u06dc\u06d7\u06da\u06d6\u06eb\u06d8\u06da\u06e5\u06d8\u06da\u06da\u06e1\u06d8\u06db\u06e7\u06e6\u06e8\u06df\u06d8\u06d8\u06d7\u06d6\u06df\u06da\u06ec\u06e5\u06d8\u06e8\u06d7\u06eb\u06e0\u06d9\u06ec\u06ec\u06eb\u06e5\u06e1\u06e7\u06dc\u06d9\u06e1\u06e1\u06d8\u06eb\u06e4\u06dc\u06ec\u06e2\u06d6\u06d8"

    goto :goto_e

    :sswitch_73
    const-string v3, "\u06e2\u06e2\u06d9\u06e6\u06e7\u06da\u06d7\u06dc\u06e8\u06d8\u06e4\u06e8\u06e8\u06e8\u06e6\u06d8\u06d8\u06db\u06e6\u06e2\u06df\u06d9\u06e5\u06e1\u06e7\u06e0\u06e1\u06df\u06e0\u06d6\u06e1\u06e5\u06e8\u06d6\u06df\u06e6\u06df\u06e5\u06e8\u06d7\u06d7\u06eb\u06e6\u06e6\u06df\u06e4\u06db\u06d7\u06e0\u06e4"

    goto :goto_d

    :sswitch_74
    const-string v3, "\u06dc\u06e4\u06e5\u06d8\u06d6\u06e7\u06da\u06d9\u06e7\u06e2\u06e6\u06d8\u06e7\u06e8\u06db\u06d7\u06e4\u06d9\u06d8\u06d8\u06dc\u06ec\u06d8\u06d8\u06db\u06e6\u06d6\u06e4\u06e2\u06d8\u06df\u06da\u06e5\u06eb\u06e7\u06d7\u06e2\u06d6\u06e8"

    goto :goto_d

    :sswitch_75
    const-string v3, "\u06e8\u06e8\u06e0\u06e7\u06d8\u06ec\u06dc\u06e8\u06d6\u06dc\u06e7\u06e1\u06d6\u06d6\u06e5\u06d8\u06e0\u06d6\u06d8\u06e4\u06e5\u06e0\u06d6\u06ec\u06e5\u06d9\u06d7\u06e4\u06e1\u06d7\u06e5\u06e1\u06dc\u06d6\u06e7\u06d8\u06dc\u06d8\u06db\u06d9\u06eb\u06eb\u06dc\u06d6"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_76
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c00d5

    const/4 v11, 0x0

    invoke-virtual {v3, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    const-string v3, "\u06e1\u06df\u06ec\u06e5\u06d7\u06e0\u06d7\u06ec\u06e0\u06da\u06ec\u06eb\u06e4\u06e4\u06da\u06e1\u06e4\u06eb\u06e2\u06da\u06ec\u06d9\u06da\u06e0\u06df\u06db\u06d7\u06d7\u06e8\u06e8\u06da\u06e2\u06e7\u06e8\u06d6\u06e5\u06e5\u06d6\u06e4\u06e7\u06d9\u06d8\u06d8\u06e0\u06df\u06e1\u06dc\u06e8\u06e4\u06dc\u06da\u06e0\u06e4\u06db\u06ec"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_77
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u06e1\u06e4\u06d6\u06d8\u06dc\u06d7\u06d9\u06e5\u06da\u06d8\u06e2\u06df\u06d6\u06d8\u06e8\u06da\u06e6\u06d6\u06e5\u06d7\u06e8\u06da\u06e8\u06da\u06e7\u06eb\u06dc\u06da\u06e5\u06d8\u06e7\u06e5\u06e7\u06d8\u06e1\u06e4\u06e1\u06d8\u06ec\u06e0\u06d9\u06e7\u06dc\u06d8\u06e8\u06dc\u06d6\u06db\u06e8\u06ec\u06df\u06e6\u06ec\u06e4\u06d9\u06e1\u06d8\u06ec\u06e1\u06e7\u06d8"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_78
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v3, "\u06e2\u06e1\u06e8\u06d6\u06e7\u06db\u06e0\u06e8\u06e8\u06d8\u06e8\u06d6\u06d8\u06e0\u06e6\u06e6\u06d8\u06da\u06e6\u06e5\u06d8\u06e7\u06d6\u06e6\u06d8\u06eb\u06d7\u06d7\u06d9\u06ec\u06e6\u06e0\u06e5\u06e1\u06d8\u06e4\u06e2\u06d6\u06d8\u06e7\u06da\u06e8\u06d8"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_79
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    const-string v3, "\u06e4\u06e0\u06e2\u06e7\u06d8\u06dc\u06d8\u06d7\u06d8\u06e1\u06d8\u06e5\u06da\u06e7\u06df\u06d8\u06d9\u06df\u06dc\u06dc\u06d8\u06df\u06e1\u06e5\u06d8\u06dc\u06df\u06dc\u06d8\u06e2\u06e4\u06e6\u06dc\u06da\u06e2\u06e2\u06e1\u06d7\u06e8\u06d7\u06e1\u06e2\u06d9\u06dc\u06d8\u06e2\u06e6\u06dc\u06d8"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_7a
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    const-string v3, "\u06da\u06da\u06e1\u06d8\u06d8\u06d6\u06d9\u06e5\u06e1\u06e8\u06d7\u06df\u06e0\u06d8\u06e6\u06da\u06e4\u06d7\u06db\u06e0\u06d7\u06d9\u06e2\u06ec\u06d8\u06e0\u06da\u06e4\u06d9\u06e2\u06da\u06dc\u06e4\u06da\u06e7\u06d6\u06e2\u06dc\u06e7\u06e1\u06d8\u06e2\u06db\u06e5\u06d8"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_7b
    const v3, 0x7f09028f

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const-string v4, "\u06df\u06e5\u06e7\u06d8\u06e2\u06da\u06e0\u06d6\u06d7\u06e4\u06eb\u06e8\u06e1\u06e0\u06e0\u06e6\u06e2\u06d8\u06ec\u06e5\u06e1\u06db\u06e4\u06dc\u06e4\u06eb\u06e0\u06e4\u06da\u06e0\u06eb\u06e8\u06e7\u06d7\u06d6\u06e5\u06d8\u06db\u06e2\u06eb\u06ec\u06ec\u06e8\u06d8\u06da\u06da\u06e4\u06d8\u06df\u06e7\u06ec\u06e5\u06e0\u06e1\u06d9\u06e1"

    move-object v8, v3

    goto/16 :goto_0

    :sswitch_7c
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v3

    const-string v4, "sp_key_adb_command"

    const-string v41, "logcat -v time"

    move-object/from16 v0, v41

    invoke-virtual {v3, v4, v0}, Lz2/x4;->OooO0Oo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "\u06ec\u06e1\u06eb\u06e6\u06d6\u06dc\u06e8\u06da\u06df\u06e8\u06d6\u06d8\u06e4\u06eb\u06d9\u06e6\u06ec\u06e6\u06d8\u06e6\u06d8\u06d6\u06d8\u06e6\u06da\u06e0\u06d8\u06d9\u06dc\u06e6\u06db\u06dc\u06d8"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_7d
    const v3, 0x7f090278

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO0O0;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8, v9}, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO0O0;-><init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v3, "\u06e2\u06e5\u06e2\u06e7\u06eb\u06e6\u06d8\u06e6\u06dc\u06e7\u06d8\u06e7\u06db\u06e4\u06e4\u06d8\u06dc\u06d8\u06db\u06ec\u06e1\u06da\u06e5\u06e6\u06d8\u06e4\u06d7\u06e1\u06d8\u06e8\u06e8\u06e8\u06d8\u06e5\u06d6\u06e1\u06d8\u06da\u06e4\u06df\u06e8\u06eb\u06d6\u06d8\u06e5\u06e1\u06e7\u06e5\u06e4\u06df\u06e2\u06e0\u06dc\u06e5\u06e0\u06df\u06e5\u06e1\u06d8\u06d6\u06e6\u06df"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_7e
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v7

    const-string v3, "\u06d7\u06e6\u06e6\u06d8\u06d7\u06d8\u06df\u06e0\u06eb\u06d8\u06d8\u06e1\u06d6\u06eb\u06da\u06dc\u06eb\u06e2\u06df\u06da\u06eb\u06eb\u06db\u06e2\u06d8\u06e1\u06d8\u06e7\u06d9\u06db\u06e4\u06e1\u06d8\u06d8\u06e0\u06ec\u06db\u06dc\u06df\u06e8\u06d8\u06e0\u06e6\u06df\u06e4\u06d6\u06db"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_7f
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v3, "\u06db\u06e5\u06e6\u06d8\u06df\u06da\u06eb\u06eb\u06d8\u06e2\u06db\u06ec\u06d6\u06e2\u06e0\u06eb\u06d8\u06e5\u06ec\u06dc\u06e2\u06e6\u06d8\u06e6\u06d7\u06e5\u06d8\u06e0\u06e4\u06e8\u06e0\u06db\u06ec\u06e8\u06d6\u06da\u06e5\u06e0\u06e5\u06d8\u06e7\u06e7\u06e6\u06d8\u06eb\u06e2\u06e4\u06d9\u06e7\u06eb\u06d6\u06e5"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_80
    const-string v5, "sp_key_switch_setting_auto_run_script"

    const-string v3, "\u06d8\u06ec\u06d6\u06d9\u06d8\u06e4\u06dc\u06e8\u06db\u06da\u06d8\u06e6\u06e5\u06e6\u06e6\u06df\u06e5\u06da\u06e7\u06e6\u06d8\u06d9\u06e0\u06e5\u06d7\u06d7\u06eb\u06e5\u06d9\u06e2\u06e4\u06d7\u06e5\u06df\u06e5\u06d6\u06d8\u06e8\u06e6\u06da\u06d8\u06dc\u06d9\u06d8\u06da\u06eb\u06dc\u06db\u06e4\u06db\u06e5\u06eb\u06e7\u06df\u06e1\u06d8"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_81
    const-string v3, "\u06df\u06eb\u06eb\u06df\u06e8\u06e7\u06d8\u06e4\u06db\u06dc\u06df\u06e1\u06e4\u06ec\u06d6\u06da\u06e2\u06e6\u06d6\u06e0\u06eb\u06e8\u06d8\u06e0\u06d6\u06d9\u06d6\u06e0\u06e4\u06df\u06eb\u06e0\u06ec\u06e7\u06ec\u06eb\u06e5\u06d6\u06d8\u06eb\u06d7\u06e2\u06e4\u06db\u06d7"

    move-object v4, v3

    move-object/from16 v34, v6

    goto/16 :goto_0

    :sswitch_82
    const-string v3, "\u06e7\u06d8\u06e1\u06d8\u06e1\u06e2\u06ec\u06e8\u06df\u06d6\u06d8\u06d6\u06db\u06e5\u06d8\u06da\u06e8\u06e1\u06d8\u06d6\u06d6\u06dc\u06e1\u06e2\u06da\u06e6\u06e7\u06df\u06dc\u06e2\u06e7\u06eb\u06d6\u06dc\u06eb\u06d7\u06d8\u06d8\u06e0\u06ec\u06db\u06e2\u06df\u06db\u06d7\u06e4\u06e1\u06e4\u06e6\u06d9\u06d6\u06eb\u06df\u06d9\u06d6\u06da\u06d9\u06ec\u06e6"

    move-object v4, v3

    move-object/from16 v36, v7

    goto/16 :goto_0

    :sswitch_83
    const-string v3, "\u06e2\u06df\u06e6\u06d8\u06e8\u06e7\u06e5\u06ec\u06e5\u06d8\u06e6\u06e4\u06d7\u06e7\u06e4\u06e5\u06e2\u06e5\u06e0\u06dc\u06d8\u06dc\u06e4\u06db\u06d6\u06e4\u06dc\u06e8\u06e1\u06d9\u06dc\u06e7\u06d8\u06d8\u06d9\u06d6\u06d8\u06e6\u06e2\u06e2\u06e2\u06e5\u06e4\u06e2\u06ec\u06ec\u06e1\u06e5\u06d8\u06d8"

    move-object v4, v3

    move-object/from16 v38, v5

    goto/16 :goto_0

    :sswitch_84
    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lz2/x4;->OooO0o(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "\u06db\u06d8\u06dc\u06d8\u06d6\u06d7\u06e7\u06e7\u06da\u06d9\u06e5\u06ec\u06d8\u06e5\u06e1\u06d9\u06e1\u06e1\u06e7\u06e7\u06e4\u06e6\u06e8\u06df\u06e4\u06da\u06df\u06e7\u06e2\u06da\u06e6\u06e8\u06e4\u06ec\u06e6\u06d8\u06e1\u06eb\u06db\u06e5\u06e5\u06d8"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_85
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v3

    const-string v4, "sp_key_switch_setting_open_run_script"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v3, v4, v0}, Lz2/x4;->OooO0o(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "\u06e7\u06dc\u06e1\u06d8\u06e2\u06e6\u06e8\u06e6\u06e6\u06d8\u06d7\u06d6\u06db\u06e2\u06e6\u06e7\u06eb\u06e5\u06e6\u06ec\u06e1\u06e1\u06d8\u06df\u06e4\u06e6\u06d8\u06db\u06e6\u06e7\u06d9\u06df\u06ec"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_86
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lz2/a4;->OooOoo(Landroid/content/Context;Z)V

    const-string v3, "\u06e7\u06e0\u06dc\u06d8\u06e6\u06e2\u06d9\u06e1\u06e1\u06e4\u06eb\u06e6\u06d8\u06d9\u06eb\u06e5\u06d8\u06e4\u06d8\u06dc\u06d8\u06ec\u06eb\u06ec\u06e5\u06e8\u06d8\u06d8\u06d9\u06e6\u06dc\u06e8\u06e0\u06e2\u06e8\u06d7\u06e5\u06ec\u06e7\u06e2\u06df\u06e1\u06d8\u06d8\u06e7\u06d6\u06e7\u06df\u06d8\u06d6\u06d8\u06da\u06e1\u06ec\u06e7\u06da\u06dc\u06d8\u06e5\u06e0\u06e1"

    move-object v4, v3

    goto/16 :goto_0

    :pswitch_0
    const-string v3, "\u06e8\u06e2\u06d6\u06e1\u06e6\u06e6\u06d8\u06d8\u06e1\u06e6\u06e2\u06e4\u06eb\u06d6\u06e2\u06e5\u06e6\u06e2\u06e5\u06d8\u06e1\u06e5\u06eb\u06d8\u06eb\u06d6\u06d7\u06e1\u06e2\u06e8\u06dc\u06da\u06eb\u06e6\u06eb\u06e2\u06d7\u06e1\u06d8\u06ec\u06da\u06dc\u06e1\u06e8\u06e6\u06d8\u06db\u06e7\u06da\u06e5\u06ec\u06e6\u06e1\u06e7\u06e7\u06db\u06e6\u06e8"

    move-object v4, v3

    goto/16 :goto_0

    :pswitch_1
    const-string v3, "\u06e1\u06d6\u06dc\u06e5\u06e6\u06e7\u06db\u06df\u06d6\u06e6\u06d7\u06e5\u06e0\u06e1\u06d9\u06e1\u06d8\u06d8\u06da\u06e7\u06e8\u06d8\u06e4\u06db\u06e4\u06e5\u06d8\u06df\u06e8\u06e7\u06df\u06e7\u06da\u06e2\u06d7\u06e5\u06d8\u06da\u06e6\u06e0\u06e2\u06e6\u06e6"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_87
    const-string v3, "\u06d7\u06e4\u06e4\u06e2\u06d8\u06eb\u06e8\u06d7\u06e4\u06d7\u06e2\u06d8\u06d8\u06db\u06ec\u06da\u06d8\u06ec\u06e1\u06d8\u06e2\u06d6\u06df\u06ec\u06e0\u06e8\u06e0\u06e5\u06eb\u06db\u06ec\u06db\u06e7\u06dc\u06e1\u06e8\u06e1\u06e8"

    move-object v4, v3

    goto/16 :goto_0

    :pswitch_2
    const-string v3, "\u06e8\u06db\u06d9\u06e0\u06db\u06e4\u06e0\u06e0\u06e8\u06d8\u06e2\u06d7\u06db\u06ec\u06d8\u06e5\u06da\u06e1\u06ec\u06e8\u06d6\u06d6\u06da\u06d9\u06d7\u06e5\u06eb\u06e2\u06eb\u06e8\u06d8\u06d8\u06df\u06da\u06d9\u06df\u06da\u06d9\u06e8\u06e0\u06e4\u06d6\u06d8"

    move-object v4, v3

    goto/16 :goto_0

    :pswitch_3
    const-string v3, "\u06e4\u06eb\u06d6\u06d8\u06da\u06e8\u06dc\u06e0\u06e7\u06e7\u06d7\u06e5\u06e8\u06d6\u06e8\u06e7\u06d8\u06d6\u06ec\u06e5\u06d8\u06e5\u06db\u06d8\u06e1\u06e7\u06d6\u06eb\u06e4\u06e5\u06df\u06e6\u06e7"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_88
    const-string v3, "\u06e8\u06e6\u06d6\u06d8\u06dc\u06ec\u06da\u06e0\u06e4\u06dc\u06d8\u06db\u06ec\u06e8\u06d8\u06e2\u06e8\u06e1\u06d8\u06d8\u06d8\u06e2\u06e0\u06e4\u06d6\u06ec\u06d7\u06e1\u06e6\u06e5\u06d8\u06e7\u06d6\u06ec\u06da\u06e6\u06df\u06e1\u06e0\u06d9\u06d9\u06e5\u06d8\u06e4\u06d8\u06d8\u06d8\u06e2\u06d7\u06eb\u06e5\u06db\u06e7\u06eb\u06df\u06e0\u06d8\u06e7\u06e6"

    move-object v4, v3

    goto/16 :goto_0

    :pswitch_4
    const-string v3, "\u06d7\u06dc\u06e1\u06d8\u06e8\u06d7\u06d6\u06d8\u06d9\u06d8\u06dc\u06d7\u06df\u06eb\u06e4\u06d6\u06e5\u06e2\u06d6\u06e2\u06d7\u06dc\u06d7\u06e0\u06d8\u06df\u06df\u06e8\u06d6\u06d8\u06e6\u06da\u06e6\u06d8\u06d9\u06e1\u06db\u06d9\u06dc"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_89
    const-string v3, "\u06db\u06e1\u06e5\u06d8\u06eb\u06e6\u06db\u06d6\u06ec\u06eb\u06db\u06ec\u06dc\u06d8\u06eb\u06e5\u06d7\u06d9\u06e6\u06e7\u06e6\u06e4\u06e8\u06d8\u06ec\u06e1\u06dc\u06e8\u06e0\u06eb\u06dc\u06e6\u06e8\u06d8\u06df\u06e7\u06e7\u06df\u06e4\u06e7\u06ec\u06e8\u06d8\u06df\u06e1\u06d7\u06e6\u06d6\u06e5\u06e2\u06d6\u06e8\u06dc\u06ec\u06e8\u06d8"

    move-object v4, v3

    goto/16 :goto_0

    :pswitch_5
    const-string v3, "\u06e5\u06df\u06d8\u06d9\u06df\u06d6\u06d8\u06da\u06d8\u06ec\u06da\u06dc\u06e5\u06d8\u06d8\u06e5\u06e5\u06d8\u06d9\u06e6\u06d6\u06d8\u06ec\u06e1\u06ec\u06e0\u06e4\u06da\u06e4\u06d9\u06e4\u06da\u06d6\u06d8\u06e7\u06ec\u06e5\u06e5\u06ec\u06e5\u06d8\u06e5\u06e8\u06d8\u06d8\u06e4\u06dc\u06e8\u06e0\u06d6\u06eb\u06db\u06e0\u06d6\u06d6\u06e4\u06eb\u06d6\u06dc"

    move-object v4, v3

    goto/16 :goto_0

    :pswitch_6
    const-string v3, "\u06eb\u06d7\u06d7\u06d8\u06e7\u06d6\u06d8\u06d6\u06da\u06e8\u06df\u06d7\u06e5\u06e2\u06e7\u06dc\u06d8\u06d6\u06e5\u06e2\u06df\u06e0\u06e2\u06e2\u06d6\u06d8\u06e5\u06db\u06e1\u06db\u06df\u06db"

    move-object v4, v3

    goto/16 :goto_0

    :pswitch_7
    const-string v3, "\u06e8\u06e7\u06e8\u06df\u06e1\u06d6\u06e6\u06e8\u06d9\u06dc\u06eb\u06d8\u06e7\u06e5\u06d6\u06d8\u06e0\u06e2\u06e0\u06e8\u06eb\u06dc\u06d8\u06e4\u06da\u06e6\u06d8\u06e1\u06e7\u06e8\u06d8\u06e2\u06e0\u06ec"

    move-object v4, v3

    goto/16 :goto_0

    :pswitch_8
    const-string v3, "\u06eb\u06df\u06dc\u06d8\u06d8\u06da\u06d9\u06da\u06ec\u06e5\u06e8\u06e2\u06e5\u06e7\u06e7\u06e1\u06d8\u06e2\u06e6\u06e7\u06e0\u06df\u06e5\u06d8\u06d7\u06d8\u06eb\u06e5\u06df\u06e6\u06e0\u06e1\u06d6\u06d9\u06e5\u06e1\u06d8\u06da\u06dc\u06d6\u06d8\u06e4\u06e0\u06d7\u06e7\u06d9\u06e5\u06da\u06e8\u06e0\u06d7\u06db\u06eb"

    move-object v4, v3

    goto/16 :goto_0

    :pswitch_9
    const-string v3, "\u06d9\u06e4\u06eb\u06e1\u06d6\u06d7\u06e5\u06d9\u06e8\u06db\u06da\u06e5\u06df\u06e6\u06d8\u06e4\u06e8\u06d8\u06d8\u06eb\u06e4\u06e6\u06d8\u06db\u06e4\u06da\u06e2\u06ec\u06e6\u06d8\u06e1\u06e8\u06e7\u06db\u06e1\u06e1\u06d8\u06d7\u06d6\u06e1\u06d8\u06eb\u06d8\u06ec\u06ec\u06df\u06ec\u06e4\u06e8\u06e2\u06e1\u06e0\u06e2\u06db\u06df\u06e4\u06e2\u06df\u06d6"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_8a
    const-string v3, "\u06e2\u06df\u06e6\u06d8\u06e8\u06e7\u06e5\u06ec\u06e5\u06d8\u06e6\u06e4\u06d7\u06e7\u06e4\u06e5\u06e2\u06e5\u06e0\u06dc\u06d8\u06dc\u06e4\u06db\u06d6\u06e4\u06dc\u06e8\u06e1\u06d9\u06dc\u06e7\u06d8\u06d8\u06d9\u06d6\u06d8\u06e6\u06e2\u06e2\u06e2\u06e5\u06e4\u06e2\u06ec\u06ec\u06e1\u06e5\u06d8\u06d8"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_8b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d4a1809 -> :sswitch_24
        -0x7a7e270b -> :sswitch_11
        -0x77c03776 -> :sswitch_5b
        -0x775aba3c -> :sswitch_10
        -0x770c530f -> :sswitch_69
        -0x75decd6e -> :sswitch_76
        -0x741de4ef -> :sswitch_5a
        -0x718e5162 -> :sswitch_7a
        -0x70acb350 -> :sswitch_8b
        -0x6e162712 -> :sswitch_12
        -0x6cbab226 -> :sswitch_6e
        -0x6a44a279 -> :sswitch_56
        -0x69f2774a -> :sswitch_1
        -0x65d243c2 -> :sswitch_8a
        -0x652ef00b -> :sswitch_62
        -0x64577cb2 -> :sswitch_5e
        -0x60dafc82 -> :sswitch_54
        -0x5ca55270 -> :sswitch_6e
        -0x57fd8b74 -> :sswitch_34
        -0x5602bfe0 -> :sswitch_33
        -0x53748705 -> :sswitch_d
        -0x52dde87a -> :sswitch_6b
        -0x4d84fd10 -> :sswitch_78
        -0x4c87f059 -> :sswitch_8a
        -0x4c854669 -> :sswitch_2e
        -0x4b2bffa6 -> :sswitch_0
        -0x49e2fa1e -> :sswitch_6e
        -0x47181c96 -> :sswitch_52
        -0x41e026a8 -> :sswitch_8a
        -0x3fe4dd65 -> :sswitch_47
        -0x39a045f9 -> :sswitch_83
        -0x397c9c0f -> :sswitch_32
        -0x36928f8d -> :sswitch_84
        -0x32a0b535 -> :sswitch_5d
        -0x318e847a -> :sswitch_8a
        -0x305e63d5 -> :sswitch_58
        -0x2fd818a7 -> :sswitch_81
        -0x2e7c6541 -> :sswitch_86
        -0x2b181b43 -> :sswitch_26
        -0x2824b5d0 -> :sswitch_89
        -0x27965d86 -> :sswitch_6a
        -0x2195b93f -> :sswitch_61
        -0x1e63ab01 -> :sswitch_8a
        -0x1c6f50b9 -> :sswitch_7e
        -0x15ce387a -> :sswitch_e
        -0x13e915d9 -> :sswitch_31
        -0x1079e9d7 -> :sswitch_25
        -0xdea9c30 -> :sswitch_3d
        -0xb09122d -> :sswitch_59
        -0x78a3dda -> :sswitch_63
        -0x6bd4a60 -> :sswitch_5f
        -0x624b086 -> :sswitch_6d
        -0x2d8ae9a -> :sswitch_4f
        -0x22067f0 -> :sswitch_3
        0x21c86dc -> :sswitch_f
        0x2871f61 -> :sswitch_2f
        0x2eed109 -> :sswitch_2d
        0x4157ac0 -> :sswitch_8a
        0x613e2c1 -> :sswitch_30
        0x8ca21fc -> :sswitch_5c
        0xc44afa7 -> :sswitch_55
        0x155d49b8 -> :sswitch_2a
        0x184ada65 -> :sswitch_67
        0x188afbab -> :sswitch_6e
        0x1ac3225d -> :sswitch_3c
        0x1f5e0fb1 -> :sswitch_60
        0x2429f800 -> :sswitch_82
        0x2434660d -> :sswitch_68
        0x25141fdc -> :sswitch_6e
        0x28617b3d -> :sswitch_66
        0x2c6ebd41 -> :sswitch_29
        0x2dc9563e -> :sswitch_77
        0x3477a5b1 -> :sswitch_65
        0x34d21aa5 -> :sswitch_6e
        0x362c4c2a -> :sswitch_64
        0x366382b2 -> :sswitch_4
        0x3a7da22e -> :sswitch_14
        0x3b3e8003 -> :sswitch_2c
        0x3e03a57d -> :sswitch_57
        0x4056a190 -> :sswitch_1c
        0x4450dce5 -> :sswitch_6c
        0x4560a0a3 -> :sswitch_2b
        0x4779deea -> :sswitch_50
        0x4808ccf6 -> :sswitch_53
        0x4bc20fcf -> :sswitch_3e
        0x578f5e66 -> :sswitch_7d
        0x59f4fa9f -> :sswitch_7f
        0x5ab2302f -> :sswitch_27
        0x5e7e2e07 -> :sswitch_8a
        0x6752eb01 -> :sswitch_80
        0x7132eade -> :sswitch_2
        0x7195c74f -> :sswitch_28
        0x73de2d15 -> :sswitch_51
        0x75e40750 -> :sswitch_85
        0x7c850ed5 -> :sswitch_13
        0x7e798af1 -> :sswitch_7c
        0x7f3e08e3 -> :sswitch_7b
        0x7fa9171d -> :sswitch_79
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3e41ba58 -> :sswitch_b
        0x211c5048 -> :sswitch_c
        0x53c04f74 -> :sswitch_7
        0x7789b064 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x1e6be553 -> :sswitch_8
        0x2c820933 -> :sswitch_6
        0x47f13c9c -> :sswitch_a
        0x60e72ce1 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7f09041a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x53d6aa -> :sswitch_1b
        0x4f7ab4ca -> :sswitch_15
        0x6caa50cb -> :sswitch_17
        0x6d0ac409 -> :sswitch_87
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x7201da73 -> :sswitch_18
        -0x51f86252 -> :sswitch_1a
        0x8b975ec -> :sswitch_16
        0x6020af19 -> :sswitch_19
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x671fe14d -> :sswitch_1d
        -0x4ff9d09a -> :sswitch_87
        -0x213d5677 -> :sswitch_23
        0x285189df -> :sswitch_1f
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x7a2fa9f7 -> :sswitch_22
        -0x3614e9c9 -> :sswitch_21
        -0x281f6597 -> :sswitch_20
        -0x24d328f -> :sswitch_1e
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x48057a3 -> :sswitch_37
        -0xe25dfa -> :sswitch_35
        0x4a4a491e -> :sswitch_3b
        0x4e4e20dc -> :sswitch_88
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x4f6aade3 -> :sswitch_3a
        -0x2e5db1d0 -> :sswitch_36
        0xe854d41 -> :sswitch_38
        0x1aa1cf3f -> :sswitch_39
    .end sparse-switch

    :sswitch_data_9
    .sparse-switch
        -0x583cf0ab -> :sswitch_3f
        -0x16fadccf -> :sswitch_41
        0x861acd4 -> :sswitch_45
        0xb32cb83 -> :sswitch_46
    .end sparse-switch

    :sswitch_data_a
    .sparse-switch
        -0x4381fe93 -> :sswitch_40
        -0x2eb86a4c -> :sswitch_44
        0x2ceeb915 -> :sswitch_42
        0x492703e8 -> :sswitch_43
    .end sparse-switch

    :sswitch_data_b
    .sparse-switch
        -0x7718e7cc -> :sswitch_3f
        -0x52bc9511 -> :sswitch_48
        0x716408c2 -> :sswitch_4e
        0x7e8278ed -> :sswitch_4d
    .end sparse-switch

    :sswitch_data_c
    .sparse-switch
        -0x42ccf9e2 -> :sswitch_4b
        0xeb98888 -> :sswitch_49
        0x4147dbae -> :sswitch_4c
        0x5ef582e1 -> :sswitch_4a
    .end sparse-switch

    :sswitch_data_d
    .sparse-switch
        -0x41ce7c81 -> :sswitch_75
        0x28d1ef71 -> :sswitch_70
        0x61f9de31 -> :sswitch_74
        0x73aa25f9 -> :sswitch_6e
    .end sparse-switch

    :sswitch_data_e
    .sparse-switch
        0x1ada2e5a -> :sswitch_71
        0x38f9a2ef -> :sswitch_72
        0x668e07a0 -> :sswitch_73
        0x7624e26e -> :sswitch_6f
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v2, 0x0

    const-string v0, "\u06e0\u06e6\u06d6\u06d8\u06e5\u06ec\u06d6\u06e4\u06d6\u06e1\u06db\u06ec\u06e7\u06d8\u06d8\u06e1\u06e8\u06e2\u06db\u06e7\u06e1\u06d8\u06df\u06ec\u06dc\u06d8\u06da\u06eb\u06df\u06ec\u06e0\u06e5"

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v10, 0x1fc

    xor-int/2addr v2, v10

    xor-int/lit16 v2, v2, 0x37a

    const/16 v10, 0x52

    const v11, 0x5ba05e19

    xor-int/2addr v2, v10

    xor-int/2addr v2, v11

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06e8\u06d6\u06eb\u06eb\u06dc\u06e2\u06dc\u06e4\u06e8\u06e8\u06e2\u06e4\u06e6\u06e1\u06d9\u06da\u06da\u06e5\u06d7\u06e5\u06d9\u06eb\u06da\u06dc\u06eb\u06e6\u06d8\u06d9\u06e0\u06d9\u06db\u06e5\u06e8\u06d7\u06e0\u06d6\u06d8\u06e1\u06eb\u06e8\u06d8\u06e0\u06e5\u06e8\u06ec\u06df\u06d9\u06ec\u06d9\u06e6\u06d8\u06df\u06e1\u06e2\u06d7\u06df"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e1\u06e5\u06eb\u06e1\u06e8\u06e0\u06e1\u06eb\u06e5\u06d8\u06e7\u06db\u06e5\u06e2\u06eb\u06ec\u06eb\u06d7\u06e8\u06eb\u06e8\u06d6\u06d8\u06df\u06e6\u06db\u06e4\u06e7\u06d7"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    const-string v0, "\u06e0\u06da\u06d6\u06e2\u06e2\u06db\u06e0\u06e1\u06db\u06eb\u06df\u06e0\u06d9\u06e7\u06eb\u06e0\u06d7\u06d8\u06eb\u06e6\u06d8\u06dc\u06e5\u06e7\u06df\u06e1\u06e1\u06d8\u06d7\u06dc\u06e2\u06db\u06d6\u06dc\u06d6\u06d8\u06e7\u06d8\u06d9\u06eb\u06e5\u06e1\u06e2\u06eb\u06e6\u06ec\u06e8\u06df\u06dc\u06e2\u06e5\u06e8\u06d8\u06e6\u06eb\u06e0"

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OooOOO0()V

    const-string v0, "\u06d7\u06d9\u06e8\u06dc\u06e7\u06e5\u06d8\u06d6\u06e8\u06e8\u06d8\u06ec\u06e4\u06e5\u06dc\u06e1\u06e2\u06e8\u06e8\u06e7\u06e0\u06e7\u06d9\u06e4\u06ec\u06e4\u06d7\u06da\u06d6\u06d8\u06eb\u06dc\u06d8\u06d8\u06e4\u06e6\u06e6\u06d8\u06e7\u06da\u06d8\u06d8\u06d9\u06dc\u06dc\u06d8\u06e6\u06eb\u06ec"

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/base/AppContext;->OooO()V

    const-string v0, "\u06d9\u06e8\u06e5\u06e6\u06d6\u06db\u06d9\u06e6\u06da\u06e0\u06ec\u06e6\u06ec\u06e6\u06dc\u06db\u06da\u06d6\u06e8\u06d8\u06e4\u06eb\u06eb\u06ec\u06db\u06e2\u06da\u06e5\u06e6\u06d8\u06dc\u06df\u06d6\u06db\u06e6\u06e1\u06d8\u06e2\u06e8\u06d9\u06e8\u06d9\u06e8\u06d8"

    goto :goto_0

    :sswitch_5
    const v2, 0x461281d1

    const-string v0, "\u06e8\u06d6\u06e7\u06ec\u06d8\u06e7\u06e8\u06d7\u06d7\u06e1\u06ec\u06dc\u06e0\u06df\u06e1\u06d8\u06df\u06e8\u06eb\u06ec\u06d6\u06d6\u06d8\u06ec\u06da\u06e0\u06ec\u06d8\u06db\u06ec\u06d9\u06d6\u06e7\u06e8\u06e7\u06d8\u06d8\u06df\u06e8\u06d8\u06da\u06e2\u06e7\u06d8\u06db\u06e4\u06e5\u06d8\u06d6\u06dc\u06d7\u06dc"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v2

    sparse-switch v10, :sswitch_data_2

    goto :goto_1

    :sswitch_6
    const-string v0, "\u06e0\u06e8\u06d8\u06d8\u06e0\u06ec\u06db\u06eb\u06e1\u06e7\u06d8\u06e5\u06e0\u06dc\u06d8\u06e0\u06df\u06ec\u06d6\u06e1\u06dc\u06d6\u06e2\u06e6\u06d8\u06ec\u06d6\u06d6\u06d8\u06d7\u06df\u06e8\u06d8\u06e4\u06ec\u06e2"

    goto :goto_0

    :sswitch_7
    const-string v0, "\u06e7\u06eb\u06eb\u06d9\u06e4\u06d8\u06d8\u06e6\u06e6\u06df\u06d6\u06d7\u06e1\u06e7\u06e6\u06e4\u06d7\u06e5\u06d8\u06db\u06db\u06db\u06ec\u06e6\u06d7\u06d7\u06e7\u06da\u06ec\u06d6\u06d8\u06e6\u06e4\u06e2\u06e5\u06df\u06e0\u06eb\u06ec\u06e8\u06e4\u06e6\u06e8\u06d8\u06d8\u06d8\u06e2\u06e2\u06e6"

    goto :goto_1

    :sswitch_8
    const v10, -0x1ecd67b

    const-string v0, "\u06e6\u06dc\u06e8\u06d8\u06d8\u06d8\u06e8\u06e6\u06ec\u06d7\u06d8\u06d8\u06ec\u06ec\u06e0\u06e5\u06da\u06e7\u06df\u06e0\u06d7\u06eb\u06e8\u06e6\u06dc\u06e7\u06dc\u06e2\u06e2\u06ec"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    xor-int/2addr v11, v10

    sparse-switch v11, :sswitch_data_3

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06eb\u06d8\u06db\u06e2\u06e5\u06eb\u06d9\u06e4\u06ec\u06d7\u06e2\u06d6\u06d8\u06eb\u06e0\u06e1\u06e5\u06d9\u06d6\u06d8\u06db\u06d6\u06d8\u06d8\u06dc\u06e4\u06e8\u06d8\u06d6\u06e1\u06e2\u06d9\u06eb\u06e5\u06da\u06e1\u06d6\u06d8\u06e4\u06e6\u06e4\u06db\u06dc\u06d6\u06e6\u06d9\u06ec\u06d9\u06d7\u06e6\u06d8\u06d6\u06eb\u06da"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e2\u06df\u06e4\u06d7\u06d7\u06d8\u06d8\u06d6\u06e7\u06e8\u06d8\u06d6\u06e1\u06e2\u06da\u06e6\u06d6\u06e0\u06ec\u06da\u06e4\u06eb\u06eb\u06e1\u06e8\u06e8\u06d8\u06e0\u06d9\u06ec\u06d9\u06e5\u06d8\u06d8"

    goto :goto_2

    :sswitch_a
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/base/AppContext;->OoooOoO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06e5\u06d7\u06e1\u06e5\u06e2\u06d9\u06d9\u06db\u06e0\u06d8\u06e1\u06d7\u06eb\u06e5\u06d8\u06d7\u06d7\u06df\u06e0\u06db\u06dc\u06df\u06d8\u06eb\u06e5\u06e8\u06dc\u06d8\u06e0\u06da\u06d6\u06df\u06d8\u06e2\u06eb\u06eb\u06e5\u06d8\u06d6\u06e4\u06e8\u06da\u06e1\u06d8\u06d8"

    goto :goto_2

    :sswitch_b
    const-string v0, "\u06d8\u06d6\u06e5\u06d8\u06e8\u06d6\u06e8\u06da\u06ec\u06d9\u06e0\u06eb\u06e7\u06e1\u06da\u06d7\u06e1\u06d7\u06e7\u06d9\u06db\u06ec\u06e5\u06e0\u06e8\u06e1\u06e4\u06d7\u06e7\u06eb\u06d6\u06d8\u06dc\u06e8\u06e1\u06ec\u06e2\u06e7\u06e0\u06e1\u06dc\u06df\u06df\u06d8\u06d8"

    goto :goto_1

    :sswitch_c
    const-string v0, "\u06e4\u06dc\u06d6\u06d8\u06e2\u06df\u06d6\u06d8\u06ec\u06e0\u06e4\u06eb\u06e8\u06e7\u06d8\u06d6\u06e6\u06df\u06d9\u06e5\u06e4\u06e4\u06da\u06e8\u06d8\u06e5\u06da\u06e4\u06ec\u06dc\u06e5\u06d8\u06e2\u06e6\u06d6\u06d8\u06e6\u06e5\u06ec\u06e7\u06eb\u06df\u06d8\u06db\u06da\u06ec\u06d8\u06e6\u06d8\u06ec\u06df\u06d6\u06e4\u06ec\u06ec\u06db\u06d7\u06e1\u06da\u06df\u06d9"

    goto :goto_1

    :sswitch_d
    const-string v0, "\u06d9\u06d8\u06d6\u06d9\u06d7\u06dc\u06e5\u06e7\u06dc\u06e1\u06e4\u06e6\u06e0\u06db\u06e0\u06d6\u06dc\u06e1\u06eb\u06e6\u06e7\u06ec\u06df\u06d8\u06d8\u06e1\u06e0\u06e7\u06ec\u06d9\u06e1\u06d8\u06d6\u06db\u06d7\u06d7\u06da\u06e5"

    goto :goto_0

    :sswitch_e
    invoke-static {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->OooOO0o(Landroid/content/Context;)V

    const-string v0, "\u06e7\u06e6\u06d8\u06d8\u06dc\u06d8\u06e1\u06d8\u06da\u06dc\u06d9\u06e7\u06e1\u06e6\u06e6\u06e8\u06df\u06e5\u06d9\u06eb\u06d8\u06df\u06e4\u06ec\u06d8\u06db\u06e1\u06d8\u06dc\u06d8\u06e0\u06da\u06e0\u06e6\u06db\u06dc\u06e6\u06e4\u06dc\u06da\u06e7\u06dc\u06d8\u06d8\u06e1\u06e6\u06d8\u06e8\u06da\u06e1\u06d8\u06d9\u06e4"

    goto :goto_0

    :sswitch_f
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/base/AppContext;->OoooOoO:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->OooO(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u06e5\u06eb\u06e0\u06e6\u06d6\u06ec\u06d9\u06d6\u06d8\u06dc\u06d9\u06d9\u06da\u06d9\u06e5\u06d8\u06eb\u06e7\u06db\u06d7\u06d8\u06d6\u06d8\u06ec\u06df\u06dc\u06d8\u06e1\u06e8\u06e7\u06dc\u06db\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_10
    new-instance v9, Landroid/content/Intent;

    const-class v0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    invoke-direct {v9, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "\u06da\u06df\u06eb\u06e2\u06eb\u06d7\u06e2\u06e7\u06d8\u06dc\u06e0\u06ec\u06ec\u06e5\u06d9\u06dc\u06d9\u06d8\u06d8\u06e1\u06e5\u06e4\u06e1\u06e6\u06e6\u06d8\u06d6\u06d6\u06e5\u06e4\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "device_name"

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o0OOO0o:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "\u06e7\u06d7\u06d7\u06e6\u06e2\u06e8\u06e4\u06e1\u06d8\u06d7\u06da\u06d6\u06d8\u06e1\u06d8\u06e7\u06d8\u06d7\u06e5\u06e1\u06eb\u06e2\u06e5\u06d8\u06e7\u06e6\u06df\u06df\u06e8\u06e6\u06d8\u06e1\u06e1\u06e7\u06d8\u06d8\u06d7\u06d8\u06d8\u06e8\u06e1\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "\u06dc\u06e7\u06ec\u06d7\u06d6\u06d9\u06e8\u06e1\u06e0\u06e5\u06da\u06ec\u06dc\u06d8\u06e6\u06d9\u06db\u06e8\u06d8\u06eb\u06dc\u06ec\u06ec\u06e0\u06e8\u06e5\u06ec\u06e8\u06eb\u06d6\u06d9\u06d9\u06e8\u06e1\u06e2\u06e6\u06db\u06e1\u06e5\u06e1\u06e2\u06e8\u06d8"

    move-object v8, v9

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "\u06ec\u06ec\u06e6\u06e1\u06d7\u06d8\u06e6\u06d8\u06d8\u06df\u06e2\u06e5\u06d8\u06df\u06d8\u06e7\u06dc\u06da\u06e1\u06d8\u06e2\u06db\u06da\u06e4\u06e8\u06da\u06eb\u06e2\u06e0\u06e0\u06e6\u06e2"

    goto/16 :goto_0

    :sswitch_14
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "\u06d7\u06dc\u06d6\u06d8\u06db\u06e0\u06e7\u06dc\u06e0\u06e1\u06e2\u06e8\u06e1\u06d8\u06e4\u06e2\u06e0\u06d8\u06db\u06df\u06e7\u06e0\u06d7\u06e0\u06d7\u06d8\u06eb\u06d7\u06d8\u06d8\u06dc\u06d9\u06da\u06da\u06db\u06e2\u06e8\u06da\u06e8\u06d8\u06ec\u06df\u06d9\u06d9\u06df\u06eb\u06da\u06d9\u06dc\u06df\u06d6\u06df\u06d6\u06e0\u06e0\u06d8\u06e8\u06e7\u06d8"

    move-object v7, v2

    goto/16 :goto_0

    :sswitch_15
    const-class v0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v2

    iget-object v2, v2, Lz2/m7;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "\u06d8\u06dc\u06e7\u06db\u06d6\u06e8\u06e5\u06d9\u06d6\u06d8\u06ec\u06e0\u06e5\u06d8\u06d7\u06d8\u06e6\u06d8\u06db\u06eb\u06d6\u06d8\u06e0\u06e2\u06e1\u06d8\u06d7\u06dc\u06e7\u06d8\u06d8\u06d9\u06e8\u06d8\u06da\u06dc\u06d8\u06df\u06e1\u06e2\u06e1\u06e5\u06e5\u06d8\u06d6\u06db\u06e8\u06ec\u06e5\u06d8\u06d6\u06db\u06e1\u06d7\u06d6\u06d6"

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p0, v7, v12}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v0, "\u06df\u06eb\u06d7\u06e0\u06e1\u06db\u06dc\u06e2\u06d6\u06d8\u06e6\u06db\u06e7\u06db\u06d7\u06e7\u06d9\u06e6\u06d8\u06e1\u06d9\u06ec\u06e5\u06e5\u06eb\u06e0\u06d6\u06e7\u06e2\u06e1\u06d6\u06ec\u06e8\u06d8\u06e4\u06e8\u06dc\u06e0\u06da\u06e5\u06d8\u06e2\u06dc\u06e2\u06e2\u06eb\u06d8"

    goto/16 :goto_0

    :sswitch_17
    new-instance v2, Lz2/k4$OooO00o;

    const-string v0, ".log"

    invoke-direct {v2, v0}, Lz2/k4$OooO00o;-><init>(Ljava/lang/String;)V

    const-string v0, "\u06d8\u06ec\u06e5\u06d8\u06e0\u06da\u06e5\u06d7\u06e2\u06e2\u06e6\u06db\u06e7\u06df\u06e4\u06e6\u06d8\u06da\u06e0\u06e7\u06e2\u06e4\u06e1\u06d8\u06d8\u06d6\u06e6\u06d8\u06db\u06dc\u06df\u06d9\u06e8\u06dc\u06e6\u06eb\u06d8\u06d8\u06da\u06e2\u06d6\u06d8"

    move-object v6, v2

    goto/16 :goto_0

    :sswitch_18
    new-instance v0, Ljava/io/File;

    sget-object v2, Lz2/h6;->OooO0O0:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    const-string v0, "\u06e7\u06ec\u06e8\u06e8\u06e7\u06d9\u06eb\u06e2\u06e8\u06e0\u06e1\u06e2\u06e8\u06e7\u06e2\u06e4\u06e4\u06eb\u06db\u06e1\u06d8\u06d8\u06dc\u06d7\u06df\u06ec\u06e1\u06d8\u06e2\u06d7\u06ec\u06d9\u06e8\u06e0\u06eb\u06dc\u06e4\u06da\u06db\u06db\u06e0\u06e1\u06df\u06df\u06d6\u06e5\u06d8\u06ec\u06e5\u06d6\u06d8"

    move-object v5, v2

    goto/16 :goto_0

    :sswitch_19
    const v2, -0x6dc1fb27

    const-string v0, "\u06eb\u06d9\u06dc\u06d8\u06d9\u06e7\u06e4\u06db\u06e6\u06e5\u06e6\u06e7\u06e6\u06d8\u06e1\u06da\u06db\u06d8\u06e6\u06e7\u06e2\u06ec\u06df\u06da\u06e8\u06da\u06eb\u06d7\u06dc\u06e6\u06d8\u06e4\u06d6\u06e8\u06df\u06ec\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v2

    sparse-switch v10, :sswitch_data_4

    goto :goto_3

    :sswitch_1a
    const-string v0, "\u06df\u06e5\u06dc\u06d8\u06e0\u06eb\u06e1\u06d8\u06e7\u06ec\u06e7\u06e6\u06d9\u06e0\u06ec\u06d6\u06e7\u06e6\u06e6\u06ec\u06d8\u06e0\u06df\u06d6\u06e0\u06d9\u06e1\u06e5\u06d8\u06ec\u06e0\u06e7\u06dc\u06d9\u06e1\u06eb\u06ec\u06e4\u06df\u06ec\u06d9\u06df\u06d6\u06d6\u06e5\u06d6\u06df\u06dc\u06e8\u06e1\u06e5\u06e6"

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "\u06e0\u06e6\u06d8\u06e1\u06df\u06dc\u06d8\u06d7\u06d8\u06d8\u06d8\u06df\u06db\u06ec\u06df\u06e2\u06da\u06d8\u06e0\u06e7\u06dc\u06e0\u06e0\u06df\u06dc\u06e7\u06e4\u06dc\u06e8\u06d8\u06d7\u06da\u06e2\u06e0\u06d7\u06d6\u06d8\u06e7\u06db\u06e7\u06e4\u06dc\u06e4\u06d9\u06df\u06dc\u06e2\u06d6\u06dc\u06d8\u06da\u06dc\u06e6"

    goto :goto_3

    :sswitch_1c
    const v10, -0x96ca696

    const-string v0, "\u06e2\u06d7\u06e1\u06eb\u06eb\u06e2\u06d7\u06ec\u06d7\u06e8\u06e8\u06eb\u06d8\u06df\u06e6\u06d6\u06d9\u06da\u06e4\u06e5\u06d6\u06dc\u06e0\u06dc\u06d8\u06d7\u06e0\u06e0\u06d8\u06e7\u06e5\u06eb\u06d6\u06e1\u06d8\u06d6\u06e1\u06eb\u06e5\u06dc\u06eb\u06db\u06db\u06e8\u06d8\u06ec\u06e0\u06e5\u06d8\u06e5\u06e5\u06e1\u06d8\u06eb\u06eb\u06d8\u06e0\u06e1\u06e8\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    xor-int/2addr v11, v10

    sparse-switch v11, :sswitch_data_5

    goto :goto_4

    :sswitch_1d
    const-string v0, "\u06d8\u06d8\u06e6\u06d8\u06d9\u06d9\u06d8\u06d6\u06da\u06eb\u06d7\u06eb\u06e8\u06d8\u06e0\u06e1\u06d6\u06d8\u06eb\u06e2\u06e0\u06eb\u06e0\u06e8\u06d8\u06ec\u06d6\u06e4\u06d9\u06df\u06ec\u06ec\u06df\u06e1\u06d6\u06e1\u06e5\u06d8\u06d7\u06d6\u06dc\u06d8\u06da\u06df\u06dc\u06e6\u06e6"

    goto :goto_3

    :cond_1
    const-string v0, "\u06d8\u06d7\u06e1\u06e1\u06e6\u06d6\u06d8\u06d7\u06dc\u06da\u06d7\u06d7\u06eb\u06e2\u06e8\u06d7\u06e6\u06d9\u06da\u06ec\u06df\u06d8\u06d8\u06e1\u06e6\u06da\u06e0\u06e4\u06e6\u06d8\u06da\u06d8\u06d6\u06d8\u06db\u06da\u06e8\u06ec\u06db\u06dc\u06eb\u06db\u06e0\u06e4\u06d9\u06ec"

    goto :goto_4

    :sswitch_1e
    if-eqz v5, :cond_1

    const-string v0, "\u06e6\u06d8\u06e6\u06e8\u06db\u06eb\u06d8\u06e2\u06d9\u06e8\u06dc\u06e4\u06dc\u06e4\u06ec\u06d7\u06db\u06e1\u06e4\u06d9\u06e0\u06e1\u06e5\u06d8\u06d8\u06e7\u06ec\u06df\u06d6\u06ec\u06e0\u06e5\u06e2\u06d6\u06e4\u06da\u06d6\u06d8\u06d6\u06df\u06e8\u06d8\u06e2\u06e8\u06da\u06df\u06e0\u06db\u06d6\u06e5\u06df"

    goto :goto_4

    :sswitch_1f
    const-string v0, "\u06e7\u06ec\u06d7\u06ec\u06e2\u06da\u06da\u06d7\u06e1\u06e6\u06d8\u06d8\u06dc\u06e1\u06e4\u06da\u06da\u06e4\u06e2\u06da\u06df\u06ec\u06e4\u06e0\u06e0\u06d7\u06e2\u06d6\u06d8\u06d8"

    goto :goto_4

    :sswitch_20
    const-string v0, "\u06e4\u06d9\u06df\u06e6\u06da\u06e6\u06d8\u06d8\u06e5\u06d8\u06da\u06e1\u06d8\u06d8\u06e1\u06e7\u06d8\u06e8\u06e7\u06e6\u06e8\u06e1\u06e6\u06df\u06e2\u06e6\u06e8\u06df\u06e8\u06d8\u06df\u06e8\u06d6\u06d8\u06d6\u06db\u06e1\u06eb\u06e1\u06e1\u06da\u06df\u06dc\u06e4\u06db\u06e8\u06d8\u06e1\u06e0\u06df\u06d8\u06db\u06e6\u06db\u06dc\u06dc\u06e1\u06df\u06e2"

    goto :goto_3

    :sswitch_21
    const v2, 0x325a0108

    const-string v0, "\u06d7\u06da\u06e0\u06ec\u06df\u06d7\u06ec\u06dc\u06d6\u06d8\u06e1\u06d7\u06d6\u06d8\u06d7\u06e8\u06d6\u06eb\u06d8\u06db\u06df\u06eb\u06eb\u06e6\u06dc\u06d8\u06e2\u06e8\u06e6\u06e5\u06d8\u06eb"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v2

    sparse-switch v10, :sswitch_data_6

    goto :goto_5

    :sswitch_22
    const-string v0, "\u06eb\u06d9\u06e7\u06e4\u06db\u06eb\u06e8\u06e1\u06d8\u06d8\u06df\u06da\u06db\u06e5\u06e7\u06d8\u06e6\u06dc\u06e7\u06d8\u06e6\u06d7\u06e6\u06da\u06db\u06e8\u06d8\u06e1\u06da\u06e1\u06e2\u06e5\u06eb\u06eb\u06e0\u06d6\u06df\u06e5\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "\u06e6\u06e1\u06e4\u06eb\u06e0\u06ec\u06db\u06e4\u06e2\u06da\u06e0\u06d6\u06da\u06e7\u06e7\u06e2\u06e7\u06df\u06d9\u06dc\u06e1\u06eb\u06e0\u06e6\u06d8\u06d8\u06df\u06d6\u06e6\u06d8\u06db\u06e5\u06dc\u06e5\u06d6\u06df\u06e6\u06da\u06e7\u06da\u06d6\u06da\u06dc\u06e0\u06e2\u06d7\u06e4\u06e7"

    goto :goto_5

    :sswitch_24
    const v10, 0x2c3cd09c

    const-string v0, "\u06e5\u06d9\u06e8\u06d8\u06da\u06e5\u06e7\u06d8\u06e2\u06e1\u06eb\u06e0\u06ec\u06e0\u06ec\u06dc\u06da\u06e4\u06e2\u06e7\u06d6\u06df\u06e5\u06da\u06e0\u06d7\u06ec\u06e8\u06e6\u06d8\u06e0\u06dc\u06d8"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    xor-int/2addr v11, v10

    sparse-switch v11, :sswitch_data_7

    goto :goto_6

    :sswitch_25
    const-string v0, "\u06e7\u06e2\u06d8\u06d8\u06e4\u06e1\u06e7\u06d8\u06e5\u06e1\u06d6\u06d8\u06d6\u06e0\u06e6\u06d8\u06e6\u06da\u06d8\u06d8\u06d9\u06ec\u06eb\u06e5\u06d7\u06d7\u06e2\u06ec\u06d8\u06d8\u06d7\u06df\u06e8\u06d8\u06da\u06dc\u06dc\u06e7\u06ec\u06ec\u06d7\u06d7\u06d8\u06d8"

    goto :goto_6

    :cond_2
    const-string v0, "\u06dc\u06e1\u06dc\u06d8\u06e4\u06d9\u06d8\u06d8\u06df\u06df\u06d6\u06d8\u06e5\u06d9\u06d6\u06e7\u06e6\u06d6\u06d8\u06e4\u06e0\u06d6\u06e1\u06da\u06e6\u06d8\u06e4\u06db\u06dc\u06eb\u06d8\u06e6\u06e7\u06dc\u06d8\u06d8\u06ec\u06e7\u06e6\u06d8\u06ec\u06e4\u06e8\u06e6\u06eb\u06db\u06da\u06e0\u06e1\u06e8\u06eb\u06e1\u06d8\u06d7\u06e0\u06d9\u06e1\u06d7\u06d8\u06d8\u06e1\u06d6\u06e8\u06d8"

    goto :goto_6

    :sswitch_26
    array-length v0, v5

    if-nez v0, :cond_2

    const-string v0, "\u06e1\u06df\u06d8\u06dc\u06d9\u06db\u06e5\u06db\u06eb\u06db\u06e1\u06eb\u06df\u06d7\u06e1\u06e2\u06e5\u06e7\u06dc\u06e6\u06dc\u06d8\u06da\u06e4\u06eb\u06e1\u06db\u06db\u06e1\u06df\u06e6\u06e5\u06e6\u06e6\u06d8\u06d7\u06e1\u06e4\u06e6\u06df\u06dc\u06e4\u06e8\u06e1"

    goto :goto_6

    :sswitch_27
    const-string v0, "\u06eb\u06e8\u06d7\u06e1\u06e4\u06da\u06ec\u06d7\u06d7\u06da\u06d7\u06e6\u06d8\u06e2\u06d9\u06e1\u06d8\u06d8\u06d9\u06e8\u06d8\u06e2\u06e2\u06eb\u06e2\u06d8\u06e4\u06e4\u06df\u06d7\u06d9\u06d7\u06df"

    goto :goto_5

    :sswitch_28
    const-string v0, "\u06e7\u06e4\u06d7\u06d6\u06e8\u06ec\u06ec\u06e1\u06d8\u06dc\u06d7\u06d6\u06d8\u06d6\u06d7\u06e6\u06d8\u06db\u06dc\u06e0\u06da\u06ec\u06e4\u06df\u06eb\u06ec\u06d8\u06d6\u06ec\u06e5\u06d8\u06e8\u06e5\u06e4\u06d9\u06d8\u06e6\u06e1\u06d8\u06dc\u06e8\u06e6\u06e8\u06e7\u06e8\u06eb\u06df\u06d8\u06ec\u06e1\u06d8"

    goto :goto_5

    :sswitch_29
    const-string v0, "\u06e7\u06db\u06db\u06da\u06e0\u06d8\u06d8\u06eb\u06e6\u06e5\u06d8\u06e7\u06e7\u06e7\u06e4\u06e8\u06d8\u06d7\u06e4\u06e6\u06da\u06da\u06e7\u06df\u06dc\u06e6\u06e5\u06e2\u06e7\u06e0\u06d9\u06ec\u06da\u06ec\u06da\u06db\u06e6\u06e6\u06d7\u06e8\u06d8\u06d8\u06df\u06e5\u06e8\u06e7\u06df\u06e0\u06e0\u06e2\u06eb"

    goto/16 :goto_0

    :sswitch_2a
    new-instance v0, Lz2/t8;

    invoke-direct {v0}, Lz2/t8;-><init>()V

    invoke-static {v5, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const-string v0, "\u06dc\u06e5\u06db\u06db\u06da\u06db\u06df\u06eb\u06e5\u06e5\u06d6\u06e7\u06d8\u06db\u06ec\u06dc\u06d8\u06d9\u06e6\u06e4\u06eb\u06e2\u06dc\u06e2\u06e8\u06df\u06e2\u06e5\u06df\u06da\u06d9\u06d8\u06eb\u06e2\u06ec\u06e1\u06d6"

    goto/16 :goto_0

    :sswitch_2b
    const/4 v0, 0x0

    aget-object v2, v5, v0

    const-string v0, "\u06e0\u06df\u06d9\u06e6\u06d7\u06dc\u06d8\u06e8\u06e6\u06db\u06e0\u06e8\u06e2\u06db\u06e5\u06e5\u06e4\u06e0\u06eb\u06e2\u06e6\u06e4\u06e2\u06d7\u06df\u06e4\u06e0\u06da\u06df\u06e6\u06e6\u06d8\u06e5\u06e5\u06d6\u06d8\u06d9\u06dc\u06eb"

    move-object v4, v2

    goto/16 :goto_0

    :sswitch_2c
    new-instance v2, Lcom/cyjh/elfin/entity/ScriptLog;

    invoke-direct {v2}, Lcom/cyjh/elfin/entity/ScriptLog;-><init>()V

    const-string v0, "\u06d7\u06e1\u06db\u06e8\u06e5\u06da\u06da\u06e1\u06e5\u06d8\u06d7\u06d9\u06ec\u06e6\u06d6\u06e6\u06d8\u06df\u06e5\u06e2\u06e7\u06e4\u06d6\u06e8\u06d7\u06e2\u06db\u06e1\u06e1\u06d8\u06e2\u06da\u06eb\u06d6\u06ec\u06d8\u06eb\u06e6\u06d6\u06d8\u06e1\u06e5\u06df\u06db\u06ec\u06d8\u06db\u06d6\u06dc\u06d7\u06d6\u06d8"

    move-object v3, v2

    goto/16 :goto_0

    :sswitch_2d
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/cyjh/elfin/entity/ScriptLog;->setName(Ljava/lang/String;)V

    const-string v0, "\u06e2\u06d8\u06e5\u06d8\u06dc\u06da\u06e8\u06db\u06ec\u06e5\u06d8\u06e7\u06db\u06d7\u06d7\u06e2\u06e8\u06e5\u06e0\u06df\u06df\u06e7\u06e5\u06eb\u06df\u06e7\u06e2\u06e6\u06e5\u06ec\u06ec\u06df\u06e0\u06d8\u06eb\u06e5\u06e7\u06e6"

    goto/16 :goto_0

    :sswitch_2e
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Lz2/k4;->OooO0Oo(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/cyjh/elfin/entity/ScriptLog;->setSize(Ljava/lang/String;)V

    const-string v0, "\u06e1\u06e4\u06df\u06e4\u06df\u06e0\u06e6\u06d9\u06d9\u06ec\u06e5\u06e0\u06e0\u06d9\u06dc\u06d8\u06d9\u06df\u06d8\u06da\u06d7\u06e6\u06dc\u06e1\u06e5\u06e6\u06d7\u06d8\u06d8\u06e5\u06e5\u06e2"

    goto/16 :goto_0

    :sswitch_2f
    invoke-virtual {v3, v4}, Lcom/cyjh/elfin/entity/ScriptLog;->setFile(Ljava/io/File;)V

    const-string v0, "\u06e8\u06e0\u06d8\u06db\u06e6\u06e7\u06d8\u06e0\u06eb\u06d8\u06d8\u06e1\u06db\u06da\u06d8\u06eb\u06e6\u06d8\u06e7\u06dc\u06d9\u06db\u06df\u06e8\u06d8\u06d8\u06da\u06df\u06da\u06da\u06e7\u06d9\u06d9\u06e5\u06d8\u06d7\u06e7\u06d8\u06d8\u06d9\u06e6\u06ec\u06da\u06eb\u06d7\u06d7\u06e6\u06d7"

    goto/16 :goto_0

    :sswitch_30
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "\u06e7\u06d8\u06d9\u06e6\u06db\u06e8\u06d8\u06d7\u06db\u06e6\u06e4\u06e2\u06e2\u06da\u06e1\u06e6\u06e0\u06d9\u06d7\u06d7\u06d8\u06d8\u06e4\u06d8\u06e2\u06d9\u06e1\u06d6\u06e2\u06e2\u06e1\u06eb\u06e5\u06d8\u06d8\u06e5\u06d7\u06db\u06e4\u06da\u06d7\u06db\u06eb\u06db\u06e6\u06ec\u06e4\u06d9\u06e8\u06d8\u06e6\u06eb\u06db\u06e8\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "com.cyjh.elfin.ui.activity.SettingActivity.FlagLastLog"

    invoke-virtual {v1, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "\u06d9\u06e8\u06e8\u06e7\u06dc\u06e0\u06da\u06eb\u06e5\u06d8\u06d7\u06da\u06d9\u06d8\u06e2\u06d6\u06d8\u06d9\u06db\u06e7\u06e5\u06d9\u06e5\u06d8\u06db\u06ec\u06eb\u06d8\u06d7\u06d6\u06e0\u06df\u06db"

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "com.cyjh.elfin.ui.activity.ScriptLogActivity.ScriptLog"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "\u06df\u06da\u06dc\u06d8\u06eb\u06dc\u06da\u06da\u06d8\u06e1\u06ec\u06db\u06dc\u06d8\u06e1\u06eb\u06e7\u06e5\u06e0\u06da\u06d9\u06eb\u06e5\u06d8\u06e8\u06eb\u06db\u06e1\u06e0\u06e8\u06e1\u06e5\u06e2\u06d7\u06e0\u06df\u06e8\u06df\u06d7\u06d8\u06d8\u06df\u06d8\u06e1\u06d8\u06d8\u06e0\u06e4\u06eb\u06d7\u06da\u06d9\u06e0\u06e5\u06e5\u06d8\u06e4\u06d8\u06df"

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "\u06e6\u06dc\u06d6\u06e6\u06d8\u06e8\u06e0\u06e4\u06e8\u06e8\u06e0\u06dc\u06ec\u06db\u06e0\u06db\u06dc\u06e6\u06d6\u06da\u06e6\u06e8\u06d6\u06eb\u06eb\u06e5\u06d8\u06e6\u06d7\u06e7\u06e2\u06e8\u06d9\u06da\u06d7\u06e4\u06e8\u06df\u06e7\u06e6\u06e1\u06d8\u06d8\u06ec\u06e8\u06d8\u06e2\u06e6\u06d8\u06d8"

    move-object v8, v1

    goto/16 :goto_0

    :sswitch_34
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const/high16 v2, 0x7f100000

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/base/AppContext;->OooOO0(I)V

    const-string v0, "\u06e2\u06e8\u06e8\u06d7\u06e6\u06e8\u06dc\u06e6\u06e4\u06eb\u06e7\u06d8\u06e6\u06df\u06e4\u06ec\u06e4\u06d8\u06d8\u06d9\u06d8\u06e6\u06d8\u06db\u06d6\u06e7\u06d8\u06dc\u06ec\u06e1\u06e1\u06e1\u06e5\u06d8\u06e0\u06e6\u06d8\u06d8\u06e7\u06e8\u06e6\u06d8\u06e4\u06dc\u06db\u06e5\u06d6\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "\u06ec\u06db\u06e1\u06d9\u06e7\u06e1\u06d8\u06dc\u06e0\u06eb\u06e6\u06e8\u06e1\u06d8\u06e6\u06e2\u06e7\u06d6\u06d8\u06d8\u06e8\u06e5\u06d6\u06d8\u06e8\u06d8\u06e1\u06e1\u06d6\u06e7\u06e0\u06dc\u06df\u06e7\u06da\u06ec\u06d8\u06d8\u06e6"

    goto/16 :goto_0

    :sswitch_36
    const-string v0, "\u06eb\u06df\u06ec\u06dc\u06ec\u06eb\u06dc\u06d6\u06d8\u06e8\u06d7\u06eb\u06ec\u06d7\u06e1\u06d8\u06e0\u06df\u06d9\u06e2\u06dc\u06e6\u06d8\u06e5\u06e5\u06e1\u06d8\u06db\u06d7\u06e6\u06e0\u06e7\u06d6\u06db\u06da\u06e0\u06d8\u06e2\u06e6\u06d8\u06da\u06db\u06d6\u06d8\u06d9\u06e2\u06dc\u06e2\u06dc\u06da\u06db\u06e5\u06d7\u06ec\u06e4\u06d9\u06d6\u06ec\u06e5"

    goto/16 :goto_0

    :sswitch_37
    const-string v0, "\u06e7\u06e7\u06e2\u06e5\u06eb\u06d9\u06e6\u06e5\u06d7\u06d7\u06db\u06e6\u06d8\u06e6\u06e0\u06df\u06d7\u06d9\u06e5\u06e5\u06ec\u06e2\u06e8\u06e8\u06d8\u06d8\u06e2\u06ec\u06d7\u06d9\u06e1\u06e6\u06d8\u06db\u06dc\u06e0\u06db\u06e5\u06e5\u06d8\u06e5\u06e1\u06eb\u06da\u06e7\u06e6\u06d8\u06e1\u06e8\u06ec\u06eb\u06e5\u06d9\u06e2\u06d8\u06df\u06e4\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_38
    const-string v0, "\u06df\u06e0\u06e7\u06df\u06df\u06d8\u06dc\u06e1\u06d8\u06d8\u06da\u06e1\u06e5\u06d9\u06e1\u06d8\u06d8\u06e7\u06e4\u06e5\u06d8\u06e4\u06ec\u06ec\u06e6\u06e7\u06e5\u06e8\u06e7\u06d8\u06e0\u06e1\u06eb\u06e7\u06e6\u06e4\u06db\u06e1\u06da"

    goto/16 :goto_0

    :sswitch_39
    const-string v0, "\u06dc\u06e7\u06ec\u06d7\u06d6\u06d9\u06e8\u06e1\u06e0\u06e5\u06da\u06ec\u06dc\u06d8\u06e6\u06d9\u06db\u06e8\u06d8\u06eb\u06dc\u06ec\u06ec\u06e0\u06e8\u06e5\u06ec\u06e8\u06eb\u06d6\u06d9\u06d9\u06e8\u06e1\u06e2\u06e6\u06db\u06e1\u06e5\u06e1\u06e2\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_3a
    const-string v0, "\u06e2\u06e8\u06e5\u06d8\u06df\u06ec\u06d8\u06d8\u06df\u06e6\u06e7\u06e8\u06da\u06d8\u06d8\u06ec\u06d8\u06e7\u06d8\u06d7\u06e7\u06d7\u06df\u06e5\u06da\u06df\u06e2\u06d7\u06d7\u06e8\u06d8\u06d7\u06d7\u06ec\u06e7\u06e1\u06dc\u06d8\u06e2\u06e1\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_3b
    const-string v0, "\u06e1\u06d6\u06e4\u06d6\u06d7\u06e0\u06e1\u06e8\u06e5\u06d8\u06e0\u06e5\u06d9\u06e2\u06e1\u06e8\u06d8\u06da\u06d9\u06eb\u06e7\u06d8\u06e0\u06d7\u06ec\u06eb\u06d8\u06db\u06e7\u06d9\u06db\u06da\u06d9\u06d7\u06df\u06e7\u06dc\u06e4\u06eb\u06e0\u06e2\u06d6\u06db\u06d8\u06d8\u06d7\u06dc\u06d9\u06d8\u06dc\u06e5\u06d8\u06e5\u06e1\u06dc\u06e0\u06df\u06e4"

    goto/16 :goto_0

    :sswitch_3c
    const-string v0, "\u06d8\u06df\u06e2\u06d6\u06db\u06e0\u06dc\u06eb\u06e7\u06e8\u06d6\u06d8\u06da\u06e1\u06d8\u06d8\u06e7\u06d9\u06d6\u06d6\u06e1\u06e8\u06d8\u06e8\u06d9\u06e4\u06e2\u06e0\u06d8\u06d9\u06d9\u06ec\u06e6\u06dc\u06d7\u06ec\u06db\u06df\u06e0\u06dc\u06d8\u06e2\u06e1\u06e2\u06e1\u06da\u06e6\u06d8\u06e2\u06d7\u06d8\u06d8\u06d6\u06eb\u06eb\u06e4\u06eb\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_3d
    const-string v0, "\u06e2\u06e8\u06e8\u06d7\u06e6\u06e8\u06dc\u06e6\u06e4\u06eb\u06e7\u06d8\u06e6\u06df\u06e4\u06ec\u06e4\u06d8\u06d8\u06d9\u06d8\u06e6\u06d8\u06db\u06d6\u06e7\u06d8\u06dc\u06ec\u06e1\u06e1\u06e1\u06e5\u06d8\u06e0\u06e6\u06d8\u06d8\u06e7\u06e8\u06e6\u06d8\u06e4\u06dc\u06db\u06e5\u06d6\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_3e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d7ab7d6 -> :sswitch_2f
        -0x75439775 -> :sswitch_39
        -0x6ffddb4f -> :sswitch_3
        -0x6c311b3e -> :sswitch_21
        -0x6b134cfa -> :sswitch_3d
        -0x69f3450f -> :sswitch_0
        -0x5e824333 -> :sswitch_2b
        -0x5e22776b -> :sswitch_34
        -0x55f855bd -> :sswitch_2a
        -0x52f6e6ff -> :sswitch_12
        -0x500e56ee -> :sswitch_1
        -0x42dcee61 -> :sswitch_18
        -0x39fbc1ee -> :sswitch_10
        -0x39154a63 -> :sswitch_3d
        -0x29474128 -> :sswitch_31
        -0x212c716e -> :sswitch_32
        -0x134ab039 -> :sswitch_2e
        -0x43b937e -> :sswitch_3d
        -0x3ec5462 -> :sswitch_13
        -0x2f237d0 -> :sswitch_2d
        -0x1434d44 -> :sswitch_2c
        0xb9793f7 -> :sswitch_2
        0x14780e33 -> :sswitch_3e
        0x1bc4f09f -> :sswitch_3d
        0x1dc75052 -> :sswitch_15
        0x1e7bfba2 -> :sswitch_f
        0x2617f6e3 -> :sswitch_19
        0x2a792af7 -> :sswitch_17
        0x2ce9a8dd -> :sswitch_33
        0x2e1f50e9 -> :sswitch_16
        0x320f44e0 -> :sswitch_4
        0x4baf86cb -> :sswitch_3d
        0x5853bb45 -> :sswitch_3d
        0x6047d166 -> :sswitch_14
        0x652cfbd3 -> :sswitch_5
        0x66aefe6e -> :sswitch_3c
        0x6b10fce4 -> :sswitch_11
        0x6cb7eb57 -> :sswitch_30
        0x6ecc418e -> :sswitch_e
        0x71c2510e -> :sswitch_3d
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7f09023a -> :sswitch_3b
        0x7f09023f -> :sswitch_3a
        0x7f09035d -> :sswitch_38
        0x7f090360 -> :sswitch_37
        0x7f0903ee -> :sswitch_36
        0x7f0903f0 -> :sswitch_35
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x78aad8be -> :sswitch_d
        -0x31282504 -> :sswitch_6
        0x3958ca48 -> :sswitch_c
        0x59ba7b99 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x6bcabb6e -> :sswitch_7
        0x4817418a -> :sswitch_a
        0x54f53090 -> :sswitch_b
        0x6b80ecd6 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x3411ac91 -> :sswitch_1c
        0x4c9e32db -> :sswitch_20
        0x687e3245 -> :sswitch_1a
        0x763362b7 -> :sswitch_3c
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x65208e9e -> :sswitch_1e
        -0xe3e4d15 -> :sswitch_1f
        0x38e08eef -> :sswitch_1d
        0x7679d024 -> :sswitch_1b
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x7b20be74 -> :sswitch_22
        0x1eb6bccd -> :sswitch_28
        0x3521873d -> :sswitch_24
        0x485bff44 -> :sswitch_29
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x7d2f8e50 -> :sswitch_23
        -0x22e48ce -> :sswitch_25
        0x1aa5a96e -> :sswitch_26
        0x694148ef -> :sswitch_27
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "\u06d6\u06e1\u06d9\u06eb\u06df\u06d7\u06e7\u06d8\u06ec\u06ec\u06e1\u06d9\u06d8\u06e0\u06d8\u06d8\u06e8\u06e8\u06d8\u06d8\u06d8\u06ec\u06e6\u06e8\u06d8\u06e1\u06db\u06db\u06df\u06e1\u06ec\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x354

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x22d

    const/16 v2, 0x364

    const v3, -0x4d48dac8

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06da\u06e1\u06d8\u06da\u06db\u06e8\u06d8\u06e0\u06d9\u06e6\u06e4\u06d6\u06e2\u06e1\u06e5\u06dc\u06d6\u06eb\u06e6\u06db\u06d6\u06d9\u06e4\u06e7\u06e6\u06e7\u06d7\u06e7\u06e1\u06e4\u06e7\u06d9\u06e1\u06d9\u06e2\u06e1\u06d8\u06ec\u06e0\u06e8\u06d9\u06e6\u06da\u06e2\u06eb\u06d8\u06dc\u06e5\u06d9\u06da\u06e5\u06d8\u06d9\u06d7\u06d7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06dc\u06e5\u06da\u06d6\u06df\u06e8\u06d7\u06d6\u06dc\u06df\u06e1\u06eb\u06e0\u06da\u06d6\u06d9\u06e5\u06d8\u06d9\u06e1\u06d8\u06d8\u06dc\u06d7\u06e2\u06d9\u06e2\u06e6\u06d8\u06e0\u06d7\u06da\u06d8\u06da\u06e5\u06d8\u06e0\u06d8\u06db\u06e8\u06d9\u06e5\u06eb\u06e6\u06dc\u06d8\u06dc\u06dc\u06e1\u06d8\u06e5\u06da\u06e6\u06d9\u06e0\u06e1\u06e5\u06d9\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "\u06e8\u06ec\u06d6\u06d8\u06db\u06df\u06d9\u06db\u06df\u06d9\u06e6\u06e8\u06d8\u06ec\u06df\u06e5\u06d8\u06e5\u06e4\u06e5\u06d8\u06e0\u06e6\u06e7\u06d8\u06e1\u06e5\u06e6\u06d8\u06d6\u06e1\u06d7\u06e6\u06e8\u06e6\u06d8\u06da\u06d8\u06e6\u06d8\u06d8\u06e0\u06d8\u06d8"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0c002d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const-string v0, "\u06df\u06e6\u06e4\u06d6\u06e2\u06e1\u06d8\u06e6\u06d9\u06e8\u06d8\u06dc\u06d6\u06dc\u06d7\u06df\u06e5\u06ec\u06e6\u06e5\u06d8\u06d6\u06e0\u06d9\u06e1\u06dc\u06e2\u06e2\u06dc\u06dc\u06d8\u06e6\u06dc\u06e6\u06d8\u06ec\u06e4\u06e5\u06e1\u06e4\u06e8\u06d8\u06e5\u06df\u06e8\u06da\u06e7\u06e0"

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->initView()V

    const-string v0, "\u06d9\u06df\u06da\u06e1\u06d8\u06d6\u06d8\u06eb\u06df\u06ec\u06e5\u06dc\u06d8\u06d6\u06e8\u06e6\u06d8\u06df\u06d7\u06dc\u06d8\u06d7\u06eb\u06e5\u06d8\u06e6\u06dc\u06d8\u06dc\u06e5\u06e7\u06e5\u06d9\u06e6\u06d8\u06da\u06d6\u06e7\u06d8\u06df\u06e0\u06d7\u06e0\u06e4\u06e6\u06d9\u06e0"

    goto :goto_0

    :sswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e77b085 -> :sswitch_1
        -0x56b4fe4f -> :sswitch_2
        -0xfc7bc8f -> :sswitch_0
        0x1dc21972 -> :sswitch_5
        0x2c5ef546 -> :sswitch_3
        0x798d8cc1 -> :sswitch_4
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e4\u06d7\u06e1\u06e5\u06df\u06eb\u06e0\u06ec\u06d6\u06d9\u06ec\u06d8\u06e1\u06e5\u06db\u06e8\u06da\u06eb\u06d8\u06e6\u06d6\u06e0\u06dc\u06e7\u06e0\u06db\u06d9\u06d9\u06d7\u06e6\u06ec\u06e5\u06df\u06df\u06df\u06d9\u06e4\u06d9\u06dc\u06d8\u06d7\u06e0\u06e6\u06d8\u06e4\u06e7\u06e1\u06da\u06d8\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x105

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0xb9

    const/16 v3, 0x132

    const v4, 0x278b9579

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06df\u06e1\u06e5\u06e5\u06e5\u06e0\u06e5\u06e7\u06d8\u06ec\u06d8\u06d8\u06d8\u06db\u06eb\u06dc\u06dc\u06e0\u06d6\u06e7\u06e4\u06ec\u06d7\u06d8\u06dc\u06d8\u06ec\u06dc\u06e8\u06d8\u06e5\u06d6\u06ec"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onDestroy()V

    const-string v0, "\u06ec\u06e6\u06eb\u06e1\u06e4\u06e1\u06d8\u06d8\u06e0\u06e4\u06d8\u06e8\u06e0\u06d8\u06db\u06d6\u06d8\u06e4\u06ec\u06dc\u06e8\u06e8\u06df\u06e7\u06db\u06e5\u06df\u06eb\u06da\u06d6\u06da\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o00ooo:Lcom/cyjh/elfin/ui/activity/SettingActivity$OooOO0;

    const-string v0, "\u06dc\u06d6\u06e1\u06d8\u06e5\u06e8\u06e8\u06e2\u06eb\u06db\u06da\u06d6\u06dc\u06e8\u06d6\u06e8\u06e6\u06da\u06d6\u06ec\u06db\u06e4\u06e0\u06df\u06e0\u06da\u06d9\u06e8\u06e8\u06d7\u06e1\u06d8\u06e7\u06e7\u06e6\u06eb\u06dc\u06da\u06d6\u06ec\u06d6\u06d8\u06db\u06e2\u06e1\u06d8\u06df\u06d6\u06e7\u06d8\u06e4\u06e4\u06e2"

    goto :goto_0

    :sswitch_3
    const v2, -0x7accbbf5

    const-string v0, "\u06e6\u06e5\u06df\u06e5\u06d7\u06dc\u06e1\u06e5\u06e1\u06ec\u06d6\u06e8\u06e1\u06df\u06d8\u06e7\u06e2\u06ec\u06e6\u06e7\u06ec\u06d9\u06e8\u06d8\u06e5\u06e7\u06e5\u06dc\u06d9\u06dc\u06d7\u06e7\u06da\u06e4\u06d7\u06e5\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06e5\u06d6\u06d8\u06e6\u06da\u06e8\u06ec\u06da\u06d8\u06df\u06e8\u06d8\u06e2\u06e5\u06ec\u06e5\u06d8\u06d7\u06d6\u06e4\u06eb\u06e2\u06eb\u06e6\u06d8\u06e7\u06e1\u06d8\u06d8\u06e1\u06e1\u06e5\u06d8\u06df\u06ec\u06e8\u06da\u06eb\u06dc"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06e5\u06d9\u06dc\u06d8\u06dc\u06e5\u06eb\u06df\u06d9\u06e5\u06d7\u06dc\u06e7\u06d9\u06d9\u06e1\u06d8\u06e4\u06e4\u06e8\u06d7\u06e1\u06e8\u06d8\u06e6\u06e7\u06d8\u06ec\u06df\u06dc\u06d8\u06e1\u06eb\u06e0\u06e6\u06df\u06e0\u06e0\u06df\u06e8\u06d8\u06dc\u06dc\u06e6\u06e0\u06eb\u06e6\u06d6\u06df\u06d8\u06d6\u06e7\u06d8"

    goto :goto_1

    :sswitch_6
    const v3, -0x7cc961cd

    const-string v0, "\u06db\u06ec\u06e1\u06d8\u06e8\u06da\u06e6\u06d8\u06e0\u06db\u06e5\u06d8\u06e0\u06da\u06e7\u06e0\u06e0\u06e8\u06d8\u06e5\u06d8\u06e5\u06d8\u06e4\u06e5\u06e8\u06d8\u06e6\u06e5\u06dc\u06db\u06e6\u06d7\u06e8\u06e6\u06e2\u06dc\u06d9\u06eb\u06e8\u06e1\u06e8\u06d8\u06da\u06e4\u06d8\u06d8\u06e2\u06d8\u06e1\u06da\u06d9\u06e1\u06e1\u06dc"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e6\u06e5\u06d7\u06df\u06d8\u06dc\u06e6\u06db\u06e8\u06d8\u06d8\u06e0\u06df\u06e0\u06d7\u06d6\u06d8\u06da\u06da\u06d8\u06d8\u06e2\u06e6\u06e8\u06dc\u06e4\u06e4\u06da\u06e2\u06d9\u06d7\u06db\u06e1\u06d8\u06d8\u06eb\u06eb\u06e7\u06da\u06ec\u06d7\u06d7\u06eb\u06eb\u06e6\u06d9\u06e5\u06e7\u06e1\u06eb\u06e5"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e1\u06eb\u06d9\u06e2\u06da\u06d6\u06d8\u06e2\u06d9\u06e0\u06df\u06d6\u06eb\u06e4\u06e2\u06db\u06d7\u06df\u06e6\u06dc\u06d6\u06d8\u06ec\u06e4\u06e1\u06d8\u06df\u06e5\u06d8\u06e1\u06ec\u06d6"

    goto :goto_2

    :sswitch_8
    if-eqz v1, :cond_0

    const-string v0, "\u06df\u06da\u06e2\u06eb\u06da\u06e8\u06db\u06e8\u06d8\u06d6\u06e2\u06d7\u06eb\u06e4\u06e8\u06d8\u06e8\u06eb\u06dc\u06e6\u06e5\u06e2\u06e6\u06e1\u06e6\u06d8\u06e5\u06d9\u06e6\u06e1\u06d9\u06e0"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06d7\u06e5\u06db\u06db\u06db\u06e0\u06e1\u06d6\u06df\u06dc\u06e4\u06ec\u06e2\u06e2\u06e1\u06e2\u06df\u06e6\u06e6\u06dc\u06d6\u06d8\u06d8\u06d7\u06d7\u06dc\u06df\u06e2\u06e4\u06d7\u06e2\u06e6\u06dc\u06d9\u06df\u06d9\u06db\u06da\u06d6\u06d9\u06df\u06e0\u06d6\u06d8\u06df\u06d6\u06e5\u06d8\u06e2\u06eb\u06eb\u06dc\u06da\u06e1\u06d8\u06e4\u06ec\u06e6\u06d8"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06e1\u06e6\u06da\u06ec\u06da\u06dc\u06d8\u06e8\u06df\u06e1\u06d8\u06eb\u06db\u06e6\u06da\u06eb\u06e0\u06e8\u06d8\u06d9\u06d7\u06e1\u06d8\u06d7\u06e2\u06ec\u06d6\u06d6\u06e1\u06db\u06d6\u06d7"

    goto :goto_1

    :sswitch_b
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    const-string v0, "\u06d6\u06db\u06e6\u06d8\u06db\u06d6\u06eb\u06dc\u06eb\u06e4\u06e5\u06e5\u06db\u06e0\u06d7\u06d9\u06e2\u06d9\u06dc\u06d8\u06e2\u06e8\u06d8\u06d8\u06dc\u06ec\u06e1\u06d8\u06e7\u06ec\u06d7\u06da\u06e1\u06e5\u06d8\u06eb\u06e7\u06d9\u06e0\u06e6\u06e1\u06e5\u06e6\u06df\u06e2\u06d9\u06e6\u06d8"

    goto :goto_0

    :sswitch_c
    invoke-static {}, Lz2/kc;->OooOo00()Lz2/kc;

    move-result-object v0

    invoke-virtual {v0}, Lz2/kc;->OooOo0()V

    const-string v0, "\u06e7\u06d9\u06e0\u06df\u06df\u06e7\u06d6\u06db\u06e8\u06d6\u06e1\u06db\u06d7\u06e5\u06ec\u06eb\u06d9\u06d8\u06d8\u06ec\u06df\u06dc\u06d8\u06e1\u06d6\u06e8\u06e4\u06eb\u06eb\u06e4\u06d8\u06d8\u06eb\u06e0\u06df\u06e6\u06db\u06e8\u06d8\u06d9\u06e8\u06e1\u06db\u06e2\u06e2"

    goto :goto_0

    :sswitch_d
    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/l10;->OooOoO0(Ljava/lang/Object;)V

    const-string v0, "\u06d7\u06eb\u06eb\u06eb\u06d9\u06eb\u06e8\u06e5\u06e1\u06d6\u06e7\u06d8\u06d8\u06dc\u06db\u06e4\u06e2\u06d7\u06e8\u06d8\u06e7\u06e5\u06eb\u06dc\u06d7\u06dc\u06df\u06d8\u06e1\u06d8\u06e5\u06e2\u06e5\u06d8\u06dc\u06d8\u06e2\u06e4\u06e1\u06e4\u06db\u06e6\u06e6\u06d8\u06e5\u06d6\u06d8\u06d8\u06da\u06e6\u06e5\u06d6\u06d8\u06df\u06d9\u06ec"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06d6\u06db\u06e6\u06d8\u06db\u06d6\u06eb\u06dc\u06eb\u06e4\u06e5\u06e5\u06db\u06e0\u06d7\u06d9\u06e2\u06d9\u06dc\u06d8\u06e2\u06e8\u06d8\u06d8\u06dc\u06ec\u06e1\u06d8\u06e7\u06ec\u06d7\u06da\u06e1\u06e5\u06d8\u06eb\u06e7\u06d9\u06e0\u06e6\u06e1\u06e5\u06e6\u06df\u06e2\u06d9\u06e6\u06d8"

    goto :goto_0

    :sswitch_f
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x788ecc69 -> :sswitch_c
        -0x2ddee954 -> :sswitch_1
        -0x2b23365e -> :sswitch_f
        -0x2a01f593 -> :sswitch_d
        0x71baa18 -> :sswitch_0
        0x3dc4705b -> :sswitch_2
        0x621b023f -> :sswitch_3
        0x6b566a9f -> :sswitch_b
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7dfcfea6 -> :sswitch_4
        -0x60ff5a26 -> :sswitch_a
        -0x45a806c6 -> :sswitch_e
        0x5d53a45f -> :sswitch_6
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x16110d8d -> :sswitch_7
        0x382b1742 -> :sswitch_5
        0x4b8171ab -> :sswitch_8
        0x5e598b1b -> :sswitch_9
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    const-string v0, "\u06d6\u06dc\u06ec\u06e5\u06df\u06dc\u06e8\u06df\u06d8\u06d6\u06e1\u06d6\u06eb\u06e2\u06d7\u06ec\u06d6\u06e5\u06d8\u06e0\u06e2\u06e1\u06d8\u06e7\u06e2\u06e1\u06da\u06e1\u06d8\u06e8\u06d8\u06dc\u06e0\u06e0\u06eb\u06d6\u06d7\u06eb\u06e2\u06eb\u06e6\u06e1\u06eb\u06df\u06e0\u06e5\u06df\u06e4\u06e1\u06d8\u06ec\u06d8\u06e2\u06e6\u06e2\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x342

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x103

    const/16 v2, 0x3da

    const v3, 0x72f04350

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06d8\u06e0\u06e8\u06e7\u06df\u06ec\u06e5\u06dc\u06e7\u06da\u06ec\u06d6\u06eb\u06e7\u06e0\u06e8\u06d9\u06d9\u06e5\u06d8\u06d9\u06e1\u06db\u06eb\u06e8\u06d6\u06e0\u06e8\u06e1\u06d8\u06eb\u06e8\u06d6\u06dc\u06d8\u06d9\u06d9\u06e0\u06e2\u06e7\u06d6\u06d6\u06dc\u06ec\u06e8\u06e4\u06d6\u06d8\u06e2\u06df\u06e5\u06d8\u06db\u06db\u06d6"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const-string v0, "\u06df\u06e4\u06eb\u06ec\u06e1\u06e7\u06e0\u06d7\u06e1\u06d8\u06df\u06e1\u06d8\u06e5\u06e6\u06d6\u06d8\u06dc\u06e4\u06e2\u06e4\u06e5\u06df\u06e6\u06e7\u06e0\u06d8\u06eb\u06d7\u06e6\u06e2\u06e8\u06d8\u06d8\u06d9\u06df\u06e0\u06db\u06d6\u06d8\u06e7\u06ec\u06d8\u06e6\u06d6\u06d6\u06d8\u06e8\u06dc\u06db\u06ec\u06d6\u06e5\u06eb\u06db\u06e8\u06d8\u06e5\u06d9\u06e7"

    goto :goto_0

    :sswitch_2
    const-class v0, Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/bh;->OooO0OO(Ljava/lang/String;)V

    const-string v0, "\u06d7\u06db\u06dc\u06d8\u06e0\u06eb\u06e6\u06d8\u06ec\u06db\u06d7\u06e6\u06e6\u06eb\u06d9\u06e2\u06d9\u06ec\u06db\u06ec\u06df\u06df\u06e4\u06e7\u06e5\u06df\u06da\u06e6\u06d6\u06d8\u06dc\u06ec\u06d8\u06e2\u06dc\u06d8\u06d8\u06eb\u06d6\u06d6\u06d8\u06d7\u06d8\u06e5\u06d8\u06df\u06eb\u06df"

    goto :goto_0

    :sswitch_3
    invoke-static {p0}, Lz2/bh;->OooO0o0(Landroid/content/Context;)V

    const-string v0, "\u06dc\u06e8\u06e1\u06e2\u06d6\u06da\u06da\u06eb\u06df\u06d9\u06df\u06d9\u06ec\u06d7\u06e6\u06e5\u06e2\u06df\u06d6\u06d8\u06e0\u06d6\u06dc\u06d8\u06db\u06e0\u06e0\u06db\u06e6\u06dc\u06db\u06e4\u06e8\u06e1\u06ec\u06e4\u06e2\u06e7\u06e7\u06df\u06e6\u06e5\u06d8\u06d7\u06ec\u06e6\u06d8\u06e1\u06d8\u06e8"

    goto :goto_0

    :sswitch_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x65b4745b -> :sswitch_1
        -0x605b5586 -> :sswitch_0
        -0x470bef1d -> :sswitch_3
        0x1e493364 -> :sswitch_4
        0x594772ca -> :sswitch_2
    .end sparse-switch
.end method

.method public onReceiveStudioProjectStatusEvent(Lz2/fh;)V
    .locals 6
    .annotation runtime Lz2/r10;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v1, 0x0

    const-string v0, "\u06df\u06db\u06d6\u06d8\u06e1\u06e1\u06d6\u06d8\u06e1\u06e4\u06dc\u06da\u06e0\u06d7\u06d9\u06e5\u06e0\u06d8\u06e1\u06ec\u06e5\u06da\u06e4\u06e5\u06eb\u06d8\u06e8\u06d8\u06d8\u06e8\u06db\u06d6\u06d8\u06e7\u06e4\u06e2\u06d7\u06ec\u06e6\u06e1\u06ec\u06da\u06ec\u06db\u06dc\u06d6\u06db\u06e4\u06df\u06d8\u06d8\u06db\u06df\u06e7\u06da\u06d7\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x86

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x25c

    const/16 v3, 0x48

    const v4, -0x7ed2b64d

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06db\u06d7\u06e6\u06dc\u06d8\u06d8\u06e8\u06df\u06d9\u06e8\u06d7\u06e1\u06d8\u06dc\u06e5\u06e7\u06d8\u06e6\u06e0\u06db\u06e1\u06dc\u06d8\u06d8\u06e5\u06d8\u06eb\u06e6\u06dc\u06e7\u06e1\u06ec\u06db\u06ec\u06db\u06da\u06df\u06d6\u06e8\u06d8\u06dc\u06d8\u06d9\u06ec\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06ec\u06d6\u06d8\u06d8\u06dc\u06d8\u06e5\u06d8\u06eb\u06e5\u06d9\u06e1\u06eb\u06dc\u06d8\u06e6\u06eb\u06eb\u06df\u06e8\u06e2\u06db\u06eb\u06d6\u06e8\u06dc\u06e5\u06d8\u06e7\u06db\u06e2\u06ec\u06e7\u06e7\u06dc\u06e8\u06e8\u06dc\u06e5\u06d9\u06dc\u06e7\u06dc\u06d8\u06e0\u06e8\u06e7\u06e5\u06e1\u06d7\u06dc\u06d9"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lz2/fh;->OooO0O0()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "\u06e1\u06e7\u06e4\u06d8\u06e2\u06db\u06e7\u06eb\u06e6\u06d8\u06e4\u06d6\u06d8\u06d8\u06d7\u06e6\u06ec\u06e0\u06eb\u06df\u06e6\u06df\u06e6\u06e6\u06df\u06df\u06e5\u06ec\u06e4\u06ec\u06d6"

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lz2/fh;->OooO00o()Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u06ec\u06ec\u06d8\u06eb\u06e1\u06e1\u06d8\u06e8\u06dc\u06e7\u06d8\u06d8\u06e5\u06e1\u06db\u06e7\u06e0\u06e1\u06e6\u06e5\u06e4\u06e6\u06eb\u06d9\u06eb\u06e8\u06d8\u06ec\u06d6\u06e5\u06d8\u06d9\u06e5\u06e5\u06e8\u06d8\u06e8\u06d8\u06e7\u06e7\u06da\u06d8\u06df\u06da\u06dc\u06d8\u06e2\u06e6\u06d6\u06e4\u06e1\u06df\u06d6\u06d6\u06ec\u06e7\u06dc\u06e6"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o0OOO0o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u06ec\u06eb\u06e2\u06eb\u06df\u06d8\u06d8\u06ec\u06d9\u06df\u06dc\u06e6\u06e5\u06d7\u06d7\u06eb\u06d6\u06da\u06d6\u06d8\u06df\u06e5\u06d8\u06e0\u06ec\u06ec\u06e5\u06d8\u06e1\u06d8\u06e8\u06eb\u06e7"

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OooOO0O()V

    const-string v0, "\u06e0\u06e5\u06e4\u06d7\u06d7\u06d6\u06e2\u06df\u06e4\u06e6\u06db\u06df\u06ec\u06d6\u06d8\u06dc\u06e5\u06e7\u06d8\u06db\u06e5\u06dc\u06d8\u06dc\u06e8\u06e5\u06ec\u06d6\u06d6\u06e5"

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OooOO0O()V

    const-string v0, "\u06d7\u06e6\u06e5\u06d8\u06da\u06e2\u06e1\u06d8\u06e0\u06db\u06eb\u06dc\u06e2\u06eb\u06dc\u06e4\u06e5\u06d8\u06d7\u06ec\u06e4\u06ec\u06ec\u06d6\u06d8\u06d6\u06e2\u06d8\u06d8\u06e0\u06e7\u06e0\u06da\u06d9\u06e2\u06e5\u06d6\u06d8\u06d8\u06d9\u06e7\u06e5\u06d8\u06e1\u06eb\u06e2\u06dc\u06d9\u06e8\u06d8\u06db\u06da\u06d8\u06d8\u06e5\u06e4\u06ec\u06e0\u06e6\u06da\u06eb\u06d6\u06d6\u06d8"

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lz2/fh;->OooO00o()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OooOO0o(Ljava/lang/String;)V

    const-string v0, "\u06da\u06da\u06e6\u06e4\u06db\u06e4\u06e8\u06d6\u06e8\u06d8\u06e7\u06da\u06e5\u06d8\u06e8\u06e7\u06e1\u06ec\u06e7\u06e7\u06eb\u06e8\u06db\u06d8\u06db\u06d6\u06ec\u06db\u06e7\u06eb\u06eb\u06df\u06e8\u06e8\u06e7\u06d8\u06db\u06d6\u06e8\u06d8\u06df\u06ec\u06e4\u06eb\u06d8\u06e5\u06d8"

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity;->o0ooOoO:Landroid/widget/TextView;

    new-instance v2, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO0o;

    invoke-direct {v2, p0}, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO0o;-><init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "\u06eb\u06d8\u06dc\u06d8\u06e8\u06d8\u06e4\u06d8\u06d9\u06e2\u06e1\u06dc\u06e6\u06d8\u06db\u06da\u06dc\u06e8\u06e2\u06eb\u06dc\u06db\u06e8\u06d8\u06d6\u06e1\u06d6\u06d8\u06e6\u06d8\u06e1\u06df\u06db\u06d8\u06d8\u06db\u06e5\u06e7\u06d8\u06da\u06da\u06df\u06e1\u06e2\u06d8"

    goto :goto_0

    :pswitch_0
    const-string v0, "\u06db\u06db\u06ec\u06d8\u06e2\u06e6\u06d8\u06e5\u06d7\u06d6\u06e8\u06db\u06e5\u06d8\u06e4\u06d7\u06dc\u06d8\u06db\u06dc\u06db\u06e0\u06d8\u06e4\u06e7\u06db\u06e8\u06df\u06eb\u06d6\u06d8\u06e4\u06e0\u06e8\u06d8\u06da\u06d6\u06df\u06e5\u06e4\u06df\u06e0\u06e0\u06d8\u06dc\u06d8\u06e1\u06d9\u06dc\u06d8\u06ec\u06eb"

    goto :goto_0

    :pswitch_1
    const-string v0, "\u06e2\u06e1\u06e4\u06e5\u06e7\u06e1\u06dc\u06db\u06e6\u06d8\u06dc\u06da\u06e5\u06e5\u06dc\u06e8\u06d8\u06e2\u06e6\u06d8\u06e4\u06eb\u06df\u06e8\u06df\u06d7\u06e8\u06e7\u06d8\u06eb\u06d6\u06e6\u06e4\u06e4\u06e6\u06d8\u06d7\u06e1\u06d9\u06e5\u06e2\u06d8\u06e5\u06d6\u06e8"

    goto :goto_0

    :pswitch_2
    const-string v0, "\u06e6\u06e7\u06dc\u06d8\u06d8\u06e4\u06e4\u06e4\u06dc\u06e7\u06d7\u06e1\u06e6\u06d8\u06e0\u06e2\u06ec\u06e8\u06d8\u06e1\u06d8\u06e5\u06e6\u06e6\u06ec\u06d6\u06dc\u06d7\u06e1\u06e7\u06d9\u06d8\u06e8\u06d8\u06d6\u06e1\u06e8\u06da\u06d7\u06d6\u06d6\u06e6\u06d8\u06e2\u06e2\u06eb"

    goto :goto_0

    :sswitch_9
    const-string v0, "\u06eb\u06d8\u06dc\u06d8\u06e8\u06d8\u06e4\u06d8\u06d9\u06e2\u06e1\u06dc\u06e6\u06d8\u06db\u06da\u06dc\u06e8\u06e2\u06eb\u06dc\u06db\u06e8\u06d8\u06d6\u06e1\u06d6\u06d8\u06e6\u06d8\u06e1\u06df\u06db\u06d8\u06d8\u06db\u06e5\u06e7\u06d8\u06da\u06da\u06df\u06e1\u06e2\u06d8"

    goto :goto_0

    :sswitch_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x60982655 -> :sswitch_8
        -0x30bcaf10 -> :sswitch_4
        -0x20294fdb -> :sswitch_1
        0x209c3aba -> :sswitch_9
        0x2dcd845f -> :sswitch_5
        0x33bb42bf -> :sswitch_9
        0x365787a1 -> :sswitch_2
        0x554db67c -> :sswitch_6
        0x5984d65d -> :sswitch_9
        0x5c560a51 -> :sswitch_7
        0x5d2c2ac0 -> :sswitch_0
        0x67ae15ca -> :sswitch_a
        0x7d974c9e -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 4

    const-string v0, "\u06e0\u06db\u06ec\u06d7\u06eb\u06e8\u06e2\u06e1\u06dc\u06eb\u06d7\u06d9\u06e7\u06eb\u06e1\u06eb\u06d8\u06e0\u06eb\u06e6\u06d8\u06d6\u06d8\u06da\u06d9\u06d9\u06ec\u06d9\u06df\u06e6\u06d8\u06d9\u06da\u06e7\u06eb\u06d7\u06e5\u06d8\u06da\u06d6\u06db\u06dc\u06e1\u06d6\u06e8\u06d9\u06e8\u06d8\u06d9\u06e5\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x28c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x335

    const/16 v2, 0x30e

    const v3, -0x2bd39ef1

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06e2\u06d6\u06d8\u06dc\u06e5\u06db\u06db\u06dc\u06dc\u06d8\u06ec\u06e4\u06e2\u06df\u06e1\u06e8\u06d8\u06df\u06d6\u06e4\u06dc\u06eb\u06dc\u06da\u06e0\u06d6\u06d8\u06e2\u06e0\u06e8\u06e8\u06e0\u06eb\u06da\u06db\u06e6\u06e5\u06e4\u06e6\u06d8\u06d7\u06d9\u06dc\u06d8\u06db\u06d8\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "\u06d6\u06db\u06e6\u06e7\u06eb\u06d8\u06d8\u06d6\u06e6\u06e2\u06e6\u06e8\u06db\u06e2\u06da\u06d6\u06d8\u06eb\u06e0\u06e4\u06e5\u06e1\u06e7\u06d8\u06e1\u06d7\u06e6\u06df\u06df\u06e0\u06e2\u06df\u06e2\u06d6\u06e4\u06ec\u06d6\u06d8"

    goto :goto_0

    :sswitch_2
    const-class v0, Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/bh;->OooO0Oo(Ljava/lang/String;)V

    const-string v0, "\u06e8\u06da\u06e1\u06e2\u06e8\u06e5\u06e0\u06e1\u06e6\u06d6\u06d9\u06e7\u06e8\u06e0\u06e6\u06e4\u06da\u06e0\u06d6\u06e1\u06d8\u06e2\u06d7\u06d8\u06db\u06df\u06e8\u06e4\u06d8\u06d8"

    goto :goto_0

    :sswitch_3
    invoke-static {p0}, Lz2/bh;->OooO0o(Landroid/content/Context;)V

    const-string v0, "\u06e7\u06d6\u06d6\u06d8\u06e4\u06ec\u06e5\u06e5\u06e4\u06e8\u06e0\u06e6\u06d9\u06da\u06e7\u06e4\u06e4\u06e1\u06d6\u06e2\u06e8\u06e7\u06dc\u06e8\u06d8\u06e0\u06ec\u06e8\u06db\u06d7\u06dc\u06d8"

    goto :goto_0

    :sswitch_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6cfa379d -> :sswitch_0
        -0x566c65a7 -> :sswitch_2
        -0x435c9a37 -> :sswitch_4
        -0x35628cc7 -> :sswitch_3
        0x44c740cf -> :sswitch_1
    .end sparse-switch
.end method
