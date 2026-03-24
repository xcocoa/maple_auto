.class public Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO0O0;,
        Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO0OO;
    }
.end annotation


# instance fields
.field private OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

.field private OooooOO:Landroid/widget/TextView;

.field private OooooOo:Landroid/widget/Button;

.field private Oooooo:Z

.field private Oooooo0:Lcom/cyjh/elfin/entity/ScriptLog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic OooO(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;)Landroid/widget/TextView;
    .locals 4

    const-string v0, "\u06d6\u06e2\u06e0\u06da\u06d9\u06e2\u06e1\u06da\u06e8\u06d8\u06e2\u06d7\u06dc\u06d8\u06e6\u06dc\u06e1\u06e7\u06eb\u06e2\u06e8\u06da\u06e6\u06dc\u06e6\u06ec\u06d6\u06d7\u06d7\u06e4\u06e1\u06d8\u06dc\u06db\u06d6\u06d8\u06e4\u06e4\u06e5\u06e1\u06da\u06e5\u06d8\u06d6\u06db\u06e0\u06e0\u06e5\u06d8\u06d6\u06dc\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2b0

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x13f

    const/16 v2, 0x3a9

    const v3, -0x22e6f35b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06dc\u06e1\u06d8\u06d9\u06d8\u06d6\u06d8\u06db\u06e1\u06e1\u06d7\u06da\u06d7\u06da\u06db\u06e6\u06e0\u06e7\u06d6\u06ec\u06df\u06e7\u06e7\u06d8\u06d6\u06e5\u06ec\u06d8\u06e4\u06ec\u06dc\u06d8\u06e4\u06e7\u06e1\u06d8\u06ec\u06da\u06df\u06db\u06d7\u06e1\u06d8\u06db\u06e8\u06e8\u06d8\u06e4\u06e1\u06e2\u06e8\u06d6\u06e0\u06dc\u06d7\u06d6\u06d7\u06e2\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->OooooOO:Landroid/widget/TextView;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x3152389 -> :sswitch_1
        0x6d2e9cee -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooO0oO(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;Landroid/content/Context;II)V
    .locals 4

    const-string v0, "\u06d8\u06e5\u06dc\u06d8\u06e1\u06dc\u06e8\u06d8\u06e5\u06d6\u06e6\u06ec\u06e7\u06e8\u06d8\u06e6\u06d6\u06eb\u06e2\u06e8\u06d7\u06d8\u06e2\u06e8\u06e6\u06e5\u06db\u06da\u06e7\u06e1\u06e2\u06d6\u06d8\u06df\u06e5\u06e1\u06d8\u06e0\u06d7\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x32d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xb6

    const/16 v2, 0xdf

    const v3, 0x64aaa0b8    # 2.518022E22f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06e0\u06db\u06d6\u06e6\u06dc\u06e0\u06e8\u06e1\u06e6\u06eb\u06e5\u06e7\u06da\u06da\u06db\u06e7\u06d7\u06ec\u06e8\u06d6\u06dc\u06e6\u06d9\u06d6\u06e6\u06d6\u06d8\u06e4\u06d7\u06e7\u06e5\u06d9\u06e5\u06d7\u06eb\u06e6\u06e2\u06db\u06ec\u06eb\u06e4\u06df"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06da\u06e0\u06e4\u06db\u06e0\u06df\u06d7\u06d6\u06da\u06e7\u06e1\u06e1\u06e1\u06e8\u06d8\u06e7\u06e1\u06da\u06da\u06d6\u06d9\u06ec\u06d8\u06e6\u06d8\u06dc\u06ec\u06db\u06eb\u06e4\u06da\u06e0\u06e1\u06e2\u06e8\u06ec\u06d6\u06d7\u06d8\u06d8\u06db\u06dc\u06d6\u06d6\u06ec\u06e4"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06da\u06e2\u06e2\u06e4\u06e4\u06d7\u06e6\u06d8\u06e7\u06d9\u06da\u06df\u06e2\u06df\u06e6\u06d8\u06d8\u06e6\u06da\u06e8\u06e0\u06d9\u06ec\u06ec\u06e8\u06eb\u06e4\u06dc\u06d8\u06e8\u06d9\u06db\u06df\u06d6\u06dc\u06d8\u06d8\u06dc"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06e7\u06da\u06d6\u06d8\u06e4\u06d7\u06d9\u06e8\u06ec\u06d6\u06db\u06e5\u06e4\u06db\u06e5\u06d8\u06d7\u06e5\u06d7\u06d7\u06e5\u06eb\u06e7\u06e7\u06e1\u06db\u06df\u06e0\u06e1\u06e7\u06db\u06e0\u06e1\u06d7\u06e4\u06d7\u06e5\u06d8\u06e6\u06d6\u06d9\u06e6\u06da\u06dc\u06d8\u06e8\u06e6\u06e6\u06da\u06e4\u06d7"

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/cyjh/common/base/activity/BaseActivity;->OooO0o0(Landroid/content/Context;II)V

    const-string v0, "\u06e5\u06e6\u06eb\u06d8\u06db\u06e6\u06d8\u06d9\u06d7\u06df\u06eb\u06e8\u06e6\u06e2\u06e0\u06e6\u06d8\u06e6\u06da\u06e1\u06d8\u06e6\u06e0\u06e5\u06e2\u06d6\u06eb\u06e5\u06e5\u06ec\u06d6\u06d9\u06d8\u06d9\u06e0\u06e5\u06d9\u06d6\u06e1\u06e4\u06e2\u06db\u06db\u06e6\u06dc\u06e1\u06d8\u06ec\u06e8\u06dc\u06da\u06df\u06d9\u06e1\u06ec\u06e7\u06db"

    goto :goto_0

    :sswitch_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b1f2ce6 -> :sswitch_1
        -0x523c9f9 -> :sswitch_5
        0x1c849c22 -> :sswitch_0
        0x4affab32 -> :sswitch_3
        0x55da2076 -> :sswitch_2
        0x5ec1692f -> :sswitch_4
    .end sparse-switch
.end method

