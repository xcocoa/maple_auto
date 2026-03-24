.class public Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0OO;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elfin/ad/bean/response/FengLingAdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation


# instance fields
.field private OooO00o:I

.field private OooO0O0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0OO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0Oo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0o:Lcom/elfin/ad/bean/response/FengLingAdInfo;

.field private OooO0o0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/elfin/ad/bean/response/FengLingAdInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0OO;->OooO0o:Lcom/elfin/ad/bean/response/FengLingAdInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "\u06d7\u06da\u06d8\u06d6\u06d9\u06da\u06da\u06dc\u06d6\u06d8\u06d6\u06eb\u06df\u06e4\u06d6\u06d6\u06d8\u06df\u06db\u06ec\u06e0\u06db\u06e1\u06e4\u06da\u06d7\u06d9\u06df\u06e2\u06e4\u06e5\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2c8

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1f3

    const/16 v2, 0x1fa

    const v3, -0x43ede8b1

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06d9\u06dc\u06e2\u06e7\u06e0\u06db\u06e1\u06d8\u06e8\u06e8\u06db\u06d8\u06dc\u06eb\u06eb\u06d7\u06df\u06dc\u06d6\u06d8\u06db\u06e7\u06d9\u06d7\u06d8\u06eb\u06e5\u06e4\u06d8\u06e2\u06d8\u06e2\u06e1\u06d8\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06eb\u06dc\u06e1\u06d6\u06db\u06db\u06eb\u06e4\u06e6\u06d8\u06da\u06d7\u06e0\u06d9\u06e6\u06d6\u06dc\u06e7\u06e8\u06d8\u06e4\u06df\u06eb\u06e5\u06e1\u06e5\u06d8\u06e4\u06e5\u06eb\u06dc\u06db\u06d8\u06d6\u06d6\u06e4\u06df\u06df\u06df\u06d9\u06ec\u06e5\u06db\u06e6\u06e6"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0OO;->OooO0o0:Ljava/util/List;

    const-string v0, "\u06e7\u06db\u06d7\u06e0\u06e2\u06db\u06e0\u06d9\u06dc\u06e4\u06e1\u06dc\u06d8\u06e0\u06db\u06e6\u06d8\u06e2\u06e5\u06d8\u06d6\u06e1\u06e7\u06e7\u06e0\u06d7\u06dc\u06d8\u06df\u06e6\u06d8\u06d8\u06e2\u06da\u06d6\u06d8\u06e6\u06e1\u06e6\u06d8\u06e1\u06eb\u06e8\u06e0\u06d9\u06e8\u06d8\u06d7\u06ec\u06e1\u06db\u06e5\u06e4"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1e434b38 -> :sswitch_0
        -0x14625766 -> :sswitch_1
        0x110fd42e -> :sswitch_2
        0x68b09809 -> :sswitch_3
    .end sparse-switch
.end method

.method public OooO00o()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "\u06e4\u06e6\u06dc\u06d8\u06d9\u06ec\u06d6\u06d8\u06e7\u06da\u06da\u06e5\u06e8\u06d8\u06d7\u06ec\u06e1\u06df\u06e8\u06dc\u06d8\u06da\u06e1\u06db\u06eb\u06e1\u06e0\u06d9\u06e5\u06eb\u06ec\u06e1\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x76

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2e6

    const/16 v2, 0x307

    const v3, -0x692dd755

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06e4\u06e1\u06e0\u06d7\u06e0\u06d9\u06e2\u06e2\u06d6\u06e1\u06df\u06e4\u06eb\u06e8\u06d8\u06e1\u06e4\u06e6\u06d8\u06e5\u06e4\u06da\u06e0\u06e2\u06df\u06da\u06e2\u06e6\u06e1\u06d7\u06e5\u06d8\u06e6\u06d7\u06e8\u06d9\u06e6\u06db\u06d7\u06d7\u06e0\u06d8\u06e6\u06da\u06e8\u06df\u06ec\u06e4\u06da"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0OO;->OooO0OO:Ljava/util/List;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6016e94f -> :sswitch_0
        0x702066aa -> :sswitch_1
    .end sparse-switch
