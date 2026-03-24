.class public Lcom/cyjh/elfin/entity/RootRelatedEntity;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cyjh/elfin/entity/RootRelatedEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Code:Ljava/lang/String;

.field public Data:Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;

.field public Msg:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06d8\u06d9\u06db\u06e1\u06ec\u06e5\u06e4\u06d8\u06dc\u06dc\u06d7\u06e1\u06e2\u06d6\u06da\u06e5\u06df\u06db\u06e0\u06d8\u06e7\u06e2\u06d6\u06e8\u06d8\u06d6\u06d9\u06eb\u06d9\u06e1\u06d6\u06db\u06dc\u06eb\u06e4\u06dc\u06e7\u06db\u06e1\u06dc\u06d9\u06db\u06d9\u06dc\u06d7\u06e5\u06d9\u06d6\u06d8\u06d8\u06e0\u06dc\u06da\u06dc\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x37c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1cf

    const/16 v2, 0x2ef

    const v3, -0x32449a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/cyjh/elfin/entity/RootRelatedEntity$1;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/RootRelatedEntity$1;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/entity/RootRelatedEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "\u06e7\u06e7\u06eb\u06d6\u06e7\u06e6\u06e1\u06d9\u06d7\u06d6\u06e5\u06d8\u06e1\u06da\u06eb\u06ec\u06d8\u06e6\u06d7\u06e8\u06d8\u06d8\u06e5\u06ec\u06d7\u06e2\u06e5\u06e7\u06eb\u06d9\u06e6\u06d8\u06d9\u06d6\u06dc\u06e0\u06dc\u06d6"

    goto :goto_0

    :sswitch_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1dcd6cda -> :sswitch_0
        0x5f9f2a26 -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/RootRelatedEntity;->Code:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/RootRelatedEntity;->Msg:Ljava/lang/String;

    const-class v0, Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;

    iput-object v0, p0, Lcom/cyjh/elfin/entity/RootRelatedEntity;->Data:Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    const-string v0, "\u06d7\u06d9\u06da\u06e6\u06dc\u06e7\u06e5\u06e4\u06e8\u06d8\u06eb\u06df\u06df\u06e0\u06d8\u06df\u06ec\u06e7\u06d6\u06d8\u06db\u06d6\u06d8\u06d8\u06ec\u06e7\u06d6\u06d8\u06e1\u06d7\u06da\u06dc\u06e4\u06d8\u06d8\u06e5\u06d9\u06e4\u06e6\u06e8\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x32e

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x19

    const/4 v2, 0x2

    const v3, -0x292bb635

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06da\u06e6\u06eb\u06d7\u06e1\u06d9\u06e5\u06e4\u06dc\u06eb\u06e0\u06e8\u06df\u06e8\u06d8\u06d9\u06d6\u06df\u06e0\u06d8\u06d8\u06e7\u06e8\u06eb\u06df\u06da\u06e1\u06d8\u06d7\u06e6\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x17dde397 -> :sswitch_1
        -0x983d074 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "\u06d9\u06e5\u06e8\u06e6\u06eb\u06eb\u06ec\u06e7\u06e6\u06d8\u06d7\u06e7\u06e6\u06d8\u06da\u06d8\u06dc\u06d8\u06eb\u06e8\u06e6\u06d8\u06dc\u06d7\u06e2\u06d9\u06ec\u06d8\u06d8\u06e7\u06e7\u06e2\u06db\u06e5\u06ec\u06e5\u06e7\u06d6\u06e5\u06e6\u06e8\u06d8\u06d6\u06e6\u06d8\u06d8\u06da\u06d6\u06e7\u06d7\u06df\u06e0\u06e6\u06da\u06e4\u06e4\u06e4\u06e6\u06e2\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1ea

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1d0

    const/16 v2, 0x25e

    const v3, 0x5a664988

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e1\u06d8\u06d8\u06e6\u06e8\u06e7\u06d7\u06dc\u06d9\u06d7\u06eb\u06dc\u06ec\u06e2\u06e6\u06d8\u06df\u06e8\u06e8\u06d8\u06e1\u06d7\u06e6\u06d8\u06d9\u06e2\u06e5\u06d7\u06d9\u06e7\u06e8\u06d7\u06d9"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06d9\u06d7\u06e7\u06d7\u06e7\u06eb\u06e2\u06d9\u06df\u06e4\u06d8\u06eb\u06eb\u06da\u06e2\u06eb\u06da\u06e7\u06d8\u06e7\u06eb\u06d7\u06e0\u06e2\u06d8\u06e1\u06d6\u06eb\u06dc\u06d8\u06eb\u06d8\u06d8\u06e5\u06e6\u06d8\u06db\u06d9\u06d9\u06ec\u06e0\u06e5\u06e1\u06e6\u06e6\u06e6\u06e7\u06e1\u06d8\u06e8\u06dc\u06e6\u06d8\u06d6\u06e4\u06d8"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e5\u06db\u06e8\u06d8\u06e6\u06e1\u06e1\u06d9\u06e2\u06e7\u06d7\u06e6\u06e7\u06d8\u06eb\u06d7\u06e5\u06d8\u06e0\u06da\u06da\u06e7\u06e2\u06e2\u06da\u06da\u06e8\u06d8\u06da\u06e4\u06e0\u06d9\u06df\u06d7\u06d6\u06e8\u06e7\u06d8\u06da\u06d7\u06e4\u06d8\u06eb\u06e7\u06e2\u06eb\u06e5\u06d8\u06dc\u06d9\u06e6\u06eb\u06d6\u06ec"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/entity/RootRelatedEntity;->Code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06ec\u06e0\u06dc\u06eb\u06e1\u06e5\u06e6\u06e4\u06e1\u06d8\u06d6\u06eb\u06db\u06e4\u06df\u06d9\u06d9\u06e4\u06e1\u06e1\u06e7\u06e8\u06df\u06d9\u06d9\u06e5\u06d6\u06e1\u06dc\u06e5\u06e4\u06e7\u06d8\u06d9\u06d6\u06db\u06e6\u06d8\u06d8\u06e8\u06d7\u06e6\u06ec"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/entity/RootRelatedEntity;->Msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06d9\u06ec\u06db\u06e8\u06e8\u06d9\u06eb\u06dc\u06ec\u06df\u06ec\u06dc\u06d8\u06d6\u06dc\u06e1\u06e2\u06e2\u06d8\u06d8\u06e4\u06df\u06e0\u06d6\u06e0\u06dc\u06d8\u06d8\u06eb\u06e6\u06d8\u06ec\u06d6\u06d6\u06ec\u06eb\u06d8\u06d8\u06dc\u06e0\u06d8\u06d8\u06d8\u06e4\u06e0\u06d9\u06ec\u06d8"

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/entity/RootRelatedEntity;->Data:Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    const-string v0, "\u06d7\u06d6\u06e6\u06db\u06d7\u06d8\u06ec\u06e1\u06e8\u06d8\u06eb\u06ec\u06d6\u06dc\u06e5\u06e1\u06d8\u06d9\u06d7\u06d8\u06d9\u06d7\u06e6\u06e1\u06eb\u06ec\u06e6\u06e6\u06e8\u06d9\u06e6\u06d9\u06eb\u06d8\u06dc\u06df\u06eb\u06e7\u06da\u06e6\u06e7\u06e6\u06ec\u06e1\u06e1\u06e6\u06d8\u06e8\u06d7\u06ec\u06e2\u06dc\u06da\u06e5\u06db\u06e5"

    goto :goto_0

    :sswitch_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x453a908c -> :sswitch_5
        -0x3983928c -> :sswitch_4
        -0x3389f57b -> :sswitch_0
        -0x2477effe -> :sswitch_2
        0x3384d6cb -> :sswitch_1
        0x3add316e -> :sswitch_6
        0x59af1f9f -> :sswitch_3
    .end sparse-switch
.end method
