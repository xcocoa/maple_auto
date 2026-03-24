.class public Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/SettingActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/elfin/ui/activity/SettingActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO00o;->OoooOoO:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string v0, "\u06e5\u06e2\u06dc\u06e4\u06eb\u06da\u06e2\u06ec\u06d7\u06e2\u06d7\u06e8\u06e5\u06eb\u06e0\u06e5\u06da\u06dc\u06d8\u06dc\u06e1\u06e5\u06d8\u06dc\u06da\u06eb\u06d8\u06eb\u06da\u06e6\u06df\u06e6\u06d8\u06e2\u06e0\u06d6\u06d8\u06dc\u06d7\u06d8\u06d8\u06d8\u06e2\u06e1\u06d8\u06e6\u06e6\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x137

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x41

    const/16 v2, 0xc1

    const v3, -0x3bf0aba9

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e8\u06dc\u06e8\u06dc\u06dc\u06e2\u06e1\u06e7\u06d8\u06d8\u06eb\u06e1\u06d8\u06d8\u06e1\u06e1\u06d8\u06e1\u06d8\u06e1\u06eb\u06e5\u06d6\u06e7\u06e2\u06d8\u06e1\u06e6\u06d8\u06d8\u06e4\u06ec\u06d8\u06e1\u06e6\u06d8\u06d6\u06e1\u06e0\u06eb\u06e6\u06e4\u06eb\u06e1\u06e7\u06d8\u06d8\u06df\u06e2"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06eb\u06e8\u06db\u06e1\u06e6\u06e1\u06d8\u06da\u06d7\u06d8\u06d6\u06e2\u06e1\u06d8\u06db\u06e5\u06e1\u06d9\u06df\u06d6\u06da\u06e2\u06e6\u06d8\u06dc\u06e6\u06e8\u06d8\u06e4\u06d8\u06e6\u06d8\u06e0\u06ec\u06d6\u06d8\u06e8\u06e6\u06d7\u06dc\u06db\u06e2\u06d8\u06da\u06d8\u06e4\u06e6\u06d6"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e8\u06df\u06da\u06e6\u06e6\u06d6\u06dc\u06e6\u06e5\u06d8\u06e7\u06e8\u06eb\u06df\u06da\u06e5\u06da\u06df\u06d6\u06d8\u06e8\u06ec\u06d8\u06d8\u06d8\u06df\u06e1\u06e4\u06e2\u06e7\u06e0\u06d7\u06ec\u06e4\u06d9\u06eb\u06df\u06e1\u06d6"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06dc\u06e1\u06ec\u06e2\u06e2\u06d8\u06ec\u06d8\u06dc\u06e5\u06e7\u06e6\u06db\u06da\u06e8\u06d8\u06e4\u06e7\u06e7\u06ec\u06db\u06e5\u06d8\u06d6\u06e7\u06e8\u06da\u06e5\u06d7\u06e7\u06e2\u06d6\u06da\u06e8\u06d9\u06e2\u06d9\u06d9\u06d9\u06ec\u06dc\u06e2\u06e6\u06ec\u06d9\u06d6\u06d6\u06d8\u06d6\u06e0\u06e8"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u06d6\u06ec\u06e5\u06db\u06e1\u06e8\u06d8\u06e1\u06e8\u06e1\u06eb\u06e1\u06e6\u06d8\u06e8\u06dc\u06e0\u06db\u06e6\u06d8\u06e5\u06eb\u06d9\u06e0\u06e1\u06d6\u06df\u06e2\u06d8\u06ec\u06d9\u06d8\u06d8\u06da\u06e5\u06e4\u06e1\u06ec\u06d8\u06e2\u06e7\u06e1\u06eb\u06df\u06d8"

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    const-string v1, "sp_key_setting_auto_run_script_countdown"

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO00o;->OoooOoO:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-static {v2}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OooO0oO(Lcom/cyjh/elfin/ui/activity/SettingActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    const-string v3, "\u79d2"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lz2/x4;->OooO0oO(Ljava/lang/String;I)V

    const-string v0, "\u06e8\u06dc\u06df\u06e7\u06ec\u06e1\u06e7\u06ec\u06e0\u06e7\u06e1\u06dc\u06d8\u06e7\u06da\u06e8\u06e2\u06d8\u06ec\u06ec\u06d8\u06dc\u06d8\u06db\u06eb\u06e4\u06ec\u06ec\u06db\u06e2\u06df\u06df\u06e5\u06e4\u06d6\u06d8\u06e1\u06d9\u06db\u06ec\u06eb\u06d9\u06d6\u06e4\u06d9\u06df\u06eb\u06e5\u06d8\u06e7\u06e0\u06da\u06eb\u06da\u06d8\u06d8\u06e5\u06e8\u06e1"

    goto :goto_0

    :sswitch_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2a3ae1cb -> :sswitch_4
        -0x17f63634 -> :sswitch_0
        -0x14402b53 -> :sswitch_2
        -0xb6c38fe -> :sswitch_1
        0x312bb6ce -> :sswitch_6
        0x4401c409 -> :sswitch_3
        0x4481777e -> :sswitch_5
    .end sparse-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    const-string v0, "\u06e4\u06e7\u06dc\u06e2\u06db\u06df\u06db\u06e7\u06e1\u06d8\u06e0\u06e6\u06e1\u06e1\u06db\u06d6\u06d8\u06ec\u06e6\u06e8\u06dc\u06dc\u06d6\u06d8\u06db\u06e7\u06d8\u06d8\u06db\u06da\u06d6\u06d8\u06e2\u06e2\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x165

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xfa

    const/16 v2, 0x3dc

    const v3, -0x28755be6

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06d9\u06dc\u06d8\u06e5\u06e1\u06e1\u06db\u06db\u06e2\u06d7\u06d6\u06e5\u06e1\u06eb\u06e4\u06e2\u06dc\u06e1\u06e2\u06df\u06df\u06d6\u06eb\u06dc\u06e2\u06e5\u06dc\u06d8\u06eb\u06e6\u06e8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06dc\u06d9\u06e2\u06d9\u06d6\u06e0\u06d8\u06d6\u06dc\u06d7\u06d8\u06d8\u06ec\u06d7\u06e1\u06e6\u06df\u06d6\u06d8\u06e8\u06dc\u06da\u06d7\u06d6\u06db\u06db\u06e2\u06db\u06d7\u06db\u06db\u06db\u06d7\u06e0\u06d8\u06e8\u06e7\u06d8\u06e5\u06d7\u06ec\u06d8\u06ec\u06e8"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1d3f88aa -> :sswitch_1
        0x43fd8481 -> :sswitch_0
        0x5920ea89 -> :sswitch_2
    .end sparse-switch
.end method
