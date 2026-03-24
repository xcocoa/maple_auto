.class public Lcom/cyjh/elfin/entity/ScriptLog;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cyjh/elfin/entity/ScriptLog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private file:Ljava/io/File;

.field private isSelect:Z

.field private name:Ljava/lang/String;

.field private size:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06db\u06d9\u06e8\u06d8\u06d6\u06e8\u06e8\u06d8\u06e6\u06df\u06dc\u06d8\u06e5\u06e7\u06e4\u06e1\u06e5\u06db\u06dc\u06d7\u06e5\u06e7\u06db\u06eb\u06d8\u06e1\u06e2\u06e4\u06d8\u06e6\u06da\u06e6\u06db\u06e1\u06df\u06e5\u06e1\u06dc\u06e5\u06d8\u06e2\u06dc\u06dc\u06d8\u06da\u06d9\u06d7\u06d7\u06e6\u06d7\u06eb\u06e1\u06e2\u06dc\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x115

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x253

    const/16 v2, 0x222

    const v3, -0xc7fef8e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/cyjh/elfin/entity/ScriptLog$1;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/ScriptLog$1;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/entity/ScriptLog;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "\u06e7\u06e7\u06e1\u06e7\u06d7\u06d6\u06d8\u06e1\u06eb\u06d8\u06e0\u06e0\u06d6\u06e1\u06e4\u06d6\u06d8\u06e6\u06d6\u06dc\u06e2\u06e8\u06eb\u06e1\u06e7\u06db\u06d9\u06e7\u06da\u06e7"

    goto :goto_0

    :sswitch_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x26f2a761 -> :sswitch_1
        0x6a1712c8 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->size:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->file:Ljava/io/File;

    const v1, -0x69bd62f8

    const-string v0, "\u06e0\u06d7\u06dc\u06ec\u06e1\u06dc\u06ec\u06df\u06e1\u06d8\u06e5\u06ec\u06e2\u06ec\u06df\u06e6\u06d8\u06dc\u06df\u06df\u06e4\u06e8\u06df\u06e2\u06e8\u06e8\u06d8\u06e7\u06e2\u06e2\u06d9\u06e5\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const v2, 0x3b78904b

    const-string v0, "\u06dc\u06e8\u06ec\u06dc\u06e6\u06d7\u06e7\u06d9\u06da\u06e2\u06e5\u06e1\u06d8\u06ec\u06e6\u06e8\u06d7\u06db\u06d6\u06d8\u06e7\u06e0\u06db\u06e8\u06e7\u06e6\u06d9\u06d9\u06e5\u06d8\u06e1\u06e7\u06da\u06e0\u06e6\u06eb\u06ec\u06e1\u06e7\u06eb\u06db\u06db\u06e6\u06dc\u06e5"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_1
    const-string v0, "\u06da\u06e7\u06d7\u06e4\u06eb\u06d7\u06e8\u06d6\u06e5\u06ec\u06e0\u06dc\u06db\u06ec\u06d7\u06d8\u06d6\u06e0\u06d9\u06e2\u06ec\u06eb\u06df\u06e1\u06d9\u06e6\u06da\u06d9\u06db\u06e4\u06ec\u06e8\u06df\u06e2\u06e4\u06e1"

    goto :goto_1

    :sswitch_2
    const-string v0, "\u06e7\u06e4\u06d6\u06d8\u06db\u06e4\u06eb\u06da\u06d8\u06d6\u06d8\u06e5\u06e4\u06ec\u06dc\u06e6\u06d9\u06df\u06dc\u06ec\u06e0\u06d9\u06e0\u06e2\u06e2\u06e1\u06d8\u06e5\u06e7\u06d9\u06e7\u06d8\u06e6\u06d8\u06eb\u06e0\u06da\u06e8\u06e5\u06e8\u06e6\u06eb\u06d9\u06e2\u06e2\u06df\u06eb\u06db\u06d8\u06e4\u06e2\u06e8\u06d8"

    goto :goto_0

    :cond_0
    const-string v0, "\u06e2\u06eb\u06e1\u06e2\u06d8\u06dc\u06d8\u06da\u06eb\u06db\u06ec\u06db\u06e6\u06ec\u06db\u06e1\u06d8\u06e2\u06df\u06e2\u06d6\u06d6\u06e7\u06e0\u06db\u06d6\u06d8\u06d8\u06d7\u06df\u06e1\u06d8\u06e6\u06ec\u06e6\u06e4\u06e5\u06dc\u06d6\u06d8"

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06ec\u06e6\u06e8\u06df\u06db\u06df\u06ec\u06e4\u06e5\u06d8\u06d9\u06e4\u06eb\u06e4\u06e0\u06e1\u06d8\u06db\u06e5\u06e5\u06dc\u06e7\u06d8\u06db\u06db\u06d6\u06d7\u06e5\u06e1\u06d8\u06df\u06e6\u06d6\u06db\u06d7\u06dc\u06d8\u06dc\u06df\u06e1\u06e8\u06d9\u06df\u06db\u06ec\u06dc\u06d8\u06db\u06e6\u06e2\u06ec\u06e7\u06da"

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06e0\u06dc\u06e0\u06db\u06e8\u06e2\u06df\u06d7\u06e6\u06d8\u06e6\u06d8\u06e6\u06e7\u06da\u06e4\u06d6\u06e0\u06d8\u06dc\u06e0\u06eb\u06d7\u06e4\u06e5\u06e6\u06d8\u06e0\u06db\u06e1\u06da\u06e0\u06d8\u06d8\u06d7\u06e5\u06e6\u06d8\u06e7\u06e2\u06e6\u06d7\u06e8\u06d7\u06e1\u06df\u06df\u06d7\u06e1\u06e8\u06e8\u06df\u06e8\u06e1\u06e8\u06e0"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06da\u06e7\u06e1\u06d8\u06eb\u06d9\u06e4\u06eb\u06e5\u06d6\u06d7\u06e5\u06d8\u06d9\u06d6\u06e2\u06eb\u06d7\u06d6\u06e8\u06e0\u06d6\u06d8\u06ec\u06e0\u06ec\u06e4\u06eb\u06eb\u06db\u06d9\u06db\u06e2\u06d8\u06e6\u06e8\u06d7\u06e1\u06d8"

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->isSelect:Z

    return-void

    :sswitch_7
    const/4 v0, 0x0

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x38aac974 -> :sswitch_6
        -0x1b220cfb -> :sswitch_0
        -0x1471f569 -> :sswitch_7
        0x2b101fb -> :sswitch_5
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x485c5a1b -> :sswitch_3
        -0x665391b -> :sswitch_4
        0x60ca0513 -> :sswitch_2
        0x630d5fbd -> :sswitch_1
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/cyjh/elfin/entity/ScriptLog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/entity/ScriptLog;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    const-string v0, "\u06d8\u06df\u06e5\u06e6\u06e0\u06e5\u06d8\u06dc\u06e2\u06da\u06e0\u06e2\u06e0\u06d8\u06d9\u06d7\u06e5\u06e6\u06d6\u06eb\u06dc\u06db\u06e8\u06e5\u06df\u06ec\u06e5\u06dc\u06d9\u06d8\u06d8\u06e8\u06e4\u06e4\u06d6\u06e7\u06d8\u06da\u06dc\u06d8\u06df\u06d8\u06df\u06e8\u06e2\u06e4\u06da\u06e6\u06e2\u06d8\u06e1\u06e7\u06eb\u06e4\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2e1

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x370

    const/16 v2, 0x2d3

    const v3, 0x22174105

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06d6\u06e1\u06d8\u06e8\u06d8\u06e2\u06e8\u06d7\u06eb\u06df\u06d7\u06ec\u06e2\u06df\u06ec\u06e5\u06db\u06e1\u06e2\u06eb\u06df\u06e2\u06db\u06e1\u06d8\u06e8\u06d9\u06d6\u06d8\u06d6\u06d8\u06e5\u06d8\u06d8\u06e1\u06e5\u06d8\u06d7\u06e7"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ee0d40f -> :sswitch_1
        0x55d775f5 -> :sswitch_0
    .end sparse-switch
