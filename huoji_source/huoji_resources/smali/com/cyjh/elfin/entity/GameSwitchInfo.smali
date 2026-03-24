.class public Lcom/cyjh/elfin/entity/GameSwitchInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cyjh/elfin/entity/GameSwitchInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Id:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public Path:Ljava/lang/String;

.field public Type:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06e5\u06eb\u06da\u06df\u06e7\u06e1\u06eb\u06d9\u06d6\u06d8\u06e5\u06ec\u06e0\u06ec\u06e2\u06d6\u06e0\u06d9\u06e8\u06d8\u06d7\u06df\u06d8\u06d8\u06d8\u06e5\u06da\u06e4\u06d9\u06d7\u06e4\u06e7\u06e0\u06e5\u06e8\u06e2\u06e6\u06e5\u06d9\u06e0\u06eb\u06d8\u06d8\u06e8\u06db\u06df\u06dc\u06e1\u06ec\u06ec\u06e4\u06d8\u06d8\u06e2\u06d7\u06e8\u06db\u06e7\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x9e

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x32b

    const/16 v2, 0x5e

    const v3, -0x1a3150e5

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/cyjh/elfin/entity/GameSwitchInfo$1;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/GameSwitchInfo$1;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/entity/GameSwitchInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "\u06e2\u06eb\u06d6\u06e2\u06dc\u06db\u06d8\u06da\u06e5\u06d8\u06e7\u06e2\u06e1\u06d8\u06d9\u06e4\u06e7\u06eb\u06d9\u06e6\u06df\u06ec\u06d6\u06e7\u06dc\u06d8\u06da\u06e2\u06dc\u06e2\u06d6\u06d8\u06db\u06eb\u06e5\u06d8\u06df\u06eb\u06d9"

    goto :goto_0

    :sswitch_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c6db987 -> :sswitch_1
        -0x2bad5a23 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/GameSwitchInfo;->Id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/GameSwitchInfo;->Name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/GameSwitchInfo;->Type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/GameSwitchInfo;->Path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    const-string v0, "\u06e4\u06d7\u06d6\u06d8\u06d7\u06e4\u06e2\u06e2\u06ec\u06e1\u06d8\u06da\u06d7\u06e5\u06d9\u06e4\u06e0\u06e5\u06e0\u06e7\u06ec\u06e1\u06e8\u06eb\u06d6\u06d8\u06e8\u06d7\u06e1\u06d8\u06df\u06d9\u06e8\u06d8\u06e2\u06da\u06e1\u06d8\u06e0\u06e4\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x26

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x30f

    const/16 v2, 0x67

    const v3, 0xcc58be6

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06d8\u06dc\u06d7\u06e0\u06e5\u06e1\u06db\u06d8\u06eb\u06d6\u06e7\u06ec\u06e5\u06d8\u06da\u06d9\u06e6\u06d8\u06d8\u06da\u06dc\u06d8\u06e6\u06ec\u06e2\u06e1\u06e1\u06e7\u06d8\u06e0\u06e4\u06e8\u06d8\u06e1\u06db\u06db\u06e8\u06e1\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x389dea60 -> :sswitch_1
        0x4342c734 -> :sswitch_0
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x27

    const/4 v1, 0x0

    const-string v0, "\u06e8\u06dc\u06e5\u06d8\u06d7\u06e7\u06d6\u06d8\u06e8\u06d6\u06e2\u06e8\u06e5\u06e5\u06d8\u06ec\u06e6\u06df\u06e1\u06df\u06e0\u06eb\u06ec\u06e7\u06d8\u06ec\u06da\u06e0\u06e6\u06d8\u06e4\u06d8\u06d6\u06d6\u06e6\u06e1\u06e7\u06eb\u06d7\u06d8\u06e8\u06e1\u06e2\u06e2\u06e7\u06e4\u06e4\u06e1\u06ec\u06ec\u06e4\u06e8\u06d7\u06e8\u06d8\u06e6\u06e8\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xbd

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x2c9

    const/16 v3, 0xb9

    const v4, -0xbc0d98c

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06dc\u06db\u06da\u06da\u06eb\u06dc\u06ec\u06df\u06d9\u06e0\u06d7\u06e7\u06e8\u06e2\u06e1\u06d7\u06e1\u06d8\u06e8\u06d7\u06ec\u06da\u06ec\u06da\u06e1\u06df\u06e0\u06e2\u06d8\u06d8\u06d8\u06e6\u06dc\u06e2\u06e0\u06d6\u06d9\u06d8\u06da\u06ec\u06d6\u06d7\u06e6\u06ec\u06d9\u06db\u06e8\u06eb\u06d8\u06d8\u06da\u06eb\u06dc\u06d8\u06e6\u06d8\u06ec"

    goto :goto_0

    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06e2\u06eb\u06e5\u06d8\u06e1\u06eb\u06eb\u06e7\u06e2\u06d8\u06ec\u06e2\u06ec\u06e5\u06da\u06d9O\u06df\u06eb\u06e1\u06d8\u06e6\u06df\u06da\u06ec\u06dc\u06ec\u06da\u06e2\u06e1\u06dc\u06e0\u06d8\u06d8\u06da\u06e6\u06e7\u06d9\u06ec\u06d8\u06db\u06d8\u06d8\u06d9\u06d8\u06d8\u06dc\u06e0\u06db\u06d8\u06e7\u06e4\u06e6"

    goto :goto_0

    :sswitch_2
    const-string v0, "GameSwitchInfo{Id=\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d9\u06eb\u06df\u06e5\u06db\u06d9\u06d7\u06ec\u06eb\u06df\u06e0\u06d6\u06d8\u06e4\u06d7\u06d8\u06d8\u06d8\u06ec\u06e1\u06d8\u06dc\u06e4\u06e8\u06e8\u06dc\u06eb\u06d6\u06eb\u06e6\u06e0\u06d7\u06dc\u06d8"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/entity/GameSwitchInfo;->Id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e0\u06e0\u06dc\u06d8\u06e8\u06da\u06d6\u06e0\u06da\u06dc\u06e8\u06dc\u06e6\u06d8\u06d9\u06d6\u06d7\u06da\u06e4\u06ec\u06dc\u06e1\u06d6\u06da\u06e5\u06dc\u06d8\u06d9\u06e5\u06d6\u06da\u06e7\u06d6\u06d8"

    goto :goto_0

    :sswitch_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\u06e8\u06ec\u06d9\u06d6\u06d6\u06d8\u06d8\u06e2\u06e6\u06d8\u06e4\u06e5\u06d8\u06e4\u06d7\u06eb\u06e2\u06df\u06ec\u06ec\u06d7\u06df\u06eb\u06e7\u06dc\u06df\u06e6\u06d8\u06df\u06e1\u06e4\u06da\u06db\u06e6\u06d8\u06dc\u06dc\u06dc\u06e0\u06e4\u06e4\u06db\u06e1\u06e7\u06d8\u06eb\u06d6\u06ec\u06da\u06d8\u06e4"

    goto :goto_0

    :sswitch_5
    const-string v0, ", Name=\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06eb\u06e2\u06e2\u06e1\u06d9\u06e5\u06d8\u06ec\u06e5\u06e7\u06d8\u06e6\u06e4\u06e7\u06eb\u06e6\u06e1\u06d8\u06e0\u06e8\u06d8\u06d8\u06d6\u06d6\u06dc\u06d8\u06e4\u06e8\u06d8\u06e4\u06e5\u06d8\u06e1\u06e7\u06d6\u06e0\u06e2\u06e8\u06d8\u06e8\u06e8\u06e8\u06e6\u06e5\u06d6\u06e6\u06e6\u06d7\u06e8\u06eb\u06dc\u06d8\u06e1\u06d8"

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/cyjh/elfin/entity/GameSwitchInfo;->Name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d9\u06ec\u06d8\u06d8\u06e5\u06d8\u06da\u06e6\u06e5\u06ec\u06eb\u06e2\u06da\u06d9\u06e5\u06e7\u06d8\u06e2\u06d6\u06da\u06e4\u06d7\u06e0\u06e0\u06d6\u06d6\u06e5\u06d6\u06d8\u06e2\u06d7\u06dc\u06d8\u06d9\u06da\u06dc\u06d6\u06e6\u06da\u06e2\u06ec\u06dc\u06e2\u06ec\u06e7\u06dc\u06da\u06e4\u06dc"

    goto :goto_0

    :sswitch_7
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\u06dc\u06da\u06e4\u06e8\u06e1\u06e5\u06e6\u06da\u06d7\u06d8\u06d6\u06e6\u06d8\u06e8\u06d9\u06d9\u06e5\u06d6\u06e5\u06d8\u06d9\u06e2\u06e7\u06da\u06e7\u06eb\u06e4\u06e2\u06e7\u06e7\u06e6\u06d7\u06e7\u06d9\u06e8\u06d8\u06e6\u06df\u06e6\u06e4\u06e0\u06d8\u06d8\u06d7\u06e6\u06e8\u06d8"

    goto :goto_0

    :sswitch_8
    const-string v0, ", Type=\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d7\u06df\u06dc\u06d8\u06e1\u06dc\u06d8\u06e2\u06db\u06d8\u06ec\u06eb\u06dc\u06e5\u06d6\u06d8\u06d7\u06d9\u06dc\u06e7\u06d8\u06db\u06e7\u06dc\u06d8\u06db\u06ec\u06e6\u06d8\u06e1\u06e0\u06ec\u06d7\u06d8\u06e0\u06eb\u06d8\u06e4\u06d7\u06e6\u06d8\u06e7\u06e7\u06e5\u06d8\u06eb\u06da\u06e2\u06e1\u06e5\u06d6\u06d8"

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/cyjh/elfin/entity/GameSwitchInfo;->Type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d6\u06d6\u06d6\u06df\u06d8\u06e5\u06d8\u06e7\u06df\u06db\u06da\u06e0\u06d9\u06e2\u06df\u06e8\u06e2\u06da\u06dc\u06da\u06db\u06df\u06d6\u06e7\u06ec\u06e7\u06d6\u06e6\u06d8\u06e7\u06d6\u06e0\u06d8\u06eb\u06eb\u06eb\u06da\u06e1\u06e0\u06e2\u06d7\u06e4\u06e5\u06e5\u06e0\u06d7\u06d9\u06e6\u06dc\u06e5\u06d8\u06e6\u06da\u06d9\u06db\u06ec\u06df"

    goto :goto_0

    :sswitch_a
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\u06e5\u06e4\u06d8\u06d8\u06e1\u06e4\u06e8\u06d8\u06d9\u06e4\u06e1\u06d8\u06eb\u06df\u06e6\u06e1\u06d6\u06db\u06e5\u06da\u06e0\u06e8\u06e4\u06da\u06d8\u06e7\u06d6\u06ec\u06da\u06dc\u06d8\u06e0\u06db\u06d8\u06d8\u06db\u06e5\u06ec\u06dc\u06dc\u06d6\u06ec\u06da\u06d7\u06e2\u06e6\u06d9"

    goto :goto_0

    :sswitch_b
    const-string v0, ", Path=\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06dc\u06e8\u06d8\u06d7\u06ec\u06dc\u06e4\u06e0\u06dc\u06db\u06e1\u06d8\u06eb\u06e1\u06e2\u06d6\u06d7\u06da\u06dc\u06d8\u06d9\u06ec\u06d6\u06da\u06df\u06eb\u06e1\u06d8\u06d8\u06d6\u06e0\u06d9\u06e8\u06d6\u06d6"

    goto :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/cyjh/elfin/entity/GameSwitchInfo;->Path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06ec\u06d6\u06e1\u06e0\u06db\u06e0\u06e2\u06d6\u06da\u06d8\u06e1\u06d8\u06e4\u06d9\u06dc\u06e6\u06e8\u06e0\u06d6\u06e5\u06e4\u06e6\u06e7\u06ec\u06e0\u06e0\u06e4\u06e5\u06dc\u06d8\u06ec\u06d8\u06e0\u06d9\u06e4\u06da\u06e1\u06db\u06e8\u06e5\u06e6\u06da\u06e7\u06e6\u06e4\u06e0\u06d9\u06d9"

    goto :goto_0

    :sswitch_d
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\u06da\u06e6\u06e2\u06e0\u06e2\u06d9\u06e4\u06e4\u06e6\u06e0\u06e8\u06d6\u06d8\u06e5\u06eb\u06e7\u06d9\u06e0\u06e7\u06df\u06da\u06e1\u06e1\u06db\u06d8\u06d9\u06e7\u06e1\u06e1\u06db\u06e2\u06e6\u06e8\u06db\u06e7\u06e4\u06e8\u06d8\u06db\u06e7\u06e5\u06d8\u06d7\u06d9\u06e4\u06d8\u06e4\u06eb\u06e8\u06d6\u06d8"

    goto :goto_0

    :sswitch_e
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\u06d8\u06e0\u06eb\u06db\u06eb\u06ec\u06dc\u06e1\u06e7\u06e2\u06e8\u06dc\u06e2\u06ec\u06e5\u06d8\u06df\u06d7\u06d8\u06e0\u06db\u06e8\u06d8\u06ec\u06d7\u06d9\u06d9\u06e7\u06e7\u06dc\u06ec\u06e6\u06d8\u06ec\u06df\u06e5\u06e6\u06da\u06eb"

    goto :goto_0

    :sswitch_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b527030 -> :sswitch_4
        -0x56ba4845 -> :sswitch_d
        -0x45e92bd6 -> :sswitch_f
        -0x3fd571f8 -> :sswitch_b
        -0x3ad471f1 -> :sswitch_7
        -0x3a33e7c6 -> :sswitch_e
        -0x3883f5b1 -> :sswitch_1
        -0x30efde9b -> :sswitch_9
        -0x27265fda -> :sswitch_5
        -0x6ee88ab -> :sswitch_3
        0x53c54af -> :sswitch_0
        0x6a61207 -> :sswitch_6
        0x9c23e98 -> :sswitch_c
        0xf200ad3 -> :sswitch_2
        0x1c9b3621 -> :sswitch_8
        0x6e28c87a -> :sswitch_a
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "\u06e4\u06e0\u06e8\u06d8\u06e8\u06dc\u06e2\u06d9\u06da\u06d7\u06e8\u06db\u06d6\u06d8\u06e6\u06db\u06e2\u06d9\u06db\u06d6\u06d8\u06e6\u06d6\u06e1\u06e7\u06df\u06db\u06dc\u06ec\u06d9\u06d7\u06db\u06dc\u06d8\u06e2\u06e6\u06dc\u06d9\u06e6\u06e5\u06e7\u06e4\u06e6\u06d8\u06d7\u06e8\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x227

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x176

    const/16 v2, 0x38a

    const v3, 0x3a28a209

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e1\u06e6\u06d8\u06d8\u06d9\u06e5\u06d8\u06df\u06eb\u06e6\u06d7\u06d6\u06d7\u06da\u06e6\u06e0\u06e8\u06e6\u06d8\u06d8\u06d9\u06d8\u06da\u06d8\u06e5\u06d8\u06e0\u06dc\u06e6\u06ec\u06d7\u06e2"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06dc\u06e1\u06e0\u06e8\u06e0\u06df\u06e4\u06ec\u06e5\u06d8\u06ec\u06e7\u06e6\u06d8\u06d9\u06e7\u06e7\u06e8\u06e2\u06d7\u06d7\u06e5\u06e2\u06e0\u06eb\u06d8\u06e4\u06e0\u06e0\u06e4\u06e7\u06e1\u06e4\u06d6\u06eb\u06e5\u06d8\u06e1\u06e7\u06e6\u06ec\u06e2\u06d7\u06e8\u06dc\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e1\u06e7\u06df\u06eb\u06e7\u06dc\u06d8\u06e0\u06ec\u06d6\u06d8\u06e1\u06e7\u06df\u06e1\u06e5\u06e8\u06d8\u06e5\u06e0\u06db\u06e5\u06e6\u06e6\u06d8\u06d7\u06e5\u06d8\u06d8\u06d6\u06d6\u06e8\u06d6\u06e2\u06ec\u06e4\u06d8\u06e8\u06e1\u06dc\u06e5\u06d8\u06d6\u06d9\u06ec\u06e5\u06eb\u06e8\u06d8\u06e0\u06d9\u06d8\u06d7\u06dc\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/entity/GameSwitchInfo;->Id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06e8\u06d6\u06dc\u06e4\u06e2\u06d6\u06d8\u06e5\u06eb\u06d8\u06d8\u06da\u06e6\u06e1\u06e4\u06e1\u06e4\u06e8\u06db\u06e2\u06d9\u06da\u06d8\u06d8\u06dc\u06d9\u06db\u06eb\u06df\u06e6\u06db\u06e6\u06df\u06e2\u06ec\u06ec\u06d8\u06db\u06e5\u06da\u06d6\u06dc\u06d8\u06e6\u06eb\u06e6"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/entity/GameSwitchInfo;->Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06e0\u06eb\u06e7\u06e8\u06d6\u06d8\u06d8\u06e6\u06e6\u06e5\u06d8\u06da\u06e7\u06e1\u06d8\u06e2\u06e4\u06da\u06d6\u06db\u06e6\u06eb\u06e1\u06d6\u06d8\u06e0\u06e0\u06db\u06d6\u06e0\u06d8\u06d8\u06d8\u06da\u06da"

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/entity/GameSwitchInfo;->Type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06e0\u06d6\u06e8\u06e5\u06db\u06da\u06db\u06e0\u06e8\u06e1\u06eb\u06d6\u06d8\u06da\u06db\u06d8\u06e2\u06e6\u06e8\u06d8\u06e0\u06da\u06e0\u06e6\u06eb\u06ec\u06e2\u06d8\u06e2\u06d7\u06d6\u06e0\u06e0\u06e2\u06e4\u06ec\u06e7\u06e7\u06e7\u06da\u06d9\u06e6\u06da\u06da\u06ec\u06e1\u06e4\u06ec\u06e0"

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/cyjh/elfin/entity/GameSwitchInfo;->Path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06d6\u06d8\u06d9\u06e7\u06e1\u06da\u06eb\u06e7\u06e1\u06e7\u06e1\u06d6\u06d8\u06e2\u06df\u06df\u06db\u06e6\u06eb\u06e6\u06e7\u06eb\u06db\u06e2\u06e8\u06d7\u06df\u06d7\u06e7\u06dc\u06db\u06e2\u06d6\u06d9\u06d6\u06e1\u06e1\u06d8\u06ec\u06d9\u06ec\u06d6\u06df\u06e5\u06d8\u06e0\u06d9\u06d9\u06e2\u06db\u06d8\u06db\u06e0\u06d6\u06d8\u06ec\u06d6\u06da"

    goto :goto_0

    :sswitch_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5d9140d9 -> :sswitch_6
        -0x34b7ca24 -> :sswitch_3
        0x90d8de7 -> :sswitch_5
        0xca87721 -> :sswitch_4
        0x5af0e998 -> :sswitch_0
        0x62dc04d4 -> :sswitch_2
        0x66e3aca4 -> :sswitch_1
        0x7d8cfba0 -> :sswitch_7
    .end sparse-switch
.end method
