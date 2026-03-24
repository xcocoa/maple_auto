.class public Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/RootRelatedEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RootRelatedData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Id:Ljava/lang/String;

.field public Image:Ljava/lang/String;

.field public PackageName:Ljava/lang/String;

.field public Path:Ljava/lang/String;

.field public ScriptName:Ljava/lang/String;

.field public Type:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06e0\u06d6\u06e4\u06db\u06e1\u06d6\u06ec\u06da\u06e4\u06e8\u06d6\u06df\u06e6\u06eb\u06d7\u06e7\u06d7\u06df\u06e2\u06df\u06d8\u06e4\u06e4\u06e1\u06d8\u06d9\u06d6\u06e6\u06d8\u06e1\u06e7\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3f

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2cf

    const/16 v2, 0xc1

    const v3, -0x616ba304

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData$1;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData$1;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "\u06e8\u06df\u06d6\u06e1\u06e6\u06e7\u06d8\u06e8\u06dc\u06d7\u06e8\u06dc\u06e1\u06eb\u06e1\u06dc\u06e4\u06d9\u06e4\u06d7\u06e7\u06dc\u06e1\u06da\u06eb\u06dc\u06d6\u06d6\u06ec\u06e8\u06dc\u06d8\u06ec\u06eb\u06e7\u06eb\u06db\u06d6\u06e2\u06d8\u06df\u06dc\u06e1\u06da"

    goto :goto_0

    :sswitch_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2aeb081a -> :sswitch_0
        0x7e9b0b1d -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;->Id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;->Type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;->Image:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;->Path:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;->PackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;->ScriptName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    const-string v0, "\u06e4\u06e5\u06e7\u06d8\u06e1\u06e5\u06d9\u06d8\u06e7\u06d8\u06d8\u06dc\u06d6\u06da\u06e6\u06da\u06e1\u06db\u06e0\u06eb\u06d7\u06e2\u06d8\u06e2\u06e6\u06df\u06e7\u06db\u06e5\u06e1\u06db\u06e2\u06e4\u06e5\u06e7\u06e2\u06e2\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x34e

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1cd

    const/16 v2, 0xe0

    const v3, 0x58bbb2aa

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06e0\u06e6\u06d8\u06eb\u06e0\u06d7\u06e7\u06ec\u06df\u06db\u06da\u06e6\u06d8\u06df\u06eb\u06d6\u06e5\u06ec\u06dc\u06ec\u06eb\u06e1\u06d8\u06ec\u06dc\u06e7\u06e6\u06e2\u06e6\u06e7\u06d9\u06e2\u06e4\u06d7\u06da\u06ec\u06df\u06e6\u06dc\u06e7\u06df\u06e2\u06da\u06da\u06e4\u06d8\u06d6\u06d8\u06e4\u06e4\u06d7"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc1a3c4b -> :sswitch_1
        0x1fc2a535 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "\u06da\u06e7\u06da\u06e0\u06da\u06df\u06e4\u06e8\u06e0\u06d6\u06e6\u06d8\u06e6\u06dc\u06e2\u06eb\u06d8\u06d8\u06e2\u06d8\u06e0\u06df\u06df\u06e6\u06d8\u06da\u06e8\u06d9\u06e1\u06e2\u06e7\u06d6\u06e4\u06d6\u06e7\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x18e

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x248

    const/16 v2, 0x69

    const v3, 0x6f29b9cf

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06e2\u06d8\u06d8\u06e8\u06d6\u06d8\u06e4\u06d7\u06e1\u06d8\u06eb\u06dc\u06dc\u06d8\u06e1\u06d7\u06e8\u06d8\u06e1\u06eb\u06e4\u06e0\u06e2\u06e8\u06d8\u06db\u06e2\u06db\u06d8\u06db\u06d9\u06d8\u06e6\u06da"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e0\u06e4\u06e4\u06dc\u06ec\u06d7\u06d7\u06db\u06d9\u06dc\u06db\u06e5\u06e0\u06e2\u06e4\u06ec\u06e4\u06da\u06e5\u06e5\u06d8\u06d9\u06d6\u06d8\u06d8\u06e8\u06e5\u06e0\u06dc\u06d6\u06d8\u06da\u06d9\u06df\u06ec\u06da\u06e6\u06df\u06dc\u06e8\u06d8\u06e8\u06e8\u06d8\u06e4\u06e4\u06d7\u06db\u06d8\u06eb\u06e7\u06e0\u06e8\u06d8\u06d8\u06df\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06d7\u06db\u06d9\u06e2\u06ec\u06dc\u06da\u06e6\u06e7\u06d6\u06ec\u06e7\u06e1\u06ec\u06e1\u06e5\u06df\u06dc\u06d8\u06e1\u06e4\u06dc\u06d8\u06d6\u06e4\u06e8\u06e5\u06e2\u06e0\u06e0\u06d9\u06e5\u06e4\u06d6\u06d8\u06da\u06df\u06d8\u06e4\u06d6\u06e1\u06e5\u06d8\u06e8\u06df\u06e4\u06d6\u06d8\u06e4\u06d7\u06eb"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;->Id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06df\u06e5\u06e1\u06d8\u06e1\u06d9\u06e5\u06da\u06df\u06e1\u06d6\u06ec\u06d9\u06e1\u06e2\u06e8\u06e6\u06d8\u06db\u06ec\u06d6\u06eb\u06d8\u06e8\u06db\u06d7\u06e7\u06dc\u06d8\u06e8\u06da\u06dc\u06d8\u06e5\u06da\u06e8\u06d8\u06eb\u06d6\u06e2\u06df\u06d7\u06dc\u06d7\u06d8\u06dc\u06d8\u06e6\u06d9\u06d9\u06d9\u06d6\u06e7\u06d9\u06e6\u06d8\u06e7\u06e6\u06e6\u06d8"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;->Type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06d8\u06e6\u06eb\u06d7\u06e2\u06dc\u06e2\u06df\u06e4\u06e5\u06d8\u06eb\u06d6\u06e6\u06e0\u06dc\u06e4\u06d7\u06e2\u06d8\u06d8\u06dc\u06eb\u06d8\u06d8\u06eb\u06df\u06d8\u06d8\u06d6\u06d8\u06e8\u06e7\u06dc\u06e6\u06d6\u06e7\u06d7\u06d9\u06da\u06dc\u06d8\u06dc\u06dc\u06e7\u06d8"

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;->Image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06e5\u06e5\u06e8\u06d8\u06ec\u06d9\u06d6\u06ec\u06e2\u06e8\u06d8\u06e7\u06e6\u06e6\u06d8\u06eb\u06d8\u06eb\u06e7\u06d7\u06d6\u06d8\u06d6\u06dc\u06e8\u06da\u06eb\u06e8\u06d8\u06e1\u06e5\u06e6\u06eb\u06d6\u06d6\u06d8\u06eb\u06e4\u06e5\u06ec\u06e7\u06dc\u06d8"

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;->Path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06dc\u06d8\u06ec\u06db\u06d7\u06d6\u06e2\u06ec\u06e5\u06e5\u06e1\u06d6\u06e4\u06db\u06e1\u06dc\u06ec\u06e1\u06df\u06eb\u06eb\u06e1\u06da\u06d9\u06d8\u06da\u06e0\u06e8\u06d6\u06db\u06d9\u06dc\u06d6\u06e6\u06d8\u06d7\u06e0\u06dc\u06d8\u06d6\u06e4\u06db\u06d6\u06da\u06da\u06db\u06e4\u06e8"

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;->PackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06d9\u06dc\u06db\u06da\u06d6\u06e6\u06d8\u06e2\u06e4\u06e0\u06e8\u06d8\u06e8\u06d8\u06da\u06dc\u06d8\u06d7\u06d7\u06e8\u06d8\u06d6\u06d7\u06d9\u06d6\u06d9\u06d8\u06d8\u06e4\u06df\u06da\u06d6\u06e2\u06e4\u06eb\u06ec\u06dc\u06ec\u06e8\u06ec\u06eb\u06e1\u06e5\u06d8\u06eb\u06eb\u06e5\u06d8\u06e5\u06e7\u06d9\u06e2\u06e0\u06e7\u06e0\u06d8\u06e7\u06d8\u06d8\u06e2\u06dc\u06d8"

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;->ScriptName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06e5\u06df\u06ec\u06ec\u06dc\u06e8\u06d8\u06e4\u06dc\u06d6\u06db\u06e7\u06d7\u06e2\u06d6\u06d8\u06d8\u06da\u06e5\u06d8\u06d8\u06dc\u06e2\u06d7\u06e6\u06e5\u06eb\u06e4\u06e6\u06ec\u06df\u06e4\u06d6\u06d8\u06eb\u06e0\u06e2\u06eb\u06df\u06d6\u06d8\u06e2\u06dc\u06e8\u06d8\u06e4\u06e0\u06eb\u06e0\u06d6\u06e0\u06e1\u06d7\u06df"

    goto :goto_0

    :sswitch_9
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d57cba5 -> :sswitch_1
        -0x4029dd4d -> :sswitch_3
        -0x3cb30d14 -> :sswitch_7
        -0x20985c87 -> :sswitch_9
        -0xe7cee4c -> :sswitch_0
        0xa1c58d2 -> :sswitch_2
        0x3901a717 -> :sswitch_6
        0x4a5d5598 -> :sswitch_8
        0x67887aac -> :sswitch_4
        0x78854ec8 -> :sswitch_5
    .end sparse-switch
.end method