.end method

.method public getFile()Ljava/io/File;
    .locals 4

    const-string v0, "\u06e5\u06d6\u06d6\u06d6\u06e1\u06d6\u06df\u06d8\u06dc\u06e1\u06e4\u06ec\u06e1\u06e7\u06d9\u06e4\u06d9\u06e6\u06d8\u06d6\u06db\u06e5\u06dc\u06ec\u06e2\u06e5\u06e5\u06eb\u06dc\u06d6\u06e2\u06df\u06e1\u06e6\u06da\u06df\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1a8

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x358

    const/16 v2, 0x1ea

    const v3, -0x759cb25b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06e2\u06da\u06e1\u06eb\u06e7\u06da\u06e8\u06d8\u06eb\u06e0\u06dc\u06e8\u06e8\u06ec\u06d6\u06d6\u06e6\u06d8\u06eb\u06e5\u06eb\u06d7\u06da\u06da\u06e6\u06dc\u06e8\u06eb\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->file:Ljava/io/File;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x2db61e57 -> :sswitch_0
        -0x21cbf0d2 -> :sswitch_1
    .end sparse-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    const-string v0, "\u06db\u06d7\u06e2\u06e1\u06ec\u06d9\u06d7\u06e5\u06df\u06ec\u06db\u06e0\u06e0\u06ec\u06d6\u06df\u06e8\u06e1\u06e6\u06e7\u06e8\u06d8\u06db\u06e6\u06d8\u06db\u06df\u06d6\u06eb\u06d8\u06d8\u06db\u06e6\u06e0\u06d8\u06e7\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x107

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x243

    const/16 v2, 0x113

    const v3, 0x49cc3e6c    # 1673165.5f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06d9\u06e4\u06dc\u06dc\u06e6\u06d8\u06e2\u06ec\u06e8\u06e2\u06d8\u06e7\u06d8\u06d8\u06e0\u06d6\u06d8\u06e2\u06db\u06dc\u06d8\u06db\u06e2\u06d6\u06d8\u06e1\u06da\u06e5\u06ec\u06e1\u06e6\u06e0\u06df\u06e0\u06e1\u06e7\u06e4\u06e7\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->name:Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0xec21bf7 -> :sswitch_1
        0x30481bdc -> :sswitch_0
    .end sparse-switch
