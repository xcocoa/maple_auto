.class public Lcom/cyjh/elfin/entity/FeLingAdReportInfo;
.super Lz2/ua0;


# instance fields
.field public adPid:Ljava/lang/String;

.field public apkPageName:Ljava/lang/String;

.field public postState:I

.field public state:I

.field public type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Lz2/ua0;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->adPid:Ljava/lang/String;

    iput-object p2, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->url:Ljava/lang/String;

    iput p3, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->type:I

    iput p4, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->state:I

    iput p5, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->postState:I

    return-void
.end method


# virtual methods
.method public getAdPid()Ljava/lang/String;
    .locals 4

    const-string v0, "\u06e8\u06da\u06d6\u06df\u06e1\u06d8\u06e8\u06dc\u06d8\u06d8\u06db\u06d8\u06d8\u06db\u06eb\u06e6\u06db\u06dc\u06d6\u06d8\u06e1\u06da\u06e8\u06e8\u06e4\u06e6\u06e2\u06d8\u06d8\u06d6\u06e8\u06d9\u06da\u06e1\u06e6\u06df\u06db\u06e7\u06d8\u06d7\u06e6\u06d8\u06d7\u06e6\u06e6\u06e0\u06df\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2b6

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1c8

    const/16 v2, 0x167

    const v3, 0x6ddcd1d8

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06e1\u06d8\u06d8\u06d6\u06e1\u06e1\u06e0\u06e4\u06dc\u06d8\u06df\u06e5\u06d8\u06d8\u06e7\u06e4\u06e1\u06d9\u06e1\u06e6\u06e4\u06e8\u06d6\u06e2\u06d7\u06e1\u06e8\u06d8\u06e0\u06d7\u06e1\u06db\u06d9\u06dc\u06db\u06d8\u06e8\u06e0\u06e8\u06d9\u06da\u06e0\u06db\u06df\u06e8\u06d6\u06e8\u06dc"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->adPid:Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x3f3c2340 -> :sswitch_1
        -0x11d77bfb -> :sswitch_0
    .end sparse-switch
.end method

.method public getApkPageName()Ljava/lang/String;
    .locals 4

    const-string v0, "\u06dc\u06d8\u06db\u06d6\u06dc\u06e4\u06e0\u06e7\u06da\u06eb\u06d8\u06d6\u06d8\u06d8\u06e1\u06db\u06df\u06d9\u06eb\u06e2\u06e2\u06eb\u06ec\u06e5\u06e8\u06d8\u06d7\u06e5\u06eb\u06d9\u06dc\u06e7\u06e7\u06e4\u06e1\u06d8\u06e1\u06e1\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x276

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1fc

    const/16 v2, 0x310

    const v3, -0x6e64c929

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06d8\u06e5\u06d8\u06e8\u06e8\u06d6\u06df\u06ec\u06d6\u06e8\u06d9\u06e1\u06dc\u06db\u06e6\u06e1\u06e5\u06ec\u06dc\u06e6\u06e5\u06d8\u06df\u06d7\u06dc\u06dc\u06e4\u06ec\u06eb\u06d9"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->apkPageName:Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x797faa53 -> :sswitch_0
        -0x2720dafc -> :sswitch_1
    .end sparse-switch
.end method

.method public getPostState()I
    .locals 4

    const-string v0, "\u06d7\u06e4\u06e1\u06d8\u06e4\u06e5\u06d9\u06e5\u06e5\u06e1\u06e7\u06e6\u06e4\u06e1\u06ec\u06e2\u06df\u06dc\u06eb\u06e8\u06e0\u06e0\u06db\u06eb\u06d6\u06d6\u06e8\u06e6\u06d8\u06e5\u06e8\u06e1\u06d8\u06db\u06d6\u06e7\u06d8\u06d6\u06e1\u06dc\u06e8\u06ec\u06dc\u06dc\u06d9\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x13d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2a0

    const/16 v2, 0x3c8

    const v3, -0x33b4fd9b    # -5.3217684E7f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06db\u06e8\u06d7\u06e4\u06dc\u06d8\u06e7\u06e0\u06d7\u06e0\u06e4\u06dc\u06d8\u06d8\u06d7\u06e6\u06e6\u06da\u06db\u06e2\u06df\u06eb\u06ec\u06e6\u06d6\u06d8\u06da\u06e7\u06e5\u06d8\u06e7\u06dc\u06dc\u06d8\u06da\u06df\u06e8\u06d6\u06e6\u06e2\u06db\u06e1\u06e1\u06d8\u06e2\u06eb\u06d9\u06d9\u06da\u06e1"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->postState:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x5de886c -> :sswitch_0
        0x4e89c6db -> :sswitch_1
    .end sparse-switch
