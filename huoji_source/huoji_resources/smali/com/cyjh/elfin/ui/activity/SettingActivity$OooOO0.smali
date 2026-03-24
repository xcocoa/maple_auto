.class public Lcom/cyjh/elfin/ui/activity/SettingActivity$OooOO0;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooOO0"
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/SettingActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooOO0;->OooO00o:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;JJLcom/cyjh/elfin/ui/activity/SettingActivity$OooO00o;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooOO0;-><init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    const-string v0, "\u06d9\u06ec\u06e4\u06db\u06e0\u06e0\u06d8\u06eb\u06e2\u06d8\u06d6\u06e2\u06ec\u06e6\u06e6\u06d6\u06e6\u06d8\u06d6\u06ec\u06e8\u06dc\u06dc\u06db\u06e2\u06d9\u06eb\u06e5\u06ec\u06e5\u06e0\u06eb\u06d8\u06db\u06e7\u06e8\u06d8\u06e6\u06d9\u06e1\u06e0\u06e2\u06df\u06e8\u06e2\u06e1\u06d7\u06d9\u06e1\u06dc\u06e4\u06e7\u06ec\u06e0\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x164

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x22

    const/16 v2, 0x70

    const v3, -0x1bf3ea72

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06d7\u06dc\u06d8\u06df\u06d9\u06d8\u06d8\u06e8\u06db\u06dc\u06d8\u06d8\u06ec\u06e7\u06e2\u06d6\u06d7\u06d9\u06df\u06d8\u06e7\u06db\u06e8\u06d8\u06ec\u06db\u06d6\u06d8\u06df\u06d9\u06e5\u06d6\u06dc\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    const v1, -0x35c17b44    # -3121455.0f

    const-string v0, "\u06e7\u06da\u06d8\u06d8\u06db\u06ec\u06e5\u06d8\u06d9\u06df\u06d6\u06d8\u06dc\u06e0\u06e1\u06d8\u06d9\u06df\u06e1\u06d8\u06e8\u06d6\u06e4\u06df\u06d6\u06d6\u06d8\u06d7\u06da\u06dc\u06d8\u06db\u06e2\u06e6\u06d8\u06da\u06e5\u06e5\u06d9\u06d7\u06dc\u06d8\u06e5\u06e7\u06db"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const-string v0, "\u06d9\u06e1\u06e6\u06ec\u06d8\u06d6\u06e4\u06d8\u06e4\u06d7\u06d8\u06df\u06e2\u06e2\u06e8\u06e0\u06e8\u06e8\u06d8\u06e5\u06e4\u06e5\u06d8\u06d8\u06eb\u06e6\u06e1\u06d7\u06d6\u06d8\u06e4\u06da\u06e1\u06d8\u06e1\u06e7\u06e5\u06ec\u06eb\u06e5\u06d8\u06ec\u06e1\u06d8\u06e2\u06d9\u06e5\u06d8"

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06e6\u06e6\u06d9\u06d8\u06e2\u06e1\u06da\u06df\u06e0\u06d6\u06da\u06e1\u06d8\u06da\u06e4\u06db\u06e5\u06ec\u06d8\u06d9\u06d7\u06d8\u06d8\u06ec\u06df\u06df\u06e5\u06e1\u06d6\u06d8\u06da\u06da\u06e6\u06e1\u06e7\u06dc\u06d8\u06eb\u06ec\u06e6\u06d7\u06da\u06e2\u06da\u06d7\u06e7\u06dc\u06d8\u06e2\u06eb\u06e0\u06da\u06d7\u06e1\u06ec\u06ec\u06e7"

    goto :goto_1

    :sswitch_4
    const v2, 0x4735ca96

    const-string v0, "\u06e5\u06ec\u06e8\u06d8\u06e7\u06e7\u06ec\u06d9\u06ec\u06ec\u06ec\u06d6\u06e6\u06eb\u06d7\u06e8\u06e6\u06d9\u06e0\u06eb\u06eb\u06e8\u06d7\u06d9\u06d8\u06d8\u06e5\u06d7\u06d9\u06d6\u06e7\u06d9\u06e8\u06d7\u06e8\u06eb\u06db\u06e1\u06d8\u06d8\u06e5\u06e2\u06dc\u06da\u06d6\u06e2\u06e2\u06e0\u06d7\u06e8\u06e6"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooOO0;->OooO00o:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OooO0oo(Lcom/cyjh/elfin/ui/activity/SettingActivity;)Lz2/jb;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06e2\u06e7\u06e5\u06eb\u06e7\u06e6\u06d8\u06e8\u06e5\u06db\u06e4\u06e5\u06d8\u06d6\u06eb\u06dc\u06d8\u06e4\u06e5\u06e0\u06e6\u06e2\u06d8\u06d8\u06dc\u06e2\u06d8\u06e4\u06e6\u06ec\u06e6\u06db\u06d6\u06dc\u06d9\u06e1\u06d6\u06dc\u06e0\u06df\u06d7\u06e2\u06d9\u06d8\u06e5\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06d8\u06db\u06d6\u06d8\u06e8\u06e8\u06e8\u06d8\u06e6\u06d6\u06e0\u06e5\u06dc\u06e1\u06d8\u06d9\u06e2\u06e6\u06d8\u06da\u06d6\u06eb\u06e0\u06e5\u06da\u06e5\u06eb\u06e1\u06d8\u06e2\u06e7\u06ec\u06e6\u06e2\u06d8\u06e6\u06d8\u06e7\u06ec\u06e7\u06df\u06ec\u06e8\u06e7\u06e0\u06df\u06ec\u06ec\u06e5\u06db\u06e2\u06e0\u06df\u06eb\u06e5\u06d8\u06da\u06d8\u06d6"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e7\u06db\u06e1\u06d8\u06df\u06e4\u06e7\u06ec\u06eb\u06e2\u06db\u06dc\u06e1\u06d8\u06db\u06e2\u06d6\u06d8\u06e7\u06dc\u06e1\u06df\u06e5\u06df\u06d9\u06e1\u06d8\u06d8\u06d8\u06d6\u06e6\u06d7\u06e2\u06d6\u06eb\u06e0\u06e8\u06e5\u06e8\u06e8\u06eb\u06e6\u06e6\u06eb\u06da\u06e0"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06d6\u06d6\u06d6\u06e6\u06e5\u06e6\u06d8\u06d8\u06e1\u06eb\u06ec\u06e6\u06e6\u06d8\u06da\u06e2\u06e8\u06d8\u06da\u06d6\u06eb\u06e2\u06d8\u06df\u06db\u06e7\u06e6\u06d7\u06d6\u06e1\u06d8\u06dc\u06db\u06e8\u06d6\u06e1\u06d7\u06d8\u06e8\u06e8\u06d8\u06eb\u06e1\u06df\u06e2\u06e7\u06d8\u06e0\u06d9\u06d6\u06e1\u06ec"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06e2\u06ec\u06e6\u06e4\u06d9\u06dc\u06d8\u06e6\u06e4\u06dc\u06d8\u06d7\u06e0\u06e5\u06d8\u06ec\u06e4\u06ec\u06ec\u06e5\u06e6\u06e1\u06e7\u06e4\u06d7\u06e4\u06e5\u06e8\u06e0\u06e6\u06d8\u06d7\u06e6\u06ec\u06e1\u06e4\u06d8\u06d8\u06ec\u06e7\u06df\u06e8\u06e0\u06e1\u06d8\u06e0\u06e6\u06e8\u06e4\u06e1\u06d6\u06d9\u06d6\u06d9\u06d8\u06e1\u06df\u06db\u06df"

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooOO0;->OooO00o:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->OooO0oo(Lcom/cyjh/elfin/ui/activity/SettingActivity;)Lz2/jb;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "\u06e8\u06e4\u06dc\u06da\u06d6\u06d8\u06e5\u06e1\u06dc\u06e5\u06e4\u06e4\u06e8\u06dc\u06df\u06ec\u06e7\u06e6\u06e6\u06d9\u06eb\u06e6\u06e8\u06d8\u06d8\u06dc\u06d8\u06e0\u06d9\u06eb\u06e7\u06d8\u06d8\u06ec\u06e1\u06d7"

    goto :goto_0

    :sswitch_a
    const-string v0, "\u06e8\u06e4\u06dc\u06da\u06d6\u06d8\u06e5\u06e1\u06dc\u06e5\u06e4\u06e4\u06e8\u06dc\u06df\u06ec\u06e7\u06e6\u06e6\u06d9\u06eb\u06e6\u06e8\u06d8\u06d8\u06dc\u06d8\u06e0\u06d9\u06eb\u06e7\u06d8\u06d8\u06ec\u06e1\u06d7"

    goto :goto_0

    :sswitch_b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4690a87d -> :sswitch_1
        -0x45aa8590 -> :sswitch_9
        -0x20178853 -> :sswitch_0
        0x6614c920 -> :sswitch_b
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x48f47240 -> :sswitch_8
        0xa1ff649 -> :sswitch_4
        0x28995818 -> :sswitch_2
        0x728750fe -> :sswitch_a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x73e80595 -> :sswitch_7
        -0x6917f76a -> :sswitch_6
        -0x29f589a0 -> :sswitch_5
        -0x1c2a70d0 -> :sswitch_3
    .end sparse-switch