.end method

.method public OooO0O0()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "\u06df\u06eb\u06d8\u06d8\u06db\u06d8\u06da\u06d7\u06dc\u06e6\u06dc\u06e8\u06d8\u06df\u06e4\u06e0\u06df\u06eb\u06e7\u06d9\u06e5\u06e5\u06da\u06d6\u06e5\u06d8\u06e2\u06e1\u06e1\u06e7\u06df\u06d6\u06d8\u06d9\u06e7\u06e1\u06df\u06e0\u06d8\u06d6\u06e1\u06e6\u06d8\u06e0\u06e4\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x30a

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x371

    const/16 v2, 0x1d2

    const v3, -0x5f698eb4

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06ec\u06da\u06ec\u06e2\u06e5\u06d6\u06dc\u06eb\u06d8\u06d6\u06d6\u06e2\u06e1\u06e0\u06e2\u06d6\u06e0\u06eb\u06ec\u06d8\u06da\u06e4\u06d9\u06d8\u06d6\u06e1\u06d8\u06e4\u06e2\u06db\u06e7\u06e1\u06df\u06d8\u06dc\u06e4"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0OO;->OooO0Oo:Ljava/util/List;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x1686dd8c -> :sswitch_0
        0x252be752 -> :sswitch_1
    .end sparse-switch
.end method

.method public OooO0OO()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "\u06e8\u06d6\u06d6\u06d9\u06eb\u06dc\u06e1\u06da\u06d6\u06e4\u06e6\u06d7\u06dc\u06ec\u06e7\u06e7\u06dc\u06e8\u06ec\u06d8\u06d8\u06eb\u06db\u06e1\u06db\u06d6\u06d9\u06db\u06eb\u06e5\u06d8\u06d9\u06d7\u06e8\u06d8\u06e5\u06dc\u06e6\u06d8\u06ec\u06e1\u06db\u06dc\u06e1\u06d6\u06df\u06eb\u06df\u06d7\u06d6\u06d8\u06e4\u06ec\u06df\u06d7\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2a7

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xc2

    const/16 v2, 0x3c3

    const v3, -0x237423e7

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06e2\u06ec\u06e2\u06d7\u06d9\u06e5\u06d7\u06ec\u06da\u06e2\u06e8\u06d8\u06e5\u06e1\u06ec\u06e8\u06ec\u06e1\u06eb\u06d7\u06dc\u06e4\u06dc\u06e5\u06d8\u06e4\u06e2\u06d8\u06da\u06da\u06d6\u06da\u06df\u06db\u06d7\u06da\u06e4\u06ec\u06e5\u06d8\u06eb\u06e7\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0OO;->OooO0O0:Ljava/util/List;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x3b689847 -> :sswitch_1
        0x5ddc5792 -> :sswitch_0
    .end sparse-switch
.end method

.method public OooO0Oo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "\u06d9\u06eb\u06e1\u06da\u06e7\u06e5\u06d8\u06e2\u06d8\u06d8\u06e0\u06e5\u06da\u06dc\u06e0\u06e4\u06ec\u06e5\u06db\u06d8\u06da\u06d8\u06db\u06e6\u06dc\u06d8\u06d9\u06e5\u06d7\u06e2\u06e0\u06db\u06e8\u06d8\u06d8\u06d9\u06d9\u06eb\u06e6\u06dc\u06e8\u06d8\u06e1\u06d8\u06d9\u06d6\u06e7\u06d7\u06d8\u06e0\u06e2\u06e0\u06e7\u06e8\u06d7\u06eb\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x277

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x24c

    const/16 v2, 0x211

    const v3, -0x13be8302

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06ec\u06e1\u06e4\u06e4\u06d8\u06d8\u06e0\u06e4\u06d6\u06e0\u06db\u06d7\u06db\u06df\u06dc\u06e1\u06d9\u06e4\u06e1\u06e2\u06e4\u06e0\u06e0\u06d9\u06dc\u06df\u06ec\u06da\u06d7\u06eb\u06e0\u06d8\u06e4\u06db\u06eb\u06e7\u06e7\u06d8\u06e8\u06d8\u06d8\u06e8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0OO;->OooO0o0:Ljava/util/List;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x8b636ef -> :sswitch_0
        0x77496722 -> :sswitch_1
    .end sparse-switch
