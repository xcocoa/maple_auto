.class public Lcom/cyjh/elfin/services/KeepMainService;
.super Landroid/app/Service;


# static fields
.field private static final OoooOoO:I = 0xbb8

.field public static final OoooOoo:Ljava/lang/String; = "script_main_key"

.field public static final Ooooo00:I = 0x1

.field public static final Ooooo0o:I = 0x2

.field public static final OooooO0:I = 0x64

.field public static final OooooOO:I = 0x65

.field public static final OooooOo:Ljava/lang/String; = "main_script_hot_update_notify_bundle"

.field public static final Oooooo:Ljava/lang/String; = "script_main_key_sec_value"

.field public static final Oooooo0:Ljava/lang/String; = "script_main_key_encrypt_value"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private OooO0O0(Landroid/content/Intent;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06da\u06d9\u06e1\u06d8\u06e8\u06db\u06e5\u06d8\u06e5\u06db\u06dc\u06d8\u06ec\u06e5\u06dc\u06da\u06d9\u06e2\u06e6\u06df\u06d8\u06d8\u06e6\u06df\u06d9\u06da\u06e4\u06e8\u06db\u06e4\u06d6\u06d8\u06d6\u06eb\u06e6\u06e4\u06d6\u06d9\u06e7\u06e7\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x1ab

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x9e

    const/16 v3, 0x67

    const v4, -0x408c45ca

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06d7\u06e0\u06eb\u06db\u06e8\u06ec\u06dc\u06e8\u06e1\u06db\u06df\u06e7\u06da\u06df\u06e5\u06e6\u06e8\u06db\u06e8\u06d8\u06e7\u06d6\u06e6\u06dc\u06eb\u06d8\u06e8\u06e6\u06ec\u06e2\u06d7\u06dc\u06d8\u06d7\u06da\u06d8\u06e8\u06db\u06db\u06dc\u06d9\u06d6\u06d8\u06e1\u06e1\u06e6\u06e1\u06d9\u06e8\u06e8\u06e4\u06e5\u06d8\u06e8\u06dc\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e8\u06da\u06d8\u06d8\u06da\u06da\u06e6\u06d8\u06e2\u06e2\u06d8\u06e1\u06e2\u06d8\u06e7\u06e8\u06d8\u06d9\u06e4\u06dc\u06e4\u06dc\u06dc\u06d6\u06da\u06e5\u06e5\u06e7\u06dc\u06d8\u06e8\u06e6\u06e7\u06d8\u06d6\u06e2\u06df\u06e1\u06e0\u06e4\u06e7\u06df\u06ec\u06eb\u06ec\u06e7\u06da\u06da\u06e7\u06ec\u06e1\u06da\u06db\u06e8\u06dc\u06db\u06d6\u06d8"

    goto :goto_0

    :sswitch_2
    const-string v0, "main_script_hot_update_notify_bundle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "\u06e4\u06e2\u06e4\u06e7\u06e1\u06e5\u06d8\u06e2\u06db\u06e2\u06e1\u06df\u06d6\u06d8\u06e8\u06e8\u06d6\u06d9\u06eb\u06eb\u06e4\u06ec\u06e0\u06eb\u06e4\u06ec\u06e4\u06ec\u06d9\u06e7\u06e0\u06e8\u06d8\u06eb\u06db\u06d6\u06e6\u06d7\u06e6\u06da\u06d8\u06db\u06e2\u06e0\u06e5\u06d8\u06e6\u06e7\u06df\u06d7\u06e0\u06d7\u06e6\u06eb\u06eb\u06e2\u06db\u06e5\u06d8"

    goto :goto_0

    :sswitch_3
    const v2, 0x36aa01b0

    const-string v0, "\u06db\u06e2\u06e7\u06d7\u06d9\u06dc\u06e6\u06df\u06dc\u06d8\u06e6\u06e0\u06d8\u06d8\u06e0\u06e0\u06e0\u06d8\u06e4\u06ec\u06e7\u06e0\u06e5\u06d8\u06dc\u06e8\u06d8\u06d6\u06da\u06d6\u06d8\u06eb\u06e1\u06ec\u06e2\u06d8\u06dc\u06d9\u06db\u06e5\u06eb\u06eb\u06dc\u06dc\u06d6\u06ec\u06d7\u06e2\u06e0\u06d9\u06da\u06e4\u06e0\u06e2\u06ec\u06e7\u06e1\u06e8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const v3, -0x545d6a14

    const-string v0, "\u06df\u06d8\u06e4\u06d7\u06dc\u06ec\u06dc\u06e7\u06d8\u06db\u06e2\u06d9\u06e8\u06d6\u06e2\u06da\u06eb\u06db\u06df\u06e4\u06d6\u06da\u06db\u06d9\u06db\u06dc\u06db\u06d6\u06df\u06da"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    if-eqz v1, :cond_0

    const-string v0, "\u06dc\u06d9\u06da\u06e2\u06dc\u06df\u06e7\u06e8\u06d8\u06d8\u06e5\u06d7\u06e1\u06d8\u06db\u06e6\u06e5\u06e4\u06e0\u06d7\u06dc\u06e8\u06e7\u06e7\u06d8\u06e7\u06ec\u06e4\u06da\u06e7\u06e0\u06e8\u06d6\u06df\u06d8\u06d8\u06d8\u06db\u06e1\u06d8\u06e1\u06e1\u06e7\u06db\u06d8\u06d6\u06d8"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06d6\u06d9\u06e1\u06d8\u06e1\u06e4\u06d9\u06df\u06e1\u06d7\u06e1\u06d6\u06e5\u06d8\u06dc\u06ec\u06d9\u06db\u06e0\u06e1\u06e6\u06eb\u06dc\u06eb\u06e1\u06e6\u06da\u06eb\u06e8\u06d8\u06d9\u06d9\u06e2\u06d8\u06da\u06d8\u06d8\u06df\u06e8\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06eb\u06d8\u06d8\u06e7\u06e6\u06e4\u06e4\u06db\u06d9\u06da\u06ec\u06d8\u06d8\u06e1\u06e0\u06e8\u06d8\u06d8\u06d8\u06e1\u06e5\u06eb\u06db\u06db\u06eb\u06d6\u06d6\u06dc\u06da\u06e6\u06db\u06e7\u06df\u06dc\u06e7\u06dc\u06d7\u06e8\u06d8\u06dc\u06dc\u06e5\u06d8\u06e1\u06ec\u06d7"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06d8\u06eb\u06d9\u06e7\u06e2\u06eb\u06d8\u06d8\u06e2\u06e0\u06da\u06db\u06e7\u06dc\u06d9\u06ec\u06d6\u06d6\u06d8\u06d6\u06db\u06d6\u06eb\u06e0\u06e8\u06e4\u06e7\u06e0\u06da\u06da\u06d6\u06d8\u06da\u06dc\u06e6\u06d8\u06d9\u06e2\u06e8\u06d8\u06e5\u06e0\u06e5\u06db\u06dc\u06e1\u06e2\u06d8\u06ec\u06e4\u06e5\u06dc"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d9\u06dc\u06d7\u06d7\u06eb\u06dc\u06d8\u06ec\u06da\u06d6\u06d8\u06e5\u06e6\u06e1\u06d8\u06e0\u06d7\u06df\u06d7\u06e8\u06dc\u06d8\u06e5\u06ec\u06d6\u06e1\u06eb\u06e6\u06df\u06ec\u06e5\u06d8\u06da\u06e6\u06e7\u06d8\u06e1\u06d8\u06d8\u06d8\u06dc\u06ec\u06d7\u06e2\u06eb\u06da\u06e1\u06e6\u06e1\u06df\u06d7\u06db\u06e4\u06df\u06ec"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06df\u06d8\u06d8\u06d8\u06d9\u06da\u06eb\u06ec\u06d6\u06d8\u06e5\u06e1\u06db\u06e7\u06e5\u06dc\u06ec\u06da\u06d6\u06e5\u06e0\u06e8\u06d8\u06dc\u06e6\u06e7\u06d8\u06e6\u06e2\u06d8\u06e7\u06e1\u06e7\u06d8"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06e8\u06eb\u06ec\u06e0\u06ec\u06d9\u06e6\u06e1\u06df\u06e0\u06eb\u06eb\u06d9\u06d9\u06d9\u06d6\u06d8\u06e1\u06dc\u06e6\u06e4\u06e4\u06e5\u06e8\u06db\u06d8\u06d8\u06df\u06da\u06e6\u06ec\u06e4\u06e1\u06d8\u06d7\u06da\u06e5\u06d8"

    goto :goto_0

    :sswitch_b
    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v0

    const-string v2, "script_main_key_encrypt_value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lz2/m7;->OooOO0(Ljava/lang/String;)V

    const-string v0, "\u06e8\u06e1\u06d6\u06e0\u06e7\u06e8\u06d8\u06e2\u06e1\u06e2\u06d6\u06d8\u06e0\u06d9\u06e2\u06da\u06dc\u06d7\u06d8\u06d8\u06e4\u06d6\u06df\u06d6\u06ec\u06e1\u06d8\u06e2\u06db\u06dc\u06df\u06dc\u06e5\u06d8\u06ec\u06e1\u06db\u06d7\u06e1\u06db\u06eb\u06e6\u06d8\u06e4\u06e5\u06d8\u06d8"

    goto :goto_0

    :sswitch_c
    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v0

    const-string v2, "script_main_key_sec_value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lz2/m7;->OooOO0O(Ljava/lang/String;)V

    const-string v0, "\u06db\u06e5\u06d6\u06d8\u06d8\u06e0\u06d6\u06dc\u06d6\u06e2\u06da\u06d6\u06d8\u06d8\u06e5\u06df\u06d7\u06e4\u06e0\u06ec\u06d8\u06d7\u06e6\u06d6\u06d8\u06dc\u06d8\u06dc\u06e5\u06e6\u06e4\u06db\u06d6\u06d8\u06d6\u06e5\u06da\u06e4\u06da\u06e2\u06dc\u06e0\u06e5\u06e0\u06db\u06d9\u06db\u06d8\u06d8\u06d9\u06db\u06e8"

    goto :goto_0

    :sswitch_d
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/b7;->OooOOO()V

    const-string v0, "\u06e6\u06e0\u06d6\u06d6\u06d7\u06e8\u06eb\u06e4\u06e5\u06d8\u06e8\u06d8\u06e5\u06d8\u06e4\u06eb\u06d6\u06d8\u06d7\u06eb\u06e7\u06e4\u06e0\u06e0\u06da\u06d9\u06d8\u06d8\u06e1\u06e2\u06ec\u06e1\u06db\u06eb\u06e1\u06df\u06dc\u06db\u06eb\u06ec\u06e2\u06db\u06e7\u06dc\u06d8\u06eb\u06ec\u06df\u06db\u06df\u06dc\u06eb"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06e6\u06e0\u06d6\u06d6\u06d7\u06e8\u06eb\u06e4\u06e5\u06d8\u06e8\u06d8\u06e5\u06d8\u06e4\u06eb\u06d6\u06d8\u06d7\u06eb\u06e7\u06e4\u06e0\u06e0\u06da\u06d9\u06d8\u06d8\u06e1\u06e2\u06ec\u06e1\u06db\u06eb\u06e1\u06df\u06dc\u06db\u06eb\u06ec\u06e2\u06db\u06e7\u06dc\u06d8\u06eb\u06ec\u06df\u06db\u06df\u06dc\u06eb"

    goto/16 :goto_0

    :sswitch_f
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x529c1293 -> :sswitch_3
        -0x3dfc4765 -> :sswitch_1
        -0x384e4654 -> :sswitch_b
        -0x1f26f8e6 -> :sswitch_f
        -0x7ee6dd5 -> :sswitch_d
        0xac68559 -> :sswitch_c
        0x52425571 -> :sswitch_0
        0x6efd52f3 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x163c4997 -> :sswitch_e
        0x1b2c1a45 -> :sswitch_a
        0x34660bc6 -> :sswitch_9
        0x752df62e -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6d79537c -> :sswitch_7
        -0xb52f9f9 -> :sswitch_6
        0x16f47c72 -> :sswitch_8
        0x1fca9d19 -> :sswitch_5
    .end sparse-switch
.end method

.method private OooO0OO()V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string v0, "\u06da\u06db\u06e8\u06d8\u06e8\u06d9\u06e1\u06d8\u06e6\u06d6\u06e7\u06d8\u06d7\u06d8\u06d8\u06d8\u06e7\u06e5\u06df\u06e2\u06e5\u06d6\u06db\u06e6\u06e7\u06df\u06d7\u06e5\u06e5\u06d9\u06d7\u06e5\u06e6\u06e7\u06d8\u06e6\u06df\u06dc\u06e5\u06e7\u06e5\u06d8\u06df\u06e7\u06e0\u06e2\u06e5\u06d6\u06d8\u06e1\u06e7\u06d8\u06d6\u06ec\u06d7\u06e2\u06e4\u06eb\u06ec\u06ec\u06d9"

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x284

    xor-int/2addr v3, v4

    xor-int/lit16 v3, v3, 0xe5

    const/16 v4, 0x26b

    const v5, -0x6303c382

    xor-int/2addr v3, v4

    xor-int/2addr v3, v5

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e7\u06df\u06da\u06dc\u06d7\u06e1\u06e4\u06e1\u06e5\u06dc\u06e5\u06ec\u06db\u06d7\u06df\u06db\u06e1\u06e2\u06e6\u06e6\u06d8\u06db\u06e7\u06d8\u06d8\u06e4\u06dc\u06df\u06e4\u06e1\u06e4"

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "KeepMainService"

    invoke-virtual {p0, v0, v1}, Lcom/cyjh/elfin/services/KeepMainService;->OooO00o(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v0, "\u06e4\u06e1\u06e1\u06d8\u06e4\u06e5\u06d8\u06e8\u06d7\u06e5\u06d8\u06dc\u06e5\u06d8\u06e4\u06da\u06df\u06db\u06e7\u06e2\u06db\u06d9\u06e5\u06e0\u06d6\u06e8\u06d6\u06e6\u06dc\u06d8\u06d6\u06e0\u06e8"

    goto :goto_0

    :sswitch_2
    const v0, 0x1080028

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const-string v0, "\u06e2\u06eb\u06e1\u06d8\u06db\u06eb\u06d6\u06d8\u06dc\u06df\u06e0\u06e7\u06e2\u06e8\u06d8\u06db\u06dc\u06e4\u06d6\u06e5\u06e6\u06d7\u06d8\u06e5\u06df\u06db\u06d8\u06e5\u06e2\u06da\u06db\u06e5\u06e1\u06d8\u06d9\u06e7\u06d7\u06e5\u06ec\u06df\u06dc\u06dc\u06e5\u06da\u06e4"

    goto :goto_0

    :sswitch_3
    const v3, 0x16e20495

    const-string v0, "\u06d7\u06e0\u06e4\u06e1\u06e0\u06d6\u06d8\u06db\u06e2\u06e2\u06e2\u06d7\u06e4\u06e7\u06d7\u06e6\u06e0\u06d6\u06e4\u06dc\u06df\u06db\u06e4\u06e8\u06e0\u06d8\u06db\u06e1\u06e1\u06d8\u06da\u06db\u06e0\u06d8\u06d9\u06d7\u06e7\u06e5\u06e2\u06d7\u06e1\u06ec\u06e1\u06db\u06e4\u06e1\u06e0\u06d8\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06e4\u06e1\u06da\u06da\u06e8\u06e1\u06ec\u06e2\u06d6\u06eb\u06e8\u06e1\u06dc\u06e4\u06dc\u06d8\u06da\u06e2\u06df\u06e1\u06e5\u06eb\u06d7\u06d9\u06df\u06dc\u06e6\u06d8\u06d8\u06e6\u06d9\u06e6\u06e7\u06d6\u06e7\u06e1\u06e8\u06da\u06e6\u06da\u06e5\u06e7\u06e0\u06d8"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06e4\u06e5\u06e6\u06d8\u06e1\u06df\u06e7\u06e4\u06d6\u06df\u06e4\u06e2\u06e5\u06e1\u06da\u06d8\u06e4\u06e4\u06d7\u06e4\u06ec\u06dc\u06d8\u06d9\u06e0\u06d9\u06d9\u06db\u06eb\u06e4\u06da\u06d6"

    goto :goto_1

    :sswitch_6
    const v4, -0x5042a127

    const-string v0, "\u06e0\u06ec\u06db\u06db\u06eb\u06e6\u06d8\u06e1\u06d6\u06eb\u06d6\u06d6\u06d6\u06d6\u06d6\u06e0\u06d8\u06d6\u06d8\u06d8\u06e0\u06d9\u06e7\u06e8\u06dc\u06e1\u06db\u06e0\u06dc\u06e1\u06e5"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-le v0, v5, :cond_0

    const-string v0, "\u06d8\u06e7\u06e5\u06d8\u06d6\u06db\u06e5\u06e5\u06dc\u06e1\u06dc\u06dc\u06ec\u06d7\u06d7\u06d8\u06d8\u06e2\u06e8\u06d6\u06d8\u06d9\u06ec\u06ec\u06df\u06d7\u06da\u06e2\u06e1\u06d9\u06db\u06e0\u06d8\u06d8\u06e7\u06e2\u06df\u06ec\u06da\u06da\u06e2\u06e1\u06d6\u06d8\u06d7\u06e7\u06e1\u06dc\u06e1\u06d9\u06d8\u06e4\u06d6\u06df\u06d7\u06dc\u06d8\u06eb\u06df\u06e1"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e7\u06d8\u06e8\u06df\u06d6\u06e5\u06d8\u06e1\u06dc\u06e6\u06e0\u06e4\u06dc\u06d8\u06e6\u06d9\u06e2\u06ec\u06e2\u06da\u06e8\u06e4\u06e4\u06e6\u06ec\u06df\u06d6\u06d6\u06dc\u06d8\u06e5\u06eb\u06eb\u06e1\u06e1\u06dc\u06ec\u06e4\u06e0\u06e6\u06ec\u06e6\u06e2\u06e5\u06e8\u06db\u06e1\u06e6\u06d8\u06e5\u06e8\u06da"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e0\u06e7\u06e8\u06d8\u06ec\u06d6\u06e2\u06d9\u06d8\u06df\u06d8\u06e4\u06e6\u06e2\u06e5\u06eb\u06e5\u06da\u06dc\u06d8\u06d9\u06e5\u06e7\u06db\u06e8\u06e2\u06dc\u06e4\u06d7\u06e7\u06e1\u06d8\u06d8"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06d6\u06e2\u06ec\u06e6\u06dc\u06e8\u06d8\u06e8\u06e7\u06dc\u06ec\u06d8\u06da\u06d9\u06e6\u06e8\u06ec\u06e7\u06eb\u06ec\u06df\u06d6\u06d8\u06db\u06e1\u06d7\u06df\u06e1\u06e5\u06d8\u06dc\u06d8\u06e4\u06d7\u06e6\u06e8\u06d8\u06db\u06d6\u06e6\u06dc\u06e5\u06e6\u06e7\u06dc\u06e6\u06d8"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06dc\u06d9\u06e2\u06d7\u06da\u06d7\u06d7\u06e2\u06d7\u06d6\u06d9\u06d6\u06d8\u06d7\u06d7\u06ec\u06e7\u06e0\u06d9\u06d9\u06e0\u06e2\u06dc\u06e8\u06eb\u06d8\u06e7\u06d8\u06d6\u06d8\u06ec\u06e6\u06d7\u06e5\u06d8\u06d6\u06e1\u06e1\u06e0\u06ec\u06da\u06d9\u06d6\u06d8\u06da\u06e2\u06d6\u06d8\u06ec\u06dc\u06e1\u06d8"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u9884\u9632\u5e94\u7528\u9000\u51fa"

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string v0, "\u06e4\u06d9\u06e6\u06dc\u06da\u06da\u06eb\u06d8\u06e6\u06d8\u06eb\u06eb\u06eb\u06e0\u06e7\u06da\u06e6\u06e8\u06d8\u06df\u06e4\u06e2\u06db\u06e2\u06da\u06d6\u06da\u06e4\u06eb\u06e2\u06d8\u06da\u06d6\u06d8\u06e6\u06df\u06e5\u06d8"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u9632\u6b62\u5e94\u7528\u88ab\u5173\u95ed\uff0c\u8bf7\u4fdd\u7559\u8be5\u6743\u9650"

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string v0, "\u06e8\u06d9\u06d9\u06e8\u06df\u06e6\u06db\u06e2\u06e8\u06d8\u06e1\u06e8\u06e5\u06d8\u06d7\u06da\u06d7\u06e2\u06eb\u06e7\u06dc\u06da\u06dc\u06d8\u06d7\u06ec\u06da\u06d9\u06ec\u06e7\u06d6\u06e7\u06e5\u06d8\u06d8\u06e4\u06e2\u06da\u06d7\u06e6\u06da\u06e6\u06d6\u06e8\u06db\u06d7"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u9884\u9632\u5e94\u7528\u9000"

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string v0, "\u06da\u06e5\u06dc\u06e7\u06da\u06e6\u06d8\u06e2\u06d8\u06e7\u06d6\u06ec\u06e6\u06d8\u06db\u06eb\u06d8\u06e7\u06d8\u06d8\u06e5\u06d6\u06d6\u06e2\u06e5\u06d6\u06d8\u06da\u06db\u06df\u06e5\u06e6\u06d8\u06e6\u06e6\u06d7\u06e7\u06d6\u06e6\u06e6\u06d8\u06e8\u06d8\u06e4\u06e7\u06d6\u06e4\u06e6\u06d8\u06e0\u06d9\u06e4"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u9632\u6b62\u5e94\u7528\u88ab\u5173\u95ed\uff0c\u8bf7\u4fdd\u7559\u8be5\u6743\u9650"

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string v0, "\u06dc\u06ec\u06e1\u06d8\u06ec\u06e2\u06ec\u06d7\u06e7\u06e1\u06ec\u06d7\u06e1\u06d8\u06e4\u06da\u06e0\u06d9\u06d6\u06e2\u06d7\u06df\u06e6\u06d8\u06dc\u06dc\u06e7\u06e0\u06e8\u06e1\u06e4\u06d6\u06e4\u06e5\u06ec\u06e0\u06df\u06db\u06d6\u06db\u06e5\u06d8\u06eb\u06e0\u06dc\u06e6\u06ec\u06d9\u06dc\u06e5\u06ec\u06e0\u06e4\u06df\u06e1\u06eb\u06e0"

    goto/16 :goto_0

    :sswitch_f
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/cyjh/elfin/services/KeepMainService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const-string v0, "\u06e2\u06d6\u06e5\u06e7\u06e1\u06e6\u06d8\u06dc\u06e7\u06dc\u06d8\u06e8\u06e2\u06ec\u06e1\u06e7\u06e8\u06d7\u06d9\u06da\u06dc\u06e1\u06e4\u06e5\u06da\u06d8\u06e7\u06eb\u06eb\u06e5\u06d9\u06da\u06e6\u06e8\u06e7\u06d8\u06eb\u06e4\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    const-string v0, "\u06d8\u06e5\u06e5\u06ec\u06d7\u06d8\u06db\u06d7\u06ec\u06e4\u06e4\u06e8\u06e8\u06e2\u06e0\u06e6\u06e7\u06e7\u06e7\u06e2\u06db\u06dc\u06d7\u06e5\u06e2\u06d8\u06e7\u06db\u06db\u06e6"

    goto/16 :goto_0

    :sswitch_11
    const/16 v0, 0xbb8

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const-string v0, "\u06e8\u06e7\u06e7\u06e1\u06e2\u06df\u06d9\u06e8\u06dc\u06dc\u06df\u06e7\u06db\u06da\u06e5\u06d8\u06e4\u06e7\u06e1\u06db\u06e7\u06e4\u06e1\u06da\u06e0\u06d8\u06e5\u06db\u06ec\u06d8\u06dc\u06d8\u06e7\u06db\u06e1\u06da\u06d7\u06e2"

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "\u06e1\u06e2\u06e1\u06e1\u06e7\u06d8\u06d8\u06da\u06e5\u06e5\u06d8\u06d9\u06d9\u06d9\u06e8\u06d6\u06da\u06da\u06dc\u06e0\u06dc\u06e6\u06d6\u06d8\u06ec\u06dc\u06df\u06df\u06d9\u06e5\u06d8\u06e7\u06ec\u06dc\u06d8\u06d7\u06d7\u06d8\u06d8\u06e4\u06da\u06eb\u06e0\u06e1\u06d8\u06df\u06eb\u06e1"

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "\u06e2\u06d6\u06e5\u06e7\u06e1\u06e6\u06d8\u06dc\u06e7\u06dc\u06d8\u06e8\u06e2\u06ec\u06e1\u06e7\u06e8\u06d7\u06d9\u06da\u06dc\u06e1\u06e4\u06e5\u06da\u06d8\u06e7\u06eb\u06eb\u06e5\u06d9\u06da\u06e6\u06e8\u06e7\u06d8\u06eb\u06e4\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_14
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79b4446f -> :sswitch_e
        -0x68b1c3e8 -> :sswitch_11
        -0x5adbf6b0 -> :sswitch_3
        -0x3e5d560c -> :sswitch_14
        -0x34d1c17f -> :sswitch_10
        -0x358117f -> :sswitch_1
        0x2e21004 -> :sswitch_2
        0x11938639 -> :sswitch_c
        0x1259e4dd -> :sswitch_d
        0x57aa9fd7 -> :sswitch_b
        0x6612e1f8 -> :sswitch_f
        0x735230c8 -> :sswitch_13
        0x7d33e6cf -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x5a390312 -> :sswitch_a
        -0x2ae27738 -> :sswitch_12
        0x12d27200 -> :sswitch_4
        0x36fdbd9e -> :sswitch_6
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x30e9708a -> :sswitch_7
        -0x9888e30 -> :sswitch_8
        0x4378a988 -> :sswitch_9
        0x631a68ec -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public OooO00o(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    const-string v0, "\u06d7\u06da\u06db\u06e5\u06d6\u06e1\u06d8\u06da\u06da\u06e1\u06d8\u06e7\u06e0\u06ec\u06df\u06e6\u06e1\u06d8\u06d7\u06d7\u06dc\u06e0\u06e2\u06dc\u06d8\u06e5\u06e1\u06e2\u06e1\u06ec\u06d7\u06e7\u06d8\u06d7\u06e5\u06da\u06e8\u06d8\u06da\u06db\u06da\u06e1\u06eb\u06d9\u06dc\u06ec\u06d7\u06dc\u06dc\u06eb\u06d9\u06d8\u06e2\u06e5\u06e8\u06d6\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x11b

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x27b

    const/16 v3, 0x127

    const v4, 0x5c72282

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06db\u06e0\u06dc\u06e1\u06da\u06e5\u06d6\u06d6\u06d8\u06df\u06e1\u06d8\u06df\u06d6\u06e5\u06d8\u06e7\u06d7\u06df\u06e8\u06d8\u06e7\u06d8\u06e4\u06e6\u06e7\u06d7\u06e1\u06e5\u06d7\u06df\u06e4\u06e0\u06d9\u06e4\u06d8\u06d8\u06da\u06e4\u06df\u06dc\u06e4\u06d8\u06d7\u06e6\u06d8\u06df\u06e2\u06e6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d6\u06e2\u06e1\u06da\u06e7\u06eb\u06dc\u06d6\u06e7\u06e2\u06d9\u06df\u06e6\u06eb\u06da\u06df\u06eb\u06e6\u06e4\u06e0\u06d6\u06d8\u06e0\u06db\u06ec\u06d7\u06db\u06e5\u06d8\u06df\u06d6\u06e1\u06d7\u06e1\u06d8\u06e6\u06e1\u06e5\u06dc\u06d7\u06e1\u06d8\u06e4\u06d9\u06e1\u06e5\u06e2\u06dc\u06d8\u06e1\u06db\u06e2"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e2\u06d9\u06e1\u06e7\u06e5\u06e7\u06d8\u06dc\u06df\u06d8\u06eb\u06eb\u06d8\u06d8\u06e8\u06df\u06ec\u06e8\u06da\u06e1\u06e5\u06e8\u06d7\u06e0\u06e7\u06e6\u06d8\u06da\u06eb\u06e6\u06d8\u06d6\u06d9\u06eb\u06e7\u06e4\u06dc\u06d8\u06df\u06e7\u06e0\u06d8\u06dc\u06e6\u06da\u06ec\u06d7\u06e6\u06db\u06e1\u06d8\u06e5\u06e2\u06e5"

    goto :goto_0

    :sswitch_3
    const v2, -0x3b2639bd

    const-string v0, "\u06dc\u06e6\u06d7\u06e6\u06e6\u06eb\u06ec\u06e6\u06e0\u06d8\u06d9\u06d6\u06d8\u06df\u06da\u06e1\u06d8\u06d9\u06d6\u06e4\u06da\u06db\u06d9\u06e0\u06e6\u06e7\u06d6\u06e6\u06d8\u06df\u06da\u06e7\u06ec\u06eb\u06e1\u06d8\u06ec\u06d8\u06db"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06e5\u06e4\u06e1\u06d8\u06eb\u06e5\u06e1\u06eb\u06e8\u06d6\u06d8\u06e5\u06e6\u06e8\u06d8\u06d8\u06d8\u06e1\u06d8\u06eb\u06e2\u06e6\u06e5\u06d7\u06e5\u06ec\u06da\u06e5\u06ec\u06dc\u06d8\u06d8\u06e0\u06d7\u06ec\u06df\u06dc\u06d8\u06eb\u06e5\u06d9\u06e7\u06ec\u06df\u06ec\u06e4\u06d9"

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06e2\u06d9\u06e8\u06d8\u06e5\u06dc\u06dc\u06e4\u06e4\u06e8\u06d8\u06e0\u06d7\u06e7\u06d6\u06e0\u06e0\u06e7\u06d9\u06da\u06ec\u06e2\u06e6\u06d8\u06df\u06d9\u06e4\u06df\u06d6\u06d6\u06d8\u06e6\u06e4\u06e5"

    goto :goto_1

    :sswitch_6
    const v3, 0x3ef06a15

    const-string v0, "\u06e5\u06e1\u06d8\u06e4\u06db\u06df\u06e2\u06e4\u06d6\u06d8\u06d9\u06e6\u06e7\u06d8\u06dc\u06d7\u06dc\u06ec\u06d9\u06e8\u06e8\u06e6\u06d6\u06d8\u06df\u06d7\u06eb\u06d6\u06e1\u06d8\u06d8\u06dc\u06e6\u06ec\u06d8\u06df\u06d8\u06e7\u06d9\u06d6\u06d8\u06d7\u06e8\u06ec\u06eb\u06e6\u06e4"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06db\u06db\u06e4\u06e4\u06e5\u06db\u06df\u06d6\u06e4\u06e5\u06df\u06e7\u06ec\u06e4\u06dc\u06d8\u06e1\u06d6\u06df\u06dc\u06e1\u06d8\u06dc\u06e0\u06e0\u06db\u06dc\u06e7\u06d8\u06d7\u06d8\u06e1\u06d8\u06df\u06db\u06d9\u06e2\u06e2\u06d6\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06df\u06e0\u06e2\u06e8\u06dc\u06d8\u06d8\u06ec\u06e2\u06d6\u06e6\u06da\u06da\u06eb\u06ec\u06eb\u06e7\u06dc\u06d6\u06d9\u06e6\u06ec\u06e1\u06e1\u06e1\u06d8\u06e8\u06e8\u06d6\u06dc\u06e5\u06eb\u06eb\u06e1\u06e6\u06e0\u06e8\u06dc\u06d8\u06ec\u06da\u06e2\u06e5\u06d9\u06e8\u06d8\u06d8\u06ec\u06e6\u06d8\u06df\u06e6\u06d7\u06e5\u06e8\u06e7\u06d8\u06e5\u06d9\u06e1\u06d8"

    goto :goto_2

    :sswitch_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_0

    const-string v0, "\u06e2\u06d9\u06e7\u06d7\u06eb\u06e5\u06dc\u06e0\u06d8\u06d8\u06d8\u06df\u06e5\u06d8\u06e1\u06df\u06eb\u06e4\u06e4\u06e4\u06e1\u06db\u06d6\u06d8\u06dc\u06eb\u06e5\u06df\u06da\u06d6\u06e6\u06ec"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06e0\u06e6\u06e6\u06eb\u06d6\u06d7\u06d6\u06e5\u06dc\u06d8\u06e4\u06e5\u06dc\u06db\u06e0\u06e5\u06e6\u06e6\u06e0\u06e0\u06e7\u06e8\u06d8\u06d8\u06df\u06dc\u06d7\u06e1\u06eb\u06e1\u06e4\u06e8\u06e6\u06e5\u06d8\u06ec\u06d9\u06d8\u06d8"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06e8\u06e6\u06e1\u06d8\u06e4\u06da\u06e4\u06e6\u06e1\u06e8\u06d8\u06e4\u06dc\u06e5\u06d8\u06eb\u06e4\u06e2\u06d7\u06e6\u06e6\u06e6\u06e6\u06d8\u06e5\u06eb\u06e2\u06e1\u06d8\u06e1\u06e7\u06e4\u06e8\u06d9\u06e6\u06e0\u06e0\u06e1\u06e4"

    goto :goto_0

    :sswitch_b
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v0, "keep_live_service"

    const/4 v2, 0x3

    invoke-direct {v1, p2, v0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v0, "\u06db\u06e5\u06e1\u06d8\u06db\u06e8\u06ec\u06e1\u06dc\u06d8\u06e1\u06eb\u06d6\u06dc\u06d9\u06e6\u06d8\u06e1\u06dc\u06d7\u06ec\u06e2\u06e2\u06e7\u06db\u06e7\u06d9\u06e1\u06da\u06e7\u06e7\u06e5\u06d8\u06da\u06e4\u06e8\u06d8\u06da\u06e7\u06df\u06e2\u06e6\u06df\u06e6\u06db\u06d6\u06d8\u06e6\u06d6\u06e5\u06d8\u06e8\u06e0\u06e4"

    goto :goto_0

    :sswitch_c
    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const-string v0, "\u06d6\u06df\u06e0\u06e8\u06ec\u06df\u06e0\u06da\u06df\u06e8\u06ec\u06ec\u06ec\u06e2\u06eb\u06e7\u06d9\u06dc\u06d8\u06e6\u06df\u06e5\u06d8\u06dc\u06e5\u06dc\u06e2\u06d6\u06d8\u06e6\u06d7\u06d9\u06ec\u06db\u06db\u06d8\u06e8\u06e5\u06d8"

    goto :goto_0

    :sswitch_d
    const/high16 v0, -0x10000

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setLightColor(I)V

    const-string v0, "\u06db\u06ec\u06e4\u06e5\u06e7\u06d8\u06d6\u06df\u06dc\u06d8\u06e2\u06da\u06dc\u06e4\u06e6\u06df\u06ec\u06d8\u06e2\u06d6\u06eb\u06e0\u06e8\u06ec\u06dc\u06df\u06e8\u06dc\u06e0\u06d9\u06e6\u06d8\u06da\u06e0\u06e1\u06d8\u06d7\u06e0\u06e2\u06e5\u06dc\u06d8\u06dc\u06db\u06e5\u06df\u06e2\u06e7\u06e6\u06e4\u06db\u06d7\u06e6\u06d8\u06e6\u06db\u06e5"

    goto :goto_0

    :sswitch_e
    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const-string v0, "\u06ec\u06d9\u06e1\u06d8\u06e7\u06e8\u06d6\u06d8\u06e6\u06e6\u06e5\u06df\u06e2\u06e7\u06df\u06e2\u06e5\u06d8\u06d8\u06d9\u06da\u06e5\u06db\u06e6\u06d8\u06d7\u06dc\u06dc\u06dc\u06e6\u06d8\u06ec\u06e8\u06df\u06df\u06e0\u06dc\u06d8\u06dc\u06e8\u06e1"

    goto :goto_0

    :sswitch_f
    invoke-virtual {v1, v6}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const-string v0, "\u06e7\u06d9\u06e2\u06d6\u06e7\u06d8\u06e4\u06e2\u06e2\u06db\u06e4\u06d8\u06dc\u06eb\u06e1\u06d8\u06e4\u06da\u06e4\u06e0\u06db\u06d6\u06e8\u06da\u06eb\u06d9\u06e8\u06db\u06d6\u06da\u06e2\u06db\u06d6\u06d8\u06eb\u06e5\u06db\u06dc\u06d8\u06e1\u06d8\u06e2\u06e4\u06e2"

    goto :goto_0

    :sswitch_10
    new-array v0, v5, [J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v6

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    const-string v0, "\u06e6\u06da\u06dc\u06d8\u06eb\u06d8\u06db\u06e0\u06eb\u06d6\u06dc\u06db\u06df\u06da\u06e0\u06e5\u06d8\u06d8\u06e5\u06da\u06e6\u06da\u06e6\u06e6\u06ec\u06df\u06d9\u06db\u06e0\u06eb\u06e5\u06ec\u06d9\u06e2\u06e0\u06d6"

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const-string v0, "\u06e0\u06d6\u06db\u06dc\u06eb\u06e7\u06e6\u06e1\u06e4\u06ec\u06e7\u06e8\u06e4\u06df\u06ec\u06d7\u06e1\u06d8\u06e0\u06e8\u06d8\u06d8\u06d9\u06e1\u06e5\u06ec\u06e1\u06df\u06e0\u06da\u06e0\u06e7\u06e0\u06d7\u06d7\u06d6\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_12
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_3
    return-object v0

    :sswitch_13
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_3

    :sswitch_14
    const-string v0, "\u06e2\u06df\u06d8\u06db\u06e8\u06df\u06db\u06e6\u06e6\u06d8\u06e8\u06e7\u06e7\u06d7\u06d6\u06e6\u06e5\u06e8\u06d6\u06d8\u06e6\u06e1\u06d8\u06d8\u06da\u06eb\u06dc\u06da\u06e1\u06e7\u06d8\u06e0\u06e4\u06e6\u06d8\u06da\u06eb\u06e5\u06dc\u06e4\u06eb\u06eb\u06d9\u06d6\u06d8\u06df\u06db\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x77fb088e -> :sswitch_12
        -0x717174ec -> :sswitch_c
        -0x34e92e17 -> :sswitch_0
        -0x339c8d89 -> :sswitch_b
        -0x50c5042 -> :sswitch_11
        -0x24a6daa -> :sswitch_13
        0x284c6d -> :sswitch_3
        0x479bac5 -> :sswitch_d
        0x2a0a3fff -> :sswitch_2
        0x3dd2c574 -> :sswitch_f
        0x615c6036 -> :sswitch_10
        0x672de0f6 -> :sswitch_1
        0x76a9e620 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x60f2e68a -> :sswitch_a
        -0x42fe373d -> :sswitch_14
        -0x146b1eff -> :sswitch_6
        0x3ed8d48b -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x4aa98ac7 -> :sswitch_9
        0x1ae560c0 -> :sswitch_5
        0x5570dee8 -> :sswitch_7
        0x7baea1f2 -> :sswitch_8
    .end sparse-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "\u06df\u06e1\u06da\u06e5\u06e1\u06e6\u06d8\u06d8\u06eb\u06e1\u06e6\u06e1\u06e5\u06e7\u06e0\u06dc\u06e2\u06e5\u06d7\u06e2\u06dc\u06d7\u06db\u06e5\u06e8\u06ec\u06df\u06d8\u06eb\u06ec\u06d6\u06e4\u06d8\u06d8\u06d6\u06d9\u06ec\u06d6\u06ec\u06e2\u06df\u06d9\u06d8\u06ec\u06e8\u06d8\u06e5\u06e5\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x327

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x364

    const/16 v2, 0x91

    const v3, -0x419047ff

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e2\u06d9\u06d7\u06d6\u06da\u06e5\u06e5\u06d6\u06d8\u06ec\u06e0\u06ec\u06d7\u06eb\u06e8\u06e6\u06e5\u06dc\u06e6\u06df\u06e1\u06d8\u06e5\u06e2\u06d6\u06d8\u06e5\u06db\u06e7\u06da\u06eb\u06e6\u06e6\u06eb\u06d8\u06da\u06df\u06dc\u06e7\u06e6\u06eb\u06eb\u06d6\u06db\u06e1\u06e7\u06db\u06df\u06d6\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06e4\u06da\u06e0\u06d6\u06e0\u06ec\u06e8\u06e1\u06d8\u06ec\u06e5\u06d8\u06e1\u06d8\u06e7\u06d8\u06d8\u06d9\u06d7\u06d8\u06e0\u06da\u06e4\u06d8\u06dc\u06d8\u06e7\u06e7\u06db\u06e4\u06e7\u06e5\u06d7\u06e6\u06e1\u06e6\u06dc\u06e7\u06d9\u06da\u06e6\u06e8\u06eb\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x37a75515 -> :sswitch_0
        -0x922c46d -> :sswitch_1
        0x10892637 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate()V
    .locals 4

    const-string v0, "\u06e6\u06da\u06e2\u06db\u06dc\u06d9\u06dc\u06e4\u06e5\u06df\u06df\u06e1\u06e7\u06e2\u06d9\u06d6\u06e5\u06e4\u06d8\u06e2\u06da\u06ec\u06e1\u06e7\u06d6\u06e8\u06dc\u06d8\u06e0\u06d8\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2bf

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x179

    const/16 v2, 0x7a

    const v3, -0x6dfd0e9f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06d9\u06d7\u06ec\u06e1\u06d6\u06d8\u06e5\u06dc\u06e6\u06d7\u06da\u06e1\u06d8\u06e0\u06df\u06e8\u06d7\u06e2\u06e8\u06e2\u06ec\u06e1\u06db\u06e0\u06e8\u06d8\u06e2\u06d9\u06d8\u06d8\u06db\u06d6\u06e1"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "\u06e2\u06e7\u06e8\u06d8\u06d8\u06ec\u06e8\u06d8\u06e7\u06e4\u06e2\u06db\u06da\u06da\u06db\u06da\u06e7\u06ec\u06e0\u06e8\u06e0\u06da\u06d9\u06db\u06df\u06e5\u06e6\u06df\u06eb\u06d8\u06dc\u06d8\u06dc\u06e7\u06d6\u06ec\u06dc\u06d6\u06e6\u06e2\u06e4\u06e8\u06ec\u06d7"

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/cyjh/elfin/services/KeepMainService;->OooO0OO()V

    const-string v0, "\u06e5\u06dc\u06e5\u06d8\u06e2\u06e7\u06e5\u06df\u06e5\u06d8\u06d8\u06db\u06ec\u06d7\u06da\u06eb\u06d8\u06d8\u06e2\u06d9\u06e5\u06d8\u06e6\u06e5\u06e8\u06d9\u06e5\u06d6\u06d9\u06d7\u06e1\u06e7\u06d8\u06e8\u06e0\u06d8\u06d8\u06d8\u06d7\u06da\u06e8\u06d9\u06e0\u06d9\u06e5\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7bc27b88 -> :sswitch_2
        -0x6ca2872c -> :sswitch_0
        -0x45befd9b -> :sswitch_3
        -0x2896bcf3 -> :sswitch_1
    .end sparse-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v0, "\u06eb\u06e5\u06dc\u06d8\u06d7\u06e5\u06e8\u06e0\u06eb\u06ec\u06d6\u06da\u06eb\u06e0\u06ec\u06d7\u06d8\u06ec\u06df\u06e0\u06e1\u06ec\u06e7\u06e2\u06e6\u06d8\u06ec\u06ec\u06d6\u06e5\u06e4\u06dc\u06d8"

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x22f

    xor-int/2addr v0, v3

    xor-int/lit16 v0, v0, 0x9a

    const/16 v3, 0x2f

    const v9, 0x72653c6e

    xor-int/2addr v0, v3

    xor-int/2addr v0, v9

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06d7\u06e1\u06d8\u06d7\u06df\u06e8\u06e0\u06e0\u06da\u06d7\u06d9\u06eb\u06e1\u06eb\u06e5\u06d8\u06db\u06e1\u06d8\u06e1\u06d6\u06d9\u06d7\u06e8\u06d8\u06e4\u06e4\u06d8\u06d8\u06eb\u06e4\u06d9\u06e4\u06e8\u06e7\u06d6\u06dc\u06d8\u06e1\u06da\u06dc\u06d8\u06d9\u06da\u06d9\u06d8\u06da\u06dc\u06ec\u06ec\u06df"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06e1\u06da\u06d7\u06e5\u06d9\u06dc\u06df\u06dc\u06d8\u06e7\u06e1\u06eb\u06da\u06da\u06e5\u06d8\u06d8\u06e4\u06ec\u06d9\u06d8\u06e8\u06d8\u06df\u06e2\u06d9\u06d7\u06df\u06e4\u06e4\u06e4\u06dc\u06e4\u06e0\u06e8\u06d8\u06dc\u06e4\u06e2"

    move-object v1, v0

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e0\u06e4\u06e8\u06d8\u06e1\u06e1\u06e7\u06da\u06e6\u06d9\u06ec\u06e6\u06da\u06d8\u06e5\u06dc\u06eb\u06e7\u06d8\u06da\u06e1\u06d9\u06e6\u06e1\u06d9\u06e6\u06ec\u06da\u06e0\u06d7\u06e1\u06da\u06d6\u06e6\u06d8\u06db\u06e7\u06e8\u06d8\u06d7\u06e6\u06e0\u06e4\u06e4\u06e5\u06d8\u06e4\u06d7\u06e2\u06e0\u06d6\u06d8\u06e6\u06e7\u06e1\u06d8\u06dc\u06da\u06db"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06e4\u06dc\u06d6\u06d8\u06e7\u06e2\u06e0\u06ec\u06eb\u06eb\u06e1\u06e2\u06d7\u06da\u06e2\u06e1\u06d8\u06e7\u06df\u06d8\u06e4\u06d6\u06e7\u06e2\u06e2\u06e6\u06d8\u06e4\u06dc\u06e6\u06d8\u06e8\u06eb\u06db\u06eb\u06d6\u06eb\u06dc\u06d8\u06db\u06dc\u06dc\u06d8\u06d8\u06e8\u06ec\u06e4\u06e5\u06e7\u06d8\u06da\u06da\u06e6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    const v1, -0x452a4643

    const-string v0, "\u06e1\u06e8\u06ec\u06dc\u06ec\u06e5\u06dc\u06e4\u06d8\u06d8\u06d9\u06df\u06e6\u06ec\u06e7\u06d8\u06d8\u06e1\u06e2\u06d8\u06d8\u06d8\u06e5\u06e5\u06d8\u06e7\u06dc\u06eb\u06e7\u06da\u06dc\u06e7\u06df\u06dc\u06ec\u06d6\u06d6\u06d8\u06d6\u06e8\u06e7\u06e2\u06db\u06e6\u06d8\u06df\u06e0\u06eb\u06dc\u06df\u06e8\u06da\u06e4\u06db"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06e7\u06e6\u06e5\u06e7\u06d9\u06eb\u06d7\u06d8\u06d8\u06e1\u06da\u06e0\u06e2\u06e8\u06e1\u06d8\u06e5\u06ec\u06e5\u06dc\u06d7\u06e7\u06df\u06d9\u06da\u06da\u06e2\u06e8\u06d8\u06e6\u06e6\u06d6\u06d8\u06d8\u06eb\u06e5\u06da\u06d6\u06d6\u06db\u06d6\u06d8\u06eb\u06dc\u06dc\u06db\u06d7\u06e5\u06d8\u06d8\u06d8\u06e5\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    const-string v0, "\u06d7\u06e5\u06e8\u06db\u06d7\u06e6\u06e0\u06d6\u06e5\u06dc\u06e0\u06ec\u06e1\u06e2\u06e2\u06e6\u06eb\u06da\u06db\u06ec\u06d9\u06e1\u06d8\u06ec\u06db\u06d9\u06dc\u06d9\u06db\u06e1\u06e6\u06ec\u06d8\u06dc"

    goto :goto_1

    :sswitch_7
    const v3, -0x24b0ca09

    const-string v0, "\u06e6\u06e6\u06d9\u06dc\u06e7\u06eb\u06ec\u06e0\u06e5\u06d9\u06e6\u06e1\u06d9\u06d7\u06da\u06d6\u06e2\u06d7\u06d8\u06db\u06e2\u06db\u06e1\u06e8\u06d8\u06ec\u06ec\u06e5\u06d8\u06e5\u06e5\u06d8\u06d6\u06d9\u06e5\u06dc\u06e4\u06e1\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v3

    sparse-switch v9, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    if-nez p1, :cond_0

    const-string v0, "\u06df\u06d7\u06e8\u06d8\u06d6\u06da\u06d6\u06d7\u06eb\u06db\u06ec\u06e1\u06e2\u06e2\u06d8\u06d8\u06e0\u06e0\u06e6\u06e6\u06eb\u06d9\u06d9\u06eb\u06da\u06d7\u06e5\u06da\u06db\u06d6\u06d8\u06e7\u06e5\u06dc\u06d8\u06df\u06d9"

    goto :goto_2

    :cond_0
    const-string v0, "\u06d7\u06eb\u06d9\u06e0\u06da\u06ec\u06e4\u06d7\u06eb\u06d9\u06db\u06da\u06df\u06e4\u06e4\u06e1\u06eb\u06db\u06d8\u06e8\u06d8\u06d9\u06eb\u06df\u06d6\u06e2\u06e5\u06d8\u06db\u06ec"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06e4\u06e1\u06e8\u06d8\u06e4\u06dc\u06d9\u06e0\u06eb\u06e6\u06d8\u06db\u06e5\u06e7\u06eb\u06d9\u06df\u06d6\u06df\u06d9\u06d6\u06d8\u06d8\u06e0\u06e7\u06e5\u06d8\u06ec\u06e1\u06e0\u06d6\u06dc\u06e7\u06d8\u06ec\u06d6\u06d6\u06d8\u06e8\u06dc\u06e5\u06da\u06e2\u06db\u06dc\u06d8\u06d9\u06e5\u06df\u06e6\u06d8\u06da\u06e1\u06da"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06da\u06e6\u06e8\u06e2\u06e1\u06d9\u06d6\u06d7\u06df\u06e1\u06dc\u06d8\u06da\u06e8\u06dc\u06dc\u06e8\u06e7\u06d9\u06e7\u06e6\u06e0\u06e8\u06e4\u06e8\u06e8\u06e7\u06e5\u06d9\u06d8"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06df\u06da\u06e8\u06d9\u06d6\u06e5\u06d8\u06da\u06da\u06e6\u06d9\u06d8\u06e8\u06d8\u06ec\u06d7\u06d6\u06e8\u06dc\u06da\u06e6\u06e7\u06e6\u06e6\u06e8\u06df\u06e2\u06e5\u06df\u06e2\u06e5\u06df\u06dc\u06df\u06df\u06df\u06e4\u06e8\u06d8\u06d8\u06d8\u06eb\u06e1\u06e6\u06e7\u06e5\u06e1\u06d8\u06e6\u06e0\u06e7"

    goto :goto_1

    :sswitch_c
    const-string v0, "\u06d6\u06db\u06e1\u06d6\u06e0\u06d6\u06e1\u06e6\u06e1\u06ec\u06e0\u06e1\u06d8\u06e1\u06e4\u06e6\u06e1\u06ec\u06e5\u06d8\u06eb\u06e5\u06d6\u06db\u06e5\u06e1\u06da\u06ec\u06d7\u06e2\u06d7\u06d8\u06e1\u06d9\u06e5\u06d9\u06d6\u06e6\u06e7\u06e6\u06d6\u06e8\u06d8\u06d8\u06e4\u06d9\u06d7\u06e0\u06e8\u06db"

    move-object v1, v0

    goto :goto_0

    :sswitch_d
    move v0, v7

    :goto_3
    return v0

    :sswitch_e
    const-string v0, "script_main_key"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "\u06e1\u06dc\u06e5\u06d8\u06dc\u06e2\u06e0\u06d9\u06d9\u06e5\u06db\u06d6\u06e0\u06dc\u06e8\u06e5\u06d8\u06ec\u06e6\u06ec\u06d8\u06dc\u06d6\u06d8\u06e2\u06df\u06e6\u06d9\u06da\u06d7\u06eb\u06d7\u06ec\u06d9\u06e6\u06e7\u06df"

    move-object v1, v0

    move v6, v3

    goto :goto_0

    :sswitch_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06e6\u06e7\u06d8\u06dc\u06e5\u06db\u06eb\u06e2\u06dc\u06e5\u06e6\u06d8\u06e0\u06e2\u06e8\u06e0\u06e5\u06d7\u06da\u06e8\u06d8\u06df\u06d9\u06db\u06dc\u06e7\u06e0\u06eb\u06da\u06e8\u06d8\u06e4\u06e6\u06e7\u06eb\u06d9\u06e2"

    move-object v1, v0

    move-object v5, v3

    goto :goto_0

    :sswitch_10
    const-string v0, "KeepMainService -- key:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06df\u06e6\u06e4\u06dc\u06db\u06e0\u06d9\u06df\u06e1\u06d6\u06e6\u06e2\u06df\u06dc\u06ec\u06e1\u06e2\u06d7\u06e1\u06d7\u06d9\u06da\u06db\u06e8\u06d8\u06e8\u06eb\u06df\u06e0\u06d9\u06e7\u06e5\u06e0\u06d9\u06dc\u06e2\u06e7\u06e2\u06d8\u06e7\u06d8\u06e6\u06e1\u06e6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_11
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u06e6\u06eb\u06e6\u06e5\u06e7\u06df\u06df\u06d9\u06e4\u06e2\u06eb\u06e7\u06d6\u06e7\u06d6\u06d8\u06e4\u06d9\u06e6\u06df\u06d6\u06d7\u06d7\u06d9\u06eb\u06e4\u06e8\u06eb\u06d8\u06d9"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "\u06db\u06df\u06e7\u06e8\u06db\u06dc\u06d8\u06e0\u06e0\u06e0\u06e1\u06e0\u06da\u06d7\u06d7\u06d9\u06e0\u06d7\u06eb\u06e7\u06dc\u06da\u06e7\u06e4\u06ec\u06e5\u06ec\u06dc\u06d7\u06d6\u06d8\u06e1\u06d7\u06eb\u06e6\u06e0\u06dc\u06e6\u06e2\u06d9\u06e4\u06db\u06d6\u06d8\u06d7\u06d9\u06e6\u06d8\u06e4\u06db\u06e1\u06db\u06e0\u06d6\u06d8\u06e5\u06e4\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_13
    const v1, 0x5cd2da8a

    const-string v0, "\u06e2\u06dc\u06e0\u06df\u06db\u06d8\u06e5\u06e7\u06d8\u06d8\u06dc\u06e7\u06e1\u06d8\u06df\u06d8\u06e7\u06d7\u06da\u06e6\u06d8\u06df\u06d7\u06d6\u06d8\u06dc\u06d7\u06df\u06df\u06e6\u06df\u06dc\u06e6\u06e7\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_3

    goto :goto_4

    :sswitch_14
    const v3, 0x6dbc9c4e

    const-string v0, "\u06e4\u06da\u06d6\u06d8\u06e0\u06d7\u06dc\u06ec\u06eb\u06e4\u06e6\u06dc\u06e4\u06d8\u06d7\u06dc\u06e8\u06e0\u06e6\u06e2\u06e2\u06dc\u06e2\u06e0\u06da\u06d8\u06da\u06e6\u06e4\u06e7"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v3

    sparse-switch v9, :sswitch_data_4

    goto :goto_5

    :sswitch_15
    const-string v0, "\u06e0\u06dc\u06e7\u06d8\u06da\u06e4\u06d8\u06d8\u06dc\u06e5\u06e1\u06d8\u06ec\u06d7\u06e0\u06e0\u06e7\u06e1\u06d9\u06db\u06df\u06d9\u06df\u06e2\u06da\u06e7\u06d7\u06e5\u06d7\u06d7\u06d6\u06e5\u06eb\u06e0\u06e8\u06e4\u06eb\u06eb\u06d8\u06d8\u06d6\u06d8\u06e0\u06e1\u06e7\u06db\u06eb\u06dc\u06d8\u06eb\u06dc\u06e5"

    goto :goto_4

    :sswitch_16
    const-string v0, "\u06e0\u06e5\u06e7\u06d8\u06e0\u06eb\u06e0\u06df\u06d8\u06d8\u06e1\u06d9\u06e1\u06e8\u06d8\u06d6\u06d8\u06d6\u06e6\u06e1\u06e4\u06d9\u06d9\u06d9\u06eb\u06da\u06d9\u06dc\u06d6\u06d8\u06e5\u06d8\u06df\u06e5\u06e8\u06d8\u06e1\u06e4\u06e2\u06d9\u06e1\u06dc\u06dc\u06d7\u06e8"

    goto :goto_4

    :cond_1
    const-string v0, "\u06e4\u06e0\u06df\u06dc\u06eb\u06dc\u06d8\u06dc\u06d8\u06e1\u06db\u06e0\u06eb\u06df\u06db\u06dc\u06d8\u06e0\u06d8\u06eb\u06e6\u06da\u06da\u06db\u06d9\u06e4\u06da\u06e7\u06e5\u06e4\u06e2\u06e7\u06e8\u06e1\u06d8\u06db\u06e4\u06e2\u06e8\u06e0\u06e6\u06d8\u06e4\u06d9\u06dc\u06d8\u06d9\u06da\u06da\u06ec\u06d6\u06d9"

    goto :goto_5

    :sswitch_17
    if-ne v6, v7, :cond_1

    const-string v0, "\u06e8\u06e5\u06eb\u06e7\u06df\u06ec\u06df\u06ec\u06e2\u06e2\u06d8\u06d8\u06d8\u06e6\u06e2\u06e8\u06da\u06e0\u06da\u06df\u06e4\u06e2\u06e0\u06df\u06e0\u06ec\u06db\u06ec\u06d8\u06e1\u06e5\u06db\u06e7\u06df\u06e7\u06df\u06e4\u06e4\u06db\u06e1\u06e7\u06e8\u06d8\u06e4\u06e2\u06e7"

    goto :goto_5

    :sswitch_18
    const-string v0, "\u06e8\u06db\u06e7\u06d6\u06df\u06d7\u06df\u06df\u06e6\u06d9\u06e5\u06e6\u06df\u06d9\u06e1\u06d8\u06e8\u06dc\u06e8\u06d8\u06d9\u06e5\u06ec\u06e2\u06e1\u06e0\u06e6\u06d9\u06ec\u06db\u06eb\u06e5\u06d8\u06e0\u06db\u06d8\u06db\u06e1"

    goto :goto_5

    :sswitch_19
    const-string v0, "\u06d8\u06e0\u06e5\u06d8\u06d8\u06e5\u06e2\u06e0\u06e0\u06e2\u06dc\u06e5\u06eb\u06e5\u06eb\u06db\u06e7\u06d9\u06d6\u06d8\u06db\u06d9\u06e0\u06d9\u06d6\u06e0\u06eb\u06e0\u06e8\u06d8\u06dc\u06d8\u06d7\u06d8\u06d8\u06d8\u06e7\u06df\u06e6\u06d8\u06df\u06ec\u06d8\u06e6\u06e7\u06d8\u06e2\u06eb\u06d9\u06e8\u06dc\u06d9\u06d7\u06e0\u06e5\u06d8\u06e8\u06df\u06e1"

    goto :goto_4

    :sswitch_1a
    const-string v0, "\u06e6\u06df\u06e5\u06d7\u06e0\u06d7\u06e4\u06d8\u06df\u06e4\u06d6\u06d8\u06d9\u06dc\u06ec\u06da\u06dc\u06e1\u06e5\u06d9\u06d8\u06d8\u06d6\u06df\u06e1\u06d8\u06e0\u06ec\u06e8\u06e1\u06df\u06df"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_1b
    invoke-direct {p0, p1}, Lcom/cyjh/elfin/services/KeepMainService;->OooO0O0(Landroid/content/Intent;)V

    const-string v0, "\u06e4\u06da\u06da\u06d6\u06d6\u06d6\u06d8\u06e1\u06eb\u06e6\u06d8\u06e8\u06d6\u06db\u06e1\u06e7\u06eb\u06e5\u06e1\u06e7\u06e7\u06d9\u06eb\u06d9\u06eb\u06e6\u06d8\u06e5\u06eb\u06e4\u06da\u06df\u06d7\u06d9\u06db\u06e4\u06d7\u06e2\u06e5\u06d8\u06df\u06da\u06d6\u06e1\u06db\u06e5\u06df\u06ec\u06d6\u06e1\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_1c
    const v1, 0x3bc4da8e

    const-string v0, "\u06e1\u06e4\u06d9\u06db\u06e5\u06d8\u06dc\u06eb\u06d9\u06d6\u06e8\u06dc\u06d8\u06d6\u06d9\u06d6\u06d6\u06e1\u06db\u06da\u06e4\u06e1\u06da\u06da\u06eb\u06df\u06e5\u06e7\u06d8\u06d6\u06eb\u06db\u06e7\u06e1\u06df\u06ec\u06e8\u06d8\u06d8\u06e4\u06e6\u06e7\u06d8\u06e5\u06e6\u06df\u06e4\u06e1\u06da\u06e7\u06e8\u06d7\u06e8\u06e4\u06db\u06d9"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_5

    goto :goto_6

    :sswitch_1d
    const-string v0, "\u06e1\u06da\u06dc\u06d8\u06d6\u06d6\u06d8\u06d8\u06e1\u06e6\u06e2\u06e2\u06db\u06eb\u06ec\u06db\u06eb\u06e6\u06df\u06e8\u06d8\u06df\u06df\u06e8\u06d8\u06d6\u06d9\u06dc\u06d8\u06e0\u06e7\u06d6\u06dc\u06dc\u06dc\u06e1\u06e6\u06d8\u06e5\u06d9\u06e4\u06d6\u06d8\u06e0\u06ec\u06e1\u06d8\u06d8\u06dc\u06da\u06ec\u06da\u06df\u06e6\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "\u06dc\u06d7\u06e1\u06d8\u06e0\u06e1\u06dc\u06d7\u06d9\u06da\u06ec\u06e6\u06eb\u06d9\u06e6\u06db\u06e6\u06e4\u06ec\u06e6\u06da\u06e2\u06eb\u06d8\u06e7\u06eb\u06d6\u06e8\u06d8\u06d8\u06d9\u06e8\u06df\u06e0\u06db\u06d7\u06e0\u06df\u06d8\u06d8\u06d7\u06d7"

    goto :goto_6

    :sswitch_1f
    const v3, -0x1c1284c3

    const-string v0, "\u06d6\u06e2\u06e4\u06e0\u06d9\u06d9\u06e0\u06d6\u06e1\u06d8\u06d9\u06eb\u06db\u06e7\u06d8\u06dc\u06d8\u06dc\u06da\u06e8\u06da\u06e6\u06e7\u06d8\u06db\u06e0\u06d7\u06e6\u06dc\u06e0\u06e7\u06dc\u06dc\u06e8\u06ec\u06e7\u06dc\u06e5\u06e4\u06db\u06e8\u06e0\u06e4\u06e6\u06d8\u06e1\u06e6\u06e6\u06e2\u06e0\u06e2\u06ec\u06ec\u06e8\u06d8\u06e7\u06e8\u06db"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v3

    sparse-switch v9, :sswitch_data_6

    goto :goto_7

    :sswitch_20
    const-string v0, "\u06e7\u06e7\u06d8\u06dc\u06da\u06e8\u06dc\u06ec\u06df\u06e2\u06d9\u06e0\u06da\u06e0\u06e5\u06d6\u06dc\u06db\u06dc\u06df\u06e6\u06df\u06e0\u06e2\u06df\u06e4\u06e5\u06e0\u06eb\u06d6\u06e4\u06e0\u06e6\u06e6\u06da\u06dc\u06d8\u06d6\u06e4\u06e1\u06df\u06e4\u06e5\u06e5\u06e0\u06e8\u06d8\u06db\u06d6\u06d7\u06e8\u06e5\u06d7\u06e8\u06d7\u06da"

    goto :goto_7

    :cond_2
    const-string v0, "\u06e0\u06d7\u06e7\u06db\u06eb\u06d7\u06e2\u06da\u06d6\u06d8\u06e4\u06e2\u06d9\u06ec\u06eb\u06d6\u06d8\u06e0\u06e1\u06d8\u06d9\u06dc\u06d8\u06d8\u06d8\u06eb\u06eb\u06e8\u06e1\u06df\u06da\u06d8\u06d8\u06e8\u06e8\u06d8\u06dc\u06e6\u06d8\u06db\u06db\u06db\u06e7\u06d8\u06d9\u06ec\u06dc\u06d8\u06e2\u06e1\u06e0\u06e5\u06d6\u06e1\u06d8\u06eb\u06d8\u06e5\u06d8"

    goto :goto_7

    :sswitch_21
    if-ne v6, v8, :cond_2

    const-string v0, "\u06ec\u06e0\u06df\u06d9\u06e8\u06e1\u06dc\u06dc\u06e7\u06db\u06eb\u06e7\u06e0\u06e5\u06eb\u06df\u06e4\u06e0\u06d7\u06d9\u06d6\u06d8\u06eb\u06e2\u06eb\u06e7\u06e0\u06e5\u06dc\u06e4\u06df\u06d9\u06db\u06eb\u06e4\u06d8\u06e4\u06d8\u06e6\u06e6\u06d8\u06e6\u06df\u06e1"

    goto :goto_7

    :sswitch_22
    const-string v0, "\u06da\u06d9\u06d6\u06d8\u06db\u06e4\u06dc\u06d8\u06d9\u06db\u06d6\u06e7\u06d8\u06da\u06e0\u06db\u06d6\u06e5\u06dc\u06e8\u06e7\u06d8\u06d6\u06e6\u06e8\u06db\u06e0\u06d6\u06d9\u06db\u06e8\u06e8\u06d9\u06eb\u06e5\u06e5\u06e5"

    goto :goto_6

    :sswitch_23
    const-string v0, "\u06da\u06d9\u06d8\u06d8\u06e0\u06e1\u06e5\u06d8\u06e6\u06e2\u06e7\u06e7\u06df\u06dc\u06e2\u06dc\u06e1\u06d8\u06e4\u06d7\u06e6\u06d8\u06e4\u06e5\u06d6\u06e4\u06d6\u06e8\u06e2\u06e4\u06d6\u06e2\u06e5\u06d6\u06d8\u06e0\u06db\u06d8\u06d8\u06d8\u06db\u06e4\u06d7\u06eb\u06e5\u06d8\u06d6\u06e7\u06e1\u06eb\u06eb\u06e1\u06d8\u06e0\u06e5\u06e6\u06d8\u06d7\u06ec\u06e7\u06d6\u06e2\u06e6"

    goto :goto_6

    :sswitch_24
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/b7;->OooO()V

    const-string v0, "\u06e0\u06e0\u06e8\u06ec\u06e8\u06df\u06e2\u06dc\u06ec\u06d6\u06d6\u06d8\u06eb\u06db\u06e2\u06da\u06db\u06d9\u06d8\u06d8\u06d6\u06ec\u06e1\u06d8\u06d8\u06ec\u06e1\u06d8\u06d8\u06d8\u06e4\u06e8\u06dc\u06d8\u06da\u06dc\u06e7"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_25
    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/entity/MsgItem;

    const/16 v3, 0x2762

    invoke-direct {v1, v3}, Lcom/cyjh/elfin/entity/MsgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    const-string v0, "\u06e7\u06e6\u06e1\u06e5\u06db\u06ec\u06e5\u06d8\u06d6\u06dc\u06ec\u06e6\u06dc\u06e2\u06d7\u06e7\u06e4\u06e5\u06d8\u06eb\u06e8\u06e0\u06d7\u06d8\u06e4\u06e7\u06d7\u06e6\u06e5\u06eb"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_26
    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v1, Lz2/p3;

    invoke-direct {v1}, Lz2/p3;-><init>()V

    invoke-virtual {v0, v1}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    const-string v0, "\u06d8\u06db\u06d7\u06e8\u06e6\u06e2\u06e5\u06df\u06d6\u06d8\u06ec\u06e0\u06e8\u06d8\u06e7\u06e8\u06e6\u06e2\u06e0\u06e2\u06d7\u06e8\u06e7\u06e5\u06e1\u06d8\u06dc\u06da\u06d6\u06d8\u06dc\u06e4\u06d8\u06d7\u06df\u06e8\u06e5\u06db\u06e8\u06df\u06e0\u06d7\u06e2\u06ec\u06e6\u06d8\u06eb\u06e0\u06e2\u06d7\u06d7\u06e7"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_27
    const v1, -0x7188f33f

    const-string v0, "\u06e6\u06db\u06e1\u06d9\u06d6\u06e5\u06d8\u06e0\u06d9\u06d9\u06e2\u06db\u06e5\u06df\u06d8\u06d8\u06e8\u06e2\u06d8\u06d6\u06e2\u06ec\u06e2\u06da\u06da\u06e8\u06d8\u06d8\u06d8\u06e5\u06d6\u06db\u06e1\u06d7\u06d6\u06e1\u06e4\u06da\u06d7\u06d7\u06eb\u06d6\u06d6\u06e1\u06eb\u06e7\u06e5\u06d8\u06e6\u06dc"

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_7

    goto :goto_8

    :sswitch_28
    const-string v0, "\u06e1\u06e5\u06e1\u06e7\u06e1\u06d6\u06d9\u06dc\u06da\u06dc\u06d9\u06e1\u06d8\u06d9\u06df\u06e2\u06e4\u06e2\u06d7\u06e1\u06eb\u06e8\u06eb\u06dc\u06e6\u06dc\u06e5\u06e1\u06da\u06eb\u06e5\u06d8\u06d9\u06e1\u06e6\u06ec\u06eb\u06da\u06e8\u06d7\u06e7\u06e6\u06e5\u06da\u06ec\u06d7\u06e5\u06d8\u06e4\u06e0\u06eb"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "\u06e2\u06eb\u06e6\u06d8\u06dc\u06e4\u06d6\u06db\u06e5\u06e8\u06d7\u06e1\u06e0\u06eb\u06e5\u06e5\u06d8\u06d9\u06eb\u06d6\u06d8\u06db\u06dc\u06e8\u06d8\u06df\u06e1\u06e1\u06e4\u06df\u06e8\u06d8\u06db\u06dc\u06e4\u06db\u06ec\u06d8\u06d8\u06d9\u06d6\u06e7"

    goto :goto_8

    :sswitch_2a
    const v3, -0x12d0f7d3

    const-string v0, "\u06d9\u06dc\u06eb\u06e8\u06ec\u06ec\u06e7\u06d9\u06e7\u06e8\u06db\u06df\u06e2\u06df\u06e6\u06e5\u06e1\u06eb\u06e1\u06df\u06d8\u06d8\u06da\u06e5\u06e0\u06e6\u06d7\u06d7\u06df\u06d6\u06e0\u06d8\u06e6\u06e0\u06da\u06dc\u06e8\u06d8\u06d7\u06dc\u06d6\u06d8\u06ec\u06d8\u06da"

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v3

    sparse-switch v9, :sswitch_data_8

    goto :goto_9

    :sswitch_2b
    const-string v0, "\u06df\u06d7\u06e2\u06e0\u06ec\u06e8\u06e5\u06df\u06e6\u06db\u06ec\u06d7\u06db\u06dc\u06d8\u06e0\u06e2\u06e8\u06d8\u06ec\u06e4\u06d8\u06da\u06dc\u06d8\u06e7\u06e8\u06d8\u06e6\u06db\u06e8\u06d8\u06da\u06e2\u06e7\u06d7\u06d9"

    goto :goto_9

    :cond_3
    const-string v0, "\u06d9\u06eb\u06df\u06d6\u06e7\u06e8\u06d8\u06da\u06df\u06d8\u06d8\u06e7\u06df\u06e1\u06d8\u06d9\u06db\u06d6\u06d7\u06d8\u06e4\u06db\u06e0\u06da\u06e7\u06e8\u06d8\u06e0\u06e6\u06d9\u06d9\u06e6\u06db\u06d6\u06db\u06e8\u06d8\u06e4\u06e7\u06d8\u06d8"

    goto :goto_9

    :sswitch_2c
    const/16 v0, 0x64

    if-ne v6, v0, :cond_3

    const-string v0, "\u06ec\u06d6\u06e0\u06da\u06db\u06d6\u06d8\u06eb\u06e8\u06ec\u06e8\u06e5\u06e7\u06e7\u06dc\u06d7\u06e0\u06e1\u06d9\u06db\u06e5\u06eb\u06da\u06e4\u06e8\u06d8\u06e7\u06df\u06e6\u06eb\u06e1\u06dc\u06d8\u06df\u06df\u06ec\u06e6\u06e4"

    goto :goto_9

    :sswitch_2d
    const-string v0, "\u06e5\u06e5\u06e6\u06da\u06da\u06e8\u06d8\u06d9\u06e6\u06e2\u06db\u06e4\u06e1\u06d7\u06ec\u06e5\u06d8\u06e0\u06da\u06e1\u06d8\u06d6\u06df\u06da\u06e7\u06da\u06e5\u06d8\u06dc\u06da\u06e6\u06d8\u06ec\u06d8\u06da"

    goto :goto_8

    :sswitch_2e
    const-string v0, "\u06e0\u06e8\u06d6\u06e7\u06db\u06e7\u06e0\u06d6\u06d6\u06d8\u06eb\u06e4\u06e8\u06db\u06d9\u06e6\u06d8\u06eb\u06e0\u06dc\u06e0\u06d6\u06d8\u06d8\u06e0\u06e0\u06d9\u06db\u06e4\u06e8\u06d8\u06da\u06e0\u06ec\u06eb\u06e2\u06d7\u06e1\u06da\u06e8\u06d8\u06d6\u06e6\u06d7\u06df\u06e2\u06e6\u06d8"

    goto :goto_8

    :sswitch_2f
    invoke-static {}, Lz2/v3;->OooO()Lz2/v3;

    move-result-object v0

    invoke-virtual {v0}, Lz2/v3;->OooO0oO()V

    const-string v0, "\u06e5\u06da\u06dc\u06d8\u06ec\u06db\u06d6\u06ec\u06e0\u06e5\u06db\u06db\u06e5\u06dc\u06e2\u06d9\u06d7\u06db\u06e8\u06d8\u06dc\u06eb\u06eb\u06df\u06da\u06e0\u06e1\u06e2\u06d6\u06e4\u06df\u06da\u06e1\u06e2\u06d6\u06d6\u06d8\u06e1\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_30
    invoke-static {p0}, Lz2/bh;->OooO0O0(Landroid/content/Context;)V

    const-string v0, "\u06d6\u06ec\u06dc\u06d8\u06e5\u06dc\u06d8\u06d8\u06db\u06d6\u06d8\u06d8\u06e5\u06e0\u06df\u06e2\u06d7\u06e8\u06e5\u06d9\u06da\u06db\u06d8\u06e6\u06d8\u06e1\u06e2\u06e1\u06d8\u06e8\u06e4\u06e5\u06dc\u06e5\u06e4\u06da\u06da\u06df\u06ec\u06e2\u06e4\u06da\u06d7\u06e5\u06e8\u06e0\u06d8\u06d8\u06db\u06d8\u06d9\u06e1\u06db"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_31
    invoke-static {p0}, Lz2/dh;->OooOo00(Landroid/content/Context;)V

    const-string v0, "\u06eb\u06e7\u06dc\u06d8\u06d6\u06e2\u06e0\u06db\u06d7\u06e6\u06d8\u06e7\u06e4\u06dc\u06d9\u06d9\u06da\u06d6\u06d9\u06e4\u06e0\u06df\u06dc\u06dc\u06d6\u06e1\u06eb\u06d9\u06e0\u06dc\u06e7\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_32
    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/i7;->Oooo0o()V

    const-string v0, "\u06e7\u06ec\u06e6\u06d8\u06dc\u06e5\u06ec\u06d6\u06dc\u06e5\u06e0\u06e1\u06db\u06dc\u06d9\u06e7\u06d6\u06e8\u06d6\u06d8\u06db\u06ec\u06e5\u06e2\u06dc\u06eb\u06ec\u06d6\u06d8\u06e1\u06e5"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_33
    invoke-static {p0}, Lz2/ii;->OooOo0O(Landroid/content/Context;)V

    const-string v0, "\u06d6\u06db\u06e7\u06d6\u06ec\u06e7\u06e4\u06e8\u06e8\u06d8\u06e6\u06ec\u06e4\u06e2\u06eb\u06ec\u06d8\u06e1\u06e7\u06e0\u06e6\u06d9\u06e7\u06e4\u06e1\u06d8\u06df\u06e1\u06df\u06d6\u06e4\u06e8\u06d8\u06ec\u06e7\u06e5\u06d8\u06e2\u06e2\u06db\u06df\u06e1\u06e8\u06e1\u06e6\u06da\u06e0\u06e7\u06d8\u06d8\u06e1\u06e5\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string v1, "\u06ec\u06e6\u06df\u06d9\u06df\u06ec\u06ec\u06eb\u06d6\u06e5\u06e5\u06e6\u06d8\u06da\u06e2\u06e8\u06d8\u06eb\u06e4\u06e8\u06d8\u06eb\u06e5\u06d6\u06d8\u06db\u06da\u06d9\u06e5\u06d9\u06e2\u06e8\u06df\u06e4\u06da\u06df\u06d6\u06d8\u06e0\u06db\u06dc\u06d8\u06e0\u06eb\u06dc\u06d8\u06d9\u06dc\u06e7\u06e4\u06ec\u06e4\u06df\u06e1"

    move-object v4, v0

    goto/16 :goto_0

    :sswitch_35
    const v1, -0x3f1cfd22    # -7.0941f

    const-string v0, "\u06e8\u06da\u06d8\u06e8\u06ec\u06d7\u06d9\u06e2\u06dc\u06d8\u06ec\u06d7\u06da\u06d6\u06e2\u06eb\u06e0\u06dc\u06d8\u06d7\u06e5\u06e5\u06da\u06e1\u06d8\u06d8\u06dc\u06e4\u06e5\u06d6\u06e4\u06e5\u06e8\u06d6\u06d6\u06d8\u06e6\u06e5\u06e7\u06dc\u06e4\u06dc\u06d8\u06df\u06dc\u06e6"

    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_9

    goto :goto_a

    :sswitch_36
    const-string v0, "\u06e1\u06d7\u06e6\u06e4\u06da\u06e6\u06d8\u06eb\u06e7\u06d8\u06d8\u06da\u06e8\u06e6\u06d8\u06dc\u06e2\u06e8\u06e4\u06db\u06e4\u06ec\u06e4\u06e1\u06dc\u06e7\u06e6\u06d9\u06db\u06e6\u06db\u06d7\u06dc"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_37
    const-string v0, "\u06e1\u06e7\u06e1\u06d9\u06dc\u06ec\u06d9\u06dc\u06df\u06dc\u06e5\u06e1\u06d8\u06e1\u06e8\u06da\u06eb\u06ec\u06e4\u06e2\u06d8\u06e6\u06dc\u06e7\u06e2\u06e5\u06eb\u06e5\u06d8\u06e7\u06d8\u06db\u06da\u06e8\u06e5\u06e2\u06df\u06e6"

    goto :goto_a

    :sswitch_38
    const v3, -0x45f67274

    const-string v0, "\u06e1\u06d6\u06e5\u06d9\u06e2\u06da\u06e1\u06e4\u06dc\u06e1\u06e4\u06e5\u06d8\u06da\u06e8\u06d9\u06e6\u06da\u06e6\u06d8\u06d7\u06e4\u06d7\u06eb\u06dc\u06dc\u06e8\u06eb\u06e1\u06d8\u06df\u06d7\u06ec\u06dc\u06e8\u06d6\u06d8\u06ec\u06e6\u06d8\u06db\u06dc\u06e8\u06d8\u06e4\u06eb\u06e6\u06d8"

    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v3

    sparse-switch v9, :sswitch_data_a

    goto :goto_b

    :sswitch_39
    const-string v0, "\u06d6\u06e7\u06da\u06e0\u06da\u06dc\u06d8\u06e6\u06db\u06e1\u06d8\u06d7\u06da\u06dc\u06d8\u06ec\u06d8\u06d7\u06eb\u06e6\u06d8\u06e6\u06e2\u06e1\u06d8\u06d9\u06e6\u06e2\u06dc\u06dc\u06d8\u06d9\u06eb\u06e8\u06d7\u06e4\u06d9\u06e7\u06eb\u06e6\u06d8"

    goto :goto_a

    :cond_4
    const-string v0, "\u06e0\u06df\u06e1\u06d8\u06d9\u06e6\u06da\u06db\u06e6\u06e6\u06d8\u06e1\u06d8\u06e1\u06e1\u06d8\u06d8\u06e6\u06dc\u06db\u06df\u06d8\u06e7\u06d8\u06e8\u06dc\u06e8\u06ec\u06e6\u06d6\u06df\u06d8\u06d6\u06d8\u06e7\u06dc\u06df\u06d7\u06dc"

    goto :goto_b

    :sswitch_3a
    if-eqz v4, :cond_4

    const-string v0, "\u06d7\u06e2\u06e0\u06e0\u06dc\u06e1\u06e4\u06e7\u06d6\u06e4\u06e6\u06df\u06db\u06d7\u06e7\u06dc\u06d8\u06e8\u06d8\u06e7\u06e5\u06e7\u06d6\u06e0\u06dc\u06db\u06e4\u06d8\u06d9\u06e0\u06ec\u06e7\u06ec\u06eb\u06ec\u06d8\u06eb\u06e4\u06d9\u06d9\u06e5\u06d7\u06e4\u06e1\u06e8\u06d9\u06db\u06e8\u06d9\u06da\u06d8\u06da\u06e1\u06e6"

    goto :goto_b

    :sswitch_3b
    const-string v0, "\u06d9\u06d8\u06ec\u06e0\u06e6\u06d8\u06e1\u06d6\u06d8\u06e0\u06e2\u06eb\u06e5\u06d9\u06d7\u06ec\u06d8\u06e1\u06d8\u06d7\u06e4\u06d6\u06d8\u06d7\u06db\u06d8\u06db\u06db\u06d8\u06df\u06dc\u06e5\u06ec\u06e1\u06df\u06eb\u06e0\u06d6\u06db\u06ec\u06eb\u06d8\u06e6\u06e0\u06ec\u06e2\u06d8\u06d7\u06e6\u06d8"

    goto :goto_b

    :sswitch_3c
    const-string v0, "\u06eb\u06d9\u06dc\u06d8\u06e0\u06e7\u06e4\u06d8\u06d8\u06e7\u06d8\u06eb\u06e6\u06dc\u06d8\u06e4\u06eb\u06dc\u06d8\u06e7\u06d7\u06e2\u06d7\u06d7\u06e1\u06d8\u06e4\u06da\u06e8\u06dc\u06e7\u06d6\u06eb\u06df\u06da"

    goto :goto_a

    :sswitch_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06e6\u06dc\u06e8\u06d9\u06d8\u06df\u06e6\u06dc\u06d7\u06d6\u06e7\u06d8\u06d8\u06d8\u06d7\u06dc\u06d8\u06e7\u06e4\u06eb\u06e2\u06e6\u06db\u06dc\u06df\u06e6\u06d8\u06e6\u06db\u06d7\u06e1\u06e5\u06e4"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_3e
    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e0\u06d7\u06e5\u06d8\u06ec\u06e0\u06dc\u06d8\u06e8\u06da\u06d8\u06d8\u06eb\u06dc\u06e6\u06d8\u06db\u06d7\u06dc\u06d6\u06e2\u06e6\u06e6\u06e6\u06d6\u06da\u06eb\u06e6\u06d8\u06d7\u06e4\u06eb\u06d6\u06d9\u06e7\u06df\u06d6\u06df\u06eb\u06dc\u06eb\u06dc\u06df\u06ec\u06e8\u06e5\u06d8\u06d9\u06d8\u06eb\u06ec\u06e7\u06e1\u06d7\u06d8\u06d8\u06d7\u06e6\u06e1"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_3f
    const-string v0, ":download_server"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06db\u06d6\u06db\u06da\u06df\u06e5\u06db\u06db\u06d7\u06e0\u06e4\u06eb\u06e5\u06df\u06d8\u06d8\u06da\u06db\u06db\u06e6\u06e0\u06d7\u06e8\u06e4\u06dc\u06d6\u06e4\u06eb\u06da\u06d9"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    const-string v0, "\u06d9\u06e2\u06e8\u06e8\u06df\u06dc\u06e2\u06eb\u06e1\u06e5\u06d9\u06d6\u06d8\u06e8\u06e7\u06d8\u06df\u06e4\u06e4\u06e0\u06e8\u06d8\u06d8\u06df\u06d8\u06e4\u06df\u06e6\u06e8\u06ec\u06e5\u06d8\u06e8\u06e5\u06df\u06e0\u06e2\u06db\u06e6\u06d8\u06e0\u06e1\u06eb\u06d6\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_41
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const-string v0, "\u06df\u06eb\u06df\u06d7\u06d7\u06dc\u06db\u06eb\u06dc\u06ec\u06d6\u06e4\u06e5\u06d7\u06df\u06d8\u06df\u06d7\u06ec\u06d8\u06d6\u06d8\u06e8\u06eb\u06d6\u06d8\u06e0\u06e8\u06e1\u06d8\u06dc\u06d6\u06e1\u06da\u06e8\u06e0\u06dc\u06db\u06ec"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_42
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const-string v0, "\u06dc\u06e8\u06ec\u06e6\u06eb\u06e5\u06d8\u06e0\u06e0\u06e5\u06d7\u06e6\u06e7\u06d8\u06d7\u06df\u06d7\u06ec\u06e1\u06e7\u06e6\u06ec\u06e1\u06e6\u06dc\u06dc\u06e0\u06e0\u06db\u06e6\u06d6\u06e6\u06dc\u06ec\u06df\u06e8\u06d6"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_43
    move v0, v8

    goto/16 :goto_3

    :sswitch_44
    const-string v0, "\u06e7\u06e8\u06e0\u06da\u06e6\u06e5\u06e1\u06e1\u06e8\u06e4\u06e4\u06e5\u06e1\u06e4\u06df\u06e4\u06da\u06dc\u06d8\u06e2\u06e2\u06e1\u06d8\u06db\u06e7\u06e6\u06d6\u06e8\u06ec\u06e5\u06e4\u06eb\u06df\u06e1\u06eb\u06d7\u06e1\u06e7\u06d8\u06dc\u06e2\u06ec\u06e7\u06e8\u06df"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_45
    const-string v0, "\u06e0\u06d7\u06e1\u06d8\u06db\u06ec\u06e8\u06eb\u06e7\u06e2\u06d7\u06d6\u06d6\u06d8\u06eb\u06db\u06db\u06df\u06eb\u06d9\u06e4\u06e2\u06e2\u06e8\u06d7\u06e5\u06e6\u06d6\u06e0\u06ec\u06e6\u06e0\u06e6\u06db\u06d8\u06d8\u06e8\u06da\u06d8\u06d8\u06e1\u06db\u06da\u06eb\u06d6\u06e0\u06e1\u06e2\u06eb\u06e7\u06eb\u06d9\u06eb\u06d7\u06e4\u06e5\u06db"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_46
    const-string v0, "\u06d9\u06e2\u06e8\u06e8\u06df\u06dc\u06e2\u06eb\u06e1\u06e5\u06d9\u06d6\u06d8\u06e8\u06e7\u06d8\u06df\u06e4\u06e4\u06e0\u06e8\u06d8\u06d8\u06df\u06d8\u06e4\u06df\u06e6\u06e8\u06ec\u06e5\u06d8\u06e8\u06e5\u06df\u06e0\u06e2\u06db\u06e6\u06d8\u06e0\u06e1\u06eb\u06d6\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_47
    const-string v0, "\u06dc\u06e8\u06ec\u06e6\u06eb\u06e5\u06d8\u06e0\u06e0\u06e5\u06d7\u06e6\u06e7\u06d8\u06d7\u06df\u06d7\u06ec\u06e1\u06e7\u06e6\u06ec\u06e1\u06e6\u06dc\u06dc\u06e0\u06e0\u06db\u06e6\u06d6\u06e6\u06dc\u06ec\u06df\u06e8\u06d6"

    move-object v1, v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7cbcf39c -> :sswitch_2
        -0x76d064f6 -> :sswitch_1c
        -0x73181796 -> :sswitch_30
        -0x712f5e5e -> :sswitch_42
        -0x6b49151c -> :sswitch_47
        -0x62af3763 -> :sswitch_40
        -0x5c48f076 -> :sswitch_33
        -0x52140552 -> :sswitch_4
        -0x4b1f4ab5 -> :sswitch_27
        -0x49339325 -> :sswitch_13
        -0x35e04819 -> :sswitch_10
        -0x24ea88bf -> :sswitch_2f
        -0x1afb7571 -> :sswitch_11
        -0x158b7987 -> :sswitch_3
        -0x102678ca -> :sswitch_26
        -0xcda7186 -> :sswitch_1
        -0xbdb60cb -> :sswitch_32
        -0xbbaf927 -> :sswitch_3d
        0xa536125 -> :sswitch_31
        0x1260b1eb -> :sswitch_47
        0x129bb8e5 -> :sswitch_12
        0x133a6e90 -> :sswitch_e
        0x27394b93 -> :sswitch_43
        0x28663835 -> :sswitch_d
        0x31226b2f -> :sswitch_3e
        0x395b7532 -> :sswitch_24
        0x4c778b17 -> :sswitch_0
        0x549e1b78 -> :sswitch_1b
        0x589db267 -> :sswitch_35
        0x59e3c4ef -> :sswitch_34
        0x669e111f -> :sswitch_f
        0x692f7b52 -> :sswitch_25
        0x6c7a189b -> :sswitch_3f
        0x6d1f7304 -> :sswitch_41
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7233bc8d -> :sswitch_c
        -0x2f00862a -> :sswitch_b
        0x46d6a8 -> :sswitch_5
        0x711ee2b2 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0xdfb0911 -> :sswitch_8
        0x7ec0ec3 -> :sswitch_6
        0xbe016a2 -> :sswitch_a
        0x14181f5a -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x75a196c8 -> :sswitch_14
        0x3bde1b30 -> :sswitch_19
        0x469d27ba -> :sswitch_44
        0x7f72b97b -> :sswitch_1a
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x3882e17a -> :sswitch_16
        -0x21c8a112 -> :sswitch_17
        -0x1ad05e5b -> :sswitch_15
        0x46b4f5fd -> :sswitch_18
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x5101f3cc -> :sswitch_45
        -0x3a627beb -> :sswitch_1f
        -0x39558028 -> :sswitch_23
        0x28301821 -> :sswitch_1d
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x557a4a04 -> :sswitch_1e
        0x30309be -> :sswitch_21
        0x1e6bd5fb -> :sswitch_22
        0x212ec6af -> :sswitch_20
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x347c087d -> :sswitch_28
        -0x33682748 -> :sswitch_2e
        -0x83174be -> :sswitch_47
        0x510d01a2 -> :sswitch_2a
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x75267eab -> :sswitch_2d
        -0x4a8c3c0a -> :sswitch_2b
        -0x23dbf693 -> :sswitch_2c
        -0xd0f1ad5 -> :sswitch_29
    .end sparse-switch

    :sswitch_data_9
    .sparse-switch
        -0x26067580 -> :sswitch_46
        0x37d79215 -> :sswitch_38
        0x3c334c60 -> :sswitch_3c
        0x5ca8e67c -> :sswitch_36
    .end sparse-switch

    :sswitch_data_a
    .sparse-switch
        -0x666aedbc -> :sswitch_37
        0x1d5ea868 -> :sswitch_3a
        0x2ecc7c28 -> :sswitch_3b
        0x58ad38fc -> :sswitch_39
    .end sparse-switch
.end method
