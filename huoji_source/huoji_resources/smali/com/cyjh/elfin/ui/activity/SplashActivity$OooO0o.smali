.class public Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0o;
.super Ljava/lang/Object;

# interfaces
.implements Lz2/xh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/SplashActivity;->Oooo0o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private OooO00o:Z

.field public final OooO0O0:Lcom/cyjh/elfin/ui/activity/SplashActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0o;->OooO0O0:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0o;->OooO00o:Z

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/ai;)V
    .locals 4

    const-string v0, "\u06d6\u06d7\u06e5\u06ec\u06df\u06d6\u06d8\u06eb\u06e4\u06d9\u06df\u06eb\u06da\u06dc\u06e8\u06e6\u06d8\u06e7\u06eb\u06e2\u06e6\u06e0\u06e0\u06e8\u06e4\u06d6\u06d8\u06e4\u06dc\u06df\u06da\u06e0\u06e1\u06d8\u06e8\u06da\u06dc\u06da\u06e0\u06d6\u06e8\u06e8\u06d8\u06e4\u06e0\u06e1\u06d8\u06d6\u06d6\u06d6\u06e1\u06e5\u06d6\u06d8\u06eb\u06e5\u06e5\u06d8\u06d6\u06d6\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xe3

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x180

    const/16 v2, 0x101

    const v3, -0x3a0ede7e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06da\u06e8\u06d8\u06e6\u06e5\u06e5\u06d8\u06da\u06e2\u06d8\u06da\u06e4\u06da\u06db\u06d6\u06e2\u06e4\u06e1\u06d8\u06d8\u06e6\u06e7\u06d8\u06e6\u06e5\u06d9\u06d6\u06ec\u06e5\u06e4\u06e1\u06dc\u06e1\u06e2\u06e4\u06dc\u06e8\u06d9"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06dc\u06d6\u06e6\u06da\u06e1\u06e2\u06eb\u06e1\u06e8\u06d8\u06e6\u06e1\u06e6\u06d8\u06d8\u06e5\u06eb\u06d6\u06d8\u06e5\u06e5\u06e5\u06d6\u06df\u06ec\u06d8\u06d8\u06e4\u06e1\u06e8\u06e8\u06d9\u06e2\u06d8\u06eb\u06e5\u06d8\u06e4\u06d6\u06e7\u06d7\u06d9\u06e5\u06d8\u06d9\u06eb\u06df\u06e7\u06e4\u06e8\u06e0\u06e5\u06da\u06e1\u06d9\u06e1\u06e0\u06e8"

    goto :goto_0

    :sswitch_2
    const-string v0, "XJL_AD_TAG"

    const-string v1, "adview onAdShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u06dc\u06dc\u06da\u06d6\u06df\u06e5\u06db\u06e2\u06da\u06eb\u06d8\u06e6\u06e7\u06d9\u06d7\u06e1\u06db\u06df\u06db\u06dc\u06e4\u06e7\u06da\u06e1\u06e4\u06e2\u06e1\u06e4\u06d9\u06e5\u06db\u06d6\u06d8\u06eb\u06ec\u06d9\u06db\u06e0\u06df\u06e4\u06df\u06e4"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x686707bb -> :sswitch_1
        -0xed01e56 -> :sswitch_3
        0x191d7aab -> :sswitch_0
        0x3a1e713c -> :sswitch_2
    .end sparse-switch
.end method