.method public static synthetic OooO0oo(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;)Lcom/cyjh/elfin/entity/ScriptLog;
    .locals 4

    const-string v0, "\u06e7\u06eb\u06d9\u06df\u06e2\u06db\u06d9\u06db\u06e2\u06ec\u06dc\u06df\u06d6\u06e7\u06e4\u06eb\u06df\u06d9\u06e7\u06d6\u06dc\u06e5\u06db\u06df\u06e4\u06da\u06da\u06e4\u06db\u06d7\u06e7\u06dc\u06d8\u06d8\u06d6\u06dc\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1d4

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3d7

    const/16 v2, 0x14a

    const v3, -0x5492c5e6

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e2\u06d6\u06d8\u06ec\u06d6\u06da\u06eb\u06e2\u06d8\u06d8\u06df\u06eb\u06e6\u06d8\u06e6\u06e0\u06db\u06da\u06d9\u06e2\u06e6\u06e1\u06d8\u06e2\u06ec\u06d7\u06d8\u06e5\u06e0\u06d8\u06e5\u06e4\u06e0\u06e2\u06d6\u06e8\u06db\u06e0\u06e8\u06e8\u06d8\u06d8\u06e6\u06db\u06e5\u06d8\u06e5\u06d6\u06e5\u06d8\u06d9\u06e5\u06e8\u06d7\u06e0\u06e8\u06d8\u06e2\u06d7\u06db"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->Oooooo0:Lcom/cyjh/elfin/entity/ScriptLog;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7667804c -> :sswitch_1
        -0x5f040a06 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOO0(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;)V
    .locals 4

    const-string v0, "\u06db\u06e0\u06da\u06dc\u06d6\u06ec\u06ec\u06e6\u06db\u06ec\u06e5\u06d8\u06ec\u06dc\u06dc\u06d8\u06e0\u06d9\u06df\u06e4\u06eb\u06da\u06da\u06d7\u06d8\u06d8\u06e6\u06d9\u06e8\u06d8\u06ec\u06d9\u06e6\u06ec\u06db\u06df\u06e5\u06e6\u06eb\u06e7\u06ec\u06e6\u06e6\u06ec\u06e0\u06db\u06dc\u06d8\u06da\u06db\u06da\u06d9\u06d9\u06e6\u06d8\u06d9\u06ec\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xb4

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x47

    const/16 v2, 0xd0

    const v3, -0x731a38d3

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06ec\u06e5\u06d9\u06d9\u06e7\u06db\u06d7\u06d6\u06e7\u06d7\u06e2\u06df\u06d7\u06e8\u06d9\u06e6\u06e6\u06dc\u06dc\u06e4\u06d7\u06db\u06df\u06e1\u06d9\u06d8\u06db\u06d7\u06e5\u06d9\u06e2\u06d8\u06db\u06e4\u06e8\u06d8\u06da\u06e0\u06da\u06da\u06da\u06e5\u06d8\u06e5\u06e6\u06e0\u06e8\u06d7\u06e1"

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->OooO0O0()V

    const-string v0, "\u06eb\u06e5\u06e8\u06d8\u06e8\u06dc\u06df\u06e2\u06e4\u06d7\u06d8\u06e1\u06e8\u06da\u06d7\u06e1\u06d8\u06e0\u06d8\u06e4\u06d8\u06d9\u06dc\u06d8\u06e7\u06d7\u06e1\u06da\u06d7\u06e2\u06e5\u06e6\u06e5\u06e1\u06eb\u06d6\u06e8\u06d8\u06e2\u06db\u06dc\u06ec\u06d6\u06eb\u06e4\u06e5\u06e1\u06e8\u06d8\u06d9\u06e8\u06e8\u06d8\u06d6\u06df\u06d6\u06d8\u06eb\u06e4\u06d9"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x38ff2388 -> :sswitch_1
        0x57fa3074 -> :sswitch_2
        0x6a21c894 -> :sswitch_0
    .end sparse-switch
.end method

.method private OooOO0O()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e4\u06e4\u06e5\u06e6\u06d8\u06e2\u06e4\u06d6\u06eb\u06e1\u06e0\u06d6\u06d9\u06eb\u06eb\u06e4\u06e5\u06ec\u06e6\u06db\u06e8\u06d8\u06db\u06d9\u06da\u06da\u06e4\u06e2\u06dc\u06dc\u06dc\u06d9\u06e1\u06d8\u06e7\u06ec\u06df\u06e1\u06e5\u06d8\u06d6\u06e8\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x130

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0xfa

    const/16 v3, 0x324

    const v4, -0x51a5ce88

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e2\u06e8\u06d8\u06e6\u06e5\u06eb\u06dc\u06e5\u06d8\u06d8\u06ec\u06e7\u06d8\u06d8\u06e2\u06e0\u06dc\u06d8\u06e6\u06e6\u06d6\u06dc\u06e1\u06dc\u06e1\u06e6\u06db\u06d6\u06e8\u06da\u06dc\u06eb\u06e5\u06db\u06ec\u06e5\u06d8\u06dc\u06dc\u06d8\u06d8\u06e0\u06df\u06e1\u06e4\u06e0\u06df\u06d8\u06d9\u06dc\u06e2\u06e4\u06ec"

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "\u06d9\u06e8\u06e6\u06e8\u06d7\u06e6\u06d8\u06e6\u06e2\u06d6\u06e4\u06e1\u06d6\u06df\u06e6\u06e6\u06d8\u06d8\u06dc\u06da\u06ec\u06d9\u06dc\u06e1\u06e4\u06dc\u06d8\u06e0\u06e2\u06eb\u06d6\u06db\u06e5\u06d8\u06ec\u06e0\u06d9\u06db\u06dc\u06e8\u06dc\u06e6\u06e7\u06ec\u06da\u06dc\u06d8\u06d6\u06dc\u06dc\u06df\u06e1\u06e5\u06d8\u06d8\u06df\u06e1\u06d8\u06dc\u06ec\u06eb"

    goto :goto_0

    :sswitch_2
    const-string v0, "com.cyjh.elfin.ui.activity.SettingActivity.FlagLastLog"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->Oooooo:Z

    const-string v0, "\u06d8\u06dc\u06e7\u06d8\u06d8\u06e1\u06d7\u06d7\u06e1\u06db\u06e1\u06e6\u06d8\u06e5\u06e5\u06eb\u06e7\u06e1\u06e1\u06e6\u06dc\u06e5\u06d7\u06df\u06d6\u06df\u06d6\u06d8\u06db\u06da\u06e0\u06e1\u06e4\u06ec\u06e8\u06df\u06d8\u06d8\u06d9\u06e1\u06dc\u06db\u06e5\u06d8"

    goto :goto_0

    :sswitch_3
    const-string v0, "com.cyjh.elfin.ui.activity.ScriptLogActivity.ScriptLog"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/entity/ScriptLog;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->Oooooo0:Lcom/cyjh/elfin/entity/ScriptLog;

    const-string v0, "\u06e1\u06e1\u06e8\u06e8\u06e5\u06d7\u06db\u06e4\u06e5\u06d8\u06e2\u06d8\u06e8\u06d8\u06df\u06e5\u06d8\u06d7\u06e4\u06d9\u06e2\u06d9\u06d6\u06d8\u06e6\u06d6\u06e6\u06e4\u06e1\u06d6\u06e7\u06e5\u06eb"

    goto :goto_0

    :sswitch_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f4dfaf6 -> :sswitch_0
        -0x1853ae -> :sswitch_3
        0x2fa5e401 -> :sswitch_1
        0x4ac71a75 -> :sswitch_4
        0x7ca09cc8 -> :sswitch_2
    .end sparse-switch
.end method