.end method

.method public getSize()Ljava/lang/String;
    .locals 4

    const-string v0, "\u06e4\u06df\u06e8\u06d8\u06d7\u06ec\u06d8\u06e5\u06d6\u06e8\u06e5\u06e4\u06e4\u06e0\u06d6\u06e1\u06e7\u06d8\u06dc\u06e8\u06e6\u06d8\u06e5\u06da\u06ec\u06e2\u06e5\u06eb\u06dc\u06e4\u06e8\u06d8\u06d6\u06e7\u06db\u06e2\u06e2\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1f9

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1cd

    const/16 v2, 0x23a

    const v3, 0x452a4768

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06d9\u06d6\u06db\u06d6\u06e4\u06d9\u06df\u06da\u06e8\u06e2\u06d8\u06db\u06d6\u06d8\u06ec\u06e8\u06e7\u06da\u06dc\u06d8\u06eb\u06d8\u06d6\u06da\u06d7\u06db\u06e2\u06e8\u06df\u06e5\u06eb\u06e5\u06da\u06dc\u06e4"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->size:Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1381aeec -> :sswitch_0
        0x24c7bd6b -> :sswitch_1
    .end sparse-switch
.end method

.method public isSelect()Z
    .locals 4

    const-string v0, "\u06e7\u06db\u06db\u06e7\u06e5\u06e7\u06d8\u06da\u06d8\u06db\u06df\u06da\u06dc\u06e1\u06e2\u06d9\u06df\u06d9\u06e7\u06e6\u06d6\u06ec\u06db\u06dc\u06d7\u06d9\u06e8\u06e0\u06e8\u06e5\u06e1\u06e2\u06db\u06e1\u06e5\u06dc\u06e4\u06d8\u06d6\u06e2\u06d8\u06d6\u06dc\u06d8\u06d7\u06e1\u06d6\u06db\u06e5\u06e8\u06d8\u06e5\u06d9\u06ec\u06d7\u06df\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1fe

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2fc

    const/16 v2, 0x8c

    const v3, 0x377f6882

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06da\u06e6\u06dc\u06e2\u06d6\u06e6\u06d8\u06d8\u06d8\u06e8\u06e7\u06e1\u06da\u06df\u06e8\u06d8\u06eb\u06e1\u06e5\u06db\u06d9\u06e1\u06e2\u06da\u06e1\u06d8\u06da\u06e4\u06df\u06d8\u06e4\u06e4\u06e7\u06d8\u06d8\u06da\u06e6\u06e8\u06d8\u06dc\u06e2\u06e5\u06e2\u06dc\u06e6\u06d7\u06e6\u06e2\u06e5\u06e6\u06df\u06e4\u06d7\u06e8\u06da\u06df\u06da"

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->isSelect:Z

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x597df782 -> :sswitch_1
        0x216c2b65 -> :sswitch_0
    .end sparse-switch
