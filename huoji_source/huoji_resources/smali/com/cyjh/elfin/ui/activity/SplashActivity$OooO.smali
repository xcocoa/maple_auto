.class public Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO;
.super Lz2/l3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO"
.end annotation


# instance fields
.field public final OooO0OO:Lcom/cyjh/elfin/ui/activity/SplashActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO;->OooO0OO:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-direct {p0, p2}, Lz2/l3;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;ILcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;I)V

    return-void
.end method


# virtual methods
.method public OooO0O0(I)V
    .locals 4

    const-string v0, "\u06eb\u06e0\u06e6\u06e5\u06e0\u06da\u06d9\u06df\u06d8\u06d8\u06e6\u06e1\u06d6\u06e5\u06e8\u06e5\u06d8\u06d7\u06e6\u06e7\u06e5\u06e7\u06d8\u06eb\u06e0\u06e4\u06e1\u06da\u06e0\u06e7\u06d9\u06dc\u06d8\u06e1\u06d6\u06e8\u06eb\u06e4\u06e1\u06d8\u06e6\u06e6\u06d8\u06d8\u06e6\u06e5\u06e0\u06e0\u06e7\u06e2\u06e7\u06e7\u06e5\u06d8\u06da\u06e5\u06eb\u06e2\u06d7\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x382

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0xa

    const/16 v2, 0x3ab

    const v3, -0x6cd45ae2

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e2\u06d6\u06d8\u06eb\u06d7\u06da\u06e6\u06d8\u06e6\u06da\u06e7\u06e0\u06db\u06db\u06e6\u06d8\u06e8\u06e2\u06e1\u06e0\u06df\u06e6\u06d8\u06d8\u06e8\u06e6\u06d8\u06e7\u06d7\u06db\u06dc\u06ec\u06e2\u06d8\u06e8\u06e8\u06e0\u06ec\u06db\u06e7\u06db\u06d6\u06e4\u06da\u06e6\u06dc\u06ec\u06e8\u06d8\u06eb\u06d6\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06e0\u06eb\u06e7\u06e8\u06e6\u06d8\u06e6\u06e4\u06ec\u06e8\u06e0\u06e6\u06e6\u06e7\u06d6\u06d8\u06e8\u06d6\u06e5\u06e8\u06e8\u06d7\u06e6\u06d8\u06e4\u06dc\u06e5\u06e7\u06dc\u06e8\u06e7\u06d8\u06e5\u06d8\u06d9\u06e4\u06e5\u06d8\u06da\u06d9\u06d8\u06d8\u06e8\u06e2\u06e8\u06eb\u06da\u06e1\u06ec\u06e1\u06db\u06e2\u06e1\u06e4\u06d6\u06e4\u06e1"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO;->OooO0OO:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOo00(Lcom/cyjh/elfin/ui/activity/SplashActivity;)I

    const-string v0, "\u06e2\u06eb\u06d8\u06e6\u06e8\u06e1\u06d8\u06e6\u06da\u06e1\u06d7\u06e1\u06d6\u06d8\u06d9\u06d9\u06d6\u06d8\u06e7\u06e1\u06e8\u06d8\u06d8\u06df\u06e8\u06d8\u06e8\u06db\u06d9\u06e5\u06ec\u06e5\u06e7\u06df\u06d6\u06d8\u06e5\u06e8\u06e6\u06d8\u06eb\u06db\u06e0\u06ec\u06dc\u06d6\u06d8\u06e5\u06dc\u06dc\u06d7\u06df\u06e6\u06e0\u06d6\u06da\u06d9\u06e5\u06db\u06e8\u06da\u06e5\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71a5e8d2 -> :sswitch_1
        -0x1b7dd4b3 -> :sswitch_3
        -0xe99ccdc -> :sswitch_0
        0xbe28a60 -> :sswitch_2
    .end sparse-switch
.end method

.method public onFinish()V
    .locals 4

    const-string v0, "\u06e2\u06e1\u06d6\u06d8\u06e2\u06d6\u06e5\u06d8\u06e8\u06e2\u06dc\u06d8\u06d8\u06e2\u06e5\u06d8\u06d6\u06e0\u06e0\u06e1\u06e8\u06e8\u06d8\u06e0\u06df\u06e8\u06d8\u06d8\u06e7\u06d8\u06e8\u06d8\u06da\u06ec\u06e8\u06e7\u06d8\u06da\u06e8\u06db\u06e6\u06db\u06dc\u06d8\u06e5\u06e1\u06e8\u06d9\u06d9\u06ec\u06e8\u06d9\u06d8\u06d9\u06e7\u06d8\u06e5\u06e8\u06d8\u06e2\u06dc\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x13

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x38b

    const/16 v2, 0x18f

    const v3, -0x32408168

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06d8\u06e0\u06eb\u06d7\u06db\u06d7\u06d7\u06d6\u06eb\u06d8\u06df\u06ec\u06ec\u06d6\u06d9\u06eb\u06e6\u06d8\u06e7\u06da\u06e5\u06e2\u06e7\u06e0\u06e7\u06df\u06d6\u06eb\u06e5\u06dc\u06d8\u06e5\u06e6\u06d7\u06db\u06eb\u06eb\u06da\u06da\u06e8\u06d8\u06e2\u06da\u06da\u06e5\u06e5\u06e5\u06d9\u06e8\u06da\u06e4\u06da\u06e8\u06dc\u06d8\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO;->OooO0OO:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOo0(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    const-string v0, "\u06eb\u06db\u06da\u06df\u06e0\u06e8\u06d7\u06dc\u06d7\u06e8\u06df\u06d8\u06d8\u06df\u06e2\u06d6\u06d8\u06da\u06e7\u06d6\u06d6\u06e6\u06d8\u06d9\u06e7\u06e4\u06e0\u06e7\u06e8\u06d8\u06ec\u06e0\u06e8\u06d8\u06d9\u06db\u06e5\u06d8\u06d9\u06d7\u06e6\u06df\u06df\u06e1\u06d8\u06df\u06d7\u06e1\u06db\u06d7\u06e1\u06d8\u06eb\u06eb\u06dc"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5a0f62d7 -> :sswitch_1
        -0x1d33110f -> :sswitch_0
        0x3f5f37e6 -> :sswitch_2
    .end sparse-switch
.end method