.method private OooOO0o()V
    .locals 5

    const/4 v2, 0x0

    const-string v0, "\u06e7\u06e0\u06e1\u06d8\u06eb\u06e5\u06d9\u06e8\u06e5\u06e0\u06e2\u06e8\u06db\u06d7\u06d6\u06e1\u06d8\u06d6\u06e8\u06e1\u06d8\u06dc\u06e7\u06d9\u06df\u06e5\u06e7\u06e6\u06eb\u06ec\u06df\u06e4\u06e5\u06d8\u06da\u06d8\u06d6\u06d8\u06d9\u06ec\u06db"

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x47

    xor-int/2addr v0, v3

    xor-int/lit8 v0, v0, 0x4c

    const/16 v3, 0x83

    const v4, 0x629ce4ed

    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06e5\u06e6\u06d8\u06e0\u06e7\u06d9\u06d9\u06d8\u06e7\u06d8\u06eb\u06d8\u06d8\u06d8\u06d7\u06d7\u06e2\u06ec\u06e6\u06d8\u06d6\u06e4\u06dc\u06d8\u06d6\u06df\u06d6\u06d8\u06e8\u06e5\u06df\u06e8\u06ec\u06df"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f090239

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "\u06da\u06e0\u06da\u06d9\u06eb\u06d6\u06d8\u06dc\u06e2\u06d6\u06d8\u06d6\u06e6\u06e8\u06d8\u06d6\u06dc\u06ec\u06e5\u06ec\u06d9\u06e0\u06e4\u06e5\u06ec\u06e4\u06e7\u06d7\u06d9\u06d8\u06d8\u06d7\u06e0\u06e7\u06d8\u06d8\u06d8\u06df\u06e5\u06dc\u06e7\u06df\u06dc\u06e1\u06df\u06d8\u06eb\u06e6\u06e8\u06d8\u06ec\u06da\u06e6\u06e6\u06d7\u06e8\u06e0\u06e7\u06e5"

    move-object v2, v0

    goto :goto_0

    :sswitch_2
    iput-object v2, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->OooooOo:Landroid/widget/Button;

    const-string v0, "\u06e8\u06dc\u06dc\u06d6\u06eb\u06eb\u06e1\u06ec\u06e8\u06d8\u06d9\u06dc\u06d7\u06ec\u06d9\u06e2\u06db\u06d9\u06eb\u06db\u06e5\u06dc\u06d8\u06df\u06e0\u06d6\u06d8\u06da\u06df\u06df\u06dc\u06d9\u06d8\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    const v1, -0x6fadea00

    const-string v0, "\u06e7\u06e8\u06d8\u06d6\u06e8\u06db\u06d8\u06df\u06da\u06ec\u06e6\u06df\u06db\u06df\u06e8\u06d8\u06eb\u06ec\u06db\u06e6\u06d7\u06eb\u06e6\u06d6\u06d6\u06df\u06df\u06d7\u06e2\u06e1\u06d8\u06ec\u06d7\u06e2\u06e2\u06da\u06df\u06d8\u06e4\u06e1\u06e5\u06dc\u06e8\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06e6\u06df\u06e5\u06e5\u06e1\u06e8\u06d8\u06d9\u06ec\u06e6\u06d8\u06e5\u06db\u06e6\u06e4\u06e1\u06e7\u06db\u06e8\u06df\u06d6\u06d6\u06d6\u06d6\u06da\u06eb\u06e1\u06e1\u06eb\u06e0\u06ec\u06e8"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06e5\u06d6\u06e6\u06d8\u06ec\u06d8\u06dc\u06d8\u06df\u06eb\u06e8\u06ec\u06db\u06dc\u06d8\u06dc\u06e0\u06d6\u06e5\u06e0\u06d7\u06eb\u06e1\u06e6\u06d8\u06dc\u06ec\u06dc\u06d8\u06d6\u06d6\u06e8\u06d8\u06e6\u06e5\u06db\u06e2\u06d7\u06dc\u06d7\u06e4\u06da"

    goto :goto_1

    :sswitch_6
    const v3, 0x99aec11

    const-string v0, "\u06e7\u06e4\u06d9\u06d7\u06d8\u06eb\u06e4\u06e5\u06d8\u06e0\u06e4\u06d8\u06d8\u06e5\u06e2\u06db\u06e4\u06db\u06e8\u06d8\u06dc\u06e5\u06da\u06e8\u06ec\u06dc\u06d8\u06e8\u06df\u06e5\u06d8\u06e2\u06d8\u06db\u06e5\u06d6\u06e1\u06e8\u06eb\u06da\u06e0\u06df\u06e8\u06d8\u06e7\u06dc\u06df\u06db\u06e6\u06e6\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e1\u06ec\u06d6\u06e5\u06ec\u06e4\u06d8\u06e5\u06e0\u06e8\u06d7\u06e1\u06e0\u06e7\u06e1\u06db\u06e7\u06e6\u06d8\u06df\u06e8\u06e5\u06eb\u06d9\u06e7\u06d9\u06d8\u06dc\u06d8\u06e1\u06dc\u06ec"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e6\u06d7\u06d9\u06d7\u06dc\u06e5\u06e2\u06db\u06e8\u06ec\u06df\u06db\u06d9\u06e1\u06dc\u06e2\u06ec\u06db\u06e4\u06db\u06df\u06d8\u06e5\u06d8\u06df\u06eb\u06e2\u06e2\u06e0\u06e8\u06d6\u06e1\u06dc\u06df\u06df\u06d9\u06d9\u06d8\u06dc\u06d8\u06e7\u06d9\u06e2\u06eb\u06e0\u06dc\u06d8\u06d7\u06dc\u06e8\u06d8\u06d8\u06ec\u06d8\u06d8\u06eb\u06e2\u06d8\u06d8"

    goto :goto_2

    :sswitch_8
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->Oooooo:Z

    if-eqz v0, :cond_0

    const-string v0, "\u06ec\u06e4\u06dc\u06e6\u06e5\u06e0\u06df\u06e2\u06db\u06da\u06e8\u06d6\u06e4\u06e5\u06eb\u06e2\u06e4\u06dc\u06e5\u06e2\u06d6\u06df\u06e7\u06e6\u06d8\u06eb\u06e0\u06d8\u06d7\u06e4\u06eb"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06e2\u06e0\u06e6\u06d8\u06d9\u06e6\u06dc\u06e6\u06dc\u06e7\u06d8\u06e7\u06dc\u06eb\u06d8\u06e7\u06d8\u06e8\u06dc\u06d6\u06d8\u06dc\u06d8\u06df\u06eb\u06df\u06da\u06db\u06e5\u06e6\u06d8\u06e6\u06e8\u06ec\u06db\u06e0\u06e8\u06d8\u06e6\u06ec\u06e1\u06d8"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06eb\u06eb\u06ec\u06e5\u06e7\u06d7\u06d6\u06e2\u06e1\u06d8\u06d7\u06e8\u06d7\u06d7\u06da\u06e4\u06e1\u06da\u06da\u06e4\u06df\u06d9\u06e7\u06d6\u06df\u06df\u06e0\u06d6\u06d8\u06d6\u06e0\u06db\u06dc\u06e2\u06d6\u06d8\u06e0\u06d6\u06e7\u06e2\u06d8\u06e8\u06d8\u06ec\u06e2\u06e8"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06da\u06e0\u06df\u06d6\u06df\u06e8\u06ec\u06e8\u06e8\u06ec\u06d6\u06e0\u06e1\u06db\u06dc\u06d8\u06df\u06df\u06d8\u06d8\u06db\u06e2\u06e0\u06e5\u06db\u06e6\u06e0\u06df\u06d6\u06d8\u06d8\u06df\u06e4\u06d9\u06e7\u06dc\u06d7\u06db\u06e4\u06db\u06db\u06e4\u06d6\u06dc\u06d8\u06df\u06d6\u06eb\u06ec\u06dc\u06e6\u06d7\u06d6\u06ec\u06eb\u06da\u06e1\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_c
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    const-string v0, "\u06df\u06e6\u06d8\u06d8\u06df\u06db\u06e4\u06d6\u06e0\u06e5\u06d8\u06e6\u06ec\u06e6\u06d8\u06ec\u06d7\u06eb\u06da\u06eb\u06e6\u06d8\u06d8\u06e1\u06d6\u06df\u06e8\u06e6\u06d8\u06e7\u06e0\u06eb\u06d6\u06e0\u06e2\u06e5\u06e7\u06e4\u06ec\u06d8\u06d9\u06e2\u06da\u06e2\u06dc\u06e2\u06e0\u06db\u06e8\u06e2\u06e4\u06ec"

    move-object v1, v0

    goto :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->OooooOo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06da\u06e6\u06e7\u06dc\u06e5\u06d8\u06dc\u06e1\u06db\u06df\u06e1\u06e8\u06e8\u06e1\u06d8\u06d8\u06db\u06d8\u06ec\u06e6\u06db\u06e6\u06d8\u06e2\u06ec\u06d8\u06df\u06d9\u06dc\u06d8\u06d9\u06e0\u06dc\u06e5\u06d8\u06d7\u06e0\u06dc\u06eb\u06e6\u06e0\u06e6\u06d8\u06db\u06d6\u06e5\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_e
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    const-string v0, "\u06e4\u06db\u06e5\u06e1\u06d9\u06ec\u06e8\u06e6\u06e6\u06db\u06dc\u06e7\u06d9\u06e5\u06db\u06d9\u06d8\u06d8\u06e5\u06e0\u06da\u06e0\u06db\u06e8\u06e7\u06d6\u06db\u06eb\u06df\u06d6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_f
    const-string v0, "\u06e4\u06db\u06e5\u06e1\u06d9\u06ec\u06e8\u06e6\u06e6\u06db\u06dc\u06e7\u06d9\u06e5\u06db\u06d9\u06d8\u06d8\u06e5\u06e0\u06da\u06e0\u06db\u06e8\u06e7\u06d6\u06db\u06eb\u06df\u06d6\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_10
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74a6bffd -> :sswitch_10
        -0x7436713c -> :sswitch_1
        -0x737e91a9 -> :sswitch_c
        -0x72f7f99c -> :sswitch_d
        -0x3c40ae16 -> :sswitch_f
        -0x14fc9af5 -> :sswitch_2
        0x10b338f9 -> :sswitch_0
        0x474349ee -> :sswitch_3
        0x688a80d8 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7e7d9364 -> :sswitch_6
        -0x1377da3b -> :sswitch_b
        0x1268b6f2 -> :sswitch_a
        0x2e8ac178 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x633d44d8 -> :sswitch_5
        -0x3246f941 -> :sswitch_7
        -0x2a08f340 -> :sswitch_9
        0x6430529e -> :sswitch_8
    .end sparse-switch