.end method

.method public setFile(Ljava/io/File;)V
    .locals 4

    const-string v0, "\u06da\u06eb\u06d7\u06e6\u06d8\u06da\u06db\u06e4\u06d7\u06dc\u06e2\u06ec\u06db\u06df\u06e6\u06e8\u06e7\u06e0\u06e0\u06e0\u06e1\u06d8\u06d6\u06e1\u06d6\u06d8\u06e5\u06e7\u06e1\u06d8\u06e0\u06e0\u06e0\u06d9\u06d9\u06e0\u06e6\u06e0\u06d8\u06db\u06e1\u06db\u06d7\u06d9\u06df\u06db\u06e0\u06d6\u06d8\u06e5\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x305

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x36

    const/16 v2, 0x13e

    const v3, -0x7ea6c492

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06d9\u06df\u06d9\u06d6\u06e6\u06d8\u06dc\u06d6\u06e1\u06e6\u06dc\u06e5\u06d6\u06e0\u06e8\u06e6\u06e1\u06db\u06dc\u06e6\u06da\u06db\u06d9\u06e1\u06d8\u06e7\u06e1\u06e5\u06d8\u06e2\u06d6\u06db\u06da\u06e2\u06d9\u06e5\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e1\u06da\u06db\u06d9\u06da\u06e0\u06da\u06d9\u06d8\u06d7\u06d7\u06d8\u06d8\u06da\u06e6\u06e8\u06d8\u06e5\u06e4\u06df\u06d9\u06ec\u06e1\u06d8\u06e0\u06e0\u06e8\u06d8\u06e8\u06db\u06db\u06df\u06df\u06e5\u06d8\u06e2\u06da\u06d6\u06d8\u06eb\u06e4\u06e8\u06d8\u06e7\u06e7\u06e5\u06d6\u06d7\u06e4\u06d6\u06e7\u06dc\u06d6\u06e8\u06d8\u06df\u06df\u06d8\u06eb\u06d6\u06e4"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/ScriptLog;->file:Ljava/io/File;

    const-string v0, "\u06e7\u06d8\u06d8\u06eb\u06e4\u06d9\u06db\u06e6\u06d8\u06e6\u06d8\u06dc\u06d8\u06d8\u06e7\u06d9\u06dc\u06d7\u06e7\u06dc\u06db\u06e2\u06e2\u06e5\u06d6\u06d8\u06df\u06eb\u06da\u06e2\u06ec\u06e4\u06df\u06dc\u06df\u06e2\u06e0\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x72b1dde9 -> :sswitch_0
        -0x326c769f -> :sswitch_3
        0x3926bad5 -> :sswitch_2
        0x67bb7aa2 -> :sswitch_1
    .end sparse-switch
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06e1\u06d7\u06e1\u06d8\u06e8\u06e1\u06e5\u06d9\u06db\u06dc\u06d8\u06db\u06e7\u06da\u06e4\u06e1\u06e0\u06d7\u06d9\u06d7\u06eb\u06e8\u06e8\u06dc\u06e7\u06ec\u06d6\u06e6\u06d9\u06e4\u06e6\u06e4\u06d9\u06e4\u06db\u06d8\u06e7\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x393

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x8f

    const/16 v2, 0x1fb

    const v3, 0x15f11dd2

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06d7\u06e0\u06d9\u06e0\u06e6\u06d8\u06df\u06eb\u06ec\u06da\u06db\u06e0\u06e2\u06df\u06dc\u06d8\u06da\u06e4\u06e4\u06d8\u06e0\u06d8\u06e7\u06e8\u06dc\u06db\u06d8\u06d8\u06da\u06ec\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e0\u06e7\u06db\u06e4\u06e4\u06e6\u06da\u06d9\u06db\u06d8\u06e8\u06eb\u06eb\u06da\u06e1\u06eb\u06e8\u06e7\u06d8\u06e4\u06d9\u06e5\u06d8\u06e6\u06d8\u06d9\u06e5\u06e4\u06e6\u06d8\u06db\u06d7\u06e6\u06d8\u06e5\u06e6\u06d7\u06d9\u06e5\u06e2\u06da\u06e1\u06dc\u06e6\u06d7\u06d9\u06d9\u06e1\u06d6\u06d8\u06e8\u06e7\u06d9"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/ScriptLog;->name:Ljava/lang/String;

    const-string v0, "\u06e6\u06e5\u06e8\u06d8\u06d6\u06e6\u06e7\u06dc\u06eb\u06e0\u06d8\u06e1\u06e5\u06dc\u06db\u06e6\u06e7\u06e5\u06e1\u06d8\u06d7\u06e0\u06dc\u06db\u06df\u06db\u06e6\u06e1\u06da\u06da\u06da\u06db\u06d7\u06e0\u06e6\u06df\u06e5\u06dc\u06d8\u06db\u06d9\u06e5\u06eb\u06ec\u06e5"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3b8b997a -> :sswitch_3
        -0x364bfe05 -> :sswitch_2
        -0x2dadb125 -> :sswitch_1
        0x12ca776a -> :sswitch_0
    .end sparse-switch