.end method

.method public OooO0o(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "\u06e7\u06d7\u06e1\u06d8\u06d9\u06db\u06e0\u06e6\u06e0\u06ec\u06d9\u06e0\u06e7\u06eb\u06e4\u06db\u06df\u06e6\u06e5\u06d8\u06d6\u06dc\u06e0\u06d7\u06ec\u06e8\u06d8\u06e7\u06d8\u06e8\u06d8\u06e2\u06da\u06e2\u06df\u06dc\u06df\u06e6\u06d6\u06e7\u06db\u06e2\u06d8\u06db\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2d0

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x26

    const/16 v2, 0x1d9

    const v3, 0x6f1254ba

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06ec\u06e4\u06db\u06d9\u06e2\u06d8\u06e1\u06e8\u06e1\u06e2\u06e0\u06e0\u06dc\u06d8\u06db\u06d7\u06e7\u06eb\u06d9\u06e6\u06e2\u06eb\u06d6\u06da\u06e8\u06d7\u06d8\u06e4\u06e8\u06d8\u06ec\u06d6\u06e4\u06da\u06e5\u06eb\u06d6\u06e4\u06e4\u06dc\u06df\u06e1"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e8\u06ec\u06e7\u06e0\u06e2\u06e5\u06e1\u06d6\u06e4\u06db\u06e1\u06db\u06e0\u06e2\u06e1\u06e0\u06dc\u06e8\u06eb\u06d8\u06db\u06d6\u06eb\u06db\u06d7\u06db\u06d6\u06d8\u06e8\u06e8\u06d8\u06d8\u06db\u06e1\u06d8\u06e1\u06e4\u06d8\u06eb\u06d9\u06e7\u06d9\u06d8\u06ec\u06e0\u06dc\u06dc\u06dc\u06ec\u06e6"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0OO;->OooO0OO:Ljava/util/List;

    const-string v0, "\u06e0\u06e5\u06d7\u06e4\u06dc\u06e7\u06d9\u06e8\u06e7\u06d8\u06e2\u06df\u06e1\u06dc\u06e8\u06da\u06da\u06e8\u06e0\u06e6\u06e4\u06d7\u06d9\u06d6\u06d8\u06e2\u06e5\u06d8\u06d8\u06e7\u06db\u06e0\u06e8\u06e4\u06e6\u06db\u06d7\u06ec\u06e5\u06eb\u06e4\u06eb\u06d7\u06e7\u06d9\u06d8\u06df\u06d9\u06eb\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x27e0d350 -> :sswitch_3
        0x1916a686 -> :sswitch_0
        0x1a87ddcb -> :sswitch_2
        0x4c09c0da -> :sswitch_1
    .end sparse-switch
.end method

.method public OooO0o0()I
    .locals 4

    const-string v0, "\u06d6\u06d8\u06e4\u06e1\u06e2\u06e8\u06d8\u06da\u06d8\u06dc\u06d8\u06e4\u06e5\u06eb\u06e6\u06da\u06db\u06e8\u06e8\u06e0\u06dc\u06eb\u06e8\u06e0\u06e4\u06eb\u06da\u06e0\u06df\u06e2\u06d7\u06d9\u06d6\u06dc\u06e5\u06d8\u06d9\u06ec\u06e8\u06d7\u06e8\u06d8\u06dc\u06db\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x311

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xf5

    const/16 v2, 0x1f1

    const v3, -0x7a5ecc56

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06eb\u06d6\u06e4\u06e6\u06e5\u06d8\u06e1\u06d8\u06e7\u06e8\u06d8\u06e5\u06dc\u06e2\u06eb\u06db\u06e2\u06d6\u06db\u06d7\u06e1\u06d9\u06e5\u06eb\u06d7\u06e1\u06e7\u06e5\u06e2\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0OO;->OooO00o:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7a65150e -> :sswitch_1
        -0x6903759a -> :sswitch_0
    .end sparse-switch
.end method

.method public OooO0oO(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "\u06d8\u06d6\u06df\u06e1\u06d6\u06eb\u06eb\u06d9\u06e6\u06d8\u06e0\u06da\u06e7\u06e6\u06e4\u06e5\u06e7\u06e0\u06e7\u06e0\u06db\u06d7\u06d7\u06e8\u06e2\u06e1\u06e7\u06e2\u06e0\u06db\u06e2\u06e0\u06db\u06dc\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x145

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x58

    const/16 v2, 0x10f

    const v3, 0x6df63633

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06d6\u06e7\u06d8\u06d9\u06e6\u06eb\u06e8\u06e0\u06d9\u06ec\u06d6\u06e5\u06d8\u06e8\u06d8\u06e4\u06d8\u06d9\u06dc\u06d8\u06e7\u06e1\u06e6\u06df\u06e7\u06d6\u06e8\u06d8\u06d8\u06e8\u06df\u06e1\u06d8\u06d8\u06df\u06db\u06da\u06e1\u06e7\u06d8\u06e7\u06e5\u06df\u06ec\u06ec\u06d9\u06e5\u06dc\u06db\u06eb\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06e0\u06e7\u06e6\u06e5\u06e5\u06d8\u06dc\u06d9\u06e6\u06d8\u06eb\u06d6\u06e6\u06e6\u06d7\u06e8\u06e6\u06d6\u06e7\u06e7\u06eb\u06d6\u06e4\u06d7\u06ec\u06dc\u06e7\u06df\u06d6\u06e7\u06d8\u06e7\u06d8\u06e7\u06e2\u06e0\u06e7\u06eb\u06db\u06eb\u06d8\u06e0\u06e5\u06d8"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0OO;->OooO0Oo:Ljava/util/List;

    const-string v0, "\u06e4\u06ec\u06e2\u06e6\u06eb\u06df\u06da\u06e8\u06e7\u06d8\u06da\u06db\u06df\u06da\u06dc\u06eb\u06e0\u06e2\u06da\u06d6\u06d6\u06e5\u06d8\u06e4\u06e7\u06e1\u06e2\u06e8\u06e8\u06d9\u06d8\u06e0\u06d6\u06e7\u06d8\u06d8\u06e1\u06e6\u06eb"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2d251884 -> :sswitch_2
        0x2d08e78 -> :sswitch_0
        0x37f7a9b8 -> :sswitch_3
        0x4d317606 -> :sswitch_1
    .end sparse-switch
.end method

.method public OooO0oo(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "\u06e0\u06e0\u06db\u06e6\u06e8\u06ec\u06e2\u06e4\u06d7\u06d9\u06e7\u06e6\u06d7\u06e7\u06d8\u06d8\u06df\u06ec\u06d7\u06e5\u06d7\u06d8\u06d8\u06eb\u06dc\u06d8\u06d8\u06e8\u06d6\u06e0\u06e5\u06dc\u06d6\u06d8\u06e5\u06d8\u06d8\u06e0\u06df\u06e4\u06d6\u06e5\u06e8\u06d8\u06e8\u06e1\u06d8\u06d8\u06e5\u06e4\u06e5\u06d8\u06d8\u06dc\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x195

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xc8

    const/16 v2, 0x398

    const v3, -0x7f2c02a4

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e0\u06d6\u06d8\u06d6\u06e2\u06e1\u06e7\u06e0\u06df\u06ec\u06e7\u06e1\u06d9\u06e2\u06e5\u06e0\u06e6\u06e1\u06d8\u06e7\u06e0\u06e7\u06d9\u06e8\u06e6\u06d8\u06e8\u06e6\u06e4\u06e2\u06da\u06db\u06df\u06e7\u06d6\u06e0\u06d7\u06e4\u06eb\u06dc\u06e1\u06eb\u06e2"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06da\u06d9\u06da\u06df\u06e2\u06e0\u06e6\u06d8\u06eb\u06db\u06d9\u06df\u06e8\u06e7\u06d6\u06d8\u06eb\u06e5\u06e8\u06d8\u06da\u06e8\u06e4\u06d9\u06e1\u06e1\u06d7\u06e5\u06dc\u06d8\u06d6\u06e7\u06e8\u06d8\u06eb\u06e1\u06d7\u06e7\u06e4\u06d8\u06d7\u06e7\u06dc\u06d8\u06da\u06dc\u06e6\u06d7\u06e2\u06db\u06e6\u06da\u06d8\u06dc\u06d6\u06e0\u06e2\u06e6\u06e7"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0OO;->OooO0O0:Ljava/util/List;

    const-string v0, "\u06e1\u06d9\u06e1\u06d8\u06da\u06e0\u06df\u06dc\u06d9\u06dc\u06d8\u06e4\u06e0\u06e8\u06d8\u06db\u06db\u06e8\u06ec\u06db\u06da\u06d6\u06dc\u06d8\u06d8\u06e8\u06eb\u06ec\u06dc\u06e4\u06e5\u06e6\u06da\u06db\u06e6\u06e1\u06d9\u06d7\u06d6\u06db\u06d8\u06e5\u06d8\u06e1\u06e2\u06e5\u06d8\u06e5\u06d9\u06d6\u06d8\u06e2\u06e6\u06e4"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7b4a314f -> :sswitch_1
        -0x26b2b94b -> :sswitch_2
        0x34d9737d -> :sswitch_3
        0x5ac7838e -> :sswitch_0
    .end sparse-switch
.end method

.method public OooOO0(I)V
    .locals 4

    const-string v0, "\u06d8\u06e4\u06e1\u06df\u06dc\u06e8\u06e2\u06e6\u06eb\u06dc\u06d6\u06db\u06e8\u06d9\u06e6\u06e6\u06db\u06e5\u06eb\u06d8\u06d6\u06e7\u06da\u06dc\u06e0\u06e1\u06db\u06e1\u06da\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x125

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3b0

    const/16 v2, 0x30f

    const v3, -0xf5dd75c

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06dc\u06d8\u06ec\u06d6\u06d7\u06da\u06dc\u06da\u06e1\u06da\u06eb\u06df\u06e5\u06eb\u06e6\u06d8\u06df\u06e4\u06e1\u06d8\u06ec\u06e1\u06e5\u06d8\u06e4\u06d8\u06d8\u06eb\u06d7\u06dc\u06d8\u06d9\u06e4\u06d8\u06e7\u06d8\u06e1\u06e5\u06e0\u06e6\u06d9\u06e7\u06e6\u06da\u06e0\u06e6\u06da\u06e4\u06e5\u06d8\u06d7\u06d8\u06e2\u06db\u06d9\u06e1"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06dc\u06da\u06d8\u06e2\u06e7\u06e4\u06d8\u06da\u06e4\u06da\u06e4\u06e2\u06dc\u06e6\u06df\u06e1\u06d8\u06d6\u06e8\u06db\u06e7\u06df\u06d7\u06df\u06db\u06e2\u06da\u06df\u06e5\u06d8\u06da\u06e2\u06df\u06e6\u06d6\u06dc\u06ec\u06ec\u06d7\u06e8\u06d9\u06dc\u06e5\u06df\u06e7\u06eb\u06eb\u06e8"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0OO;->OooO00o:I

    const-string v0, "\u06d6\u06e6\u06e5\u06d8\u06eb\u06da\u06e6\u06e5\u06dc\u06e8\u06d8\u06d8\u06e2\u06d8\u06df\u06e2\u06e2\u06df\u06ec\u06d6\u06e1\u06e0\u06d8\u06d8\u06da\u06d7\u06db\u06e2\u06d6\u06db\u06e2\u06d9\u06e6\u06d8\u06d7\u06e8\u06e4\u06da\u06eb\u06e0\u06df\u06d7\u06d6\u06d8\u06eb\u06da\u06e4\u06e4\u06e8\u06e6\u06e8\u06e0\u06ec"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e09c003 -> :sswitch_3
        -0x46afaece -> :sswitch_1
        0x7c18d00 -> :sswitch_0
        0x3b760965 -> :sswitch_2
    .end sparse-switch
.end method