.end method

.method public onTick(J)V
    .locals 4

    const-string v0, "\u06eb\u06e2\u06e7\u06e5\u06da\u06e2\u06ec\u06e4\u06e5\u06da\u06d8\u06d6\u06d8\u06e5\u06dc\u06e8\u06d8\u06db\u06e5\u06da\u06e6\u06eb\u06da\u06e0\u06db\u06e8\u06d8\u06d9\u06d9\u06e5\u06eb\u06db\u06e1\u06df\u06e0\u06e8\u06d8\u06e5\u06e0\u06da\u06d7\u06e5\u06d9\u06dc\u06d9\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x118

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x34d

    const/16 v2, 0x10e

    const v3, 0x6592176

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06d9\u06d7\u06d6\u06df\u06e1\u06dc\u06e1\u06d8\u06d6\u06e7\u06eb\u06e2\u06e8\u06e8\u06e0\u06e2\u06e7\u06df\u06e8\u06e6\u06d9\u06e7\u06db\u06d8\u06e0\u06e6\u06df\u06eb\u06e1\u06d8\u06e6\u06dc\u06ec\u06e1\u06e2\u06df"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06eb\u06df\u06e1\u06ec\u06d7\u06db\u06e8\u06e8\u06eb\u06df\u06df\u06d6\u06df\u06da\u06dc\u06ec\u06e4\u06e1\u06e4\u06e2\u06e0\u06d8\u06db\u06da\u06df\u06d6\u06e2\u06da\u06e2\u06e5\u06e7\u06d7\u06d8\u06eb\u06eb\u06e5\u06e7\u06ec\u06d8\u06e5\u06d8\u06d8\u06e0\u06e5\u06e0\u06e8\u06e0\u06e0"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72984720 -> :sswitch_0
        -0x4684bc23 -> :sswitch_1
        0x22ab5716 -> :sswitch_2
    .end sparse-switch
.end method