.end method

.method public setSelect(Z)V
    .locals 4

    const-string v0, "\u06ec\u06da\u06d7\u06e5\u06e0\u06df\u06e2\u06e0\u06e8\u06df\u06df\u06d8\u06df\u06e0\u06e4\u06e8\u06df\u06dc\u06d7\u06e8\u06e1\u06d8\u06e5\u06eb\u06d6\u06d8\u06da\u06d8\u06e4\u06e7\u06e4\u06db\u06d9\u06e7\u06e8\u06eb\u06d8\u06e8\u06d9\u06da\u06e2\u06e1\u06e6\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10b

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2e9

    const/16 v2, 0x260

    const v3, -0x19c42507

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06d8\u06e8\u06e6\u06ec\u06e8\u06db\u06db\u06eb\u06da\u06e8\u06d8\u06e0\u06dc\u06d7\u06d6\u06e4\u06e4\u06da\u06e7\u06d8\u06e7\u06e8\u06e6\u06d8\u06da\u06dc\u06d7\u06e7\u06db\u06d9"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06eb\u06d7\u06e2\u06e1\u06e5\u06e5\u06e2\u06e2\u06e5\u06da\u06e6\u06e5\u06e7\u06e7\u06d9\u06db\u06df\u06e6\u06d8\u06d9\u06e0\u06e1\u06e2\u06dc\u06e7\u06d8\u06e8\u06e8\u06da\u06d7\u06e8\u06dc\u06d6\u06df\u06e8\u06e8\u06d6\u06e2\u06e6\u06e8\u06e6\u06d8\u06e6\u06d8\u06db\u06dc\u06e6\u06d6\u06d8\u06d9\u06e2\u06ec\u06dc\u06e5\u06e6\u06d8\u06e8\u06eb\u06e2"

    goto :goto_0

    :sswitch_2
    iput-boolean p1, p0, Lcom/cyjh/elfin/entity/ScriptLog;->isSelect:Z

    const-string v0, "\u06e8\u06d6\u06e4\u06d6\u06ec\u06dc\u06d8\u06e6\u06e1\u06eb\u06df\u06e2\u06d6\u06d8\u06da\u06df\u06e2\u06d6\u06e1\u06e8\u06d8\u06e1\u06e8\u06dc\u06d8\u06e5\u06e4\u06d9\u06d8\u06e7\u06d8\u06d8\u06d6\u06e5\u06d7\u06e7\u06da\u06eb\u06e2\u06d6\u06db\u06eb\u06d7\u06ec\u06e0\u06da\u06d8\u06d6\u06d7\u06e1\u06dc\u06e1\u06e6\u06e7\u06e2\u06e8\u06df\u06eb\u06d8\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x69d889c4 -> :sswitch_2
        0x42ab83e -> :sswitch_0
        0x7b0bac93 -> :sswitch_1
        0x7bb91525 -> :sswitch_3
    .end sparse-switch
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06e1\u06ec\u06dc\u06d8\u06e2\u06d7\u06d9\u06d6\u06d7\u06d8\u06d8\u06e8\u06e0\u06e2\u06e4\u06d8\u06dc\u06dc\u06e1\u06e6\u06e1\u06d8\u06eb\u06dc\u06e0\u06eb\u06d7\u06e7\u06d6\u06e0\u06d9\u06e1\u06e8\u06db\u06d8\u06e6\u06d6\u06e0\u06db\u06d6\u06d8\u06da\u06e1\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2c5

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3d1

    const/16 v2, 0x1c0

    const v3, -0x5fa2989e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e1\u06db\u06e6\u06e4\u06d7\u06d8\u06d7\u06da\u06e1\u06df\u06e0\u06e5\u06d9\u06e0\u06da\u06e6\u06d6\u06d9\u06d6\u06e8\u06e6\u06d6\u06d6\u06d8\u06db\u06d8\u06d7\u06db\u06e8\u06e5\u06d8\u06e7\u06e6\u06df\u06e7\u06d7\u06df\u06db\u06e4\u06d6\u06d8\u06df\u06d6\u06ec\u06db\u06da\u06ec\u06e7\u06e4\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06e5\u06e7\u06df\u06ec\u06d6\u06e8\u06da\u06da\u06d7\u06d8\u06e6\u06d7\u06d6\u06ec\u06e6\u06e2\u06d6\u06e6\u06e8\u06df\u06e1\u06e5\u06e0\u06e2\u06df\u06dc\u06d8\u06e4\u06e5\u06e4\u06d6\u06e1\u06e5\u06d7\u06eb\u06db\u06e8\u06ec\u06ec\u06e0\u06e2\u06dc\u06d8\u06e2\u06da\u06e6\u06d8\u06e2\u06eb\u06da"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/ScriptLog;->size:Ljava/lang/String;

    const-string v0, "\u06e6\u06e1\u06e6\u06d8\u06d9\u06e8\u06e4\u06db\u06ec\u06d6\u06d8\u06d7\u06dc\u06e0\u06d8\u06e6\u06eb\u06ec\u06d9\u06e7\u06e4\u06df\u06da\u06e7\u06dc\u06ec\u06db\u06d6\u06e6\u06d8\u06d6\u06da\u06e7\u06d6\u06e5\u06d6\u06d8\u06e7\u06d8\u06e4\u06db\u06d7\u06e5\u06d8\u06e7\u06ec\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ec3924f -> :sswitch_3
        -0x46569f5d -> :sswitch_1
        -0x652d993 -> :sswitch_0
        0x594d29d7 -> :sswitch_2
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e2\u06eb\u06eb\u06e8\u06e5\u06e2\u06e0\u06e7\u06e2\u06d6\u06d8\u06d8\u06e2\u06db\u06e5\u06e1\u06e5\u06d8\u06d6\u06df\u06d8\u06e4\u06da\u06dc\u06d8\u06e5\u06d9\u06ec\u06e6\u06e8\u06eb\u06dc\u06e1\u06e0\u06dc\u06e1\u06e8\u06d8\u06e4\u06d8\u06e7\u06d9\u06d6\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x3f

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x1db

    const/16 v3, 0x34a

    const v4, 0x4e703166

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06d9\u06d6\u06e1\u06e6\u06da\u06e4\u06eb\u06e1\u06d8\u06ec\u06dc\u06e2\u06d9\u06d8\u06d6\u06e4\u06eb\u06e8\u06da\u06e7\u06e6\u06e2\u06d8\u06d9\u06e4\u06da\u06e7\u06d8\u06ec\u06e5\u06e6\u06e6\u06e6\u06e6\u06dc"

    goto :goto_0

    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06d9\u06d7\u06e5\u06d8\u06e8\u06e6\u06e5\u06d8\u06db\u06e7\u06d8\u06d8\u06e1\u06e6\u06e6\u06e2\u06eb\u06d8\u06d8\u06e0\u06e1\u06e6\u06d8\u06d7\u06e8\u06e5\u06e2\u06d8\u06e8\u06e8\u06dc\u06da\u06d6\u06e2\u06e1"

    goto :goto_0

    :sswitch_2
    const-string v0, "ScriptLog [size="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e2\u06e1\u06e0\u06dc\u06e2\u06e7\u06d7\u06e1\u06d8\u06d7\u06db\u06dc\u06dc\u06eb\u06e1\u06d8\u06da\u06df\u06d9\u06da\u06e7\u06dc\u06d6\u06e6\u06e1\u06e5\u06ec\u06e1\u06e7\u06dc\u06e5\u06e5\u06e0\u06e1\u06d8\u06e2\u06eb\u06ec\u06e6\u06eb\u06d9\u06e4\u06d7\u06e2\u06e1\u06d8\u06d8\u06df\u06e1\u06d8"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->size:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d8\u06d7\u06d7\u06e1\u06ec\u06db\u06e5\u06d7\u06e0\u06e0\u06d7\u06db\u06df\u06e4\u06db\u06ec\u06e7\u06d9\u06d7\u06d7\u06d7\u06db\u06e5\u06d8\u06d9\u06d8\u06ec\u06e5\u06e0\u06d8\u06d9\u06e1\u06e4\u06da\u06e6\u06d6\u06df\u06df\u06e8\u06d8\u06e8\u06dc\u06e2\u06e7\u06e6\u06d8\u06d8\u06da\u06d6\u06ec\u06d9\u06e2\u06e1\u06e4\u06e2\u06e8\u06d8"

    goto :goto_0

    :sswitch_4
    const-string v0, ", name="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06da\u06d6\u06d6\u06e7\u06d8\u06e5\u06e5\u06e8\u06db\u06e1\u06d7\u06d6\u06d8\u06dc\u06eb\u06e7\u06da\u06dc\u06e5\u06e5\u06d8\u06e8\u06d8\u06e7\u06d8\u06d9\u06d8\u06d8\u06e1\u06da\u06e6\u06e7\u06d8"

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06db\u06e5\u06e1\u06e2\u06db\u06d8\u06d8\u06d7\u06da\u06df\u06df\u06db\u06e2\u06ec\u06e8\u06d8\u06db\u06e1\u06e4\u06eb\u06df\u06da\u06e5\u06e0\u06da\u06ec\u06db\u06dc\u06df\u06ec"

    goto :goto_0

    :sswitch_6
    const-string v0, ", file="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e1\u06e7\u06e2\u06d6\u06e6\u06d8\u06e2\u06e6\u06e5\u06d8\u06e6\u06db\u06e4\u06d8\u06d7\u06da\u06db\u06da\u06db\u06e1\u06dc\u06e1\u06d7\u06d8\u06da\u06e0\u06e2\u06da\u06df\u06e7\u06dc\u06e2\u06e2\u06da\u06df\u06e0\u06e8\u06da\u06ec\u06e6\u06dc\u06eb\u06d6\u06ec\u06ec\u06e4\u06e8\u06d8"

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->file:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e1\u06ec\u06d8\u06d8\u06db\u06df\u06e7\u06e5\u06e6\u06da\u06d7\u06e5\u06e0\u06dc\u06e1\u06e7\u06d8\u06db\u06d7\u06d6\u06e6\u06ec\u06e1\u06e1\u06e5\u06e8\u06d8\u06d6\u06e4\u06e4\u06db\u06d7\u06e4\u06d7\u06e8\u06da\u06da\u06e0\u06da\u06e5\u06d8\u06d6\u06e2\u06df\u06eb\u06e6\u06ec\u06e2\u06db\u06e8\u06d8\u06e7\u06d7\u06eb\u06e6\u06d6\u06e5"

    goto :goto_0

    :sswitch_8
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e5\u06e8\u06dc\u06d8\u06e2\u06ec\u06db\u06e2\u06d6\u06e7\u06d8\u06e6\u06db\u06db\u06e8\u06dc\u06db\u06e7\u06e0\u06db\u06e6\u06e1\u06d8\u06db\u06e6\u06db\u06e5\u06d7\u06d6\u06dc\u06db\u06e5\u06d8"

    goto :goto_0

    :sswitch_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x68fd85f3 -> :sswitch_3
        -0x6391e32f -> :sswitch_9
        -0x45bc1d80 -> :sswitch_4
        -0x16cb11ae -> :sswitch_5
        0x15e5eecd -> :sswitch_6
        0x279a7e90 -> :sswitch_7
        0x4a96b105 -> :sswitch_8
        0x55275474 -> :sswitch_2
        0x66b34c83 -> :sswitch_1
        0x6cd306be -> :sswitch_0
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "\u06e6\u06dc\u06e8\u06e0\u06e2\u06e1\u06db\u06d8\u06d6\u06df\u06e8\u06eb\u06e7\u06d6\u06dc\u06dc\u06e1\u06e1\u06e5\u06df\u06d6\u06e8\u06d7\u06da\u06d6\u06d8\u06d8\u06d7\u06d9\u06e8\u06d8\u06eb\u06e2\u06e5\u06d8\u06e5\u06df\u06e6\u06ec\u06eb\u06d8\u06d8\u06e0\u06d9\u06df\u06df\u06d6\u06d8\u06eb\u06e2\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x11c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x260

    const/16 v2, 0x81

    const v3, -0x77f3d7b4

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06dc\u06e2\u06e0\u06ec\u06d6\u06eb\u06e2\u06e8\u06d8\u06e4\u06e6\u06e6\u06e2\u06dc\u06e1\u06d8\u06eb\u06e4\u06d6\u06d8\u06d7\u06e8\u06e8\u06d9\u06e1\u06e1\u06d8\u06d7\u06d8\u06e5\u06d8\u06e1\u06e0\u06dc\u06d6\u06e7\u06d7\u06e1\u06e4\u06eb\u06d7\u06db\u06df\u06db\u06d8\u06df\u06db\u06df\u06df\u06da\u06d7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d8\u06e7\u06d7\u06dc\u06e4\u06e5\u06e1\u06e7\u06dc\u06e5\u06e4\u06d6\u06d8\u06e5\u06da\u06d6\u06d7\u06e6\u06d7\u06d9\u06e8\u06e6\u06e2\u06d9\u06e0\u06d6\u06e1\u06d7\u06dc\u06d6\u06e6\u06e1\u06db\u06ec\u06d7\u06db\u06e8\u06e6\u06d6\u06e6\u06db\u06dc\u06e8\u06d6\u06da\u06e7\u06e4\u06e2\u06e6\u06d8\u06e7\u06d8\u06e6\u06da\u06e1\u06e2"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e7\u06e1\u06d7\u06e6\u06e5\u06eb\u06e1\u06e8\u06d9\u06d9\u06dc\u06da\u06e1\u06e0\u06e6\u06d8\u06eb\u06e0\u06db\u06d8\u06d9\u06d9\u06da\u06df\u06e8\u06d8\u06e2\u06db\u06e0\u06d6\u06da\u06eb\u06d7\u06e6\u06da\u06e5\u06ec\u06e5\u06db\u06d8\u06df\u06da\u06e5\u06e0\u06e7\u06e2\u06d8\u06d8\u06d8\u06da\u06d8\u06d8\u06e2\u06e1\u06e5\u06d8\u06da\u06e5\u06e1"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->size:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06df\u06e8\u06dc\u06e0\u06e1\u06e6\u06d8\u06e0\u06d9\u06da\u06d7\u06ec\u06e0\u06d8\u06db\u06e8\u06e7\u06da\u06d6\u06d6\u06e6\u06d8\u06e1\u06ec\u06db\u06eb\u06e8\u06e1\u06e8\u06df\u06e2\u06d6\u06df\u06e5\u06d8\u06e7\u06df\u06df\u06d8\u06eb\u06e8\u06e2\u06e4\u06d6\u06d8"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06ec\u06d7\u06e6\u06d6\u06e0\u06ec\u06df\u06e7\u06e4\u06d6\u06eb\u06db\u06d9\u06e2\u06df\u06e6\u06eb\u06db\u06e1\u06db\u06d9\u06d7\u06dc\u06e7\u06e8\u06e7\u06eb\u06dc\u06dc"

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->file:Ljava/io/File;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    const-string v0, "\u06eb\u06e6\u06e4\u06df\u06e0\u06e1\u06d8\u06e7\u06d7\u06e8\u06e8\u06db\u06df\u06ec\u06e6\u06d9\u06e7\u06e6\u06da\u06e6\u06e5\u06e4\u06d9\u06da\u06d9\u06da\u06e0\u06e0\u06eb\u06e5\u06e6\u06e4\u06e2\u06e4\u06e0\u06e2\u06e1\u06ec\u06d9\u06e0\u06d9\u06d6\u06e2\u06e7\u06e6\u06d7\u06d9\u06e4\u06e6"

    goto :goto_0

    :sswitch_6
    iget-boolean v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->isSelect:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    const-string v0, "\u06da\u06e7\u06eb\u06df\u06e7\u06e1\u06e5\u06d7\u06e4\u06e1\u06e5\u06e8\u06d8\u06e6\u06eb\u06d8\u06d8\u06e4\u06d9\u06df\u06e1\u06e2\u06e7\u06ec\u06e6\u06e6\u06db\u06e6\u06e6\u06e5\u06d9\u06e4\u06dc\u06e4\u06e0\u06e7\u06d8\u06ec\u06d8\u06e8\u06e1\u06d8\u06d7\u06d6\u06e4\u06e1\u06e4\u06df\u06d7\u06e5\u06d6\u06d8"

    goto :goto_0

    :sswitch_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f9f9b06 -> :sswitch_4
        -0x5d1fd717 -> :sswitch_5
        -0x381efdc0 -> :sswitch_0
        -0x2be5ed76 -> :sswitch_1
        -0x165c14e9 -> :sswitch_7
        0x3fe17b0a -> :sswitch_2
        0x58606064 -> :sswitch_3
        0x78aee9f5 -> :sswitch_6
    .end sparse-switch
.end method