.method public OooO0O0(Lz2/ai;)V
    .locals 4

    const-string v0, "\u06ec\u06e5\u06e2\u06d8\u06db\u06e1\u06db\u06e6\u06e1\u06d8\u06d7\u06e2\u06e8\u06ec\u06e5\u06e2\u06e1\u06e2\u06db\u06e8\u06e0\u06d6\u06d9\u06e0\u06e5\u06d7\u06d8\u06eb\u06e6\u06e0\u06e5\u06e8\u06db\u06ec\u06d8\u06e7\u06d9\u06e6\u06d9\u06da\u06e5\u06e5\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x40

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x126

    const/16 v2, 0x352

    const v3, -0x5c324b21

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06eb\u06e5\u06d8\u06e4\u06e4\u06e0\u06e8\u06e6\u06d7\u06e7\u06e8\u06e7\u06e5\u06dc\u06e6\u06d8\u06db\u06d6\u06e7\u06df\u06e0\u06e1\u06d8\u06e6\u06d6\u06e7\u06ec\u06dc\u06d8\u06df\u06d6\u06dc\u06d8\u06d6\u06e7\u06e1\u06eb\u06e2\u06e8\u06d8\u06da\u06e8\u06df\u06d9\u06eb\u06e5\u06d9\u06db\u06dc\u06df\u06d6\u06e8\u06d8\u06e7\u06e5\u06e8\u06d9\u06d8\u06df"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d8\u06df\u06e6\u06d8\u06d6\u06e1\u06e5\u06e0\u06d7\u06e7\u06eb\u06e1\u06d6\u06d8\u06e4\u06e8\u06d8\u06d6\u06e7\u06d8\u06e6\u06db\u06dc\u06d6\u06e1\u06e4\u06d9\u06e5\u06e7\u06d8\u06df\u06dc\u06d6\u06e4\u06eb\u06d9\u06e7\u06e7\u06e0\u06e8\u06e7\u06ec\u06ec\u06db\u06ec\u06e4\u06db\u06d7\u06eb\u06e7\u06e6"

    goto :goto_0

    :sswitch_2
    const-string v0, "XJL_AD_TAG"

    const-string v1, "adview onAdClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u06ec\u06df\u06d8\u06d8\u06e1\u06e7\u06df\u06e2\u06df\u06d7\u06e5\u06e1\u06d6\u06dc\u06e7\u06e5\u06d8\u06ec\u06df\u06e8\u06d8\u06e1\u06dc\u06e6\u06d8\u06e1\u06e0\u06e4\u06dc\u06dc\u06e2\u06d9\u06dc\u06db\u06d6\u06e5\u06e5\u06eb\u06e0\u06e7\u06eb\u06ec\u06ec\u06d9\u06e1\u06e7\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x29d9d889 -> :sswitch_0
        0x97a6ca5 -> :sswitch_1
        0x2098360a -> :sswitch_3
        0x4a936913 -> :sswitch_2
    .end sparse-switch
.end method