.end method

.method private OooOOO0()V
    .locals 6

    const/4 v3, 0x0

    const-string v0, "\u06d7\u06e6\u06da\u06ec\u06e4\u06e2\u06e7\u06e0\u06e4\u06e7\u06d8\u06db\u06e2\u06ec\u06da\u06ec\u06e8\u06d6\u06d8\u06e5\u06ec\u06e5\u06df\u06d7\u06d8\u06d8\u06d6\u06e2\u06dc\u06d9\u06eb\u06db\u06e5\u06d9\u06ec\u06e4\u06d6\u06dc\u06d8"

    move-object v1, v0

    move-object v2, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v4, 0x91

    xor-int/2addr v0, v4

    xor-int/lit16 v0, v0, 0x9f

    const/16 v4, 0x31d

    const v5, -0x7d43a715

    xor-int/2addr v0, v4

    xor-int/2addr v0, v5

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06e6\u06db\u06ec\u06db\u06dc\u06e1\u06e5\u06e6\u06d6\u06e7\u06e7\u06da\u06e2\u06dc\u06e8\u06dc\u06eb\u06e2\u06e4\u06db\u06e7\u06d6\u06ec\u06d6\u06e5\u06d8\u06d7\u06d9\u06e0\u06df\u06e1\u06e0\u06e2\u06df\u06dc\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f09043f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const-string v1, "\u06e6\u06e6\u06d6\u06d8\u06e2\u06d7\u06e6\u06d8\u06eb\u06e2\u06e6\u06d7\u06d6\u06e4\u06e2\u06dc\u06e6\u06e4\u06db\u06df\u06d9\u06da\u06d6\u06e0\u06db\u06e8\u06df\u06dc\u06e8\u06d8\u06e2\u06d7\u06e5\u06e4\u06e8\u06ec\u06e4\u06eb\u06d8\u06e8\u06e2\u06e5\u06eb\u06e1\u06d8\u06dc\u06e8\u06da\u06e2\u06e2\u06d6"

    move-object v2, v0

    goto :goto_0

    :sswitch_2
    iput-object v2, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const-string v0, "\u06ec\u06e0\u06d8\u06e8\u06db\u06d8\u06d8\u06e1\u06d8\u06d7\u06e7\u06d6\u06d8\u06e7\u06e4\u06e0\u06e2\u06e1\u06e2\u06d9\u06e0\u06e1\u06d8\u06e8\u06e8\u06db\u06dc\u06e0\u06d8\u06e2\u06e0\u06e1\u06d8\u06e7\u06e5\u06dc\u06d9\u06d8\u06d8\u06eb\u06eb\u06e4\u06e1\u06d9\u06e7\u06e8\u06d7\u06ec\u06eb\u06e7\u06ec"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->Oooooo0:Lcom/cyjh/elfin/entity/ScriptLog;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/ScriptLog;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    const-string v0, "\u06d9\u06e6\u06d8\u06e8\u06e2\u06dc\u06d8\u06da\u06e4\u06dc\u06e1\u06e7\u06e0\u06d8\u06df\u06e1\u06d8\u06e8\u06e4\u06e0\u06ec\u06e4\u06e1\u06df\u06e0\u06dc\u06d8\u06e8\u06ec\u06e5\u06d6\u06e4\u06e6\u06e4\u06d6\u06e8\u06e7\u06e0\u06d8\u06d8\u06db\u06ec\u06d8\u06d8\u06e7\u06df\u06e4"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const-string v0, "\u06dc\u06dc\u06e6\u06d7\u06e7\u06da\u06dc\u06da\u06da\u06e8\u06d6\u06d8\u06d8\u06e8\u06e6\u06da\u06df\u06d9\u06e1\u06e0\u06db\u06e0\u06d8\u06d8\u06e8\u06d8\u06e6\u06dc\u06d8\u06d8\u06d7\u06da\u06df\u06e8\u06e5\u06e6\u06d7\u06e2\u06e5\u06e0\u06e2\u06e6\u06e1\u06e5\u06d9"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f0801c9

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    const-string v0, "\u06d9\u06eb\u06e7\u06e0\u06d6\u06d9\u06e2\u06dc\u06d6\u06d8\u06ec\u06e7\u06da\u06e2\u06e0\u06e6\u06d8\u06eb\u06e1\u06e1\u06d8\u06d9\u06e1\u06e7\u06d8\u06d9\u06e2\u06e2\u06d8\u06e6\u06e8\u06d6\u06e2"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO0O0;

    invoke-direct {v1, p0, v3}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO0O0;-><init>(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO00o;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;)V

    const-string v0, "\u06e2\u06eb\u06e4\u06eb\u06eb\u06e1\u06ec\u06dc\u06d9\u06e4\u06dc\u06da\u06ec\u06d7\u06ec\u06e8\u06db\u06ec\u06d8\u06e7\u06d8\u06e8\u06eb\u06e8\u06d9\u06e0\u06e8\u06d8\u06dc\u06d7\u06e8\u06d8\u06db\u06d7\u06e6\u06d8\u06db\u06d9\u06d8\u06da\u06e4\u06d6\u06d8\u06e8\u06d6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleSize(I)V

    const-string v0, "\u06d9\u06da\u06e1\u06e6\u06eb\u06e5\u06d8\u06db\u06e5\u06e6\u06d8\u06e8\u06e4\u06eb\u06d8\u06da\u06e5\u06e6\u06d8\u06e2\u06e6\u06df\u06e6\u06e7\u06da\u06db\u06d6\u06d6\u06d8\u06d8\u06e5\u06d9\u06eb\u06e7\u06e2\u06e0\u06df\u06e6\u06db\u06d8\u06da\u06d8\u06e0\u06d7\u06e1\u06e5\u06e0\u06dc\u06d8\u06ec\u06d7\u06e8\u06d8\u06d7\u06e1\u06dc\u06d8\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e6cdaaf -> :sswitch_8
        -0x66d7a7de -> :sswitch_1
        -0x1ce38e81 -> :sswitch_7
        -0x1cc73bc3 -> :sswitch_3
        -0x1a652280 -> :sswitch_6
        -0x15369744 -> :sswitch_5
        0xbbe7034 -> :sswitch_4
        0xe467b20 -> :sswitch_2
        0x144e98bf -> :sswitch_0
    .end sparse-switch
