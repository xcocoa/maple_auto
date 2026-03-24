.class public Lcom/cyjh/elfin/services/BaseService;
.super Landroid/app/Service;

# interfaces
.implements Lz2/f6;


# instance fields
.field public OoooOoO:Lcom/cyjh/elfin/base/AppContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    const-string v0, "\u06dc\u06e6\u06da\u06d6\u06da\u06e0\u06e7\u06da\u06e1\u06d9\u06e1\u06e2\u06e6\u06da\u06d6\u06e6\u06d6\u06e1\u06d8\u06d9\u06da\u06d7\u06e0\u06e8\u06dc\u06ec\u06da\u06d6\u06eb\u06e1\u06e6\u06d8\u06e0\u06d7\u06e5\u06d8\u06d6\u06ec\u06e4\u06e6\u06dc\u06e6\u06d8\u06e7\u06d9\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x292

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x31b

    const/16 v2, 0x27c

    const v3, 0x764eda05

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06d7\u06e7\u06e4\u06da\u06e7\u06d6\u06d9\u06e5\u06da\u06e0\u06e2\u06ec\u06e2\u06e5\u06d8\u06df\u06e0\u06d8\u06d8\u06db\u06e7\u06ec\u06d8\u06d6\u06eb\u06df\u06d7\u06d8\u06dc\u06da\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06da\u06d9\u06eb\u06db\u06e2\u06df\u06d6\u06e7\u06e8\u06d8\u06e2\u06e0\u06e5\u06d8\u06d9\u06e2\u06e8\u06d8\u06df\u06dc\u06e6\u06d8\u06e8\u06da\u06d7\u06e0\u06e5\u06d8\u06db\u06df\u06e6\u06d8\u06e4\u06eb\u06e8\u06dc\u06df\u06e0\u06e1\u06df\u06e5\u06d8\u06dc\u06e7\u06e2\u06e8\u06e0\u06d8\u06ec\u06e4\u06d6\u06da\u06e2\u06d8\u06d8"

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x5a9edaab -> :sswitch_1
        -0x1e04708a -> :sswitch_2
        0x23b5561e -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate()V
    .locals 4

    const-string v0, "\u06e1\u06d7\u06dc\u06d8\u06e5\u06dc\u06e8\u06df\u06e5\u06e7\u06d8\u06e2\u06df\u06e5\u06df\u06eb\u06d9\u06db\u06e6\u06dc\u06e1\u06e6\u06dc\u06d8\u06d6\u06e1\u06e8\u06d6\u06e0\u06e0\u06e0\u06df\u06e4\u06db\u06e2\u06e4\u06d9\u06d7\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x73

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1a1

    const/16 v2, 0x24c

    const v3, 0x8f0e62b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06ec\u06e8\u06d8\u06da\u06eb\u06dc\u06df\u06e4\u06e4\u06da\u06e2\u06eb\u06d6\u06d8\u06d8\u06df\u06d7\u06e1\u06df\u06ec\u06d8\u06d8\u06ec\u06d7\u06e7\u06e4\u06db\u06e6\u06d8\u06e0\u06ec\u06d7\u06db\u06eb\u06e4\u06e1\u06eb\u06e6\u06d8\u06d8\u06d8\u06e6\u06d6\u06ec\u06e1\u06df\u06d6\u06d8\u06d6\u06e0\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "\u06df\u06e8\u06d6\u06d8\u06dc\u06e0\u06e5\u06da\u06e2\u06e0\u06e0\u06e6\u06e8\u06d8\u06eb\u06e2\u06dc\u06d8\u06e1\u06e8\u06eb\u06e0\u06da\u06e7\u06d8\u06e6\u06e5\u06eb\u06da\u06eb\u06d6\u06ec\u06da\u06d7\u06d6\u06e1\u06d8\u06e4\u06db\u06dc\u06da\u06e1\u06e0\u06e4\u06e2\u06d9\u06d8\u06eb\u06da\u06da\u06d6\u06df\u06e7\u06dc\u06d8\u06d8\u06e6\u06e2"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/base/AppContext;

    iput-object v0, p0, Lcom/cyjh/elfin/services/BaseService;->OoooOoO:Lcom/cyjh/elfin/base/AppContext;

    const-string v0, "\u06d8\u06db\u06e5\u06e6\u06e5\u06e1\u06ec\u06e2\u06e0\u06e4\u06ec\u06db\u06e1\u06d8\u06d7\u06e5\u06d8\u06d8\u06dc\u06d9\u06db\u06e6\u06d9\u06d8\u06d8\u06e4\u06e4\u06e4\u06d7\u06e0\u06dc\u06d8\u06da\u06e5\u06ec\u06dc\u06e2\u06e1\u06d8\u06e7\u06dc\u06e6\u06d8\u06e5\u06db\u06d6\u06d8\u06dc\u06da\u06dc\u06ec\u06d6\u06dc"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x632973da -> :sswitch_2
        -0x58316fd0 -> :sswitch_0
        -0x4ad06255 -> :sswitch_1
        0x1e7dfbde -> :sswitch_3
    .end sparse-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const-string v0, "\u06d7\u06e0\u06e6\u06d8\u06e1\u06d8\u06e0\u06d6\u06e6\u06ec\u06d6\u06d6\u06e6\u06e2\u06eb\u06e2\u06da\u06e0\u06df\u06e7\u06d6\u06d6\u06d9\u06e1\u06d9\u06e8\u06e1\u06d8\u06d7\u06d7\u06e6\u06e1\u06e4\u06e6\u06d8\u06d9\u06da\u06d9\u06d7\u06e5\u06e5\u06d8\u06d9\u06e5\u06d7\u06e4\u06e7\u06d8\u06df\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10b

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x282

    const/16 v2, 0x307

    const v3, -0x2fcd9b82

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06e5\u06d8\u06dc\u06dc\u06e0\u06db\u06e1\u06e4\u06e5\u06da\u06e0\u06d8\u06df\u06d8\u06db\u06eb\u06e5\u06eb\u06e8\u06e2\u06e6\u06db\u06d7\u06e7\u06e7\u06d6\u06e5\u06dc"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06d8\u06e2\u06e2\u06d6\u06d6\u06d7\u06d6\u06e1\u06d8\u06e0\u06d6\u06e6\u06d8\u06e7\u06e6\u06e2\u06dc\u06df\u06e5\u06d8\u06db\u06ec\u06e5\u06d8\u06dc\u06db\u06dc\u06e2\u06da\u06e6\u06d8\u06e0\u06e2\u06d8\u06d8\u06e8\u06e2\u06df\u06e0\u06d9\u06dc\u06d8\u06e0\u06e0\u06eb\u06e7\u06ec\u06e7\u06e6\u06d6\u06d8\u06ec\u06d9\u06e8\u06eb\u06eb\u06e8\u06d8\u06e8\u06e8"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06dc\u06e5\u06e5\u06d8\u06e0\u06d6\u06e8\u06d8\u06dc\u06df\u06e1\u06eb\u06e4\u06d6\u06ec\u06ec\u06db\u06dc\u06e4\u06e0\u06e0\u06ec\u06d8\u06d8\u06e7\u06e0\u06e6\u06db\u06d6\u06ec\u06e5\u06e5\u06d8"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06d8\u06d9\u06ec\u06dc\u06d6\u06e6\u06d8\u06e4\u06e4\u06e8\u06d8\u06e2\u06e7\u06e2\u06d9\u06e5\u06d7\u06d8\u06df\u06d8\u06d8\u06da\u06e1\u06e6\u06d8\u06e4\u06e0\u06dc\u06e8\u06df\u06db\u06e8\u06e0\u06d6\u06d8\u06db\u06e8\u06e2\u06da\u06e7\u06e8\u06d8\u06e8\u06d7\u06e8\u06df\u06e8\u06e1\u06e6\u06e7\u06df\u06d6\u06e1\u06e8\u06d7\u06e6\u06dc\u06d8\u06d7\u06e7\u06da"

    goto :goto_0

    :sswitch_4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3eeb1399 -> :sswitch_1
        -0x3cf00a06 -> :sswitch_3
        0x34c7645d -> :sswitch_0
        0x350baeb2 -> :sswitch_4
        0x5a4219e7 -> :sswitch_2
    .end sparse-switch
.end method