.method public OooO0OO(Lz2/ai;Lz2/ci;)V
    .locals 4

    const-string v0, "\u06e2\u06e8\u06d6\u06d8\u06db\u06e6\u06e4\u06df\u06e6\u06d6\u06dc\u06d8\u06e1\u06ec\u06df\u06e5\u06d8\u06e6\u06e8\u06e5\u06d8\u06d6\u06e4\u06db\u06e4\u06d6\u06e7\u06d6\u06e1\u06e8\u06d8\u06d7\u06e4\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x13d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1c1

    const/16 v2, 0x62

    const v3, 0x93c167

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e7\u06eb\u06e6\u06e0\u06ec\u06e6\u06e6\u06da\u06eb\u06ec\u06da\u06e0\u06e5\u06d6\u06d9\u06db\u06e0\u06e2\u06eb\u06d8\u06d8\u06d7\u06df\u06eb\u06e8\u06e7\u06d7\u06ec\u06d6\u06e6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06ec\u06dc\u06e6\u06d8\u06dc\u06e1\u06e7\u06d6\u06e5\u06d8\u06d9\u06e4\u06d9\u06d6\u06eb\u06d8\u06d8\u06dc\u06e7\u06e7\u06e7\u06e7\u06e8\u06d8\u06d7\u06e4\u06dc\u06d8\u06eb\u06d6\u06d7\u06dc\u06d6\u06e5\u06d8"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e8\u06ec\u06db\u06ec\u06e8\u06eb\u06df\u06e1\u06d9\u06e5\u06e5\u06e1\u06d8\u06e5\u06d6\u06dc\u06d8\u06d7\u06d8\u06e5\u06d8\u06db\u06df\u06dc\u06e2\u06e7\u06eb\u06ec\u06e7\u06da\u06d9\u06e5\u06d6\u06d8\u06dc\u06eb\u06ec\u06e4\u06ec"

    goto :goto_0

    :sswitch_3
    const-string v0, "XJL_AD_TAG"

    const-string v1, "adview onAdDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u06d7\u06e4\u06eb\u06d7\u06d6\u06d7\u06ec\u06e4\u06e8\u06d8\u06d6\u06df\u06e0\u06e2\u06da\u06dc\u06da\u06db\u06e7\u06e1\u06e7\u06d7\u06e1\u06df\u06e6\u06d8\u06d9\u06e1\u06d7\u06e4\u06db\u06e6\u06ec\u06e5\u06db\u06eb\u06da\u06db\u06eb\u06e6\u06d8\u06ec\u06d6\u06e5\u06d9\u06d7\u06d8\u06d8\u06e5\u06db\u06e8\u06d8\u06d8\u06e7\u06e4\u06e4\u06d6\u06e6"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0o;->OooO0O0:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOo0(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    const-string v0, "\u06e4\u06dc\u06e1\u06d9\u06e7\u06e4\u06d8\u06d7\u06e8\u06d7\u06e1\u06d9\u06d6\u06dc\u06d8\u06e1\u06dc\u06e6\u06d8\u06d8\u06e0\u06d8\u06e2\u06e5\u06d6\u06e6\u06eb\u06ec\u06e5\u06dc\u06d7\u06d6\u06d8\u06e1\u06df\u06dc"

    goto :goto_0

    :sswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x624aa1d9 -> :sswitch_2
        -0x3c5d5e93 -> :sswitch_5
        0x154ba6c4 -> :sswitch_1
        0x184ec1ec -> :sswitch_4
        0x367ca33e -> :sswitch_0
        0x6a2cbb44 -> :sswitch_3
    .end sparse-switch
.end method

.method public OooO0Oo(Lz2/zh;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e4\u06e5\u06d6\u06d8\u06d9\u06e0\u06dc\u06d8\u06e5\u06e4\u06e7\u06e8\u06e5\u06d6\u06eb\u06ec\u06e7\u06df\u06d7\u06e8\u06eb\u06ec\u06e8\u06d8\u06d8\u06d7\u06e0\u06ec\u06eb\u06eb\u06df\u06d9\u06dc\u06d6\u06e6\u06e6\u06e1\u06df\u06e1\u06d8\u06d8\u06d6\u06d6\u06e6\u06d8\u06db\u06e0\u06e4\u06dc\u06d8\u06e5\u06d8\u06e1\u06dc\u06e7\u06d7\u06eb\u06d7\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x102

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x3c4

    const/16 v3, 0x1c7

    const v4, 0x5c148095

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06eb\u06da\u06d8\u06eb\u06e7\u06dc\u06d7\u06e1\u06e0\u06d9\u06e2\u06e2\u06d8\u06dc\u06da\u06d6\u06e2\u06e4\u06d9\u06e7\u06e2\u06e7\u06e1\u06e2\u06df\u06e7\u06e1\u06d8\u06d7\u06e8\u06d6\u06d8\u06df\u06d8\u06e7\u06db\u06df\u06e5\u06d8\u06db\u06e1\u06eb\u06e6\u06da\u06e5\u06dc\u06e6\u06e8\u06e6\u06e1\u06e0\u06e5\u06eb"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06d8\u06e8\u06eb\u06ec\u06d7\u06e4\u06dc\u06dc\u06d8\u06ec\u06e4\u06da\u06da\u06ec\u06df\u06e6\u06e7\u06dc\u06db\u06e4\u06e2\u06d9\u06e5\u06e0\u06e1\u06db\u06da\u06e2\u06e8\u06e5"

    goto :goto_0

    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06e0\u06e6\u06ec\u06e5\u06ec\u06e8\u06d8\u06e2\u06df\u06da\u06d7\u06e5\u06e1\u06dc\u06e8\u06d8\u06e2\u06e8\u06d7\u06eb\u06eb\u06e5\u06d8\u06e5\u06dc\u06d6\u06d8\u06e0\u06e0\u06e1\u06e0\u06e8\u06e0"

    goto :goto_0

    :sswitch_3
    const-string v0, "adview onNoAdError:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e6\u06d8\u06e1\u06d8\u06d9\u06da\u06da\u06e1\u06e5\u06e5\u06d8\u06e2\u06e4\u06e5\u06d8\u06db\u06e7\u06e7\u06e1\u06ec\u06d9\u06e5\u06da\u06e1\u06d8\u06da\u06d9\u06e8\u06e8\u06e5\u06dc\u06d8\u06eb\u06e7\u06da\u06e7\u06dc\u06e2\u06e5\u06e5\u06e0"

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lz2/zh;->OooO00o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e7\u06e1\u06e7\u06e5\u06e7\u06e6\u06d8\u06e8\u06e8\u06df\u06e6\u06e0\u06e6\u06d8\u06e4\u06ec\u06e7\u06ec\u06d8\u06e2\u06d7\u06da\u06df\u06e6\u06df\u06d6\u06da\u06d6\u06e8\u06d8\u06d8\u06e6\u06dc\u06d8\u06da\u06e1\u06d9\u06dc\u06e1\u06d6\u06dc\u06e0\u06d8\u06d8\u06d9\u06e2\u06e0\u06db\u06e8\u06e1\u06d8\u06e1\u06d8\u06e1\u06d8\u06e6\u06e0\u06e8\u06d8\u06d8\u06eb\u06e6"

    goto :goto_0

    :sswitch_5
    const-string v0, ", msg = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d8\u06d6\u06d9\u06e1\u06d9\u06eb\u06e7\u06e2\u06e8\u06e2\u06d6\u06e0\u06ec\u06d8\u06e0\u06e8\u06e8\u06dc\u06d8\u06db\u06d7\u06d8\u06d8\u06e6\u06db\u06e6\u06d8\u06e1\u06e8\u06d8\u06eb\u06e1\u06da"

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lz2/zh;->OooO0O0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e7\u06da\u06d6\u06d8\u06e2\u06ec\u06dc\u06e5\u06e2\u06da\u06df\u06e7\u06eb\u06d6\u06d9\u06e2\u06e4\u06ec\u06dc\u06dc\u06db\u06da\u06d6\u06e4\u06e5\u06d8\u06d6\u06dc\u06dc\u06d6\u06ec\u06e5\u06d8\u06e2\u06e1\u06dc\u06d9\u06eb\u06d6\u06d8\u06e7\u06d7\u06e8\u06d8\u06db\u06d9\u06d6"

    goto :goto_0

    :sswitch_7
    const-string v0, "XJL_AD_TAG"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u06db\u06e1\u06d6\u06d8\u06eb\u06e6\u06dc\u06e4\u06e4\u06e7\u06e7\u06eb\u06d8\u06e4\u06df\u06db\u06db\u06da\u06e4\u06da\u06e5\u06e0\u06db\u06e5\u06d8\u06db\u06e8\u06eb\u06eb\u06e5\u06d6\u06df\u06d7\u06e8\u06eb\u06d6\u06d9\u06df\u06e1\u06e8\u06e2\u06db\u06d6\u06d8"

    goto :goto_0

    :sswitch_8
    const v2, 0x585be086

    const-string v0, "\u06d6\u06ec\u06da\u06df\u06e6\u06dc\u06d8\u06e6\u06e7\u06dc\u06df\u06e8\u06e1\u06d8\u06e2\u06e7\u06dc\u06d8\u06ec\u06e4\u06ec\u06e7\u06e7\u06e8\u06d9\u06e4\u06e6\u06d8\u06e1\u06e5\u06d6\u06dc\u06d9\u06db"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e0\u06db\u06dc\u06d8\u06dc\u06db\u06e4\u06e5\u06e5\u06e1\u06d8\u06da\u06e8\u06e7\u06e1\u06d7\u06e5\u06db\u06d6\u06d8\u06eb\u06db\u06e6\u06d8\u06e8\u06dc\u06e5\u06d8\u06e4\u06d8\u06ec\u06e1\u06e5\u06e8\u06e2\u06e7\u06dc\u06da\u06e8\u06d8\u06db\u06d6\u06e7\u06d6\u06e6\u06ec\u06e4\u06db\u06eb\u06eb\u06e2\u06d8\u06d8"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06e2\u06dc\u06eb\u06d6\u06e7\u06df\u06d7\u06ec\u06e6\u06d6\u06e2\u06df\u06dc\u06e2\u06e5\u06e8\u06e2\u06dc\u06d8\u06df\u06dc\u06db\u06d9\u06e4\u06e2\u06ec\u06d6\u06e5\u06dc\u06dc\u06d9\u06e7\u06e4\u06e8\u06e2\u06e8\u06d8\u06d7\u06e5\u06e5\u06d8\u06df\u06e1\u06dc\u06da\u06df\u06e6\u06d6\u06d8\u06e1\u06d8\u06e4\u06eb\u06ec\u06d8\u06d6\u06e4"

    goto :goto_1

    :sswitch_b
    const v3, -0x31ee7fac

    const-string v0, "\u06e1\u06df\u06d8\u06d8\u06e5\u06da\u06e5\u06d7\u06db\u06d8\u06d8\u06dc\u06d8\u06ec\u06d6\u06e6\u06ec\u06e5\u06e4\u06e6\u06d8\u06df\u06d8\u06df\u06e6\u06e0\u06df\u06e6\u06e0\u06e0\u06da\u06d8\u06e8\u06d8\u06da\u06e4\u06e4\u06e6\u06d6\u06e1\u06da\u06dc\u06df\u06e8\u06e2\u06dc\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_c
    const-string v0, "\u06e7\u06e1\u06e8\u06d9\u06d9\u06e4\u06ec\u06e6\u06e2\u06eb\u06db\u06e4\u06df\u06df\u06e4\u06d7\u06e6\u06da\u06d6\u06df\u06e6\u06e2\u06e6\u06eb\u06db\u06e6\u06d6\u06e2\u06e6"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e6\u06e7\u06e5\u06d8\u06e2\u06d9\u06d9\u06d8\u06d7\u06da\u06da\u06d9\u06d8\u06d8\u06e5\u06dc\u06dc\u06d8\u06df\u06d7\u06e1\u06e8\u06e2\u06db\u06eb\u06ec\u06e1\u06e6\u06ec\u06e1\u06d8\u06ec\u06e8\u06d6\u06dc\u06e5\u06d6\u06d8\u06df\u06e1\u06da"

    goto :goto_2

    :sswitch_d
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0o;->OooO0O0:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOOO0(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Lz2/rh;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "\u06e6\u06e4\u06df\u06e7\u06da\u06e1\u06d8\u06eb\u06e5\u06e2\u06ec\u06e1\u06df\u06d9\u06d6\u06e5\u06d8\u06d6\u06e4\u06d7\u06d7\u06df\u06db\u06d7\u06e5\u06e1\u06d8\u06dc\u06d6\u06e4\u06df\u06df\u06d8\u06da\u06e2\u06e4\u06e0\u06e4\u06df\u06e4\u06eb\u06d8\u06e0\u06ec\u06d6\u06d8\u06eb\u06e4\u06e6\u06e6\u06e1\u06e4"

    goto :goto_2

    :sswitch_e
    const-string v0, "\u06ec\u06df\u06db\u06eb\u06e1\u06e6\u06d8\u06db\u06d7\u06e6\u06e8\u06d6\u06dc\u06d8\u06e5\u06d7\u06d9\u06d6\u06df\u06ec\u06da\u06eb\u06d7\u06d6\u06d9\u06e1\u06d8\u06da\u06e4\u06e5\u06dc\u06e4\u06e2\u06e0\u06e6\u06da\u06d8\u06e0\u06e8"

    goto :goto_1

    :sswitch_f
    const-string v0, "\u06ec\u06e0\u06e8\u06d8\u06eb\u06db\u06e7\u06e6\u06eb\u06e8\u06e1\u06db\u06e5\u06d8\u06da\u06d8\u06df\u06e8\u06e5\u06e7\u06da\u06da\u06ec\u06e7\u06dc\u06e4\u06eb\u06e1\u06e7\u06d7\u06e6\u06e8\u06e8\u06d6\u06e4\u06e2\u06d9\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0o;->OooO0O0:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOOO0(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Lz2/rh;

    move-result-object v0

    invoke-virtual {v0}, Lz2/rh;->OooOOo0()V

    const-string v0, "\u06dc\u06d9\u06eb\u06df\u06e8\u06e8\u06e0\u06df\u06db\u06dc\u06d7\u06e2\u06d9\u06df\u06da\u06e8\u06d7\u06e0\u06d7\u06df\u06e6\u06d9\u06eb\u06e5\u06d8\u06dc\u06e7\u06e7\u06eb\u06d9\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "\u06dc\u06d9\u06eb\u06df\u06e8\u06e8\u06e0\u06df\u06db\u06dc\u06d7\u06e2\u06d9\u06df\u06da\u06e8\u06d7\u06e0\u06d7\u06df\u06e6\u06d9\u06eb\u06e5\u06d8\u06dc\u06e7\u06e7\u06eb\u06d9\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_12
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f50c945 -> :sswitch_6
        -0x6c72863d -> :sswitch_1
        -0x4a97ead1 -> :sswitch_5
        -0x48d76ce2 -> :sswitch_4
        -0x44a4de51 -> :sswitch_3
        -0x322ffbc8 -> :sswitch_10
        -0x3221344b -> :sswitch_8
        -0x2825797c -> :sswitch_12
        -0x56cc46e -> :sswitch_0
        0x2cea9e3f -> :sswitch_2
        0x6eff6736 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3575b993 -> :sswitch_9
        0xcdb4a34 -> :sswitch_b
        0x142c2ab7 -> :sswitch_f
        0x197e5090 -> :sswitch_11
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x25ad2d6 -> :sswitch_c
        0x2c2a3ee -> :sswitch_d
        0x2ae1266d -> :sswitch_a
        0x49d7ec68 -> :sswitch_e
    .end sparse-switch
.end method

.method public onAdLoadTimeout()V
    .locals 4

    const-string v0, "\u06dc\u06e7\u06eb\u06e6\u06da\u06eb\u06e6\u06d6\u06eb\u06e8\u06e7\u06d7\u06eb\u06e4\u06e6\u06db\u06dc\u06e4\u06df\u06eb\u06e1\u06e6\u06df\u06e2\u06da\u06e6\u06df\u06e2\u06eb\u06d9\u06dc\u06d6\u06e7\u06d8\u06e0\u06da\u06e1\u06da\u06d6\u06e1\u06d8\u06e2\u06e7\u06d8\u06d8\u06da\u06e7\u06e6\u06d8\u06d7\u06dc\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x156

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xd4

    const/16 v2, 0x393

    const v3, -0x6f0a6780

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06df\u06d9\u06dc\u06df\u06e2\u06e8\u06d6\u06d8\u06df\u06e4\u06e5\u06e8\u06ec\u06d6\u06db\u06dc\u06e8\u06eb\u06eb\u06e1\u06db\u06da\u06d8\u06d9\u06e6\u06e5\u06df\u06d6\u06e2\u06e6\u06e8\u06e0\u06dc\u06e8\u06d8\u06d7\u06e7\u06d6\u06d8\u06d6\u06e0\u06d8\u06e7\u06d7\u06d8\u06d8\u06da\u06dc\u06e0\u06e1\u06e2\u06e4\u06e6\u06e0\u06d6"

    goto :goto_0

    :sswitch_1
    const-string v0, "XJL_AD_TAG"

    const-string v1, "adview onAdLoadTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u06da\u06db\u06e0\u06d6\u06dc\u06d8\u06dc\u06db\u06e2\u06da\u06e4\u06e8\u06e4\u06e4\u06db\u06e6\u06e8\u06e4\u06e5\u06e7\u06d8\u06ec\u06dc\u06dc\u06e5\u06db\u06e2\u06d9\u06e4\u06ec\u06e6\u06e0\u06e5\u06d8\u06dc\u06e1\u06e0\u06e2\u06e0\u06e1\u06df\u06db\u06d9"

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0o;->OooO00o:Z

    const-string v0, "\u06da\u06ec\u06e8\u06e1\u06e6\u06d8\u06db\u06e6\u06e4\u06e7\u06e7\u06da\u06e7\u06e5\u06dc\u06e2\u06d8\u06d6\u06db\u06e7\u06e6\u06e5\u06d6\u06d8\u06d8\u06ec\u06d9\u06e2\u06db\u06da\u06d8\u06db\u06e8\u06d8\u06e8\u06e1\u06dc\u06d8\u06e7\u06dc\u06db\u06dc\u06d8\u06dc\u06e7\u06e7\u06dc\u06d8\u06e1\u06dc\u06d8\u06d8"

    goto :goto_0

    :sswitch_3
    const v1, 0x557b9a94

    const-string v0, "\u06d7\u06dc\u06e6\u06d8\u06d7\u06e0\u06e0\u06e2\u06e6\u06db\u06e2\u06e7\u06d9\u06ec\u06e6\u06d6\u06db\u06dc\u06d6\u06d8\u06e4\u06e1\u06db\u06ec\u06db\u06e8\u06e8\u06e7\u06e6\u06d8\u06e2\u06db\u06e6\u06e1\u06df\u06e1\u06e6\u06e5\u06df\u06e8\u06e2\u06e7\u06e5"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06db\u06e2\u06dc\u06d8\u06d6\u06df\u06d7\u06e2\u06e2\u06e5\u06d8\u06db\u06e5\u06e8\u06e0\u06d6\u06d8\u06d8\u06ec\u06da\u06da\u06df\u06d9\u06dc\u06d8\u06e2\u06df\u06d7\u06e5\u06e5\u06da\u06e8\u06d8\u06d7\u06db\u06d6\u06eb\u06d8\u06d9\u06eb\u06e7\u06d8\u06d6\u06d8\u06e1\u06e8\u06d7\u06e5\u06d7\u06e8\u06d8\u06dc\u06d8\u06eb"

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06e8\u06e7\u06e1\u06e6\u06e7\u06e6\u06d8\u06eb\u06dc\u06e8\u06d8\u06e7\u06e7\u06e1\u06d7\u06da\u06df\u06d7\u06db\u06df\u06e4\u06e1\u06da\u06e7\u06e7\u06e6\u06d8\u06e2\u06e1\u06e1\u06d8\u06dc\u06e4\u06e1"

    goto :goto_1

    :sswitch_6
    const v2, 0x10124401

    const-string v0, "\u06dc\u06d6\u06e8\u06d8\u06d6\u06db\u06e6\u06d7\u06e7\u06e0\u06e0\u06d7\u06ec\u06d6\u06dc\u06d8\u06e2\u06dc\u06d8\u06e1\u06e0\u06e8\u06d9\u06d6\u06df\u06e6\u06e6\u06d8\u06db\u06da\u06e5"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0o;->OooO0O0:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOOO0(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Lz2/rh;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "\u06e7\u06e0\u06eb\u06e4\u06d9\u06d6\u06d8\u06e4\u06e1\u06e0\u06dc\u06e8\u06dc\u06d8\u06d8\u06e4\u06d7\u06df\u06eb\u06e0\u06e2\u06e2\u06ec\u06e1\u06e6\u06e7\u06e7\u06dc\u06dc\u06d8\u06e8\u06e1\u06e5\u06e7\u06d9\u06e6\u06d8\u06e2\u06e4\u06e0"

    goto :goto_2

    :cond_0
    const-string v0, "\u06df\u06e5\u06e0\u06d7\u06e6\u06e1\u06d8\u06e2\u06dc\u06e0\u06e2\u06da\u06db\u06d9\u06eb\u06e8\u06e4\u06e5\u06dc\u06d8\u06d6\u06df\u06dc\u06d8\u06e8\u06e1\u06e8\u06d8\u06eb\u06dc\u06e5\u06d6\u06e6\u06e5\u06d8\u06db\u06e5\u06e7\u06d8\u06ec\u06e6\u06d6\u06d8\u06e4\u06dc\u06e1\u06d8\u06d9\u06eb\u06da"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d7\u06e7\u06d6\u06d8\u06e6\u06d9\u06d7\u06e6\u06da\u06e0\u06d9\u06d9\u06d6\u06d8\u06e8\u06db\u06d7\u06e8\u06e5\u06e1\u06d8\u06d7\u06db\u06d6\u06e1\u06e5\u06d8\u06d8\u06da\u06d6\u06db\u06dc\u06d8\u06e7\u06e0\u06e6\u06d8\u06d9\u06e2\u06db\u06d9\u06dc\u06e7\u06e6\u06d7\u06d8\u06d8\u06db\u06e2\u06e5\u06ec\u06db\u06d6\u06dc\u06e2\u06e5\u06d8\u06d9\u06e4"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06e2\u06d7\u06e0\u06e1\u06d8\u06e1\u06e5\u06d6\u06e7\u06ec\u06e1\u06eb\u06e7\u06e7\u06e1\u06d8\u06d9\u06e1\u06d6\u06d9\u06e5\u06dc\u06d6\u06e6\u06d8\u06e8\u06e8\u06e7\u06d8\u06e7\u06e4\u06db\u06e2\u06da\u06d8\u06d8\u06df\u06e2\u06eb\u06d9\u06d9\u06e7\u06da\u06d9\u06dc\u06e8\u06da\u06e7\u06d8\u06e5\u06d8\u06e5\u06e8\u06dc\u06d8\u06d8\u06dc\u06e1\u06d8"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06da\u06e7\u06e6\u06e0\u06d7\u06d6\u06d6\u06e8\u06d8\u06d9\u06eb\u06e6\u06d8\u06e1\u06ec\u06e8\u06df\u06d9\u06df\u06e7\u06dc\u06d8\u06d8\u06e0\u06d7\u06e7\u06e7\u06eb\u06db\u06e4\u06e7\u06e2"

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0o;->OooO0O0:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOOO0(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Lz2/rh;

    move-result-object v0

    invoke-virtual {v0}, Lz2/rh;->OooOOo0()V

    const-string v0, "\u06d9\u06e5\u06d8\u06d8\u06d9\u06e1\u06d6\u06e4\u06e5\u06e0\u06ec\u06e7\u06d7\u06e1\u06d8\u06d8\u06e1\u06e7\u06e1\u06d6\u06ec\u06d6\u06d8\u06e2\u06db\u06e5\u06da\u06d6\u06ec\u06ec\u06d6\u06d8\u06d6\u06db\u06e2\u06e2\u06d9\u06d7"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06d9\u06e5\u06d8\u06d8\u06d9\u06e1\u06d6\u06e4\u06e5\u06e0\u06ec\u06e7\u06d7\u06e1\u06d8\u06d8\u06e1\u06e7\u06e1\u06d6\u06ec\u06d6\u06d8\u06e2\u06db\u06e5\u06da\u06d6\u06ec\u06ec\u06d6\u06d8\u06d6\u06db\u06e2\u06e2\u06d9\u06d7"

    goto :goto_0

    :sswitch_d
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x73537467 -> :sswitch_0
        -0x38961e58 -> :sswitch_1
        -0x1354f347 -> :sswitch_2
        0x5ce299a6 -> :sswitch_b
        0x6b5a0893 -> :sswitch_3
        0x7342a7cd -> :sswitch_d
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x75de48d6 -> :sswitch_c
        -0x1561e020 -> :sswitch_6
        0x2e8dd8b1 -> :sswitch_a
        0x7e2c366d -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x7fc07e52 -> :sswitch_7
        -0x4ce1a692 -> :sswitch_5
        0x227c21e1 -> :sswitch_8
        0x7d22d39d -> :sswitch_9
    .end sparse-switch
.end method

.method public onAdLoaded(Z)V
    .locals 4

    const-string v0, "\u06d7\u06db\u06d7\u06d8\u06e7\u06e6\u06e7\u06e7\u06e6\u06d8\u06e2\u06e5\u06e1\u06da\u06e2\u06e0\u06d6\u06eb\u06e6\u06e7\u06e8\u06e1\u06d8\u06e4\u06eb\u06e6\u06e2\u06eb\u06d6\u06ec\u06e8\u06eb\u06dc\u06df\u06e2\u06e5\u06e2\u06d8\u06d8\u06da\u06dc\u06e8\u06e4\u06d8\u06e6\u06d8\u06d8\u06e2\u06e0\u06e7\u06d7\u06eb\u06e0\u06db\u06e2\u06d6\u06e7\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xee

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3fc

    const/16 v2, 0x301

    const v3, -0x6b0c1a8a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06d9\u06d6\u06e6\u06d7\u06e1\u06d8\u06da\u06db\u06d6\u06d8\u06e0\u06d6\u06e7\u06d8\u06e0\u06d6\u06df\u06db\u06df\u06eb\u06e1\u06db\u06da\u06e5\u06d9\u06d8\u06e6\u06eb\u06e7\u06e7\u06e6\u06e1\u06e2\u06ec\u06e8\u06d8\u06d6\u06eb\u06e1\u06e2\u06e5\u06d9\u06d8\u06e1\u06d6\u06e4\u06e6\u06e4\u06df\u06d6\u06e2\u06e8\u06e1\u06d8\u06d7\u06e5\u06d6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06e8\u06db\u06d6\u06e5\u06d8\u06d9\u06eb\u06e6\u06d6\u06dc\u06d8\u06e1\u06e4\u06d9\u06dc\u06ec\u06d6\u06e7\u06e4\u06da\u06d7\u06ec\u06e1\u06ec\u06e6\u06e0\u06e0\u06d7\u06e8\u06da\u06e0\u06e4\u06e2\u06d6\u06e7\u06d8\u06e0\u06e0\u06da\u06d7\u06d6\u06e6\u06d8\u06dc\u06d7\u06d8\u06d8\u06df\u06d7\u06d6\u06d9\u06e7\u06eb\u06db\u06d9\u06da"

    goto :goto_0

    :sswitch_2
    const-string v0, "XJL_AD_TAG"

    const-string v1, "adview onAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u06e8\u06e2\u06e5\u06d8\u06e2\u06e5\u06dc\u06e8\u06e2\u06e4\u06e6\u06e1\u06da\u06dc\u06dc\u06e7\u06da\u06dc\u06e5\u06e7\u06e5\u06da\u06dc\u06da\u06d9\u06e2\u06e5\u06ec\u06da\u06dc\u06eb\u06dc\u06ec\u06e8\u06d8\u06d7\u06dc\u06e2"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x17dae505 -> :sswitch_2
        0x17852abb -> :sswitch_1
        0x1969d464 -> :sswitch_3
        0x55ae18e8 -> :sswitch_0
    .end sparse-switch
.end method
