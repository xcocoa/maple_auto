.class public Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;


# static fields
.field private static final OooooOo:Ljava/lang/String;

.field public static final Oooooo0:Ljava/lang/String; = "PhoneConfig"


# instance fields
.field private OooooO0:Landroid/widget/ImageView;

.field private OooooOO:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06d6\u06e5\u06ec\u06e2\u06e0\u06e4\u06df\u06e1\u06ec\u06df\u06e2\u06d6\u06d8\u06d9\u06e5\u06e0\u06d6\u06e7\u06e8\u06d8\u06ec\u06dc\u06d8\u06db\u06e5\u06eb\u06d6\u06e1\u06e8\u06d8\u06e2\u06d9\u06e8\u06d8\u06df\u06e4\u06e7\u06e5\u06dc\u06e7\u06e0\u06d8\u06d9\u06e6\u06df\u06e4\u06db\u06d8\u06d8\u06e5\u06e7\u06e8\u06e2\u06db\u06d6\u06df\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x203

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x23d

    const/16 v2, 0x7b

    const v3, -0x5340d5df

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-class v0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->OooooOo:Ljava/lang/String;

    const-string v0, "\u06df\u06e1\u06d9\u06dc\u06d7\u06e8\u06eb\u06db\u06e2\u06d6\u06e1\u06db\u06e2\u06e8\u06e4\u06d9\u06eb\u06e8\u06d8\u06d6\u06d7\u06e1\u06d8\u06dc\u06df\u06da\u06e7\u06e2\u06e5\u06d8\u06d8\u06da\u06dc\u06e0\u06d8\u06e7\u06d8\u06e1\u06dc\u06e4\u06d9\u06e6\u06dc\u06e2\u06d8\u06d6"

    goto :goto_0

    :sswitch_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x336dab2a -> :sswitch_0
        0x3e1fb35c -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private OooO()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e2\u06eb\u06d8\u06d8\u06ec\u06d6\u06dc\u06df\u06e6\u06e5\u06d8\u06e6\u06df\u06eb\u06da\u06db\u06da\u06ec\u06d9\u06d8\u06d9\u06eb\u06db\u06df\u06d6\u06e1\u06d8\u06e5\u06e6\u06d6\u06e2\u06d7\u06e5\u06d8\u06db\u06e0\u06e6\u06d8\u06e8\u06dc\u06e1\u06e6\u06e1\u06d8\u06df\u06dc\u06e7\u06d8\u06e5\u06eb\u06da\u06da\u06d7\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x145

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x39f

    const/16 v3, 0x1a

    const v4, 0x6b228bf0

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06e7\u06d9\u06df\u06e0\u06e5\u06d8\u06e5\u06e1\u06e7\u06d8\u06e5\u06e1\u06d6\u06e5\u06da\u06d6\u06e0\u06df\u06e0\u06e6\u06e1\u06e6\u06d8\u06df\u06e5\u06dc\u06d8\u06e7\u06db\u06dc\u06e8\u06e7\u06dc\u06df\u06d8\u06ec\u06e8\u06d9\u06e6\u06d8\u06d8\u06d8\u06d8\u06d8\u06db\u06e1\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    const v2, 0x4e8fe36b

    const-string v0, "\u06e1\u06e4\u06e1\u06d8\u06ec\u06db\u06e2\u06d7\u06ec\u06d8\u06d8\u06da\u06eb\u06db\u06e8\u06e7\u06d6\u06d8\u06d6\u06df\u06d7\u06e1\u06db\u06e4\u06da\u06da\u06ec\u06d9\u06e7\u06e4\u06da\u06d7\u06d8\u06df\u06eb\u06db\u06e1\u06d8\u06d9\u06e2\u06dc\u06db\u06d8\u06e1\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const v3, 0x96d8e72

    const-string v0, "\u06d9\u06e2\u06da\u06e8\u06db\u06e6\u06e5\u06e8\u06da\u06db\u06e7\u06dc\u06d8\u06da\u06e8\u06ec\u06ec\u06eb\u06da\u06ec\u06d9\u06e6\u06d8\u06e6\u06e0\u06e2\u06dc\u06d9\u06ec\u06e1\u06e6\u06e7\u06e7\u06e2\u06d9\u06e8\u06e0\u06e6\u06df\u06db\u06e7\u06df\u06e6\u06e8\u06d7\u06e2\u06eb\u06eb\u06d8\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->OooooOO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06dc\u06dc\u06d8\u06e1\u06e1\u06e1\u06d8\u06eb\u06e8\u06e8\u06d8\u06e5\u06d7\u06d7\u06e8\u06d6\u06e4\u06ec\u06df\u06dc\u06da\u06d6\u06dc\u06eb\u06eb\u06d8\u06e6\u06e1\u06dc\u06e7\u06e0\u06d8\u06d8\u06d6\u06e2\u06e5\u06e4\u06e1\u06d8\u06db\u06e7\u06da\u06d8\u06e7\u06d9\u06e8\u06e6\u06dc\u06d8\u06ec\u06dc\u06df\u06e5\u06e4\u06df\u06e0\u06e6\u06e6"

    goto :goto_2

    :sswitch_4
    const-string v0, "\u06e2\u06da\u06e2\u06d8\u06df\u06df\u06d8\u06ec\u06d7\u06d9\u06df\u06e0\u06e0\u06e4\u06da\u06d6\u06e0\u06e5\u06da\u06e8\u06d8\u06e4\u06e6\u06d8\u06d6\u06d7\u06db\u06e7\u06e1\u06e5\u06dc\u06ec\u06db\u06d9\u06db\u06e4\u06d6\u06d6\u06e5\u06d8\u06e5\u06e1\u06eb\u06d7\u06e2\u06d6\u06d8\u06d8\u06e6\u06e6\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e1\u06e5\u06e4\u06e4\u06db\u06dc\u06d8\u06dc\u06e4\u06e4\u06d8\u06d6\u06e1\u06d6\u06eb\u06d7\u06d9\u06e6\u06d8\u06e2\u06e6\u06e7\u06d7\u06db\u06e0\u06eb\u06da\u06d6\u06dc\u06d8\u06e0\u06e8\u06e5\u06e2\u06ec\u06d6\u06ec\u06e7\u06e1\u06e6\u06d8\u06db\u06e6\u06e4\u06e0\u06eb\u06eb\u06dc\u06e1\u06e4\u06db\u06d8\u06d6\u06df\u06e2\u06db"

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06db\u06e6\u06df\u06ec\u06d6\u06e1\u06d8\u06e4\u06eb\u06e7\u06db\u06e7\u06e0\u06da\u06db\u06da\u06e0\u06e0\u06df\u06d7\u06e8\u06d9\u06ec\u06d7\u06e7\u06e1\u06e1\u06e6\u06d8\u06dc\u06e8\u06e7\u06e8\u06ec\u06e1\u06d8\u06e2\u06e6\u06ec\u06e2\u06da\u06e4\u06da\u06df\u06e4\u06e0\u06e8\u06d9\u06dc\u06e1\u06e0"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06df\u06e6\u06e7\u06d8\u06dc\u06ec\u06d6\u06d8\u06e2\u06e0\u06e7\u06e5\u06db\u06e0\u06d7\u06e1\u06d8\u06d8\u06e6\u06d8\u06d8\u06d8\u06ec\u06ec\u06df\u06da\u06d7\u06e8\u06e6\u06eb\u06e7\u06d6\u06e5\u06e2\u06eb\u06da\u06d6\u06da\u06e7\u06e6\u06eb\u06e0\u06d8\u06d8\u06d8\u06e5\u06dc\u06e4\u06df\u06d9\u06da\u06dc\u06d8"

    goto :goto_1

    :sswitch_7
    const-string v0, "\u06eb\u06d7\u06e8\u06d8\u06d8\u06da\u06df\u06e6\u06db\u06e1\u06e5\u06e2\u06d8\u06d8\u06e4\u06da\u06e2\u06e8\u06d8\u06d8\u06d8\u06eb\u06ec\u06e6\u06e0\u06d7\u06e6\u06e5\u06db\u06ec\u06dc\u06dc\u06da\u06d9\u06e2\u06e0\u06e1\u06ec\u06d6\u06d8\u06db\u06d7\u06e8\u06d8\u06db\u06e6\u06d8"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06e0\u06e6\u06e5\u06e7\u06d8\u06da\u06e1\u06dc\u06e7\u06d8\u06e5\u06d6\u06dc\u06d8\u06dc\u06d9\u06eb\u06e5\u06e4\u06e5\u06d6\u06db\u06dc\u06d8\u06db\u06e7\u06df\u06db\u06e8\u06e8\u06d8\u06df\u06d9\u06d9\u06d9\u06e4\u06d6\u06d8\u06e8\u06e7\u06e6\u06d8\u06db\u06d9\u06e6\u06d7\u06e2\u06d8"

    goto :goto_0

    :sswitch_9
    const-string v0, "\u8df3\u8f6c\u94fe\u63a5\u4e3a\u7a7a\uff01"

    invoke-static {p0, v0}, Lz2/c5;->OooO0o0(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u06ec\u06e2\u06e8\u06d8\u06eb\u06db\u06e5\u06db\u06e6\u06e4\u06db\u06d9\u06d7\u06db\u06e5\u06e4\u06da\u06d6\u06d8\u06d7\u06e6\u06d6\u06db\u06e2\u06da\u06da\u06d9\u06eb\u06eb\u06d8"

    goto :goto_0

    :sswitch_a
    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/gc;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v1

    const-string v0, "\u06db\u06db\u06e7\u06df\u06da\u06d7\u06ec\u06d7\u06e4\u06e8\u06d8\u06eb\u06e8\u06d9\u06e0\u06e2\u06e1\u06d7\u06d6\u06dc\u06e1\u06eb\u06e2\u06e8\u06ec\u06e2\u06d6\u06e1\u06eb\u06e4\u06e6\u06ec\u06d8\u06ec\u06e4\u06d9\u06df\u06e7\u06e5\u06df\u06df\u06e6\u06df\u06e6\u06e6\u06e0\u06e5\u06e1\u06e5\u06db\u06ec\u06e8"

    goto :goto_0

    :sswitch_b
    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->OooooOO:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lz2/gc;->OooOO0(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lz2/y8;->OooO0Oo(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u06d9\u06eb\u06db\u06db\u06e6\u06e1\u06d8\u06e2\u06e4\u06e1\u06d8\u06e7\u06dc\u06d8\u06da\u06e8\u06e5\u06ec\u06d6\u06d8\u06da\u06e4\u06e8\u06e4\u06db\u06ec\u06da\u06ec\u06eb\u06e7\u06dc\u06d8\u06e0\u06df\u06dc\u06d8\u06e6\u06e5\u06db\u06e7\u06db\u06e8\u06d8\u06e4\u06ec\u06d7\u06d6\u06d7\u06e7\u06e7\u06e8\u06e1\u06dc\u06ec\u06d6\u06d8\u06d9\u06e0\u06e6"

    goto :goto_0

    :sswitch_c
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06e5\u06d9\u06ec\u06e1\u06df\u06dc\u06d8\u06e0\u06eb\u06dc\u06d8\u06d8\u06d6\u06e5\u06df\u06e0\u06e8\u06d8\u06e7\u06e7\u06e8\u06d8\u06e5\u06e2\u06e6\u06d9\u06eb\u06e1\u06db\u06db\u06d6\u06da\u06eb\u06e6\u06d8\u06d6\u06d6\u06e8\u06e1\u06dc\u06dc\u06dc\u06e5\u06d8\u06d8\u06eb\u06e1\u06d8\u06d8\u06d6\u06e7\u06d8\u06eb\u06df\u06db"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06e4\u06df\u06e8\u06d8\u06e7\u06e0\u06e2\u06e8\u06ec\u06e5\u06d8\u06ec\u06d8\u06e8\u06d8\u06e8\u06e7\u06db\u06e7\u06e8\u06d8\u06e8\u06d9\u06d9\u06d9\u06e4\u06d6\u06d8\u06e7\u06ec\u06eb\u06e4\u06d9\u06e2\u06eb\u06e6\u06e8\u06da\u06d8\u06e5\u06da\u06e1\u06e6\u06d8\u06e1\u06d6\u06d8\u06d8\u06e8\u06db\u06e4\u06da\u06d9\u06da\u06e1\u06db\u06e5\u06dc\u06d8\u06e8\u06d8"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06e5\u06d9\u06ec\u06e1\u06df\u06dc\u06d8\u06e0\u06eb\u06dc\u06d8\u06d8\u06d6\u06e5\u06df\u06e0\u06e8\u06d8\u06e7\u06e7\u06e8\u06d8\u06e5\u06e2\u06e6\u06d9\u06eb\u06e1\u06db\u06db\u06d6\u06da\u06eb\u06e6\u06d8\u06d6\u06d6\u06e8\u06e1\u06dc\u06dc\u06dc\u06e5\u06d8\u06d8\u06eb\u06e1\u06d8\u06d8\u06d6\u06e7\u06d8\u06eb\u06df\u06db"

    goto :goto_0

    :sswitch_f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d8a99de -> :sswitch_c
        -0x6def881b -> :sswitch_a
        -0x40edb899 -> :sswitch_b
        -0x3e475406 -> :sswitch_0
        -0x3ae06482 -> :sswitch_9
        -0x5845bf4 -> :sswitch_e
        0x42f7a86c -> :sswitch_f
        0x53b8defe -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7e30f66c -> :sswitch_8
        -0x78848dce -> :sswitch_2
        -0x639e5569 -> :sswitch_7
        -0x33629a80 -> :sswitch_d
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x298f2c7d -> :sswitch_5
        -0x20c4b19 -> :sswitch_4
        0x65a89e76 -> :sswitch_6
        0x74b6fe01 -> :sswitch_3
    .end sparse-switch
.end method

.method public static synthetic OooO0oO(Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;)V
    .locals 4

    const-string v0, "\u06e6\u06d8\u06d8\u06d7\u06e5\u06e7\u06d8\u06d8\u06dc\u06e5\u06d8\u06e1\u06e5\u06e1\u06d8\u06e8\u06d8\u06d9\u06ec\u06e6\u06dc\u06d8\u06e0\u06df\u06d7\u06e6\u06dc\u06d8\u06e6\u06d6\u06d6\u06d8\u06e8\u06e8\u06e5\u06e5\u06e4\u06e2\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xda

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xc1

    const/16 v2, 0x222

    const v3, -0x2519abec

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06d7\u06dc\u06db\u06e6\u06e1\u06e5\u06db\u06e6\u06ec\u06e7\u06e2\u06e0\u06eb\u06db\u06e0\u06e2\u06ec\u06eb\u06ec\u06e0\u06d9\u06df\u06df\u06da\u06db\u06e2\u06d7\u06e8\u06d8\u06d8\u06da\u06eb\u06e8\u06da\u06db\u06d8\u06d8\u06e7\u06e2\u06e8\u06e5\u06e6\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->OooO()V

    const-string v0, "\u06eb\u06da\u06e6\u06d8\u06e2\u06e7\u06ec\u06e5\u06eb\u06d9\u06e8\u06e8\u06e8\u06d7\u06db\u06e2\u06ec\u06e6\u06db\u06e6\u06e5\u06e7\u06e8\u06da\u06df\u06e0\u06ec\u06da\u06e1\u06d7\u06db\u06d9\u06e7\u06e6\u06e7\u06df\u06df\u06e6\u06d7\u06e8\u06d8\u06e0\u06db\u06df\u06ec\u06eb\u06dc\u06d8\u06e0\u06d8\u06e1\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x63908337 -> :sswitch_2
        -0x471772ac -> :sswitch_1
        0x4c2bf7b -> :sswitch_0
    .end sparse-switch
.end method

.method public static OooO0oo(Landroid/content/Context;Lcom/cyjh/http/bean/response/PhoneConfig;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06dc\u06e5\u06d6\u06d6\u06eb\u06d8\u06d8\u06df\u06e8\u06dc\u06eb\u06ec\u06e6\u06d8\u06d8\u06db\u06e1\u06d8\u06df\u06df\u06dc\u06e2\u06e4\u06e1\u06e1\u06e2\u06dc\u06e1\u06d6\u06d8\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x21f

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x1a2

    const/16 v3, 0x127

    const v4, -0x5f886d18

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06d6\u06df\u06e4\u06eb\u06d6\u06e4\u06e0\u06df\u06e6\u06eb\u06e4\u06db\u06d8\u06da\u06d9\u06d6\u06df\u06e5\u06ec\u06e4\u06e8\u06d6\u06e1\u06e2\u06d6\u06e4\u06e0\u06e1\u06dc\u06db\u06df\u06dc\u06d8\u06e7\u06d9\u06e2\u06da\u06ec\u06e1\u06e7\u06d6\u06d7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06d7\u06d9\u06d9\u06d6\u06d8\u06ec\u06e1\u06e5\u06d8\u06d9\u06e0\u06e5\u06d8\u06e5\u06e5\u06e8\u06d8\u06e2\u06e8\u06e7\u06d8\u06e1\u06da\u06dc\u06e4\u06d9\u06e2\u06eb\u06d6\u06db\u06d9\u06e5\u06e6\u06e6\u06eb\u06e0\u06e0\u06e6\u06ec\u06da\u06ec\u06d6\u06d8\u06e0\u06d7\u06d9"

    goto :goto_0

    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "\u06e7\u06df\u06d7\u06d6\u06ec\u06e8\u06d8\u06db\u06e7\u06d8\u06d8\u06e7\u06e6\u06e0\u06e2\u06eb\u06e2\u06df\u06dc\u06dc\u06d8\u06e5\u06d7\u06df\u06db\u06e1\u06d6\u06e8\u06d8\u06e4\u06d6\u06e2\u06dc\u06d8\u06d6\u06d8\u06d6\u06dc\u06d9\u06e0\u06e0\u06e4\u06e8\u06e1\u06e5\u06d9"

    goto :goto_0

    :sswitch_3
    const-string v0, "PhoneConfig"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "\u06df\u06d9\u06e1\u06d6\u06da\u06e8\u06ec\u06ec\u06e8\u06d8\u06d8\u06e7\u06e4\u06e6\u06d8\u06e6\u06e0\u06e1\u06e2\u06ec\u06e1\u06e2\u06e2\u06e0\u06e2\u06e0\u06d6\u06d8\u06e2\u06e6\u06e8\u06df\u06d9\u06e5\u06d7\u06e2\u06d7\u06d9\u06db\u06e8\u06eb\u06e1\u06e4\u06dc\u06d7\u06da\u06e8\u06e5\u06e6\u06d8"

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "\u06db\u06da\u06da\u06e4\u06e8\u06e7\u06d8\u06dc\u06df\u06d9\u06d9\u06e1\u06d8\u06d8\u06e6\u06d8\u06d8\u06df\u06e1\u06e5\u06d8\u06e6\u06e7\u06e5\u06e8\u06dc\u06e8\u06d8\u06d6\u06e6\u06e1\u06d9\u06ec\u06dc\u06db\u06e8\u06df\u06d6\u06df\u06e6\u06e6\u06e6\u06e0\u06db\u06eb\u06e4\u06ec\u06eb\u06da\u06ec\u06ec\u06d8"

    goto :goto_0

    :sswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7aacf863 -> :sswitch_5
        -0x6ebd9418 -> :sswitch_1
        -0x2bf244fb -> :sswitch_4
        -0x7914f80 -> :sswitch_2
        0x1226c6e5 -> :sswitch_3
        0x1820185f -> :sswitch_0
    .end sparse-switch
.end method

.method private initData()V
    .locals 8

    const/4 v3, 0x0

    const-string v0, "\u06e4\u06e0\u06e6\u06d8\u06e6\u06da\u06d7\u06e2\u06da\u06d6\u06da\u06db\u06e1\u06dc\u06dc\u06e0\u06e7\u06e2\u06e5\u06d7\u06dc\u06e4\u06e7\u06e0\u06d6\u06ec\u06dc\u06d9\u06da\u06d8\u06d8\u06d6\u06e8\u06eb\u06e2\u06eb\u06e4"

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x1b2

    xor-int/2addr v0, v3

    xor-int/lit16 v0, v0, 0x11a

    const/16 v3, 0x1b8

    const v7, -0x47b86e75

    xor-int/2addr v0, v3

    xor-int/2addr v0, v7

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06e7\u06db\u06e6\u06d9\u06e4\u06e5\u06d6\u06d8\u06d8\u06dc\u06da\u06d9\u06d7\u06d6\u06d8\u06d8\u06db\u06e5\u06d6\u06d8\u06d7\u06d6\u06db\u06ec\u06e7\u06ec\u06e1\u06e7\u06e5\u06dc\u06dc\u06da\u06d9\u06e8\u06e1\u06d8\u06e6\u06e2\u06e2"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PhoneConfig"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cyjh/http/bean/response/PhoneConfig;

    const-string v1, "\u06d7\u06e5\u06e6\u06d8\u06eb\u06e6\u06e6\u06d8\u06d6\u06eb\u06e7\u06e2\u06db\u06d9\u06df\u06df\u06db\u06df\u06e5\u06e8\u06d8\u06e5\u06e7\u06d6\u06e0\u06e8\u06e5\u06d8\u06d7\u06db\u06e8\u06e0\u06e7\u06dc\u06d7\u06e2\u06dc\u06db\u06d9\u06da\u06d6\u06da\u06dc\u06d8\u06e8\u06d8\u06d7\u06d9\u06ec\u06dc\u06d8\u06dc\u06d6\u06e1\u06d8"

    move-object v6, v0

    goto :goto_0

    :sswitch_2
    const v1, -0x11608851

    const-string v0, "\u06e1\u06d9\u06d6\u06d8\u06e6\u06d7\u06d6\u06e0\u06d7\u06d8\u06d8\u06e1\u06db\u06e2\u06e2\u06ec\u06e0\u06d8\u06eb\u06e5\u06d8\u06e5\u06e4\u06e1\u06da\u06eb\u06dc\u06d8\u06db\u06db\u06e5\u06d7\u06e6\u06e0\u06d7\u06eb\u06e5\u06e1\u06df\u06e1\u06d8\u06dc\u06ec\u06ec\u06d6\u06e0\u06e6\u06d8\u06ec\u06e0\u06d6\u06d8\u06e8\u06e8\u06dc"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06e4\u06e2\u06dc\u06d8\u06e8\u06da\u06e4\u06e1\u06e5\u06e0\u06dc\u06db\u06df\u06eb\u06db\u06e5\u06e4\u06eb\u06e6\u06e7\u06e8\u06df\u06e6\u06d9\u06da\u06e4\u06d6\u06e6\u06d8\u06eb\u06eb\u06d8\u06d7\u06df\u06dc\u06d7\u06eb\u06e0\u06ec\u06dc\u06db\u06e4\u06da\u06d7\u06d7\u06eb\u06db\u06e2\u06df\u06dc\u06d8\u06da\u06da\u06da\u06d7\u06d9\u06d6"

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06dc\u06e0\u06d7\u06e0\u06e4\u06d6\u06d8\u06da\u06df\u06d8\u06d8\u06d9\u06e7\u06e6\u06d8\u06d6\u06eb\u06db\u06d8\u06e8\u06ec\u06e7\u06e2\u06da\u06d7\u06e5\u06dc\u06eb\u06ec\u06e8\u06d8\u06e6\u06d9\u06e2\u06df\u06df\u06d7\u06e7\u06db\u06dc\u06d8"

    goto :goto_1

    :sswitch_5
    const v3, 0x72e51e4d

    const-string v0, "\u06e4\u06dc\u06e2\u06ec\u06e4\u06d7\u06e2\u06e4\u06d9\u06d8\u06e6\u06e6\u06d8\u06e1\u06d8\u06dc\u06e5\u06e8\u06e6\u06d8\u06d7\u06e8\u06d9\u06e1\u06eb\u06d6\u06d8\u06d6\u06e8\u06e7\u06d8\u06e5\u06db\u06ec"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v7, v3

    sparse-switch v7, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    if-eqz v6, :cond_0

    const-string v0, "\u06ec\u06e4\u06e5\u06d8\u06e7\u06df\u06e6\u06d8\u06e2\u06d7\u06d8\u06db\u06db\u06d8\u06d8\u06ec\u06d6\u06db\u06db\u06db\u06d8\u06d8\u06e4\u06ec\u06d7\u06da\u06e0\u06dc\u06d8\u06df\u06e1\u06e6\u06d8\u06e7\u06e6\u06d8\u06d8\u06e8\u06e4\u06d8\u06d8\u06dc\u06d7\u06e8\u06d8\u06d6\u06dc\u06e1\u06d8\u06df\u06e2\u06e5"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e6\u06e4\u06d8\u06d8\u06da\u06e4\u06e5\u06e5\u06d6\u06e2\u06e4\u06db\u06eb\u06d9\u06da\u06eb\u06e5\u06d9\u06e5\u06d8\u06e1\u06e1\u06d8\u06d6\u06e0\u06e2\u06d8\u06dc\u06df\u06dc\u06e4\u06e1\u06d8\u06d9\u06e4\u06e8\u06d9\u06dc\u06e6"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e1\u06d6\u06db\u06e5\u06d6\u06df\u06e7\u06df\u06e5\u06d8\u06e0\u06eb\u06eb\u06df\u06eb\u06dc\u06d8\u06d7\u06ec\u06e6\u06db\u06e8\u06e1\u06eb\u06e1\u06d7\u06db\u06df\u06e7\u06eb\u06da\u06e2\u06dc\u06e4\u06d7\u06eb\u06e7\u06dc\u06d8\u06da\u06e7\u06df\u06eb\u06d7\u06da\u06e1\u06ec\u06df\u06e6\u06da\u06d6\u06d8\u06d8\u06e5\u06db\u06e4\u06df\u06e6\u06d8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d7\u06ec\u06dc\u06da\u06d8\u06e8\u06d8\u06dc\u06e0\u06df\u06e4\u06eb\u06d7\u06e8\u06df\u06d9\u06d8\u06dc\u06db\u06ec\u06da\u06dc\u06da\u06d9\u06da\u06df\u06e8\u06d6\u06dc\u06e2\u06d8\u06e8\u06db\u06e2\u06e6\u06e8\u06d6\u06e0\u06db\u06e6\u06d8\u06ec\u06e8\u06e7\u06d8\u06e4\u06d7\u06d8\u06d8\u06e4\u06e7"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e8\u06da\u06e4\u06e0\u06e2\u06e5\u06d8\u06e1\u06d8\u06e6\u06e1\u06db\u06eb\u06e0\u06db\u06e0\u06e5\u06df\u06d7\u06d7\u06da\u06e8\u06d9\u06e5\u06d7\u06d8\u06e8\u06ec\u06da\u06ec\u06db\u06d7\u06d6\u06e8\u06e1\u06da\u06e6\u06e0\u06d8\u06d8\u06e5\u06e4\u06d9\u06e2\u06e6\u06d6\u06e5\u06d9\u06d8\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_a
    invoke-virtual {v6}, Lcom/cyjh/http/bean/response/PhoneConfig;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    const-string v0, "\u06da\u06dc\u06df\u06ec\u06e6\u06e0\u06db\u06db\u06e8\u06dc\u06e2\u06d8\u06d8\u06d8\u06e8\u06e6\u06d9\u06e0\u06d6\u06da\u06e5\u06e8\u06d8\u06d8\u06d7\u06e1\u06d8\u06dc\u06dc\u06d8\u06d8\u06e8\u06d9\u06d7\u06db\u06e5\u06ec\u06db\u06d8\u06d8\u06e5\u06db\u06db\u06e7\u06e7\u06e1\u06e6\u06dc\u06d6\u06d8\u06d6\u06d9\u06e4"

    move-object v1, v0

    move-object v5, v3

    goto :goto_0

    :sswitch_b
    invoke-virtual {v6}, Lcom/cyjh/http/bean/response/PhoneConfig;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->OooooOO:Ljava/lang/String;

    const-string v0, "\u06d7\u06e7\u06d9\u06eb\u06d6\u06e7\u06d8\u06e6\u06e2\u06e1\u06e1\u06d8\u06d6\u06ec\u06e6\u06e6\u06ec\u06dc\u06e8\u06d9\u06df\u06d6\u06e2\u06e7\u06e2\u06e0\u06d6\u06eb\u06e1\u06e2\u06db\u06e6\u06e8\u06df\u06da\u06e2\u06e1\u06e6\u06e7\u06e2\u06e4\u06eb\u06d8\u06d8\u06dc\u06db\u06db\u06ec\u06e0\u06d7\u06e5\u06d7\u06e7\u06e5\u06ec\u06e4"

    move-object v1, v0

    goto :goto_0

    :sswitch_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06e5\u06d6\u06dc\u06d8\u06da\u06e8\u06dc\u06d6\u06e1\u06eb\u06e4\u06e5\u06dc\u06d9\u06e7\u06dc\u06d8\u06e2\u06d6\u06e0\u06e6\u06e1\u06e0\u06e0\u06e0\u06e7\u06dc\u06d7\u06e5\u06d8\u06da\u06eb\u06e5\u06e8\u06e1\u06e1\u06e0\u06d6\u06eb\u06e2\u06dc\u06e4\u06e1\u06d6\u06d6\u06d6\u06e0\u06d9\u06eb\u06e0\u06eb\u06d9\u06da\u06d9\u06e5\u06e6"

    move-object v1, v0

    move-object v4, v3

    goto :goto_0

    :sswitch_d
    const-string v0, "initData --> imageUrl="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d6\u06e7\u06d6\u06ec\u06e2\u06e5\u06d8\u06d7\u06da\u06d8\u06e4\u06d9\u06e8\u06d8\u06db\u06ec\u06e5\u06d8\u06da\u06db\u06e6\u06e7\u06e2\u06d8\u06d8\u06df\u06e5\u06d7\u06e4\u06e1\u06e1\u06e4\u06d7\u06dc\u06e0\u06e5\u06d6\u06e0\u06ec\u06dc\u06d8\u06eb\u06db\u06e8\u06d8\u06da\u06d7\u06da"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06ec\u06df\u06e5\u06e5\u06ec\u06d8\u06d8\u06e4\u06d8\u06e8\u06ec\u06e0\u06ec\u06e8\u06dc\u06eb\u06d7\u06e2\u06e5\u06d9\u06da\u06da\u06ec\u06eb\u06e2\u06e6\u06d8\u06e1\u06da\u06e1\u06da\u06e8\u06e6\u06e5\u06d8\u06e8\u06e6\u06e7"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "\u06e8\u06d8\u06d6\u06d8\u06eb\u06e4\u06d6\u06da\u06e5\u06e4\u06d6\u06e8\u06d8\u06d9\u06e2\u06d6\u06d8\u06e6\u06da\u06e6\u06e6\u06df\u06e1\u06d8\u06d8\u06e4\u06d9\u06e6\u06e8\u06e7\u06d8\u06e7\u06e4\u06e8\u06d8\u06e7\u06ec\u06e7\u06e1\u06d9\u06e8\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_10
    invoke-static {v5}, Lz2/j4;->OooOOOO(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v0, "\u06d9\u06d6\u06dc\u06d8\u06e7\u06d9\u06eb\u06df\u06e5\u06da\u06dc\u06e4\u06d6\u06d8\u06e8\u06e6\u06e1\u06e2\u06e5\u06e0\u06d9\u06e5\u06dc\u06e6\u06d9\u06dc\u06d8\u06e4\u06e4\u06d9\u06dc\u06dc\u06dc\u06d8\u06dc\u06da\u06e1\u06d8\u06d7\u06e8\u06e8\u06d8\u06df\u06df\u06d7\u06eb\u06d8\u06e2\u06d6\u06e7\u06e6\u06e7\u06e7\u06dc\u06e4\u06e6\u06d8\u06d8\u06df\u06e1\u06e7\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_11
    const v1, 0x2a2a262d

    const-string v0, "\u06d8\u06e6\u06e0\u06dc\u06dc\u06df\u06db\u06e5\u06d6\u06d8\u06e1\u06dc\u06d7\u06e5\u06ec\u06e8\u06eb\u06dc\u06e8\u06d8\u06e5\u06e2\u06df\u06e4\u06d9\u06dc\u06e0\u06e0\u06e6\u06d8\u06d9\u06da\u06d6\u06e7\u06ec\u06e6\u06e8\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_12
    const-string v0, "\u06e1\u06db\u06eb\u06e4\u06e2\u06d8\u06e5\u06e0\u06dc\u06d8\u06df\u06da\u06d9\u06e8\u06e6\u06e8\u06d8\u06ec\u06e6\u06e2\u06e5\u06e4\u06e4\u06e6\u06d7\u06e5\u06e2\u06dc\u06d6\u06d7\u06d9\u06e0\u06e1\u06eb\u06e2\u06e6\u06e2\u06dc"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "\u06ec\u06e2\u06e7\u06e8\u06d9\u06e5\u06d8\u06d7\u06e6\u06e6\u06d7\u06e5\u06eb\u06e4\u06eb\u06d6\u06db\u06e5\u06d8\u06e5\u06e5\u06dc\u06e1\u06ec\u06df\u06e1\u06d9\u06d6\u06d8\u06dc\u06ec\u06d6\u06e8\u06e4\u06d6\u06dc\u06dc\u06e4\u06e6\u06dc\u06e6\u06da\u06d6\u06d9\u06e0\u06e4\u06dc\u06dc\u06ec\u06df\u06e5\u06e2\u06db\u06ec\u06d6\u06eb"

    goto :goto_3

    :sswitch_14
    const v3, 0x524ceb12

    const-string v0, "\u06e4\u06db\u06e6\u06db\u06e7\u06e7\u06db\u06e6\u06e1\u06d7\u06e1\u06e8\u06d8\u06e0\u06e1\u06d6\u06d8\u06ec\u06eb\u06dc\u06d7\u06eb\u06d9\u06e6\u06d9\u06da\u06eb\u06da\u06e6\u06e6\u06dc\u06e6\u06d6\u06d8\u06e2\u06e0\u06e6\u06e0\u06dc\u06d7\u06d8\u06d9\u06e6"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v7, v3

    sparse-switch v7, :sswitch_data_4

    goto :goto_4

    :sswitch_15
    if-eqz v2, :cond_1

    const-string v0, "\u06d9\u06e5\u06e8\u06d8\u06eb\u06e2\u06e1\u06da\u06e8\u06e1\u06e1\u06e8\u06d7\u06e0\u06da\u06e1\u06e5\u06d8\u06d6\u06e6\u06d8\u06e4\u06e8\u06d7\u06e6\u06d8\u06da\u06e4\u06eb\u06db\u06e1\u06e1\u06df\u06e6\u06e5\u06e6\u06e5\u06d6\u06d9\u06e6\u06e7\u06e4\u06d8\u06d7\u06eb\u06e7\u06dc\u06e6"

    goto :goto_4

    :cond_1
    const-string v0, "\u06e2\u06db\u06db\u06eb\u06d6\u06d9\u06ec\u06db\u06d8\u06e7\u06eb\u06e6\u06eb\u06ec\u06dc\u06d8\u06da\u06dc\u06e8\u06d8\u06d8\u06e0\u06e0\u06e6\u06d6\u06d9\u06e6\u06e7\u06e6\u06d8\u06e4\u06e5\u06e8\u06e1\u06eb\u06d8\u06e5\u06ec\u06d8\u06d8\u06eb\u06ec\u06e6\u06e4\u06da\u06db"

    goto :goto_4

    :sswitch_16
    const-string v0, "\u06e7\u06d7\u06e5\u06db\u06e2\u06d9\u06d8\u06eb\u06e2\u06e8\u06da\u06e7\u06e6\u06e5\u06e6\u06d8\u06db\u06d7\u06db\u06e7\u06db\u06e0\u06d9\u06d7\u06da\u06e7\u06e7\u06df\u06d6\u06ec\u06d8\u06d9\u06e6\u06d8\u06d8\u06e0\u06df\u06e6\u06d8\u06db\u06e6\u06d6\u06e5\u06e8\u06d6\u06d8"

    goto :goto_4

    :sswitch_17
    const-string v0, "\u06d8\u06e6\u06d6\u06e2\u06e4\u06dc\u06d8\u06e0\u06e8\u06e6\u06e2\u06e6\u06d6\u06d8\u06e0\u06e0\u06e6\u06df\u06dc\u06d6\u06ec\u06e6\u06d8\u06e8\u06e6\u06db\u06d9\u06d7\u06e1\u06d8\u06d8\u06e1\u06e6\u06d8"

    goto :goto_3

    :sswitch_18
    const-string v0, "\u06d9\u06e5\u06e7\u06d7\u06d8\u06da\u06d7\u06d9\u06e8\u06e2\u06db\u06e0\u06df\u06e8\u06e7\u06da\u06d6\u06dc\u06ec\u06d7\u06e6\u06e6\u06d7\u06db\u06d7\u06e4\u06e7\u06df\u06e4\u06db\u06e6\u06dc\u06db\u06e1\u06db\u06d8\u06e0\u06ec\u06e4\u06db\u06e7\u06e1\u06d8\u06e8\u06df\u06e1\u06d8\u06e5\u06db"

    goto :goto_3

    :sswitch_19
    const-string v0, "\u06e1\u06d6\u06d6\u06d8\u06e2\u06d6\u06ec\u06e7\u06d8\u06e8\u06d8\u06e1\u06ec\u06ec\u06dc\u06e8\u06ec\u06e2\u06d7\u06d6\u06eb\u06d8\u06e8\u06e8\u06d8\u06e4\u06e0\u06dc\u06d8\u06d9\u06e6\u06e5\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_1a
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->OooooO0:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string v0, "\u06e1\u06db\u06eb\u06e4\u06e2\u06d8\u06e5\u06e0\u06dc\u06d8\u06df\u06da\u06d9\u06e8\u06e6\u06e8\u06d8\u06ec\u06e6\u06e2\u06e5\u06e4\u06e4\u06e6\u06d7\u06e5\u06e2\u06dc\u06d6\u06d7\u06d9\u06e0\u06e1\u06eb\u06e2\u06e6\u06e2\u06dc"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_1b
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->OooooO0:Landroid/widget/ImageView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity$OooO00o;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity$OooO00o;-><init>(Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06e2\u06e1\u06eb\u06dc\u06db\u06d9\u06eb\u06d6\u06d6\u06dc\u06e2\u06e8\u06d8\u06e4\u06db\u06e8\u06d8\u06db\u06da\u06e1\u06db\u06df\u06dc\u06e0\u06e0\u06e6\u06d8\u06dc\u06e4\u06e5\u06db\u06e4\u06e7\u06e7\u06d6\u06df\u06d9\u06e5\u06e5"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "\u06e2\u06e1\u06eb\u06dc\u06db\u06d9\u06eb\u06d6\u06d6\u06dc\u06e2\u06e8\u06d8\u06e4\u06db\u06e8\u06d8\u06db\u06da\u06e1\u06db\u06df\u06dc\u06e0\u06e0\u06e6\u06d8\u06dc\u06e4\u06e5\u06db\u06e4\u06e7\u06e7\u06d6\u06df\u06d9\u06e5\u06e5"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_1d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e84f5a9 -> :sswitch_1d
        -0x7cdd6e3b -> :sswitch_c
        -0x6398ac48 -> :sswitch_1a
        -0x407f8aef -> :sswitch_e
        -0x3b7dfd31 -> :sswitch_a
        -0x8c6d63b -> :sswitch_11
        -0x2822052 -> :sswitch_1b
        0x1df03c6 -> :sswitch_1
        0xf2254c9 -> :sswitch_0
        0x1510eb66 -> :sswitch_b
        0x301bba67 -> :sswitch_10
        0x32588d91 -> :sswitch_f
        0x3e7a7e2b -> :sswitch_d
        0x7f05bae9 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x6f3207e0 -> :sswitch_5
        -0x3ff0789d -> :sswitch_1c
        -0x34fbb2d7 -> :sswitch_3
        0x443e4e28 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x2c990fe6 -> :sswitch_6
        0x106fd0f0 -> :sswitch_7
        0x108857a2 -> :sswitch_4
        0x131aaa96 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x73696aa1 -> :sswitch_14
        -0x6832239a -> :sswitch_12
        -0x4dc5ce89 -> :sswitch_19
        0xd995b2d -> :sswitch_18
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x7334b94c -> :sswitch_13
        -0x580d9184 -> :sswitch_16
        -0xc734f9a -> :sswitch_17
        0x50ac676d -> :sswitch_15
    .end sparse-switch
.end method

.method private initView()V
    .locals 4

    const-string v0, "\u06d9\u06e1\u06eb\u06ec\u06e2\u06d6\u06d8\u06eb\u06da\u06d9\u06ec\u06e7\u06e1\u06e5\u06e7\u06d9\u06e2\u06db\u06e5\u06d8\u06db\u06e5\u06d9\u06e7\u06eb\u06d6\u06d8\u06d9\u06e5\u06e0\u06dc\u06e7\u06d6\u06e2\u06ec\u06d8\u06d8\u06e2\u06ec\u06e2\u06e8\u06db\u06d6\u06d8\u06d8\u06e7\u06e1\u06e6\u06d8\u06d6\u06d8\u06dc\u06db\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1f0

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x130

    const/16 v2, 0x31d

    const v3, -0x24ffbb9b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06da\u06d6\u06d8\u06ec\u06d8\u06e0\u06d7\u06ec\u06d8\u06da\u06d9\u06e4\u06dc\u06e5\u06e4\u06eb\u06d6\u06e7\u06e7\u06d9\u06e7\u06e0\u06eb\u06e0\u06e4\u06e6\u06d8\u06eb\u06e1\u06e2\u06df\u06e4\u06e1\u06d8\u06d6\u06da\u06d7\u06d7\u06e5\u06df\u06e4\u06d8\u06e8\u06d8\u06e7\u06eb\u06e0\u06e6\u06e0\u06e1"

    goto :goto_0

    :sswitch_1
    const v0, 0x7f09032b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->OooooO0:Landroid/widget/ImageView;

    const-string v0, "\u06da\u06e5\u06e0\u06e8\u06e0\u06d7\u06df\u06d7\u06e0\u06d8\u06d7\u06e1\u06db\u06d6\u06e7\u06e4\u06dc\u06ec\u06eb\u06e4\u06d8\u06d8\u06d7\u06e8\u06e4\u06e6\u06e6\u06e0\u06df\u06db\u06e5\u06d8\u06eb\u06e4\u06d9\u06e5\u06e0\u06e8\u06d8\u06ec\u06e5\u06da\u06da\u06e0\u06e2\u06df\u06d7\u06dc\u06e1\u06d8\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3338be91 -> :sswitch_0
        0x4fdd7bb8 -> :sswitch_1
        0x5d9cfc1e -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "\u06e5\u06ec\u06e5\u06da\u06d9\u06e1\u06ec\u06e5\u06d7\u06e4\u06eb\u06eb\u06d6\u06e2\u06e0\u06d7\u06e1\u06da\u06e5\u06e1\u06e2\u06e6\u06dc\u06e7\u06df\u06eb\u06e6\u06d8\u06e6\u06d8\u06e5\u06da\u06eb\u06e6\u06db\u06e7\u06eb\u06d9\u06e5\u06dc\u06d8\u06ec\u06e2\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xa9

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2f0

    const/16 v2, 0x30

    const v3, -0x2d0f2e3d

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06dc\u06e8\u06eb\u06e5\u06dc\u06d8\u06e6\u06d8\u06df\u06db\u06e7\u06e2\u06df\u06e2\u06e6\u06d8\u06e2\u06d8\u06d8\u06d8\u06df\u06d7\u06e1\u06d8\u06db\u06dc\u06e1\u06e6\u06e5\u06d8\u06e8\u06dc\u06e5"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e8\u06db\u06d6\u06d6\u06d6\u06ec\u06d8\u06dc\u06eb\u06d8\u06e5\u06db\u06eb\u06e8\u06d8\u06d9\u06e1\u06e7\u06d8\u06e1\u06eb\u06e7\u06d9\u06eb\u06e6\u06eb\u06e7\u06e5\u06d8\u06e1\u06dc\u06e2\u06e6\u06e2\u06e7\u06e8\u06df\u06e5"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "\u06df\u06dc\u06da\u06e1\u06d6\u06dc\u06e4\u06e1\u06dc\u06d8\u06da\u06ec\u06e2\u06dc\u06e7\u06dc\u06d8\u06e4\u06e7\u06e8\u06d8\u06eb\u06e1\u06e5\u06d9\u06e6\u06da\u06eb\u06e1\u06e5\u06d8\u06df\u06df\u06d7\u06db\u06d8\u06e4\u06e6\u06e6"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const-string v0, "\u06d7\u06d8\u06dc\u06da\u06ec\u06eb\u06e5\u06eb\u06d9\u06da\u06e8\u06dc\u06df\u06e1\u06e4\u06df\u06e5\u06e7\u06e7\u06d7\u06e6\u06e8\u06e1\u06df\u06ec\u06e4\u06e8\u06ec\u06e2\u06dc\u06df\u06d8\u06d7\u06d6\u06df"

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->initView()V

    const-string v0, "\u06d8\u06e0\u06db\u06e1\u06d8\u06d9\u06eb\u06dc\u06e8\u06dc\u06eb\u06d6\u06e6\u06e1\u06e5\u06e5\u06e6\u06dc\u06d8\u06db\u06e4\u06d6\u06d8\u06e7\u06e1\u06e8\u06d8\u06d6\u06e5\u06e4\u06d6\u06e2\u06dc"

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->initData()V

    const-string v0, "\u06e2\u06e6\u06e7\u06e6\u06e4\u06eb\u06ec\u06e1\u06dc\u06df\u06d6\u06d8\u06e1\u06db\u06e5\u06d8\u06df\u06d8\u06ec\u06ec\u06dc\u06dc\u06d8\u06df\u06e7\u06d6\u06d8\u06d9\u06eb\u06e6\u06d8\u06eb\u06d9\u06e0\u06da\u06d6\u06e8\u06d8\u06dc\u06d9\u06e0"

    goto :goto_0

    :sswitch_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7dbdafbd -> :sswitch_4
        -0x30c2c46e -> :sswitch_5
        -0x2e7df85c -> :sswitch_1
        0x48b7a12a -> :sswitch_2
        0x5571dbeb -> :sswitch_6
        0x66f53270 -> :sswitch_0
        0x76a4a374 -> :sswitch_3
    .end sparse-switch
.end method