.end method

.method private initView()V
    .locals 5

    const-string v0, "\u06d7\u06df\u06e8\u06d8\u06ec\u06e8\u06e8\u06e4\u06db\u06e1\u06d8\u06e8\u06d7\u06e6\u06d8\u06dc\u06d6\u06e1\u06d8\u06dc\u06e7\u06da\u06e7\u06e8\u06e7\u06e6\u06df\u06dc\u06d8\u06e2\u06d6\u06d8\u06eb\u06db\u06da\u06d9\u06e7\u06e6\u06df\u06e5\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xa5

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x27a

    const/16 v2, 0x259

    const v3, 0x906930

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06e2\u06e4\u06e1\u06e5\u06db\u06d8\u06d7\u06ec\u06e2\u06e4\u06df\u06e7\u06dc\u06e6\u06d8\u06e2\u06eb\u06e7\u06ec\u06e6\u06df\u06df\u06db\u06db\u06e6\u06e0\u06e5\u06e4\u06d7\u06d6\u06d8\u06e6\u06e5\u06d8\u06da\u06e5\u06e5\u06e6\u06d7\u06e1\u06d9\u06e4\u06db"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->OooOOO0()V

    const-string v0, "\u06d7\u06d8\u06e6\u06d7\u06ec\u06dc\u06d9\u06df\u06e2\u06e1\u06e6\u06d8\u06e8\u06e1\u06e2\u06d7\u06d8\u06dc\u06d8\u06e7\u06df\u06e4\u06e0\u06e7\u06e6\u06d8\u06eb\u06e7\u06e6\u06d8\u06db\u06d7"

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->OooOO0o()V

    const-string v0, "\u06d9\u06ec\u06d6\u06d8\u06d8\u06e5\u06dc\u06da\u06e1\u06d8\u06e0\u06ec\u06e5\u06e6\u06ec\u06e6\u06dc\u06db\u06d9\u06e5\u06ec\u06e6\u06d8\u06e2\u06e2\u06e1\u06d8\u06d9\u06e2\u06e0\u06d8\u06eb\u06d8\u06d8\u06d6\u06e8\u06e6\u06e7\u06e1\u06e0"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f090469

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->OooooOO:Landroid/widget/TextView;

    const-string v0, "\u06e0\u06e0\u06d6\u06d8\u06d6\u06e6\u06d8\u06d6\u06d8\u06e1\u06da\u06e5\u06d9\u06d7\u06d6\u06e4\u06da\u06e1\u06d6\u06e4\u06db\u06e1\u06d8\u06eb\u06db\u06e5\u06d8\u06e2\u06e1\u06d9\u06e0\u06d9\u06e2"

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO0OO;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO0OO;-><init>(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$OooO00o;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/File;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->Oooooo0:Lcom/cyjh/elfin/entity/ScriptLog;

    invoke-virtual {v4}, Lcom/cyjh/elfin/entity/ScriptLog;->getFile()Ljava/io/File;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, "\u06e5\u06e2\u06d6\u06d8\u06e7\u06da\u06e4\u06e4\u06d6\u06e5\u06e1\u06dc\u06e5\u06d8\u06df\u06db\u06d7\u06e7\u06eb\u06db\u06e2\u06e7\u06d6\u06d8\u06e1\u06e6\u06e8\u06d8\u06da\u06dc\u06e8\u06d8\u06e6\u06d8\u06d8\u06d8\u06e1\u06e4\u06e7\u06e1\u06eb\u06e6\u06d6\u06dc\u06d7\u06e8\u06e4\u06db\u06d6\u06e0\u06d9\u06d7\u06df\u06dc"

    goto :goto_0

    :sswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3ce1fbac -> :sswitch_2
        -0x3c79e6c8 -> :sswitch_0
        0x3f464823 -> :sswitch_1
        0x584c4fe9 -> :sswitch_4
        0x634baca0 -> :sswitch_5
        0x6ab60646 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06e0\u06e7\u06d6\u06d8\u06e7\u06d8\u06e8\u06d8\u06d6\u06d6\u06e1\u06d8\u06e4\u06e5\u06ec\u06db\u06df\u06d6\u06d8\u06e4\u06d9\u06e6\u06d8\u06e8\u06e8\u06ec\u06e7\u06db\u06eb\u06df\u06eb\u06d9\u06e1\u06e4\u06e7\u06eb\u06db\u06e1\u06d8\u06e8\u06da\u06dc\u06d8\u06e2\u06d8\u06d9\u06d7\u06db\u06e4\u06e1\u06ec\u06d8\u06d8\u06e1\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3d0

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x72

    const/16 v2, 0x2e7

    const v3, -0x15aef6ee

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06d9\u06e6\u06d8\u06e5\u06d7\u06d6\u06dc\u06dc\u06e5\u06d8\u06e1\u06e8\u06da\u06ec\u06e4\u06df\u06d8\u06e1\u06dc\u06d8\u06da\u06e8\u06e5\u06d8\u06d7\u06d8\u06e0\u06e4\u06e6\u06ec\u06e4\u06df\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06e7\u06dc\u06dc\u06d9\u06e5\u06d8\u06d9\u06da\u06db\u06d7\u06e8\u06e5\u06d8\u06e1\u06d9\u06d8\u06d8\u06e6\u06eb\u06d6\u06d8\u06e1\u06db\u06e1\u06e2\u06df\u06e4\u06db\u06df\u06d9\u06e1\u06dc\u06e7\u06dc\u06e0\u06e8\u06e8\u06df\u06e5\u06d8\u06e8\u06db\u06e0\u06e0\u06da\u06e5"

    goto :goto_0

    :sswitch_2
    const v1, -0x11e3e859

    const-string v0, "\u06d7\u06e5\u06e6\u06d8\u06db\u06ec\u06d9\u06e6\u06d7\u06d9\u06e6\u06dc\u06da\u06d6\u06d8\u06e2\u06e0\u06e4\u06e8\u06df\u06d8\u06d9\u06df\u06dc\u06ec\u06e6\u06df\u06e6\u06dc\u06e6\u06eb\u06d6\u06d6\u06db\u06e6\u06e7\u06dc\u06d8\u06e2\u06e0\u06e8\u06dc\u06df\u06d7\u06df\u06e5\u06d6\u06e2\u06e4\u06e5\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06e4\u06db\u06d7\u06e1\u06d9\u06dc\u06e1\u06d8\u06db\u06e1\u06e5\u06dc\u06d8\u06d9\u06e5\u06e1\u06d8\u06eb\u06d8\u06db\u06e4\u06da\u06e8\u06ec\u06e6\u06e1\u06d9\u06eb\u06e8\u06d8\u06da\u06e4\u06e2\u06e2\u06dc\u06db\u06e0\u06e7\u06e7\u06df\u06d8\u06e6\u06e8\u06e2\u06d6\u06d8\u06d8\u06dc\u06d6\u06d8\u06eb\u06e4\u06e2\u06e8\u06e7\u06db\u06d7\u06d6\u06db"

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06e2\u06e2\u06e2\u06e6\u06dc\u06d7\u06da\u06d9\u06df\u06db\u06df\u06e8\u06d8\u06e5\u06eb\u06db\u06d6\u06e5\u06e0\u06e4\u06d9\u06d8\u06d8\u06e4\u06d9\u06e6\u06d8\u06e2\u06e4\u06eb\u06ec\u06e1\u06db\u06da\u06e6\u06e7\u06e0\u06d9\u06e5\u06ec\u06db\u06e8\u06d8\u06d9\u06e7\u06dc\u06d8"

    goto :goto_1

    :sswitch_5
    const v2, -0x4a82ab27

    const-string v0, "\u06db\u06e7\u06e6\u06e2\u06e8\u06e7\u06ec\u06dc\u06eb\u06e2\u06e2\u06df\u06e5\u06e1\u06e1\u06d8\u06db\u06dc\u06e5\u06d8\u06e0\u06d7\u06e5\u06d8\u06e6\u06d7\u06e7\u06db\u06e2\u06ec\u06db\u06df\u06da\u06eb\u06d6\u06d9\u06eb\u06e8\u06e7\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e5\u06dc\u06e7\u06d8\u06da\u06e2\u06e8\u06ec\u06df\u06dc\u06e2\u06e8\u06e6\u06dc\u06e5\u06d8\u06eb\u06ec\u06e2\u06e4\u06d6\u06eb\u06ec\u06db\u06d8\u06d8\u06e1\u06df\u06e1\u06d8\u06e6\u06ec\u06e2\u06df\u06da\u06e8\u06e0\u06e2\u06e1\u06e8\u06da\u06e4\u06e5\u06db\u06e4\u06da\u06e8\u06e6\u06e2\u06d9"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e5\u06db\u06e6\u06d8\u06dc\u06d6\u06e7\u06d8\u06e8\u06e1\u06e5\u06d8\u06e0\u06e0\u06e2\u06e1\u06e6\u06df\u06e7\u06e6\u06e2\u06e5\u06d9\u06e6\u06d6\u06e2\u06d8\u06e2\u06d9\u06e1\u06d8\u06d9\u06d8\u06e1\u06d8"

    goto :goto_2

    :sswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f090239

    if-eq v0, v3, :cond_0

    const-string v0, "\u06ec\u06ec\u06d7\u06e5\u06da\u06e4\u06db\u06eb\u06d8\u06d8\u06db\u06ec\u06d6\u06ec\u06df\u06d6\u06e5\u06da\u06e7\u06e6\u06e2\u06d7\u06e1\u06e0\u06e1\u06d8\u06e4\u06d8\u06d6\u06e6\u06e0\u06e5\u06d8\u06e8\u06e6\u06d8\u06e2\u06d6\u06e8\u06d8\u06db\u06d7\u06d6\u06d8\u06db\u06eb\u06d8\u06d8\u06db\u06eb\u06e5\u06d8\u06d6\u06dc\u06e2"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06da\u06d9\u06e5\u06d8\u06e0\u06d8\u06e6\u06e7\u06d7\u06da\u06e5\u06e2\u06e1\u06d8\u06e6\u06d7\u06e7\u06ec\u06e2\u06e6\u06d8\u06e0\u06d9\u06e5\u06d6\u06d8\u06d8\u06e2\u06e1\u06e5\u06d8\u06e4\u06d8\u06e7\u06d8\u06e4\u06dc\u06e7\u06d8\u06e4\u06d8\u06d8\u06e6\u06e1\u06da\u06e8\u06d9\u06d6\u06d8\u06e6\u06e8\u06e2\u06ec\u06e8\u06e0\u06d8\u06d7\u06e7\u06d6\u06da\u06d9"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e0\u06ec\u06dc\u06d8\u06e4\u06e5\u06e6\u06e6\u06e5\u06dc\u06e2\u06e5\u06e6\u06d8\u06db\u06e4\u06dc\u06e1\u06d7\u06e4\u06e6\u06d8\u06e5\u06e4\u06e6\u06d8\u06d6\u06da\u06e8\u06d8\u06db\u06e1\u06d6\u06df\u06e8\u06d8\u06dc\u06e1\u06e8"

    goto :goto_0

    :sswitch_a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "\u06ec\u06e6\u06e6\u06d8\u06d9\u06d7\u06e8\u06ec\u06e2\u06e5\u06d8\u06e8\u06d6\u06eb\u06d6\u06d8\u06e0\u06db\u06dc\u06e8\u06d8\u06e0\u06eb\u06d9\u06e1\u06d8\u06e8\u06d8\u06e2\u06eb\u06e2\u06e1\u06d7\u06d8\u06d8\u06e2\u06e7\u06ec\u06d9\u06e4"

    goto :goto_0

    :sswitch_b
    const-string v0, "\u06e7\u06e2\u06d9\u06d7\u06e1\u06e7\u06dc\u06e1\u06e0\u06d7\u06d6\u06d7\u06d6\u06e5\u06e6\u06e8\u06d6\u06d8\u06d8\u06d6\u06ec\u06e2\u06e6\u06d8\u06d8\u06e7\u06e5\u06e4\u06e4\u06e1\u06e1\u06d8\u06e1\u06e1\u06ec\u06d6\u06d6\u06e0\u06e8\u06da\u06df\u06e2\u06ec\u06d7\u06e2\u06d7\u06e8\u06d8\u06eb\u06e1\u06db"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06ec\u06e6\u06e6\u06d8\u06d9\u06d7\u06e8\u06ec\u06e2\u06e5\u06d8\u06e8\u06d6\u06eb\u06d6\u06d8\u06e0\u06db\u06dc\u06e8\u06d8\u06e0\u06eb\u06d9\u06e1\u06d8\u06e8\u06d8\u06e2\u06eb\u06e2\u06e1\u06d7\u06d8\u06d8\u06e2\u06e7\u06ec\u06d9\u06e4"

    goto :goto_0

    :sswitch_d
    return-void

    :sswitch_data_0
    .sparse-switch
        0xf919d62 -> :sswitch_a
        0x16a0e6a8 -> :sswitch_2
        0x341ec2b8 -> :sswitch_1
        0x5786f908 -> :sswitch_d
        0x722d4766 -> :sswitch_0
        0x7ce9feea -> :sswitch_c
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x70a08e7e -> :sswitch_3
        -0x5a00dcf8 -> :sswitch_9
        -0x56eca577 -> :sswitch_5
        -0x43446a1d -> :sswitch_b
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6ea245b8 -> :sswitch_7
        -0x104a12e8 -> :sswitch_8
        0xd266473 -> :sswitch_4
        0x2e8766ce -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "\u06e6\u06e5\u06ec\u06e2\u06e4\u06e5\u06d9\u06d6\u06e2\u06da\u06d7\u06da\u06ec\u06eb\u06e4\u06e1\u06da\u06eb\u06e7\u06e1\u06ec\u06e5\u06dc\u06eb\u06e7\u06e8\u06ec\u06e2\u06d8\u06e7\u06d8\u06e7\u06d8\u06e6\u06d8\u06e7\u06d7\u06d6\u06d7\u06e0\u06e5\u06d8\u06e0\u06d6\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x11

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3a9

    const/16 v2, 0x273

    const v3, -0x33c270d1    # -4.9691836E7f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06d9\u06d8\u06e8\u06e1\u06dc\u06d8\u06e4\u06eb\u06dc\u06ec\u06e2\u06d6\u06d9\u06d7\u06e1\u06db\u06e2\u06e8\u06e5\u06df\u06d8\u06d8\u06e1\u06d9\u06ec\u06d9\u06d9\u06da\u06db\u06dc\u06d9\u06ec\u06ec\u06e7\u06d9\u06e2\u06d8\u06eb\u06e2\u06d8\u06d8\u06dc\u06e6\u06e6\u06e0\u06df\u06dc\u06d8\u06d9\u06eb\u06da\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d7\u06e4\u06eb\u06e8\u06dc\u06d8\u06db\u06e8\u06ec\u06d7\u06e0\u06d6\u06d8\u06ec\u06d8\u06d9\u06d9\u06ec\u06d6\u06d8\u06e5\u06e6\u06db\u06d7\u06db\u06dc\u06e8\u06e0\u06e0\u06d9\u06dc\u06e0"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "\u06dc\u06d7\u06d8\u06d6\u06e7\u06e8\u06e2\u06e7\u06e8\u06da\u06d9\u06d6\u06d8\u06e7\u06db\u06dc\u06d9\u06eb\u06e1\u06e6\u06e0\u06e7\u06d9\u06eb\u06ec\u06e2\u06e5\u06e7\u06e0\u06ec\u06e5\u06e1\u06db\u06ec\u06ec\u06e4"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const-string v0, "\u06e8\u06d7\u06dc\u06e5\u06d8\u06e4\u06e5\u06d8\u06e8\u06d8\u06d6\u06d7\u06db\u06d7\u06d6\u06d9\u06e8\u06e7\u06da\u06db\u06e0\u06d6\u06e1\u06e4\u06df\u06e0\u06e2\u06e7\u06e8\u06d8\u06d6\u06e5\u06e7\u06d8\u06d7\u06dc\u06dc\u06eb\u06e6\u06e4\u06e1\u06e5\u06e1\u06e8\u06d7\u06e2\u06d6\u06eb\u06db"

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->OooOO0O()V

    const-string v0, "\u06d7\u06e2\u06ec\u06e5\u06eb\u06e4\u06e1\u06db\u06d6\u06e2\u06da\u06dc\u06df\u06df\u06dc\u06d8\u06db\u06e8\u06dc\u06d8\u06eb\u06e4\u06dc\u06d8\u06ec\u06e7\u06df\u06e8\u06eb\u06e1\u06d7\u06e5\u06d9\u06df\u06db\u06d6\u06d8\u06d9\u06d7\u06e8\u06d8"

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->initView()V

    const-string v0, "\u06ec\u06da\u06e8\u06e1\u06e5\u06d8\u06d6\u06e5\u06e7\u06dc\u06db\u06d9\u06e5\u06eb\u06dc\u06e4\u06eb\u06d8\u06e0\u06e8\u06d8\u06e6\u06e1\u06d7\u06d8\u06e8\u06e6\u06d8\u06d9\u06da\u06d8\u06db\u06e7\u06e6\u06d8\u06dc\u06d8\u06d6\u06d8\u06e8\u06e7\u06e6\u06e8\u06ec\u06e1\u06e1\u06d7\u06dc\u06dc\u06e0\u06d8\u06e7\u06ec\u06dc\u06d8\u06e7\u06e7\u06e5"

    goto :goto_0

    :sswitch_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6078394a -> :sswitch_6
        -0x58522090 -> :sswitch_1
        0x8bdadec -> :sswitch_4
        0x2861c3c5 -> :sswitch_0
        0x4ae8909a -> :sswitch_5
        0x501eca73 -> :sswitch_3
        0x6c664d95 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    const-string v0, "\u06e8\u06dc\u06e0\u06e8\u06eb\u06e7\u06ec\u06e5\u06e5\u06eb\u06d7\u06e8\u06d8\u06db\u06e8\u06e5\u06e0\u06e0\u06d6\u06db\u06e5\u06df\u06d8\u06d8\u06df\u06e1\u06d8\u06e6\u06e8\u06e7\u06d8\u06e5\u06e1\u06e6\u06d8\u06e1\u06ec\u06e8\u06d8\u06dc\u06eb\u06e5\u06e7\u06db\u06e5\u06e1\u06e1\u06d8\u06d6\u06df\u06e5\u06dc\u06e6\u06dc\u06d8\u06e5\u06eb\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3ac

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x160

    const/16 v2, 0x226

    const v3, 0xf799d1f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06dc\u06e7\u06e1\u06e8\u06e1\u06e0\u06e5\u06e6\u06d8\u06e6\u06e4\u06e8\u06d6\u06e6\u06d9\u06e1\u06e8\u06e6\u06ec\u06e2\u06e7\u06dc\u06e4\u06e2\u06d9\u06e2\u06ec\u06e7\u06d8\u06e6\u06e6\u06d6\u06d8\u06d8\u06e1\u06e5\u06e8\u06d8\u06e0\u06e7\u06e1\u06d8\u06e1\u06e6\u06d6\u06d8\u06e1\u06e0\u06da\u06da\u06d6\u06d8\u06e4\u06e8\u06dc\u06d8\u06d8\u06df\u06d9"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const-string v0, "\u06d6\u06e5\u06e2\u06e7\u06df\u06e1\u06d8\u06d6\u06e1\u06e1\u06e1\u06e5\u06e2\u06d9\u06db\u06e0\u06d7\u06ec\u06e2\u06db\u06d8\u06d8\u06e0\u06e0\u06e8\u06da\u06e1\u06d8\u06eb\u06eb\u06da\u06da\u06e7\u06ec\u06eb\u06ec\u06eb\u06da\u06df\u06d6\u06e0\u06e2\u06e1\u06d8"

    goto :goto_0

    :sswitch_2
    const-class v0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/bh;->OooO0OO(Ljava/lang/String;)V

    const-string v0, "\u06e4\u06db\u06dc\u06d8\u06db\u06eb\u06e2\u06d7\u06d6\u06eb\u06db\u06d9\u06e1\u06e6\u06df\u06e6\u06e4\u06e6\u06ec\u06d7\u06d8\u06d8\u06e0\u06db\u06d6\u06d8\u06d7\u06dc\u06e2\u06db\u06eb\u06e0\u06e7\u06e5\u06e4\u06ec\u06e4\u06db\u06da\u06e0\u06df\u06d7\u06ec\u06d9\u06db\u06e0\u06e0\u06e0\u06e2\u06d7"

    goto :goto_0

    :sswitch_3
    invoke-static {p0}, Lz2/bh;->OooO0o0(Landroid/content/Context;)V

    const-string v0, "\u06d8\u06e1\u06d8\u06da\u06da\u06e8\u06d8\u06e0\u06e1\u06e6\u06dc\u06e2\u06e5\u06df\u06e6\u06d6\u06eb\u06d6\u06e2\u06e6\u06ec\u06d8\u06d8\u06eb\u06d8\u06d8\u06df\u06d6\u06eb\u06ec\u06e2\u06da"

    goto :goto_0

    :sswitch_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a04bf46 -> :sswitch_1
        -0x735b22fb -> :sswitch_2
        -0x4caeb15f -> :sswitch_4
        0x1126edc3 -> :sswitch_3
        0x1d4ed9fb -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 4

    const-string v0, "\u06e4\u06db\u06e5\u06d8\u06da\u06da\u06e7\u06eb\u06e7\u06d8\u06d8\u06e5\u06ec\u06e6\u06e0\u06e2\u06df\u06e2\u06e8\u06d6\u06d8\u06db\u06e7\u06eb\u06dc\u06df\u06dc\u06df\u06dc\u06e7\u06d8\u06d6\u06e4\u06d7\u06eb\u06e7\u06ec\u06db\u06ec\u06db\u06e7\u06e4\u06e4\u06e6\u06e5\u06dc\u06d8\u06e1\u06d8\u06e8\u06d8\u06e4\u06e7\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1f

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x175

    const/16 v2, 0x2da

    const v3, 0x7f4602c7

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06df\u06e5\u06d8\u06e6\u06e5\u06d8\u06dc\u06e6\u06d8\u06d7\u06da\u06e0\u06dc\u06e0\u06e0\u06d7\u06e8\u06e4\u06ec\u06e1\u06e1\u06d8\u06da\u06d9\u06dc\u06e2\u06e5\u06ec\u06e4\u06df\u06d6\u06dc\u06e8\u06e7\u06d8\u06df\u06d7\u06e4\u06dc"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "\u06dc\u06dc\u06e1\u06d8\u06d8\u06e0\u06eb\u06e4\u06e8\u06e8\u06e5\u06e4\u06d9\u06da\u06ec\u06e2\u06d9\u06e4\u06e1\u06e7\u06db\u06da\u06e4\u06eb\u06e1\u06d8\u06e6\u06e7\u06d7\u06e7\u06d8\u06d6\u06e8\u06e8\u06e7\u06e8\u06d9\u06ec"

    goto :goto_0

    :sswitch_2
    const-class v0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/bh;->OooO0Oo(Ljava/lang/String;)V

    const-string v0, "\u06d7\u06dc\u06df\u06d7\u06dc\u06df\u06e7\u06df\u06d9\u06e6\u06e1\u06e0\u06d9\u06da\u06d8\u06d9\u06e6\u06e5\u06d8\u06df\u06d8\u06e1\u06df\u06dc\u06e0\u06e1\u06d7\u06dc\u06d8\u06e6\u06ec\u06d8\u06e2\u06dc\u06d8\u06d8\u06db\u06da\u06e1\u06d8\u06e1\u06da\u06e7\u06dc\u06d8\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    invoke-static {p0}, Lz2/bh;->OooO0o(Landroid/content/Context;)V

    const-string v0, "\u06e8\u06e8\u06e7\u06d8\u06dc\u06d8\u06e8\u06e8\u06dc\u06d8\u06e7\u06e4\u06d6\u06eb\u06d9\u06e1\u06e8\u06d7\u06eb\u06d9\u06d8\u06d8\u06e8\u06ec\u06d9\u06d8\u06d6\u06e1\u06d8\u06d8\u06eb\u06e6"

    goto :goto_0

    :sswitch_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x291c2f62 -> :sswitch_4
        -0x1f0c5658 -> :sswitch_1
        0xb9fb685 -> :sswitch_0
        0x212bfaed -> :sswitch_3
        0x57796ac8 -> :sswitch_2
    .end sparse-switch
.end method