.end method

.method public getState()I
    .locals 4

    const-string v0, "\u06df\u06e1\u06e8\u06d8\u06da\u06e6\u06e0\u06ec\u06e6\u06dc\u06df\u06df\u06d6\u06d8\u06df\u06da\u06dc\u06d8\u06e0\u06df\u06e0\u06e2\u06db\u06d8\u06da\u06db\u06e6\u06d8\u06e6\u06e0\u06d9\u06e2\u06e1\u06d6\u06e7\u06e0\u06d6\u06da\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x143

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x16

    const/16 v2, 0x18d

    const v3, 0xac40e20

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e6\u06dc\u06d8\u06e4\u06e7\u06da\u06d6\u06e2\u06dc\u06d8\u06d9\u06db\u06e4\u06e4\u06e5\u06e5\u06d8\u06eb\u06e7\u06dc\u06e0\u06d8\u06d6\u06d6\u06d8\u06e1\u06d8\u06e4\u06e2\u06e4\u06e2\u06e2\u06e7\u06dc\u06ec\u06eb\u06e6\u06da\u06dc\u06ec\u06e2\u06e5\u06d8\u06d8\u06d9\u06e4\u06eb\u06eb\u06e8\u06e1\u06ec\u06e8\u06d8\u06d9\u06d9\u06e7\u06e5\u06da"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->state:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x5452a0a -> :sswitch_1
        0x2869b2cf -> :sswitch_0
    .end sparse-switch
.end method

.method public getType()I
    .locals 4

    const-string v0, "\u06e0\u06d8\u06d8\u06e2\u06d6\u06e5\u06d8\u06da\u06eb\u06da\u06da\u06df\u06e2\u06e6\u06eb\u06dc\u06d8\u06e6\u06eb\u06d6\u06d8\u06e4\u06e7\u06e5\u06d8\u06d7\u06df\u06e0\u06db\u06d9\u06ec\u06e4\u06db\u06da\u06e0\u06e0\u06eb\u06ec\u06e2\u06ec\u06e1\u06d8\u06e7\u06d8\u06d6\u06e0\u06d6\u06d8\u06e5\u06d9\u06e6\u06e0\u06e6\u06d8\u06e0\u06e7\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x312

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x55

    const/16 v2, 0x15c

    const v3, 0x6cb97819

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06e1\u06d6\u06df\u06db\u06e4\u06da\u06ec\u06da\u06e0\u06e5\u06e0\u06da\u06e4\u06df\u06e1\u06e4\u06e7\u06e8\u06d6\u06dc\u06e7\u06e7\u06d8\u06d8\u06df\u06df\u06db\u06e7\u06d8\u06e5\u06e0\u06e4\u06dc\u06d7\u06d7\u06d7"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->type:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x4fbec9ed -> :sswitch_1
        0x7d0c2a74 -> :sswitch_0
    .end sparse-switch
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    const-string v0, "\u06ec\u06eb\u06d7\u06e0\u06e0\u06e8\u06e8\u06e1\u06e1\u06d8\u06da\u06e4\u06e8\u06d8\u06da\u06e1\u06eb\u06dc\u06e4\u06e8\u06d8\u06d9\u06e6\u06d8\u06d8\u06d9\u06d6\u06d6\u06e2\u06e5\u06e4\u06e7\u06db\u06d7\u06e5\u06e6\u06e7\u06eb\u06d8\u06e7\u06d8\u06eb\u06eb\u06da\u06eb\u06e8\u06e7\u06d8\u06e7\u06e5\u06e8\u06d7\u06df\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xfa

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x219

    const/16 v2, 0x315

    const v3, -0xfbc6e46

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e1\u06e8\u06d8\u06e1\u06e0\u06df\u06e4\u06e8\u06da\u06e1\u06e8\u06d8\u06ec\u06e1\u06e7\u06d9\u06e7\u06ec\u06e5\u06e2\u06e1\u06d8\u06d7\u06e7\u06e6\u06ec\u06ec\u06d6\u06d8\u06e7\u06e1\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->url:Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x99c1da8 -> :sswitch_0
        0x29735c7c -> :sswitch_1
    .end sparse-switch
