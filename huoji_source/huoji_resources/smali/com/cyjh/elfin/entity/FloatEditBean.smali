.class public Lcom/cyjh/elfin/entity/FloatEditBean;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cyjh/elfin/entity/FloatEditBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public intentContent:Ljava/lang/String;

.field public intentTtile:Ljava/lang/String;

.field public isCancle:Z

.field public leftContent:Ljava/lang/String;

.field public rightContent:Ljava/lang/String;

.field public type:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06da\u06ec\u06e8\u06d8\u06e2\u06df\u06e1\u06da\u06e5\u06df\u06d8\u06da\u06df\u06e8\u06d9\u06e0\u06d7\u06d6\u06d8\u06e1\u06d7\u06e0\u06d6\u06dc\u06e1\u06d8\u06e4\u06dc\u06e5\u06e6\u06e6\u06d8\u06d8\u06ec\u06da\u06e4\u06e2\u06d7\u06d7\u06e1\u06e2\u06d6\u06d8\u06e8\u06e0\u06e0\u06eb\u06e6\u06e8\u06d6\u06e2\u06da\u06e1\u06df\u06ec\u06dc\u06da\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x129

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x6a

    const/16 v2, 0x36c

    const v3, -0x48d94406

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/cyjh/elfin/entity/FloatEditBean$1;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/FloatEditBean$1;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/entity/FloatEditBean;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "\u06e5\u06d8\u06dc\u06d8\u06e5\u06db\u06e6\u06d9\u06e6\u06dc\u06e0\u06e7\u06dc\u06d8\u06da\u06d7\u06df\u06e8\u06db\u06d9\u06d7\u06e7\u06e1\u06e0\u06d8\u06dc\u06d8\u06e6\u06d9\u06d6\u06d8\u06e6\u06e0\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5daa96b6 -> :sswitch_0
        0xd27bcce -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->intentTtile:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->intentContent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->leftContent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->rightContent:Ljava/lang/String;

    const v1, 0x15c95eed

    const-string v0, "\u06da\u06e2\u06e6\u06d8\u06da\u06e0\u06e5\u06dc\u06e0\u06e1\u06e2\u06e6\u06e6\u06d8\u06e8\u06e5\u06e6\u06d8\u06eb\u06e8\u06d6\u06da\u06e0\u06e1\u06d8\u06dc\u06e4\u06eb\u06d8\u06d7\u06d8\u06e5\u06e5\u06e6\u06d7\u06e5\u06e8\u06d8\u06ec\u06df\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->isCancle:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v2, -0x71c827bd

    const-string v0, "\u06dc\u06d8\u06d9\u06d6\u06e1\u06db\u06df\u06e7\u06e0\u06e2\u06e7\u06e8\u06d8\u06e1\u06e0\u06e6\u06e8\u06d6\u06e8\u06d8\u06ec\u06e6\u06e7\u06d8\u06e7\u06e5\u06e1\u06e0\u06df\u06dc\u06d8\u06e7\u06d8\u06e5"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_2

    :sswitch_1
    const-string v0, "\u06d9\u06e8\u06e1\u06d8\u06e6\u06df\u06d7\u06df\u06e8\u06dc\u06e0\u06e2\u06dc\u06d8\u06d8\u06db\u06e8\u06df\u06e2\u06d8\u06df\u06d6\u06e6\u06d8\u06d9\u06dc\u06e5\u06d8\u06e7\u06e1\u06ec\u06e5\u06d8\u06d8\u06e5\u06e2\u06db\u06e2\u06eb\u06da"

    goto :goto_2

    :sswitch_2
    const-string v0, "\u06db\u06eb\u06e5\u06d8\u06e1\u06e7\u06e6\u06ec\u06e4\u06e6\u06d8\u06e4\u06df\u06e1\u06d8\u06da\u06eb\u06e0\u06d9\u06dc\u06dc\u06d8\u06dc\u06dc\u06e1\u06e4\u06ec\u06e6\u06d8\u06dc\u06df\u06e7\u06db\u06da\u06d6\u06dc\u06e6\u06d8\u06d8\u06d8\u06d8\u06eb\u06e6\u06d7\u06d6\u06da\u06e0\u06e2\u06e8\u06db\u06d6\u06d8\u06e8\u06db\u06eb"

    goto :goto_0

    :sswitch_3
    const v2, 0x2baf41cc

    const-string v0, "\u06dc\u06e1\u06db\u06e4\u06e8\u06d8\u06d8\u06db\u06d6\u06e1\u06eb\u06db\u06e0\u06e7\u06e4\u06e6\u06d8\u06e0\u06d8\u06da\u06d9\u06df\u06e8\u06d8\u06e5\u06e5\u06dc\u06da\u06d6\u06e5\u06d8\u06dc\u06d6\u06da\u06ec\u06d7\u06d8\u06d8\u06dc\u06db\u06e6\u06ec\u06eb\u06e7\u06eb\u06df\u06da\u06d7\u06e4\u06da\u06dc\u06e2\u06ec"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_3

    :sswitch_4
    const-string v0, "\u06ec\u06e0\u06d6\u06db\u06dc\u06e6\u06d8\u06d8\u06d8\u06e6\u06e1\u06e8\u06d8\u06eb\u06eb\u06e4\u06db\u06ec\u06e6\u06d6\u06d6\u06e5\u06e1\u06dc\u06e8\u06e4\u06e2\u06eb\u06d6\u06d7\u06e5\u06db\u06d7\u06e8\u06d9\u06e6\u06d6\u06df\u06e0\u06e6\u06d7"

    goto :goto_0

    :cond_0
    const-string v0, "\u06e6\u06d6\u06dc\u06d8\u06eb\u06da\u06df\u06d8\u06d8\u06db\u06d6\u06e5\u06da\u06da\u06e8\u06d8\u06e5\u06e6\u06d6\u06d8\u06e1\u06eb\u06e1\u06d8\u06e8\u06d8\u06df\u06d6\u06d7\u06e2\u06e5\u06db\u06db\u06e0\u06d6\u06d6\u06d8\u06df\u06e1\u06e7\u06d8\u06d7\u06d9\u06e1\u06d8\u06e2\u06d7\u06dc\u06d8\u06e7\u06d6\u06e1\u06eb\u06e8\u06db"

    goto :goto_3

    :sswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06d7\u06ec\u06e1\u06d8\u06da\u06dc\u06e4\u06dc\u06dc\u06e8\u06d8\u06e4\u06db\u06ec\u06e5\u06d7\u06d9\u06e1\u06e4\u06eb\u06e4\u06df\u06e6\u06d8\u06d7\u06e8\u06e8\u06e2\u06e8\u06d8\u06d6\u06e6\u06e7\u06db\u06db\u06d9\u06e2\u06d7\u06e2"

    goto :goto_3

    :sswitch_6
    const-string v0, "\u06e7\u06e2\u06e1\u06e6\u06e2\u06e6\u06d8\u06eb\u06d7\u06d8\u06dc\u06df\u06e8\u06df\u06e4\u06e1\u06e7\u06e6\u06dc\u06e6\u06e5\u06e1\u06d8\u06db\u06e2\u06dc\u06e7\u06ec\u06ec\u06d9\u06d7\u06d6\u06d8\u06d7\u06eb\u06d6\u06d8\u06d8\u06e6\u06ec\u06db\u06dc\u06ec\u06e7\u06d8\u06e2"

    goto :goto_3

    :sswitch_7
    const-string v0, "\u06d7\u06e7\u06dc\u06dc\u06da\u06db\u06d7\u06d8\u06e0\u06dc\u06d6\u06e6\u06d7\u06e6\u06e2\u06ec\u06e7\u06e0\u06e5\u06e5\u06d8\u06e1\u06d6\u06e7\u06d8\u06ec\u06df\u06dc\u06d8\u06df\u06eb\u06e7\u06df\u06d6\u06db\u06da\u06d8\u06d8\u06db\u06e7\u06e8\u06e7\u06e8\u06d6\u06eb\u06ec\u06e6\u06d7\u06ec\u06e4\u06e2\u06d8\u06d8\u06d9\u06df\u06da"

    goto :goto_0

    :sswitch_8
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06d6\u06e7\u06e1\u06d7\u06d9\u06db\u06e4\u06db\u06e8\u06d8\u06ec\u06d8\u06d7\u06da\u06e8\u06ec\u06d6\u06d6\u06e6\u06d8\u06d6\u06e4\u06e1\u06e1\u06e7\u06e1\u06d8\u06e4\u06da\u06e6\u06d8\u06e2\u06d8\u06d6\u06d8\u06da\u06e5\u06e6\u06da\u06e4\u06da\u06e5\u06d6\u06e6\u06d8\u06d9\u06d9\u06d8\u06ec\u06e6\u06e8\u06d8\u06e6\u06e7\u06d6\u06d8\u06e5\u06e1\u06d9\u06e0\u06e2"

    goto :goto_2

    :sswitch_a
    const v3, -0x1b3bcb08

    const-string v0, "\u06da\u06db\u06e8\u06e4\u06d6\u06df\u06d6\u06ec\u06e2\u06e8\u06e2\u06d7\u06db\u06e6\u06d8\u06e0\u06d9\u06da\u06e0\u06e1\u06d6\u06e5\u06e6\u06d9\u06eb\u06d9\u06d8\u06ec\u06ec\u06ec\u06d7\u06da\u06e6\u06db"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_3

    goto :goto_4

    :sswitch_b
    const-string v0, "\u06d8\u06d6\u06dc\u06db\u06dc\u06e4\u06eb\u06ec\u06e4\u06e8\u06ec\u06e0\u06e1\u06e1\u06d8\u06d6\u06df\u06d6\u06d8\u06d6\u06d7\u06db\u06d8\u06df\u06d7\u06e6\u06e0\u06e8\u06d8\u06e6\u06d9\u06e4\u06e0\u06e4\u06e6\u06d8\u06d9\u06e6\u06e2\u06d7\u06d7\u06db\u06e7\u06d6\u06e7\u06d8\u06dc\u06e5\u06d6\u06df\u06df\u06d7\u06d9\u06da\u06da\u06e7\u06ec"

    goto :goto_2

    :cond_1
    const-string v0, "\u06ec\u06d8\u06e1\u06e7\u06d6\u06dc\u06dc\u06e4\u06e8\u06e2\u06e0\u06e8\u06ec\u06e8\u06e0\u06dc\u06da\u06e7\u06ec\u06dc\u06e5\u06e2\u06e2\u06eb\u06e2\u06d8\u06dc\u06e1\u06e0\u06e7\u06da\u06e8\u06d8\u06e2\u06d7\u06d9\u06d6\u06e4\u06d8\u06e1\u06e4\u06e4\u06dc\u06dc\u06e0\u06d6\u06df\u06d6\u06d8"

    goto :goto_4

    :sswitch_c
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    const-string v0, "\u06d9\u06eb\u06e2\u06e0\u06dc\u06db\u06d9\u06d6\u06da\u06d7\u06e4\u06eb\u06df\u06e0\u06e0\u06e6\u06e5\u06dc\u06d7\u06e5\u06e0\u06e7\u06d8\u06dc\u06d8\u06e8\u06e5\u06d6\u06d8\u06e5\u06db\u06ec\u06da\u06df\u06e5\u06d8\u06eb\u06d7\u06e4\u06e8\u06e0\u06e1\u06d8\u06ec\u06d7\u06e4\u06e4\u06ec\u06e8\u06e4\u06e8\u06e1\u06d7\u06e0\u06d6\u06d8\u06d8\u06dc\u06e8"

    goto :goto_4

    :sswitch_d
    const-string v0, "\u06e7\u06ec\u06e6\u06d8\u06e6\u06da\u06d9\u06e2\u06e4\u06eb\u06e1\u06eb\u06e5\u06e1\u06d8\u06eb\u06e4\u06da\u06e1\u06e8\u06e4\u06e5\u06e8\u06d7\u06db\u06d6\u06e5\u06e5\u06eb\u06d6\u06d8\u06e6\u06dc\u06d9\u06df\u06dc\u06e5\u06d8"

    goto :goto_4

    :sswitch_e
    const/4 v0, 0x0

    :goto_5
    iput-object v0, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->type:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    return-void

    :sswitch_f
    invoke-static {}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->values()[Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    move-result-object v0

    aget-object v0, v0, v1

    goto :goto_5

    :sswitch_data_0
    .sparse-switch
        -0x6884034e -> :sswitch_7
        -0x4f0027b7 -> :sswitch_8
        -0x2fdf18bc -> :sswitch_0
        0x7fa3fd93 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x72360e53 -> :sswitch_e
        -0x34cc63f1 -> :sswitch_1
        -0xb6388d1 -> :sswitch_a
        0x2385200e -> :sswitch_f
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x513452ec -> :sswitch_4
        -0x2714d22a -> :sswitch_2
        0x62436615 -> :sswitch_5
        0x7a6ce73f -> :sswitch_6
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x62e40c66 -> :sswitch_b
        -0x60e61c1d -> :sswitch_9
        -0x304115ac -> :sswitch_d
        0x5a9d2f10 -> :sswitch_c
    .end sparse-switch
.end method

.method public static getDeleteFloatBean(Landroid/content/Context;Ljava/lang/String;)Lcom/cyjh/elfin/entity/FloatEditBean;
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06da\u06d9\u06d9\u06e7\u06e5\u06e8\u06e7\u06e1\u06ec\u06e5\u06df\u06e0\u06d7\u06eb\u06e6\u06e1\u06e1\u06e6\u06d6\u06df\u06e6\u06d8\u06db\u06d8\u06d8\u06e4\u06e0\u06e5\u06d8\u06e5\u06d7\u06d7\u06e0\u06e4\u06d8\u06db\u06d7\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x61

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x337

    const/16 v3, 0x149

    const v4, 0x2209282

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06df\u06e6\u06d8\u06e6\u06d6\u06d8\u06eb\u06e0\u06e8\u06e1\u06d9\u06eb\u06d8\u06eb\u06df\u06da\u06d6\u06d9\u06db\u06e6\u06e4\u06ec\u06eb\u06e0\u06da\u06d9\u06db\u06e0\u06e6\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06df\u06e1\u06e4\u06d6\u06e8\u06db\u06da\u06db\u06e2\u06e7\u06db\u06e7\u06e1\u06d8\u06d8\u06d7\u06dc\u06ec\u06e1\u06d9\u06d8\u06d7\u06d8\u06d8\u06df\u06d9\u06e4\u06e8\u06e6\u06e5\u06d8\u06e8\u06eb\u06d8\u06d8\u06e7\u06d6\u06e7\u06d8\u06e6\u06d6\u06e5\u06d9\u06d7\u06d6\u06da\u06db\u06d6\u06d8\u06e4\u06e1\u06df"

    goto :goto_0

    :sswitch_2
    new-instance v1, Lcom/cyjh/elfin/entity/FloatEditBean;

    invoke-direct {v1}, Lcom/cyjh/elfin/entity/FloatEditBean;-><init>()V

    const-string v0, "\u06d6\u06eb\u06e4\u06ec\u06d9\u06ec\u06d6\u06e5\u06db\u06e1\u06d9\u06e6\u06e5\u06e6\u06eb\u06df\u06d9\u06eb\u06e6\u06e0\u06e8\u06d8\u06d9\u06d8\u06d7\u06da\u06e4\u06e2\u06e7\u06e4\u06e5\u06d8"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f1001ba

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->intentTtile:Ljava/lang/String;

    const-string v0, "\u06ec\u06e0\u06d6\u06d8\u06d7\u06e1\u06dc\u06e0\u06e5\u06db\u06e0\u06e8\u06e1\u06e4\u06e0\u06e1\u06e7\u06e7\u06da\u06e1\u06df\u06d9\u06e2\u06d7\u06df\u06d9\u06e4\u06e2\u06d6\u06e4\u06e6\u06d8"

    goto :goto_0

    :sswitch_4
    iput-object p1, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->intentContent:Ljava/lang/String;

    const-string v0, "\u06e5\u06e1\u06e4\u06e2\u06d7\u06db\u06d6\u06da\u06e4\u06e5\u06df\u06d7\u06d7\u06eb\u06e6\u06dc\u06d6\u06e7\u06d8\u06d9\u06e6\u06e2\u06ec\u06d9\u06ec\u06e2\u06df\u06da\u06e1\u06db\u06e1\u06e0\u06e6\u06ec\u06e8\u06da\u06d6\u06e7\u06eb\u06db\u06eb\u06eb\u06e0"

    goto :goto_0

    :sswitch_5
    const v0, 0x7f1000de

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->leftContent:Ljava/lang/String;

    const-string v0, "\u06e4\u06df\u06e8\u06d8\u06e0\u06d6\u06e1\u06d8\u06e0\u06e4\u06e6\u06eb\u06eb\u06dc\u06d8\u06e6\u06d6\u06e4\u06e1\u06df\u06e8\u06e4\u06e5\u06dc\u06d8\u06e5\u06da\u06e7\u06eb\u06d8\u06e0\u06dc\u06e7\u06e1\u06d9\u06e0\u06e0\u06e8\u06d9\u06e5\u06d8"

    goto :goto_0

    :sswitch_6
    const v0, 0x7f1000e0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->rightContent:Ljava/lang/String;

    const-string v0, "\u06e0\u06d6\u06e5\u06d8\u06db\u06e4\u06d7\u06df\u06e8\u06d9\u06dc\u06df\u06d8\u06d8\u06e4\u06da\u06e8\u06d8\u06d6\u06d8\u06e5\u06d8\u06d8\u06e8\u06d6\u06d8\u06e2\u06e6\u06d9\u06da\u06d6\u06e7\u06d8\u06e1\u06df\u06d6"

    goto :goto_0

    :sswitch_7
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->isCancle:Z

    const-string v0, "\u06e6\u06db\u06e7\u06e4\u06e1\u06e6\u06e5\u06dc\u06e6\u06e5\u06ec\u06e1\u06d8\u06e7\u06e2\u06dc\u06e8\u06e6\u06e5\u06d8\u06e7\u06ec\u06eb\u06e5\u06d8\u06df\u06db\u06e2\u06e6\u06d8\u06d8\u06d9\u06e7\u06eb\u06eb\u06d8\u06d8\u06d7\u06d7\u06e5\u06d8"

    goto :goto_0

    :sswitch_8
    sget-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->DELETE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    iput-object v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->type:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "\u06ec\u06d8\u06eb\u06e0\u06e0\u06d8\u06e1\u06e7\u06df\u06e5\u06ec\u06e5\u06d8\u06ec\u06e6\u06d6\u06db\u06e7\u06df\u06e4\u06d7\u06e8\u06e5\u06e1\u06df\u06e2\u06d6\u06e7\u06dc\u06eb\u06e5\u06d7\u06dc\u06d9\u06e4\u06e4\u06da\u06e1\u06d7\u06e0\u06e4\u06e2\u06e8"

    goto :goto_0

    :sswitch_9
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x5fb0f12b -> :sswitch_9
        -0x5aa8b39d -> :sswitch_8
        -0x5271dde0 -> :sswitch_5
        -0x289f9892 -> :sswitch_3
        -0xab172d7 -> :sswitch_4
        -0x7fe0a24 -> :sswitch_6
        0x6dfd9c8 -> :sswitch_0
        0x2717b4ac -> :sswitch_7
        0x3c97f3f2 -> :sswitch_2
        0x68a026b7 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getEditFlloatBean(Landroid/content/Context;Ljava/lang/String;)Lcom/cyjh/elfin/entity/FloatEditBean;
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06d9\u06dc\u06d6\u06d8\u06e8\u06d9\u06d7\u06e7\u06e5\u06e0\u06e6\u06e1\u06e2\u06e4\u06e7\u06d6\u06d6\u06e4\u06d8\u06d8\u06ec\u06e8\u06e8\u06eb\u06da\u06d8\u06e7\u06e4\u06e2\u06d6\u06df\u06ec\u06e7\u06ec\u06eb\u06e2\u06df\u06d8\u06d8\u06eb\u06e4\u06e5\u06d8\u06ec\u06da\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x390

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x2c8

    const/16 v3, 0x26a

    const v4, -0x2fa11bc6

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06eb\u06e2\u06d8\u06e5\u06df\u06d8\u06e6\u06e4\u06e7\u06e4\u06db\u06e6\u06e6\u06eb\u06d7\u06d6\u06d8\u06da\u06e1\u06dc\u06e4\u06d9\u06e4\u06d7\u06da\u06e5\u06e7\u06db\u06d9\u06dc\u06e1\u06e1\u06d8\u06d6\u06da\u06db\u06e4\u06e5\u06e4\u06e8\u06e8\u06eb"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06d9\u06eb\u06e5\u06e1\u06e0\u06e2\u06e1\u06d9\u06e7\u06e1\u06d9\u06d6\u06d6\u06d6\u06d8\u06d9\u06e8\u06e8\u06db\u06ec\u06e0\u06d8\u06d9\u06e8\u06d8\u06db\u06eb\u06e8\u06d8\u06d9\u06da\u06d9\u06da\u06e7\u06d7\u06df\u06e8\u06e1\u06d8\u06df\u06db\u06eb\u06ec\u06e0\u06e1\u06e5\u06e7\u06d8\u06d7\u06df\u06d8\u06d9\u06ec\u06e6\u06d8\u06e7\u06d9\u06d6"

    goto :goto_0

    :sswitch_2
    new-instance v1, Lcom/cyjh/elfin/entity/FloatEditBean;

    invoke-direct {v1}, Lcom/cyjh/elfin/entity/FloatEditBean;-><init>()V

    const-string v0, "\u06e0\u06dc\u06db\u06ec\u06e8\u06e1\u06d8\u06d7\u06e2\u06e6\u06e0\u06d8\u06eb\u06d7\u06d9\u06e7\u06e8\u06e2\u06e2\u06e4\u06ec\u06d7\u06e7\u06e1\u06d8\u06e8\u06ec\u06e8\u06d8\u06dc\u06eb\u06e6\u06d8\u06e2\u06df\u06dc\u06d8\u06df\u06e6\u06da"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f1001c0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->intentTtile:Ljava/lang/String;

    const-string v0, "\u06ec\u06e5\u06e4\u06d8\u06e5\u06e1\u06e8\u06e5\u06eb\u06ec\u06d9\u06e6\u06df\u06e4\u06e8\u06d8\u06e4\u06e2\u06e6\u06d8\u06e4\u06dc\u06e8\u06d8\u06e2\u06da\u06e8\u06df\u06da\u06d6\u06eb\u06eb\u06db\u06dc\u06e5\u06e5\u06e6\u06d6\u06d9\u06e8\u06d8\u06d8\u06ec\u06e1\u06d6\u06e1\u06e0\u06e7\u06eb\u06da\u06e7\u06d6\u06e0\u06e5\u06da\u06db\u06eb"

    goto :goto_0

    :sswitch_4
    iput-object p1, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->intentContent:Ljava/lang/String;

    const-string v0, "\u06e2\u06e1\u06e6\u06e0\u06e6\u06e8\u06ec\u06d6\u06e2\u06da\u06df\u06df\u06df\u06dc\u06e6\u06d8\u06e2\u06db\u06e7\u06d7\u06d7\u06e1\u06d8\u06ec\u06db\u06db\u06df\u06e2\u06d6\u06e8\u06db\u06eb\u06dc\u06e1\u06d8\u06e6\u06db\u06e0\u06e1\u06e1\u06d8\u06e5\u06e1\u06d6"

    goto :goto_0

    :sswitch_5
    const v0, 0x7f1000de

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->leftContent:Ljava/lang/String;

    const-string v0, "\u06d9\u06e7\u06e8\u06d8\u06e2\u06df\u06db\u06e7\u06d6\u06d7\u06d7\u06e2\u06d9\u06e2\u06dc\u06e7\u06df\u06e7\u06da\u06d9\u06dc\u06d7\u06e2\u06e7\u06ec\u06d9\u06e7\u06d6\u06d8\u06e6\u06df\u06e8\u06e7\u06df\u06d8\u06d8\u06d9\u06e7\u06e0"

    goto :goto_0

    :sswitch_6
    const v0, 0x7f1000e0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->rightContent:Ljava/lang/String;

    const-string v0, "\u06e2\u06d9\u06e1\u06eb\u06df\u06d8\u06ec\u06df\u06db\u06d8\u06db\u06eb\u06e8\u06d8\u06d8\u06ec\u06d8\u06d8\u06dc\u06e2\u06e8\u06d8\u06e6\u06e1\u06e1\u06e1\u06e4\u06db\u06df\u06da\u06e1\u06d8\u06da\u06d8\u06d8\u06e1\u06e0\u06d9"

    goto :goto_0

    :sswitch_7
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->isCancle:Z

    const-string v0, "\u06e5\u06ec\u06d8\u06db\u06e2\u06d6\u06ec\u06db\u06db\u06dc\u06dc\u06eb\u06d6\u06d9\u06e0\u06d6\u06d8\u06e2\u06e2\u06dc\u06d8\u06da\u06d9\u06e6\u06d8\u06df\u06ec\u06df\u06da\u06e1\u06e1\u06d6\u06e2\u06e7\u06e2\u06e4\u06e8\u06d9\u06e8\u06e0\u06d8\u06ec"

    goto :goto_0

    :sswitch_8
    sget-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->RENAME:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    iput-object v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->type:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "\u06eb\u06d6\u06e5\u06d8\u06ec\u06d6\u06d9\u06e0\u06dc\u06d8\u06d8\u06d7\u06e8\u06e4\u06da\u06db\u06dc\u06d6\u06e1\u06e6\u06e0\u06e5\u06e8\u06e2\u06eb\u06e8\u06e4\u06dc\u06df\u06e0\u06e1\u06e8\u06dc\u06ec\u06ec\u06e1\u06d6\u06da\u06d8\u06e1\u06e7\u06db\u06e0\u06d6\u06d8\u06e7\u06e8\u06eb\u06eb\u06d7\u06e6"

    goto :goto_0

    :sswitch_9
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x79d5348f -> :sswitch_6
        -0x4f1dffa1 -> :sswitch_2
        -0x1d81d1e6 -> :sswitch_5
        -0x100bf1fe -> :sswitch_9
        -0xd5f9e0d -> :sswitch_0
        0x180a17be -> :sswitch_1
        0x2b3fb8cb -> :sswitch_8
        0x3663d5b0 -> :sswitch_7
        0x685c3c3c -> :sswitch_4
        0x7f4e0b61 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getNewCreateFlloatBean(Landroid/content/Context;Ljava/lang/String;)Lcom/cyjh/elfin/entity/FloatEditBean;
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06db\u06e2\u06d8\u06d8\u06d8\u06d6\u06ec\u06e6\u06e7\u06df\u06e1\u06e0\u06dc\u06d8\u06db\u06e8\u06d6\u06e8\u06d8\u06ec\u06d8\u06e8\u06d7\u06e2\u06d9\u06db\u06dc\u06d7\u06dc\u06d8\u06e6\u06d9\u06e8\u06e5\u06db\u06db\u06da\u06e2\u06e7\u06e6\u06db\u06e0\u06e6\u06e6\u06e4\u06e1\u06d9\u06d8\u06e8\u06d8\u06e1\u06d8\u06e2\u06e8\u06d9\u06e4\u06d8\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x2a2

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x177

    const/16 v3, 0x1df

    const v4, -0x1644b4b5

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06d8\u06d9\u06d8\u06d7\u06dc\u06d8\u06df\u06e5\u06e7\u06dc\u06da\u06dc\u06d6\u06e7\u06e6\u06d8\u06e5\u06ec\u06dc\u06d7\u06d6\u06e7\u06d8\u06eb\u06e1\u06e5\u06d8\u06d9\u06e4\u06e1\u06d8\u06dc\u06da\u06e8\u06d8\u06e1\u06e8\u06ec\u06df\u06d9\u06e5\u06d7\u06d8\u06d8\u06d8\u06da\u06e8\u06e7\u06d8\u06ec\u06e0\u06df\u06db\u06e6\u06da"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06e8\u06ec\u06eb\u06e7\u06e5\u06da\u06ec\u06d9\u06db\u06d8\u06e7\u06d8\u06d8\u06e4\u06dc\u06d8\u06eb\u06d7\u06e8\u06ec\u06d7\u06e7\u06dc\u06d8\u06df\u06e6\u06d8\u06e7\u06ec\u06d6\u06d8\u06d9\u06e7\u06e4\u06d7\u06e4\u06d7\u06e7\u06e0\u06e7\u06ec\u06e4\u06dc\u06d8\u06e7\u06df\u06e2\u06e6\u06d7\u06ec\u06d9\u06e7\u06dc\u06e1\u06e0"

    goto :goto_0

    :sswitch_2
    new-instance v1, Lcom/cyjh/elfin/entity/FloatEditBean;

    invoke-direct {v1}, Lcom/cyjh/elfin/entity/FloatEditBean;-><init>()V

    const-string v0, "\u06d9\u06e2\u06e1\u06d8\u06dc\u06e5\u06e8\u06d8\u06e7\u06e4\u06e8\u06ec\u06d9\u06e2\u06ec\u06ec\u06df\u06e8\u06e1\u06d8\u06d8\u06e0\u06dc\u06e7\u06d8\u06dc\u06d9\u06e4\u06da\u06d9\u06e6\u06d8\u06da\u06d7\u06ec\u06e6\u06df\u06d9\u06e4\u06d8"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f100102

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->intentTtile:Ljava/lang/String;

    const-string v0, "\u06e7\u06dc\u06e6\u06d8\u06db\u06d8\u06d8\u06e4\u06e6\u06db\u06e2\u06e7\u06d6\u06e8\u06dc\u06db\u06e7\u06db\u06e5\u06d8\u06eb\u06da\u06d9\u06e6\u06e7\u06dc\u06d8\u06d8\u06d6\u06d7\u06db\u06df\u06d6\u06e8\u06ec\u06e0\u06e8\u06eb\u06e6\u06eb\u06ec\u06e8\u06dc\u06e5\u06d8"

    goto :goto_0

    :sswitch_4
    iput-object p1, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->intentContent:Ljava/lang/String;

    const-string v0, "\u06e7\u06e2\u06df\u06e2\u06df\u06d6\u06d8\u06e2\u06df\u06db\u06d7\u06dc\u06e1\u06d8\u06e1\u06dc\u06e4\u06e4\u06d8\u06da\u06db\u06eb\u06eb\u06d8\u06d9\u06e2\u06d8\u06df\u06eb\u06ec\u06e8\u06db"

    goto :goto_0

    :sswitch_5
    const v0, 0x7f1000de

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->leftContent:Ljava/lang/String;

    const-string v0, "\u06d8\u06d8\u06e8\u06d6\u06d6\u06ec\u06dc\u06df\u06e8\u06e8\u06d6\u06e2\u06e7\u06ec\u06d6\u06d8\u06d7\u06eb\u06e6\u06d8\u06e7\u06e7\u06e0\u06d7\u06e7\u06e5\u06e4\u06ec\u06e0\u06d9\u06e0\u06d6\u06e6\u06e1\u06da\u06e8\u06e8\u06ec\u06e5\u06e8\u06dc\u06e2\u06e5\u06e6"

    goto :goto_0

    :sswitch_6
    const v0, 0x7f1000e0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->rightContent:Ljava/lang/String;

    const-string v0, "\u06d9\u06e0\u06eb\u06e8\u06df\u06e8\u06d8\u06df\u06d6\u06e1\u06d8\u06db\u06e4\u06d8\u06d7\u06df\u06e6\u06d8\u06dc\u06e7\u06ec\u06db\u06e6\u06e0\u06e4\u06e4\u06e6\u06e0\u06d6\u06d8\u06d8\u06ec\u06d6\u06db\u06ec\u06ec\u06d6\u06d8\u06d6\u06e1\u06d6\u06db\u06d7\u06df\u06d6\u06df\u06e5"

    goto :goto_0

    :sswitch_7
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->isCancle:Z

    const-string v0, "\u06d9\u06df\u06e1\u06d8\u06e1\u06db\u06db\u06d7\u06dc\u06ec\u06e7\u06e8\u06d6\u06d8\u06e5\u06e4\u06d8\u06d7\u06da\u06e1\u06d7\u06e7\u06dc\u06d8\u06e5\u06e2\u06da\u06e6\u06d8\u06d8\u06d8\u06ec\u06d6\u06d8\u06d8\u06d8\u06e7\u06eb\u06db\u06e7\u06d8\u06dc\u06d9\u06eb\u06e6\u06e6\u06e7\u06e5\u06e4\u06d6\u06e5\u06d8\u06e7\u06d8"

    goto :goto_0

    :sswitch_8
    sget-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->CREATE_NEW_FILE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    iput-object v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->type:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "\u06e7\u06dc\u06e5\u06d8\u06e4\u06eb\u06e5\u06d7\u06da\u06db\u06e5\u06e4\u06ec\u06d8\u06ec\u06d7\u06d9\u06d8\u06e1\u06eb\u06ec\u06dc\u06d6\u06e4\u06d6\u06ec\u06e0\u06e2\u06da\u06ec\u06e0\u06e5\u06ec\u06e5\u06e1\u06ec\u06e5\u06e1\u06e0\u06e6\u06e8\u06e1\u06da"

    goto :goto_0

    :sswitch_9
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7fbe1f9e -> :sswitch_6
        -0x76e367ac -> :sswitch_5
        -0x70f05af4 -> :sswitch_4
        -0x6923060e -> :sswitch_2
        -0x5fbcb48f -> :sswitch_8
        -0x105ec4f8 -> :sswitch_7
        0x571defa -> :sswitch_3
        0x5582383c -> :sswitch_0
        0x5af36432 -> :sswitch_1
        0x7d1dec4c -> :sswitch_9
    .end sparse-switch
.end method

.method public static getSaveFloatBean(Landroid/content/Context;)Lcom/cyjh/elfin/entity/FloatEditBean;
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e0\u06d9\u06e1\u06d8\u06d9\u06e1\u06d9\u06d6\u06e5\u06e2\u06d8\u06e5\u06d8\u06d8\u06d7\u06e5\u06ec\u06e6\u06e5\u06eb\u06e7\u06d7\u06e5\u06d8\u06d7\u06e0\u06d8\u06da\u06dc\u06dc\u06e6\u06d9\u06d9\u06db\u06e1\u06ec\u06da\u06dc\u06e7\u06d6\u06db\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x23a

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x261

    const/16 v3, 0xb7

    const v4, 0x5796dfa6

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e1\u06e5\u06d6\u06e4\u06e2\u06db\u06e8\u06e8\u06eb\u06dc\u06e7\u06d8\u06ec\u06db\u06e2\u06d6\u06e6\u06d6\u06d8\u06d8\u06e6\u06eb\u06e0\u06da\u06e8\u06e8\u06e2\u06e7\u06d8\u06e4\u06d8\u06df\u06e7\u06d6\u06d7\u06dc\u06d8\u06d8\u06d6\u06e5\u06d8\u06d7\u06d8\u06e0"

    goto :goto_0

    :sswitch_1
    new-instance v1, Lcom/cyjh/elfin/entity/FloatEditBean;

    invoke-direct {v1}, Lcom/cyjh/elfin/entity/FloatEditBean;-><init>()V

    const-string v0, "\u06d9\u06eb\u06d8\u06d8\u06dc\u06e6\u06d8\u06d8\u06d7\u06d9\u06dc\u06df\u06db\u06dc\u06d8\u06da\u06d8\u06df\u06e5\u06db\u06d8\u06e0\u06ec\u06d7\u06df\u06d6\u06ec\u06e5\u06e6\u06d7\u06d7\u06d8\u06dc\u06e8\u06d7\u06e4\u06e1\u06da\u06d8\u06e0\u06e2\u06d8\u06d8\u06e7\u06e1\u06eb\u06e6\u06d8\u06dc\u06d8\u06dc\u06dc\u06e1"

    goto :goto_0

    :sswitch_2
    const v0, 0x7f100247

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->intentTtile:Ljava/lang/String;

    const-string v0, "\u06d7\u06df\u06d9\u06da\u06d7\u06da\u06dc\u06e0\u06d7\u06e7\u06e1\u06d8\u06e0\u06da\u06db\u06e5\u06d8\u06e1\u06e4\u06d9\u06d6\u06eb\u06df\u06dc\u06d8\u06e5\u06dc\u06d8\u06d8\u06e8\u06d8\u06eb"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f1002a7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->intentContent:Ljava/lang/String;

    const-string v0, "\u06da\u06db\u06d6\u06e7\u06db\u06d8\u06d8\u06da\u06d8\u06df\u06da\u06d7\u06e5\u06d8\u06df\u06e8\u06eb\u06d7\u06e5\u06e2\u06e2\u06d7\u06d9\u06e0\u06e4\u06e7\u06eb\u06d8\u06d8\u06d8\u06e6\u06df\u06e6\u06d8\u06d9\u06e4\u06d8\u06ec\u06df"

    goto :goto_0

    :sswitch_4
    const v0, 0x7f100246

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->rightContent:Ljava/lang/String;

    const-string v0, "\u06e0\u06dc\u06dc\u06d8\u06e8\u06d8\u06d9\u06db\u06db\u06e0\u06d8\u06da\u06df\u06e4\u06db\u06da\u06d9\u06d6\u06e2\u06e7\u06dc\u06e4\u06da\u06e2\u06eb\u06e6\u06db\u06d9\u06e0\u06e6\u06eb\u06db\u06ec\u06db\u06e0\u06df\u06dc\u06d8\u06e0\u06ec\u06dc\u06d8\u06d6\u06eb\u06dc\u06dc\u06e4\u06eb\u06db\u06e4\u06e8\u06d8"

    goto :goto_0

    :sswitch_5
    const v0, 0x7f1000e7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->leftContent:Ljava/lang/String;

    const-string v0, "\u06e5\u06ec\u06dc\u06d8\u06eb\u06e5\u06e7\u06d8\u06e2\u06d7\u06df\u06e4\u06e1\u06d6\u06d7\u06e0\u06e8\u06df\u06e7\u06e5\u06d7\u06d8\u06e6\u06d8\u06db\u06df\u06d8\u06e8\u06dc\u06d6\u06d7\u06d9\u06d8\u06e8\u06e2\u06e6\u06d9\u06da\u06ec\u06e4\u06e1\u06ec\u06e7\u06d9\u06df\u06e2\u06db\u06dc\u06d8\u06e0\u06d9\u06e7"

    goto :goto_0

    :sswitch_6
    sget-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->SAVE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    iput-object v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->type:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "\u06e6\u06e6\u06e5\u06d8\u06e1\u06df\u06df\u06eb\u06e2\u06e2\u06d9\u06e2\u06d6\u06d6\u06e2\u06d9\u06e7\u06d6\u06e7\u06ec\u06e8\u06e7\u06d8\u06e7\u06db\u06e8\u06db\u06e7\u06eb\u06e8\u06eb\u06d6\u06d8\u06db\u06da\u06d8\u06ec\u06e0\u06d9\u06e5\u06d9\u06e8\u06e4\u06e8\u06ec"

    goto :goto_0

    :sswitch_7
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x6897945b -> :sswitch_0
        -0x59624a22 -> :sswitch_2
        -0x2e7cdf38 -> :sswitch_6
        -0xf002dee -> :sswitch_7
        0x117ee225 -> :sswitch_4
        0x16c1ef7d -> :sswitch_3
        0x69626cd7 -> :sswitch_5
        0x6996f0d1 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getStartDownloadFlloatBean(Landroid/content/Context;Ljava/lang/String;)Lcom/cyjh/elfin/entity/FloatEditBean;
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e4\u06ec\u06e8\u06e4\u06e1\u06d8\u06d8\u06e7\u06df\u06e0\u06e5\u06e6\u06e2\u06e6\u06e1\u06dc\u06d8\u06e5\u06e0\u06da\u06dc\u06d6\u06e6\u06e6\u06d7\u06e6\u06d9\u06e1\u06d8\u06d7\u06dc\u06d9\u06e6\u06e7\u06d6\u06d8\u06ec\u06df\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x2c2

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x20f

    const/16 v3, 0x120

    const v4, -0x2ce067be

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06ec\u06e7\u06e4\u06dc\u06dc\u06e0\u06e7\u06e0\u06e7\u06e0\u06da\u06e5\u06df\u06d9\u06e6\u06d9\u06e5\u06d8\u06d9\u06e0\u06d9\u06e7\u06e4\u06e6\u06e2\u06e4\u06dc\u06d8\u06e8\u06d6\u06e7\u06d8\u06d8\u06d7\u06d7\u06d9\u06e2\u06e5\u06d9\u06e0\u06dc\u06e7\u06e4\u06d8\u06db\u06df\u06d6\u06e0\u06dc\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06eb\u06da\u06d8\u06d8\u06e1\u06d6\u06da\u06eb\u06d9\u06eb\u06e6\u06d9\u06d6\u06d8\u06d8\u06e7\u06e8\u06d8\u06da\u06e1\u06e2\u06e5\u06e0\u06e6\u06d7\u06e8\u06e5\u06d8\u06dc\u06df\u06da\u06dc\u06dc\u06eb\u06e6\u06e0\u06e0\u06ec\u06e4\u06e4\u06e0\u06d6\u06da\u06e6\u06e7\u06e0\u06d9\u06e7\u06d6\u06e6\u06d9\u06d8"

    goto :goto_0

    :sswitch_2
    new-instance v1, Lcom/cyjh/elfin/entity/FloatEditBean;

    invoke-direct {v1}, Lcom/cyjh/elfin/entity/FloatEditBean;-><init>()V

    const-string v0, "\u06ec\u06e6\u06e5\u06d8\u06e6\u06e2\u06e7\u06e8\u06e6\u06dc\u06d9\u06e0\u06dc\u06d8\u06dc\u06d7\u06e5\u06ec\u06db\u06d6\u06e7\u06dc\u06eb\u06e7\u06e5\u06d8\u06d9\u06dc\u06e6\u06d8\u06e5\u06ec\u06e8\u06d8\u06da\u06d9\u06d8\u06d8\u06e0\u06e0\u06d7\u06e2\u06d8\u06d6\u06e7\u06e5\u06d6\u06d8\u06df\u06e2\u06dc\u06d8\u06ec\u06e6\u06e5"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f1002f7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->intentTtile:Ljava/lang/String;

    const-string v0, "\u06e0\u06e8\u06e7\u06d8\u06da\u06db\u06da\u06e2\u06e8\u06e2\u06db\u06e4\u06da\u06ec\u06e4\u06e5\u06db\u06d7\u06dc\u06e6\u06d7\u06dc\u06da\u06dc\u06d9\u06df\u06e8\u06d9\u06e8\u06e6\u06d8\u06e7\u06d8\u06e8\u06d9\u06e4\u06dc\u06db\u06e8\u06dc\u06d8\u06e5\u06e1\u06d7\u06e2\u06d7\u06d9\u06d7\u06da\u06d9\u06da\u06e5\u06d6\u06e7\u06dc\u06dc\u06d8"

    goto :goto_0

    :sswitch_4
    iput-object p1, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->intentContent:Ljava/lang/String;

    const-string v0, "\u06ec\u06e5\u06dc\u06dc\u06e2\u06d6\u06d8\u06e1\u06e5\u06e6\u06e8\u06e8\u06e1\u06d7\u06e8\u06e1\u06e6\u06d6\u06d8\u06eb\u06e1\u06ec\u06d8\u06df\u06da\u06dc\u06dc\u06db\u06d9\u06e1\u06d8\u06e8\u06e4\u06d8\u06e5\u06ec\u06d9\u06e4\u06ec\u06e5\u06e2\u06ec\u06e1"

    goto :goto_0

    :sswitch_5
    const v0, 0x7f1000de

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->leftContent:Ljava/lang/String;

    const-string v0, "\u06e8\u06db\u06e2\u06d6\u06eb\u06e7\u06dc\u06d7\u06e6\u06d8\u06dc\u06dc\u06e0\u06da\u06db\u06e2\u06e7\u06df\u06e2\u06e4\u06e1\u06e7\u06d8\u06eb\u06e1\u06dc\u06e0\u06db\u06eb\u06e7\u06e0\u06d8\u06df\u06d8\u06dc\u06e6\u06e8\u06e8\u06eb\u06e4\u06e8\u06e1\u06db\u06e7\u06e8\u06d6\u06d7\u06dc\u06eb\u06e1\u06e5\u06e5\u06db\u06d6\u06e8\u06d8"

    goto :goto_0

    :sswitch_6
    const v0, 0x7f1000df

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->rightContent:Ljava/lang/String;

    const-string v0, "\u06e1\u06e7\u06d7\u06e1\u06ec\u06da\u06e7\u06d7\u06db\u06e1\u06e5\u06d8\u06e4\u06e6\u06eb\u06d6\u06d7\u06dc\u06d8\u06da\u06e1\u06ec\u06e2\u06ec\u06df\u06e2\u06e5\u06d8\u06dc\u06e6\u06e8\u06d8"

    goto :goto_0

    :sswitch_7
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->isCancle:Z

    const-string v0, "\u06d7\u06da\u06d8\u06eb\u06da\u06da\u06e4\u06dc\u06e8\u06d9\u06db\u06d8\u06e6\u06d8\u06d8\u06df\u06e6\u06e4\u06d8\u06da\u06e1\u06e5\u06eb\u06e8\u06d6\u06db\u06d6\u06d8\u06eb\u06e1\u06e1"

    goto :goto_0

    :sswitch_8
    sget-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->START_DOWNLOAD:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    iput-object v0, v1, Lcom/cyjh/elfin/entity/FloatEditBean;->type:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "\u06d7\u06d7\u06db\u06ec\u06d7\u06dc\u06d8\u06e1\u06e8\u06e8\u06da\u06da\u06db\u06e1\u06e0\u06e2\u06da\u06e1\u06e6\u06d7\u06eb\u06dc\u06d8\u06da\u06da\u06e5\u06d8\u06d8\u06d8\u06da\u06dc\u06da\u06eb\u06e5\u06d6\u06d8\u06d7\u06df\u06e5\u06e1\u06e0\u06e8\u06dc\u06e8\u06e7\u06d8\u06da\u06e2\u06dc\u06d8\u06eb\u06d6\u06e6\u06d9\u06e8\u06db\u06ec\u06e1\u06e1"

    goto :goto_0

    :sswitch_9
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x6cb00d12 -> :sswitch_1
        -0x5a7563a6 -> :sswitch_9
        -0x4a1b7c52 -> :sswitch_2
        -0x4b911b5 -> :sswitch_5
        -0x2df46fc -> :sswitch_0
        0x7e619ff -> :sswitch_4
        0x1c83936c -> :sswitch_6
        0x371b2841 -> :sswitch_8
        0x639f0a8f -> :sswitch_7
        0x6d1ee81b -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    const-string v0, "\u06d7\u06e8\u06da\u06e7\u06e5\u06dc\u06e0\u06d7\u06e7\u06d6\u06db\u06e4\u06e1\u06d8\u06e1\u06d8\u06db\u06e1\u06e8\u06e0\u06e2\u06d6\u06d8\u06e5\u06e7\u06e8\u06dc\u06e0\u06e5\u06d8\u06e0\u06d8\u06e7\u06d8\u06e1\u06db\u06e6\u06eb\u06d8\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1b4

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2ea

    const/16 v2, 0x15b

    const v3, -0x2a2ef7b8

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06e2\u06db\u06eb\u06e6\u06dc\u06d8\u06d6\u06da\u06e8\u06db\u06d7\u06ec\u06e8\u06e7\u06d8\u06d8\u06e7\u06e4\u06db\u06e0\u06da\u06d6\u06e0\u06e1\u06d9\u06d7\u06e8\u06d6\u06eb\u06e8\u06e4\u06eb\u06dc\u06e8\u06df\u06e8\u06df\u06e8\u06d6\u06db\u06d9\u06d6\u06db\u06e5\u06dc\u06e7\u06d6\u06e2\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x35858443 -> :sswitch_0
        0x3161d440 -> :sswitch_1
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-string v0, "\u06dc\u06e7\u06e2\u06db\u06e6\u06da\u06dc\u06d6\u06d8\u06e4\u06d8\u06e1\u06db\u06dc\u06dc\u06d8\u06e5\u06e7\u06d9\u06d8\u06ec\u06e0\u06e0\u06eb\u06db\u06ec\u06d7\u06e6\u06e7\u06ec\u06d6\u06d8"

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v6, 0xc6

    xor-int/2addr v2, v6

    xor-int/lit16 v2, v2, 0xa6

    const/16 v6, 0x10a

    const v7, 0x5abea1e6

    xor-int/2addr v2, v6

    xor-int/2addr v2, v7

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06e2\u06d8\u06d8\u06e4\u06d6\u06e7\u06d8\u06d8\u06e5\u06d8\u06e1\u06d7\u06e2\u06d9\u06d6\u06ec\u06e0\u06d9\u06e2\u06d7\u06d7\u06d8\u06da\u06ec\u06d7\u06da\u06d8\u06e6\u06d8\u06d8\u06dc\u06e0\u06e4\u06e2\u06e6\u06d8\u06e6\u06eb\u06e8\u06d8\u06e7\u06e0\u06e0\u06e0\u06d9\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06dc\u06e7\u06e0\u06d8\u06e7\u06e7\u06e2\u06d7\u06e4\u06df\u06eb\u06ec\u06df\u06e2\u06d7\u06ec\u06db\u06e0\u06e0\u06e1\u06e0\u06e6\u06d8\u06eb\u06db\u06e0\u06e2\u06ec\u06e0"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e1\u06e7\u06d6\u06d9\u06d7\u06da\u06e4\u06da\u06dc\u06d8\u06e2\u06eb\u06e6\u06d6\u06d6\u06e7\u06d8\u06e4\u06da\u06d6\u06dc\u06d8\u06e7\u06df\u06dc\u06e0\u06e7\u06df\u06da\u06d8\u06e7\u06e4"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->intentTtile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06e2\u06e4\u06dc\u06ec\u06e2\u06dc\u06d8\u06da\u06e7\u06e4\u06d7\u06dc\u06eb\u06e4\u06dc\u06dc\u06d8\u06e7\u06e4\u06e8\u06d8\u06d6\u06e6\u06ec\u06df\u06d8\u06d6\u06d8\u06e5\u06e8\u06e8\u06d8\u06e4\u06e2\u06e6\u06d8\u06e6\u06d7\u06e5\u06d8\u06e7\u06df\u06db\u06d6\u06da\u06df\u06d8\u06e5\u06e0\u06e4\u06e2\u06e8\u06d6\u06e6\u06e8\u06d8"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->intentContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06d7\u06d9\u06df\u06e5\u06d6\u06da\u06dc\u06d8\u06e8\u06eb\u06dc\u06ec\u06ec\u06e6\u06e6\u06d8\u06d9\u06ec\u06e7\u06d6\u06ec\u06ec\u06eb\u06ec\u06e5\u06d7\u06dc\u06d6\u06ec\u06dc\u06d6\u06dc\u06d6\u06e4\u06e4\u06e6\u06d8\u06e5\u06e6\u06e0\u06e1\u06d7\u06e5\u06d8\u06d6\u06d7\u06d7\u06d7\u06dc\u06d6\u06ec\u06db\u06e6\u06d8\u06df\u06ec\u06ec"

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->leftContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06e6\u06e2\u06e1\u06e1\u06e2\u06da\u06e2\u06d7\u06ec\u06d8\u06e7\u06e4\u06e2\u06e1\u06e8\u06ec\u06e6\u06d8\u06e5\u06e1\u06e5\u06d8\u06d8\u06e0\u06db\u06da\u06e5\u06e2\u06d7\u06e8\u06d6\u06e1\u06da\u06e1\u06e1\u06dc\u06e7\u06d8\u06df\u06da\u06ec"

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->rightContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06d7\u06e2\u06dc\u06d8\u06df\u06e5\u06d8\u06d8\u06ec\u06e2\u06d6\u06e0\u06d7\u06e8\u06e1\u06e1\u06db\u06d7\u06e4\u06d8\u06d8\u06eb\u06e0\u06e4\u06e5\u06e1\u06e5\u06da\u06d9\u06e1\u06dc\u06e4\u06e1\u06d8\u06e2\u06e0\u06dc\u06d8\u06df\u06e1\u06e1\u06e7\u06e4\u06db\u06dc\u06da\u06e2"

    goto :goto_0

    :sswitch_7
    iget-boolean v0, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->isCancle:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    const-string v0, "\u06e4\u06eb\u06e7\u06d6\u06e6\u06d8\u06e1\u06eb\u06e0\u06e7\u06e0\u06d8\u06d8\u06e8\u06e4\u06e4\u06df\u06e5\u06d8\u06e0\u06e1\u06dc\u06d7\u06e8\u06ec\u06e0\u06e8\u06d8\u06dc\u06e7\u06e5\u06e8\u06e5\u06dc\u06e4\u06dc\u06e4\u06e0\u06e6\u06d9\u06e7\u06e0\u06d9"

    goto :goto_0

    :sswitch_8
    iget-object v2, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->type:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "\u06db\u06d6\u06e2\u06dc\u06da\u06e8\u06d8\u06db\u06db\u06e4\u06db\u06e5\u06dc\u06d8\u06e4\u06dc\u06da\u06db\u06e1\u06d6\u06e6\u06dc\u06e7\u06d8\u06e5\u06d7\u06dc\u06d8\u06d7\u06e7\u06db\u06e2\u06e0\u06d8\u06d8"

    move-object v5, v2

    goto :goto_0

    :sswitch_9
    const v2, -0x53a4f1c7

    const-string v0, "\u06d9\u06da\u06e6\u06ec\u06e8\u06e8\u06e6\u06e6\u06e6\u06d8\u06dc\u06e2\u06e0\u06df\u06da\u06d7\u06dc\u06db\u06e6\u06d8\u06d9\u06e4\u06ec\u06e0\u06e4\u06e2\u06e0\u06db\u06e6\u06d9\u06e4\u06e5\u06dc\u06e1\u06e4\u06e2\u06d8\u06e6\u06dc\u06e0\u06e2\u06ec\u06d7\u06e5\u06e2\u06eb\u06db\u06d8\u06ec\u06e8\u06ec\u06d7\u06e6\u06e5\u06d6\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v2

    sparse-switch v6, :sswitch_data_1

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06d7\u06dc\u06e7\u06e4\u06e6\u06db\u06d6\u06ec\u06d8\u06d8\u06e1\u06e2\u06d6\u06d8\u06e8\u06eb\u06df\u06e1\u06eb\u06e0\u06e2\u06d7\u06e5\u06e6\u06e4\u06e5\u06da\u06dc\u06e0\u06e4\u06ec\u06e6\u06d8\u06eb\u06df\u06da\u06d8\u06e6\u06ec"

    goto :goto_0

    :sswitch_b
    const-string v0, "\u06e4\u06db\u06eb\u06e4\u06d7\u06d8\u06d9\u06dc\u06da\u06d7\u06db\u06da\u06db\u06e1\u06d6\u06d8\u06d6\u06e0\u06d8\u06d8\u06e0\u06e7\u06d8\u06e8\u06eb\u06e6\u06e0\u06d7\u06d9\u06e6\u06e6\u06e4"

    goto :goto_1

    :sswitch_c
    const v6, -0x347af3f6    # -1.743874E7f

    const-string v0, "\u06d7\u06e0\u06e0\u06e5\u06e8\u06dc\u06d8\u06e4\u06d8\u06dc\u06df\u06e8\u06db\u06d9\u06e6\u06df\u06da\u06e5\u06d9\u06db\u06eb\u06e5\u06e8\u06d6\u06db\u06db\u06d8\u06da\u06e4\u06e6\u06d8\u06e2\u06e7\u06e1\u06e1\u06e0\u06e2"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v7, v6

    sparse-switch v7, :sswitch_data_2

    goto :goto_2

    :sswitch_d
    const-string v0, "\u06e5\u06d7\u06eb\u06e1\u06e8\u06e4\u06e1\u06db\u06d9\u06e5\u06db\u06df\u06e6\u06e6\u06d8\u06dc\u06e1\u06d8\u06da\u06e8\u06e6\u06db\u06e8\u06d7\u06e1\u06e6\u06dc\u06d8\u06e1\u06dc\u06ec\u06db\u06d8\u06d8\u06e4\u06e0\u06e7\u06df\u06da\u06e5\u06d8\u06e7\u06e5\u06d6\u06d8\u06e1\u06d8\u06d8\u06e2\u06eb\u06d7\u06e7\u06e1\u06dc\u06e8\u06e7\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e5\u06df\u06e1\u06d8\u06e0\u06e1\u06d9\u06d7\u06e6\u06db\u06d9\u06d8\u06e6\u06d8\u06e8\u06e0\u06e4\u06d8\u06d8\u06d8\u06d8\u06eb\u06e4\u06e4\u06eb\u06ec\u06e0\u06e6\u06e6\u06d9\u06ec\u06d6\u06d6\u06d7\u06e7\u06e6\u06da\u06e0\u06da\u06ec\u06d6\u06da\u06e6\u06df\u06e1\u06d8\u06da\u06d8\u06e0\u06da\u06db\u06e5"

    goto :goto_2

    :sswitch_e
    if-nez v5, :cond_0

    const-string v0, "\u06e8\u06e2\u06e0\u06d8\u06e8\u06da\u06e7\u06dc\u06e6\u06d9\u06e6\u06e7\u06d8\u06ec\u06da\u06d9\u06d9\u06e1\u06eb\u06db\u06e7\u06d8\u06df\u06e1\u06e4\u06dc\u06db\u06e5\u06e4\u06d6\u06dc\u06e4\u06e0\u06e8\u06d8\u06da\u06e1\u06df\u06e2\u06e7\u06e1\u06d8\u06e1\u06d8\u06dc"

    goto :goto_2

    :sswitch_f
    const-string v0, "\u06d6\u06e2\u06da\u06db\u06da\u06d6\u06d8\u06ec\u06d7\u06e7\u06e1\u06e1\u06e2\u06d6\u06da\u06d8\u06d8\u06e4\u06e2\u06e2\u06d6\u06e2\u06e8\u06e8\u06e4\u06eb\u06e2\u06e4\u06e8\u06d8\u06e2\u06e6\u06dc\u06d8\u06e8\u06d8\u06da\u06d8\u06dc\u06da\u06eb\u06e7\u06e4\u06df\u06e7\u06d8\u06d8\u06e2\u06db\u06d8\u06e2\u06eb\u06e5\u06ec\u06d9\u06e5\u06d8\u06e0\u06e7\u06db"

    goto :goto_1

    :sswitch_10
    const-string v0, "\u06e5\u06e2\u06eb\u06df\u06e2\u06e0\u06ec\u06dc\u06e7\u06d8\u06d7\u06df\u06e6\u06d8\u06e1\u06e8\u06e2\u06e1\u06d6\u06d8\u06d8\u06d6\u06e6\u06e7\u06e2\u06db\u06e6\u06ec\u06e8\u06e8\u06e8\u06db\u06ec\u06d9\u06eb\u06ec\u06e5\u06e1\u06e6\u06d8\u06df\u06d6\u06d6\u06e2\u06da\u06e2\u06e5\u06d8\u06e7\u06e4\u06d8\u06e5\u06d8"

    goto :goto_1

    :sswitch_11
    const/4 v4, -0x1

    const-string v0, "\u06db\u06e1\u06eb\u06df\u06d8\u06d7\u06d7\u06e5\u06e8\u06eb\u06d6\u06e1\u06d8\u06e2\u06db\u06db\u06e7\u06dc\u06d9\u06e1\u06d9\u06d6\u06d6\u06da\u06e6\u06d8\u06d8\u06d9\u06e6\u06e0\u06e7\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "\u06e6\u06d6\u06eb\u06da\u06d6\u06e4\u06e1\u06dc\u06ec\u06da\u06e0\u06e2\u06d8\u06e1\u06df\u06d6\u06d6\u06dc\u06e2\u06da\u06e8\u06db\u06ec\u06ec\u06eb\u06e5\u06d6\u06d8\u06da\u06dc\u06e7\u06d6\u06eb\u06e5\u06d8\u06e1\u06e1\u06e8"

    move v3, v4

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v0, "\u06d6\u06e4\u06d7\u06d6\u06e2\u06d9\u06dc\u06e2\u06e0\u06e4\u06d7\u06e5\u06e1\u06ec\u06e6\u06d8\u06da\u06dc\u06d8\u06d8\u06d8\u06e2\u06d6\u06d8\u06e7\u06ec\u06ec\u06e1\u06e4\u06df\u06e6\u06db"

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "\u06eb\u06df\u06d8\u06d8\u06e6\u06e8\u06dc\u06e1\u06e6\u06e1\u06d8\u06df\u06da\u06e0\u06e6\u06d8\u06d8\u06d8\u06d9\u06da\u06e2\u06e4\u06df\u06d6\u06d8\u06df\u06dc\u06e8\u06e4\u06d7\u06db\u06e8\u06db\u06e6\u06e6\u06e4\u06e5\u06d8\u06ec\u06e5\u06d7\u06eb\u06e1\u06e5\u06ec\u06e4\u06e6\u06d7\u06e8\u06e8\u06df\u06d6\u06e0\u06e6\u06da\u06e1\u06e6\u06d6\u06db"

    move v3, v1

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const-string v0, "\u06e4\u06e5\u06d7\u06d6\u06e8\u06d9\u06e2\u06e2\u06e5\u06d8\u06ec\u06da\u06e0\u06db\u06df\u06d6\u06d8\u06df\u06d8\u06eb\u06db\u06df\u06e5\u06da\u06db\u06e5\u06d8\u06e8\u06e8\u06e1\u06ec\u06e8\u06dc\u06d8\u06d6\u06e8\u06e1\u06e1\u06e0\u06d8\u06d8\u06d8\u06e1\u06e8\u06d8\u06e6\u06e7\u06da\u06eb\u06da\u06e4\u06eb\u06e6\u06df\u06e0\u06da\u06e7\u06da\u06df\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "\u06e5\u06e6\u06e6\u06d8\u06e4\u06e1\u06e8\u06d8\u06da\u06e1\u06e8\u06d8\u06d9\u06e0\u06eb\u06eb\u06e4\u06d7\u06d8\u06e8\u06e5\u06d8\u06d6\u06ec\u06e5\u06e8\u06eb\u06d8\u06e6\u06ec\u06ec\u06e7\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "\u06eb\u06df\u06d8\u06d8\u06e6\u06e8\u06dc\u06e1\u06e6\u06e1\u06d8\u06df\u06da\u06e0\u06e6\u06d8\u06d8\u06d8\u06d9\u06da\u06e2\u06e4\u06df\u06d6\u06d8\u06df\u06dc\u06e8\u06e4\u06d7\u06db\u06e8\u06db\u06e6\u06e6\u06e4\u06e5\u06d8\u06ec\u06e5\u06d7\u06eb\u06e1\u06e5\u06ec\u06e4\u06e6\u06d7\u06e8\u06e8\u06df\u06d6\u06e0\u06e6\u06da\u06e1\u06e6\u06d6\u06db"

    goto/16 :goto_0

    :sswitch_18
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ff1a9c2 -> :sswitch_13
        -0x6b138cd4 -> :sswitch_17
        -0x66d7f883 -> :sswitch_4
        -0x621c9a23 -> :sswitch_14
        -0x41782f65 -> :sswitch_1
        -0x21cf1736 -> :sswitch_18
        -0x1bb4f059 -> :sswitch_0
        -0xc55f2cb -> :sswitch_12
        -0xc040ea9 -> :sswitch_3
        -0x94b0407 -> :sswitch_8
        0x15da5d22 -> :sswitch_7
        0x17e3473b -> :sswitch_5
        0x2430d9e4 -> :sswitch_6
        0x33f3c4dd -> :sswitch_9
        0x3fa20eeb -> :sswitch_2
        0x67182743 -> :sswitch_15
        0x7663b803 -> :sswitch_11
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x4d840d58 -> :sswitch_a
        0x2a1d309a -> :sswitch_10
        0x5cf8234a -> :sswitch_c
        0x5fddd28f -> :sswitch_16
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6a9e3a62 -> :sswitch_e
        0x350321dd -> :sswitch_f
        0x3a2856b0 -> :sswitch_d
        0x7776cd0d -> :sswitch_b
    .end sparse-switch
.end method
