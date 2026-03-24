.class public Lcom/cyjh/elfin/ui/activity/SplashActivity$OooOO0;
.super Lz2/ka;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooOO0"
.end annotation


# instance fields
.field public final Ooooo00:Lcom/cyjh/elfin/ui/activity/SplashActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooOO0;->Ooooo00:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-direct {p0}, Lz2/ka;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooOO0;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 4

    const-string v0, "\u06e8\u06db\u06e1\u06d8\u06da\u06e0\u06e1\u06d8\u06df\u06eb\u06e6\u06e4\u06e6\u06da\u06eb\u06e8\u06d6\u06d9\u06e8\u06e1\u06d8\u06e5\u06e4\u06d6\u06e2\u06e1\u06d6\u06d8\u06da\u06e7\u06d8\u06db\u06e6\u06dc\u06d8\u06e0\u06e8\u06d8\u06e6\u06ec\u06df\u06d9\u06e4\u06e1\u06e6\u06da\u06e6\u06d8\u06d6\u06e0\u06d7\u06e5\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2ed

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x91

    const/16 v2, 0xbc

    const v3, -0x54b9bb16

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e8\u06e0\u06e7\u06dc\u06d8\u06d8\u06d9\u06d7\u06d8\u06d7\u06db\u06e1\u06e6\u06dc\u06e2\u06e4\u06ec\u06d9\u06eb\u06e0\u06e7\u06d8\u06d8\u06e8\u06dc\u06e6\u06d8\u06e2\u06df\u06e2\u06dc\u06d6\u06e6\u06d8\u06e4\u06e5\u06d7\u06e5\u06e8\u06da\u06e8\u06d9\u06ec"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooOO0;->Ooooo00:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lz2/ii;->OooOo0O(Landroid/content/Context;)V

    const-string v0, "\u06ec\u06e6\u06e5\u06d8\u06e6\u06dc\u06e8\u06e2\u06d6\u06ec\u06e6\u06db\u06e5\u06d8\u06d8\u06d8\u06e7\u06e0\u06e2\u06db\u06d9\u06dc\u06db\u06eb\u06d9\u06d8\u06e6\u06e2\u06dc\u06da\u06eb"

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lz2/v3;->OooO()Lz2/v3;

    move-result-object v0

    invoke-virtual {v0}, Lz2/v3;->OooO0oO()V

    const-string v0, "\u06d6\u06ec\u06d6\u06d8\u06e6\u06d6\u06e7\u06d8\u06da\u06e7\u06e8\u06da\u06d9\u06d8\u06e0\u06df\u06e2\u06eb\u06e0\u06ec\u06eb\u06e4\u06d8\u06db\u06e1\u06eb\u06df\u06d9\u06db\u06e5\u06dc\u06e5\u06df\u06d8\u06d6\u06df\u06d9\u06e0\u06d9\u06db\u06e2\u06d6\u06e8\u06e8\u06ec\u06e8\u06d8\u06df\u06da\u06e8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4522b128 -> :sswitch_2
        0x22d82c47 -> :sswitch_0
        0x445891ca -> :sswitch_1
        0x7d2c3424 -> :sswitch_3
    .end sparse-switch
.end method

.method public OooO0O0()V
    .locals 4

    const-string v0, "\u06d8\u06ec\u06d7\u06dc\u06e0\u06db\u06e0\u06d8\u06d8\u06ec\u06db\u06e1\u06d6\u06dc\u06e5\u06e8\u06e4\u06db\u06e7\u06db\u06eb\u06e7\u06e7\u06db\u06d8\u06e6\u06e8\u06e4\u06d9\u06e6\u06d8\u06d6\u06dc\u06d6\u06d8\u06e7\u06d8\u06e4\u06d8\u06e1\u06e2\u06e2\u06df\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xb4

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3f1

    const/16 v2, 0x35c

    const v3, 0x3e86e9c0

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06df\u06d8\u06e5\u06d8\u06d6\u06d8\u06e5\u06d6\u06df\u06e8\u06d7\u06e6\u06ec\u06d7\u06d6\u06ec\u06d6\u06d8\u06ec\u06e6\u06e8\u06d8\u06df\u06e5\u06d7\u06d7\u06d6\u06e8\u06d9\u06db\u06ec\u06ec\u06da\u06d6\u06e8\u06e1\u06d6\u06d8\u06dc\u06d9\u06dc\u06d8\u06e4\u06d6\u06df"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooOO0;->Ooooo00:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOOoo(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    const-string v0, "\u06ec\u06d8\u06d6\u06d8\u06e1\u06d6\u06d9\u06d6\u06d9\u06e5\u06e8\u06d6\u06d6\u06e4\u06e6\u06d8\u06d8\u06e7\u06d9\u06d8\u06e8\u06dc\u06eb\u06db\u06dc\u06d8\u06e7\u06db\u06e5\u06d8\u06e6\u06dc\u06dc\u06e5\u06db\u06e2\u06e2\u06eb\u06db\u06e1\u06dc\u06ec\u06e8\u06e7\u06ec\u06e1\u06dc\u06e0\u06e8\u06e0"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x70946683 -> :sswitch_2
        -0x67e97b02 -> :sswitch_1
        0xcfc522c -> :sswitch_0
    .end sparse-switch
.end method