.end method

.method public setAdPid(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06d9\u06dc\u06e4\u06da\u06dc\u06d6\u06d8\u06e8\u06da\u06dc\u06eb\u06eb\u06e7\u06e5\u06e2\u06e6\u06d8\u06db\u06d7\u06e7\u06d9\u06d6\u06e8\u06e1\u06d9\u06ec\u06e8\u06df\u06e1\u06ec\u06e5\u06e4\u06df\u06e6\u06eb\u06e7\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2c2

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x315

    const/16 v2, 0x12c

    const v3, -0x32735cee

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06e8\u06e7\u06d8\u06d8\u06e6\u06df\u06d8\u06e7\u06d8\u06e0\u06e8\u06dc\u06d8\u06d6\u06dc\u06d7\u06d8\u06d7\u06db\u06db\u06e0\u06d6\u06d8\u06da\u06e7\u06dc\u06e2\u06d9\u06e7\u06e4\u06dc\u06da\u06d6\u06eb\u06da\u06ec\u06e4\u06d6\u06db\u06d9\u06dc\u06d8\u06eb\u06d9\u06da"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d8\u06e1\u06d6\u06e1\u06d6\u06e5\u06df\u06df\u06ec\u06e4\u06e2\u06df\u06e0\u06e1\u06e5\u06ec\u06ec\u06e0\u06e5\u06d7\u06e7\u06e0\u06e1\u06dc\u06e7\u06df\u06ec\u06eb\u06e5\u06ec\u06ec\u06e5\u06e7\u06db\u06d9\u06d6\u06d8\u06e7\u06e4\u06e5\u06d8\u06e0\u06e6\u06df\u06e4\u06ec\u06d6\u06db\u06d6\u06d8\u06eb\u06e8\u06e2\u06e2\u06d9\u06e0"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->adPid:Ljava/lang/String;

    const-string v0, "\u06e8\u06e2\u06e8\u06e5\u06e2\u06dc\u06d6\u06e7\u06d7\u06d7\u06e6\u06e7\u06da\u06e2\u06e8\u06d8\u06dc\u06d8\u06e4\u06e8\u06e1\u06e7\u06e6\u06d9\u06d7\u06eb\u06d7\u06d7\u06df\u06e4\u06e6\u06d8\u06e8\u06d9\u06e7\u06e7\u06d7\u06e7\u06df\u06db\u06e7\u06e8\u06e0\u06e6\u06d6\u06e6\u06e6\u06d8\u06e6\u06e6\u06e1"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5d11b871 -> :sswitch_2
        -0x344e1893 -> :sswitch_1
        -0x213bd30b -> :sswitch_3
        0x4cffcf0e -> :sswitch_0
    .end sparse-switch
.end method

.method public setApkPageName(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06d7\u06d7\u06e1\u06e4\u06e8\u06e5\u06d8\u06e4\u06e8\u06e6\u06ec\u06da\u06d9\u06e8\u06d6\u06d9\u06db\u06e0\u06e4\u06e4\u06db\u06e1\u06db\u06e5\u06e1\u06d9\u06e4\u06db\u06e2\u06db\u06da\u06da\u06d7\u06df\u06db\u06e1\u06eb\u06d9\u06e6\u06d7\u06e2\u06e6\u06df\u06e4\u06ec\u06d8\u06d8\u06e7\u06ec\u06e7\u06e0\u06df\u06df\u06da\u06e2\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1d4

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x17b

    const/16 v2, 0x3d7

    const v3, -0x1716e925

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e4\u06d8\u06d8\u06e0\u06da\u06e1\u06e4\u06e1\u06dc\u06d7\u06e4\u06db\u06e5\u06e0\u06e1\u06d8\u06df\u06d9\u06e6\u06d6\u06db\u06df\u06dc\u06df\u06e7\u06e1\u06df\u06e8\u06d7\u06e2\u06d7\u06db\u06d6\u06d8\u06d8\u06e7\u06e8\u06e6\u06d8\u06db\u06eb\u06e1\u06db\u06ec\u06e1\u06e5\u06e1\u06e4\u06df\u06df\u06e6\u06d7\u06df\u06d7\u06da\u06e5\u06df"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06e7\u06e5\u06e7\u06d8\u06e5\u06df\u06df\u06d8\u06da\u06e0\u06eb\u06df\u06e1\u06e8\u06d8\u06df\u06d6\u06e7\u06ec\u06df\u06db\u06e0\u06db\u06ec\u06d7\u06e5\u06e7\u06d8\u06e1\u06dc\u06e4\u06ec\u06e5\u06e7\u06eb\u06ec\u06d6\u06d8\u06da\u06e1\u06da\u06df\u06d8\u06d8\u06e5\u06d9\u06e6\u06ec\u06e4\u06d8\u06e5\u06d9\u06dc\u06e4\u06d8\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->apkPageName:Ljava/lang/String;

    const-string v0, "\u06e1\u06e7\u06db\u06d8\u06e8\u06eb\u06d6\u06d8\u06da\u06e8\u06d8\u06e1\u06d8\u06da\u06e5\u06d6\u06da\u06d9\u06e2\u06d7\u06e4\u06e5\u06d8\u06d8\u06da\u06e8\u06d8\u06eb\u06d6\u06e2\u06e2\u06e4\u06e8\u06d8\u06d6\u06db\u06e5\u06d9\u06e6\u06e5\u06d8\u06e2\u06d9\u06e8\u06d8\u06db\u06eb\u06d7"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6fd256d5 -> :sswitch_2
        -0x6c743efb -> :sswitch_3
        -0x65c2047c -> :sswitch_0
        0x6aac3a09 -> :sswitch_1
    .end sparse-switch
.end method

.method public setPostState(I)V
    .locals 4

    const-string v0, "\u06e1\u06db\u06eb\u06e6\u06d9\u06df\u06d7\u06d9\u06d6\u06e1\u06d7\u06e8\u06d8\u06e4\u06db\u06e8\u06d8\u06e0\u06d8\u06e0\u06df\u06da\u06df\u06da\u06e6\u06e1\u06d8\u06e4\u06d7\u06d6\u06db\u06ec\u06e8\u06d8\u06eb\u06d6\u06e6\u06e4\u06e4\u06ec\u06d8\u06e6\u06d8\u06e0\u06d7\u06e6\u06d8\u06db\u06d7\u06d6\u06e2\u06e2\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2d1

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3cd

    const/16 v2, 0x188

    const v3, 0x493e38e9

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06db\u06d6\u06d8\u06d9\u06e1\u06ec\u06e7\u06eb\u06e8\u06d8\u06e6\u06e2\u06e6\u06e6\u06d8\u06d8\u06e1\u06d7\u06e8\u06d8\u06ec\u06e1\u06e6\u06d8\u06d7\u06dc\u06d7\u06d8\u06e0\u06e8\u06d8\u06d9\u06d8\u06d6\u06df\u06e0\u06e7\u06d7\u06dc\u06e5\u06d8\u06e8\u06e0\u06d9\u06d6\u06e6\u06e0\u06d7\u06eb\u06e5\u06df\u06df\u06d8\u06d8\u06d9\u06df\u06d9\u06d6\u06da\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06e1\u06e7\u06d8\u06dc\u06e2\u06dc\u06e7\u06db\u06eb\u06d7\u06e2\u06db\u06e4\u06e4\u06db\u06e1\u06e2\u06dc\u06db\u06e7\u06e2\u06dc\u06d7\u06eb\u06eb\u06da\u06e7\u06d6\u06d9\u06e1\u06d9\u06df\u06e5\u06d8\u06dc\u06e6\u06d9\u06e8\u06e0\u06e1\u06d8\u06da\u06e8\u06e7\u06d8"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->postState:I

    const-string v0, "\u06e8\u06db\u06e8\u06e5\u06ec\u06d9\u06e8\u06e8\u06dc\u06d8\u06da\u06da\u06e6\u06da\u06d6\u06da\u06df\u06df\u06d6\u06d8\u06e5\u06e5\u06e6\u06d6\u06e7\u06e2\u06d8\u06db\u06e5\u06e1\u06eb\u06d6\u06d8\u06dc\u06e8\u06d7\u06e8\u06e6\u06d8\u06dc\u06e1\u06e1\u06db\u06e6\u06dc\u06d8\u06d7\u06e7\u06e5\u06d8\u06e4\u06e2\u06d7"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ee150b1 -> :sswitch_3
        -0x25f39cf0 -> :sswitch_1
        -0xf1105cd -> :sswitch_2
        0x73667b1a -> :sswitch_0
    .end sparse-switch
.end method

.method public setState(I)V
    .locals 4

    const-string v0, "\u06df\u06e2\u06db\u06d7\u06e0\u06da\u06d9\u06d6\u06da\u06e0\u06e8\u06d8\u06db\u06db\u06e4\u06d8\u06e4\u06dc\u06d8\u06dc\u06eb\u06d8\u06df\u06e1\u06d8\u06d8\u06df\u06eb\u06e5\u06d8\u06e1\u06df\u06d6\u06e5\u06e0\u06e6\u06d8\u06ec\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x36f

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x52

    const/16 v2, 0xed

    const v3, 0x46f9cd72

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06d9\u06db\u06e7\u06eb\u06e4\u06dc\u06df\u06d8\u06db\u06db\u06da\u06ec\u06e1\u06d8\u06df\u06da\u06e8\u06d8\u06ec\u06e7\u06e4\u06da\u06e8\u06d8\u06e1\u06e8\u06e6\u06d8\u06e8\u06eb\u06dc\u06e0\u06ec\u06d8\u06d8\u06e7\u06e8\u06dc\u06d8\u06d8\u06e0\u06e8\u06da\u06da\u06e8\u06d8\u06d7\u06e2\u06e4\u06d9\u06d8\u06df\u06d6\u06d8\u06df\u06d9\u06e6\u06dc"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e1\u06da\u06dc\u06e8\u06d8\u06dc\u06db\u06e0\u06d8\u06eb\u06e8\u06e1\u06e5\u06e4\u06e4\u06d8\u06dc\u06e1\u06d8\u06d6\u06df\u06dc\u06d8\u06e0\u06e5\u06e6\u06d7\u06eb\u06e7\u06e0\u06d6"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->state:I

    const-string v0, "\u06dc\u06ec\u06d6\u06df\u06e7\u06e8\u06d8\u06e1\u06d7\u06e1\u06e6\u06e8\u06e1\u06d9\u06e4\u06dc\u06d8\u06e4\u06db\u06d8\u06db\u06e0\u06e0\u06da\u06e4\u06d8\u06e4\u06dc\u06e6\u06d8\u06e0\u06e1\u06d6\u06eb\u06e2\u06db\u06d9\u06d8\u06db\u06e6\u06ec\u06ec\u06d7\u06e6\u06e5"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x50264def -> :sswitch_2
        -0x3805d8ee -> :sswitch_0
        -0x2b8d0b46 -> :sswitch_3
        0x52bf7601 -> :sswitch_1
    .end sparse-switch
.end method

.method public setType(I)V
    .locals 4

    const-string v0, "\u06ec\u06eb\u06e1\u06d8\u06d7\u06df\u06e0\u06e7\u06d9\u06df\u06d9\u06d9\u06e7\u06e8\u06ec\u06e2\u06e6\u06e6\u06d6\u06e7\u06e5\u06d9\u06dc\u06e1\u06d8\u06e6\u06e2\u06eb\u06d8\u06ec\u06da\u06ec\u06eb\u06d6\u06eb\u06ec\u06e5\u06e7\u06e0\u06e2\u06e6\u06eb\u06e0\u06e4\u06e0\u06e6\u06d6\u06d9\u06d8\u06e5\u06db\u06df\u06ec\u06ec\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x255

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xb3

    const/16 v2, 0x21b

    const v3, 0x4ec868fa

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06d7\u06e0\u06e1\u06db\u06e1\u06d8\u06e0\u06e1\u06df\u06df\u06df\u06e1\u06e7\u06e1\u06df\u06e5\u06eb\u06ec\u06ec\u06d7\u06e6\u06eb\u06ec\u06d6\u06d8\u06db\u06e2\u06e1\u06d9\u06e1\u06d8\u06eb\u06d9\u06d8\u06d8\u06db\u06da\u06d6\u06d6\u06e1\u06d9\u06df\u06eb\u06e6\u06e4\u06da\u06ec\u06e6\u06e0\u06e7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06d6\u06e5\u06d8\u06e4\u06e4\u06e1\u06e8\u06ec\u06e7\u06d8\u06d6\u06d9\u06e4\u06eb\u06d8\u06d8\u06e4\u06d6\u06e6\u06d6\u06d7\u06da\u06e7\u06e5\u06d9\u06e5\u06d8\u06d7\u06dc\u06e1\u06d9\u06d7\u06d7\u06d6\u06d8\u06db\u06e7\u06df\u06e5\u06d8\u06ec\u06eb\u06eb\u06d7"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->type:I

    const-string v0, "\u06d6\u06ec\u06d6\u06e7\u06eb\u06d8\u06da\u06e8\u06ec\u06e0\u06e5\u06d8\u06d8\u06d9\u06dc\u06d9\u06df\u06d6\u06d8\u06e4\u06d8\u06e2\u06e4\u06d7\u06d6\u06d8\u06e7\u06e7\u06ec\u06e2\u06e1\u06e1\u06d6\u06e4\u06dc\u06db\u06e2\u06e0\u06e5\u06d7\u06e2\u06e0\u06e7\u06e2\u06e7\u06d6\u06e2\u06d8\u06eb\u06e8\u06d8\u06e4\u06e8\u06d8\u06d8\u06e6\u06e5\u06db"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ed47ae2 -> :sswitch_2
        -0x57ae7ebf -> :sswitch_0
        -0x16be2ba3 -> :sswitch_1
        0x53519890 -> :sswitch_3
    .end sparse-switch
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06e4\u06e6\u06e8\u06d8\u06d9\u06e5\u06e5\u06df\u06df\u06e1\u06d8\u06df\u06d9\u06e0\u06d9\u06e4\u06e5\u06d8\u06d6\u06eb\u06e2\u06e8\u06e2\u06d6\u06db\u06d9\u06e2\u06dc\u06d9\u06d7\u06e1\u06e8\u06d9\u06dc\u06dc\u06df\u06dc\u06e8\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2dd

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3b8

    const/16 v2, 0x1c2

    const v3, 0x36dcbc64

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06db\u06d8\u06d8\u06e2\u06e0\u06eb\u06d7\u06e6\u06d6\u06e7\u06dc\u06d9\u06eb\u06d8\u06e0\u06e0\u06df\u06d9\u06e7\u06dc\u06d8\u06d8\u06d9\u06e5\u06e0\u06eb\u06da\u06ec\u06e6\u06d7\u06e7\u06eb\u06d9\u06e7\u06d6\u06e8\u06da"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06dc\u06dc\u06dc\u06d8\u06e2\u06e4\u06e8\u06d8\u06d6\u06e7\u06eb\u06dc\u06d6\u06e0\u06d9\u06d8\u06d7\u06d6\u06df\u06d7\u06e8\u06e5\u06e1\u06dc\u06e0\u06ec\u06e5\u06d8\u06d7\u06eb\u06e7\u06e5\u06e2\u06d8\u06db\u06d8\u06dc\u06e2"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->url:Ljava/lang/String;

    const-string v0, "\u06e8\u06da\u06d6\u06ec\u06e0\u06e5\u06e8\u06da\u06eb\u06e4\u06df\u06e1\u06d8\u06d9\u06eb\u06e4\u06ec\u06e5\u06db\u06e0\u06e0\u06ec\u06ec\u06d8\u06dc\u06d8\u06e8\u06e5\u06e1\u06d8\u06df\u06d6\u06da\u06e1\u06d7\u06e6\u06e2\u06df\u06d7\u06df\u06e1\u06da\u06e7\u06dc\u06d8\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x79464167 -> :sswitch_3
        -0x5994e379 -> :sswitch_0
        0x3021d82f -> :sswitch_1
        0x5690cd91 -> :sswitch_2
    .end sparse-switch
.end method
