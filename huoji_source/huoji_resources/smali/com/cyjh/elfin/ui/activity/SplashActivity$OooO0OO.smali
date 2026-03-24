.class public Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0OO;
.super Ljava/lang/Object;

# interfaces
.implements Lz2/r3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOooO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/r3",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/SplashActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0OO;->OooO00o:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "\u06ec\u06d6\u06e7\u06d8\u06e4\u06df\u06e6\u06d9\u06e5\u06e2\u06da\u06df\u06e4\u06ec\u06da\u06d8\u06d9\u06df\u06d6\u06d6\u06df\u06d6\u06e1\u06ec\u06eb\u06db\u06e2\u06e8\u06e5\u06e6\u06e8\u06e2\u06e6\u06d6\u06df\u06df\u06da\u06e5\u06e0\u06e6\u06d6\u06da\u06e2\u06d7\u06e6\u06d7\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1e5

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x26d

    const/16 v2, 0x20c

    const v3, 0x49cfc1d2    # 1701946.2f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06d9\u06dc\u06d9\u06ec\u06df\u06db\u06e0\u06e2\u06e1\u06ec\u06d8\u06d8\u06e8\u06d8\u06ec\u06d6\u06d9\u06e4\u06ec\u06dc\u06d6\u06d8\u06df\u06db\u06d6\u06d6\u06d7\u06e4\u06e1\u06e0\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d8\u06e5\u06e7\u06dc\u06db\u06e1\u06e1\u06e1\u06d8\u06d8\u06d7\u06e2\u06dc\u06d8\u06d9\u06ec\u06df\u06e0\u06dc\u06e5\u06e6\u06e1\u06da\u06d7\u06eb\u06db\u06d7\u06ec\u06e1\u06d8\u06d9\u06d6\u06dc\u06df\u06eb\u06e2\u06dc\u06e4\u06db"

    goto :goto_0

    :sswitch_2
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0OO;->OooO0O0(Ljava/lang/String;)V

    const-string v0, "\u06df\u06e7\u06e6\u06da\u06d8\u06da\u06e5\u06e7\u06d9\u06e4\u06ec\u06dc\u06d8\u06e2\u06e0\u06e8\u06db\u06dc\u06d8\u06df\u06d6\u06e8\u06df\u06e6\u06e4\u06e2\u06e4\u06d8\u06d8\u06db\u06e2\u06e6\u06e6\u06d8\u06e6\u06d8\u06db\u06d6\u06da"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0xd59773e -> :sswitch_3
        0x1bbef7d1 -> :sswitch_0
        0x3c5edcaa -> :sswitch_2
        0x74f2fb1d -> :sswitch_1
    .end sparse-switch
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06e5\u06d7\u06e5\u06df\u06e8\u06d7\u06e4\u06d6\u06eb\u06e6\u06e7\u06d6\u06db\u06df\u06e6\u06d8\u06d6\u06e4\u06e5\u06d8\u06d6\u06db\u06d6\u06e1\u06d6\u06e1\u06d7\u06dc\u06d8\u06d8\u06e6\u06e0\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x214

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3d2

    const/16 v2, 0x1b5

    const v3, 0x7b3d3ba2

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06e1\u06d9\u06df\u06e2\u06ec\u06da\u06d7\u06d6\u06d7\u06db\u06e0\u06d8\u06d6\u06dc\u06d8\u06eb\u06e8\u06d9\u06d7\u06e6\u06dc\u06d8\u06d9\u06dc\u06e7\u06d8\u06da\u06e6\u06d8\u06d8\u06e1\u06e8\u06d6\u06eb\u06eb\u06e4\u06dc\u06d8\u06eb\u06da\u06e5\u06d8\u06dc\u06d8\u06dc"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06d9\u06d8\u06eb\u06e2\u06d6\u06d8\u06db\u06d9\u06d8\u06d8\u06e6\u06d6\u06d8\u06d8\u06d8\u06e8\u06d8\u06e0\u06d9\u06df\u06d9\u06da\u06d7\u06dc\u06e8\u06da\u06e1\u06d6\u06d8\u06eb\u06df\u06dc"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0OO;->OooO00o:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOO0o(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    const-string v0, "\u06d7\u06eb\u06e1\u06dc\u06e2\u06d9\u06e5\u06d8\u06da\u06df\u06e8\u06d6\u06dc\u06e5\u06d8\u06d8\u06e2\u06e8\u06e5\u06d8\u06e8\u06d7\u06e0\u06d7\u06d7\u06d8\u06d6\u06d7\u06e1\u06d8\u06e6\u06e8\u06ec\u06dc\u06eb\u06d7\u06e2\u06e7\u06e7"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bd4a1c1 -> :sswitch_1
        -0x14f40b7a -> :sswitch_3
        0x6ed7a465 -> :sswitch_0
        0x7e30f3f7 -> :sswitch_2
    .end sparse-switch
.end method

.method public error(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06ec\u06d6\u06e2\u06e4\u06e6\u06e0\u06ec\u06eb\u06e0\u06d9\u06d8\u06e8\u06d8\u06e2\u06eb\u06e1\u06d8\u06d9\u06e7\u06df\u06eb\u06e2\u06d8\u06ec\u06e1\u06e2\u06e5\u06d8\u06dc\u06d9\u06e2\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1a8

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x367

    const/16 v2, 0x366

    const v3, 0x4817a35b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06e4\u06e8\u06e5\u06ec\u06e6\u06d8\u06e1\u06d6\u06dc\u06d7\u06d8\u06e6\u06d8\u06e7\u06e1\u06e0\u06da\u06e6\u06dc\u06d7\u06d6\u06db\u06ec\u06e2\u06d6\u06ec\u06d8\u06ec\u06d9\u06e2\u06db\u06e4\u06e6\u06e7\u06d8\u06d9\u06e0\u06e6\u06dc\u06d9\u06eb\u06eb\u06db\u06e8\u06d8\u06d8\u06d9\u06d7\u06eb\u06e8\u06e4\u06ec\u06eb\u06e6\u06dc\u06ec\u06e0"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e0\u06e8\u06d8\u06d8\u06e8\u06e2\u06e6\u06d6\u06e7\u06e6\u06df\u06e2\u06e8\u06d8\u06da\u06e7\u06e6\u06d8\u06ec\u06e6\u06d8\u06df\u06eb\u06e1\u06eb\u06e7\u06ec\u06d8\u06e6\u06e7\u06d8\u06d8\u06e6\u06d6\u06d8\u06dc\u06e7\u06d7\u06e4\u06e5\u06d8\u06e0\u06e2\u06e6\u06e4\u06e6\u06e1\u06df\u06d7\u06e1\u06ec\u06e6\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0OO;->OooO00o:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOO0o(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    const-string v0, "\u06e8\u06d6\u06d6\u06df\u06e0\u06d8\u06d6\u06d6\u06d8\u06e4\u06e6\u06d9\u06e2\u06d9\u06e2\u06e0\u06d8\u06db\u06d7\u06d8\u06e4\u06d8\u06dc\u06e2\u06e2\u06d8\u06d8\u06d8\u06d7\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c7f96c0 -> :sswitch_3
        -0x689b8eb7 -> :sswitch_0
        -0x334dc079 -> :sswitch_1
        0x6a10b9ba -> :sswitch_2
    .end sparse-switch
.end method
