.class public Lcom/cyjh/elfin/entity/BindRegCodeResponse;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cyjh/elfin/entity/BindRegCodeResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Code:I

.field public Data:Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;

.field public Message:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06d6\u06e1\u06e5\u06e0\u06e6\u06da\u06e1\u06ec\u06da\u06e0\u06e8\u06df\u06e2\u06e8\u06e8\u06d8\u06e5\u06dc\u06ec\u06ec\u06e0\u06da\u06df\u06eb\u06e6\u06e7\u06e0\u06eb\u06db\u06e0\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x350

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x205

    const/16 v2, 0x224

    const v3, -0x5b0a2b13

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/cyjh/elfin/entity/BindRegCodeResponse$1;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/BindRegCodeResponse$1;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/entity/BindRegCodeResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "\u06e0\u06d8\u06e8\u06e2\u06dc\u06d7\u06e6\u06d8\u06e0\u06d8\u06d8\u06d6\u06d6\u06e7\u06df\u06e8\u06e4\u06e5\u06d7\u06dc\u06e7\u06da\u06e6\u06d8\u06db\u06dc\u06e8\u06e6\u06da\u06e5\u06e0\u06e2\u06d6\u06e1\u06e5\u06ec\u06e0\u06df\u06e6\u06eb\u06df\u06e6\u06d8\u06e6\u06e4\u06da\u06dc\u06d8\u06db\u06db\u06e6\u06e0\u06d8\u06e5\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a26bc10 -> :sswitch_1
        -0x230afd8 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/elfin/entity/BindRegCodeResponse;->Code:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/BindRegCodeResponse;->Message:Ljava/lang/String;

    const-class v0, Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;

    iput-object v0, p0, Lcom/cyjh/elfin/entity/BindRegCodeResponse;->Data:Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    const-string v0, "\u06e0\u06d9\u06d6\u06e0\u06eb\u06d7\u06df\u06d8\u06db\u06da\u06e4\u06e1\u06d8\u06e1\u06d6\u06d7\u06d6\u06e4\u06e5\u06d7\u06e6\u06e1\u06e7\u06d6\u06e6\u06d8\u06e8\u06e1\u06e5\u06da\u06da\u06d9\u06df\u06da\u06ec\u06e5\u06e4\u06dc\u06d9\u06e5\u06d8\u06db\u06d7\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x16

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x332

    const/16 v2, 0x296

    const v3, -0x47e25886

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06df\u06ec\u06da\u06e5\u06ec\u06e7\u06e0\u06e7\u06df\u06ec\u06e6\u06d8\u06eb\u06dc\u06dc\u06e4\u06e5\u06e7\u06d8\u06db\u06d6\u06d8\u06d8\u06e4\u06e4\u06e1\u06df\u06e1\u06d8\u06e5\u06e8\u06d6\u06eb\u06d9\u06e2\u06e4\u06e0\u06e8\u06e4\u06e0\u06e6\u06d8\u06e6\u06db\u06df\u06e5\u06e0\u06d6\u06d8\u06d7\u06e1\u06e7\u06d8\u06e1\u06e2\u06dc\u06d8\u06e2\u06e0\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3397b3a6 -> :sswitch_0
        0x3bb0267c -> :sswitch_1
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "\u06e1\u06e7\u06e1\u06d8\u06d8\u06d9\u06e6\u06d8\u06d6\u06eb\u06dc\u06d8\u06d6\u06df\u06d6\u06ec\u06e7\u06e8\u06eb\u06e6\u06eb\u06dc\u06df\u06dc\u06d8\u06e4\u06da\u06d8\u06e8\u06dc\u06e6\u06e1\u06da\u06d6\u06d8\u06d8\u06d6\u06e8\u06d8\u06db\u06e6\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x306

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x45

    const/16 v2, 0x34a

    const v3, -0x732004bb

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06d7\u06d6\u06d8\u06ec\u06e5\u06e8\u06d8\u06e7\u06e8\u06df\u06e4\u06e6\u06e5\u06e6\u06d8\u06e8\u06e6\u06e5\u06d8\u06e4\u06e6\u06eb\u06d9\u06d8\u06e5\u06d8\u06e2\u06ec\u06e7\u06e0\u06db\u06e5\u06d8\u06e1\u06e4\u06ec\u06e2\u06e7\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06da\u06d8\u06df\u06d6\u06e2\u06e2\u06e6\u06e7\u06d8\u06e8\u06d6\u06e8\u06d9\u06ec\u06e7\u06e7\u06da\u06dc\u06da\u06e7\u06e0\u06e8\u06e1\u06e6\u06e1\u06db\u06df\u06ec\u06e8\u06d9\u06eb\u06dc\u06da\u06df\u06df\u06dc\u06da\u06e7\u06d6\u06e5\u06df\u06e4\u06d9\u06e5\u06d8\u06e7\u06d7\u06e6"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e0\u06d6\u06df\u06e5\u06d7\u06e0\u06df\u06e5\u06d6\u06d6\u06e2\u06e4\u06d7\u06eb\u06eb\u06db\u06e2\u06d9\u06da\u06e0\u06e8\u06e6\u06d8\u06db\u06e1\u06ec\u06e4\u06e2\u06e6"

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/cyjh/elfin/entity/BindRegCodeResponse;->Code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const-string v0, "\u06e1\u06e0\u06e6\u06d8\u06e0\u06dc\u06dc\u06d8\u06dc\u06e4\u06dc\u06d8\u06d8\u06d8\u06e4\u06ec\u06da\u06d9\u06d7\u06da\u06e6\u06d8\u06ec\u06e7\u06d8\u06d8\u06d7\u06e5\u06dc\u06d8\u06e4\u06e5\u06d8\u06d8\u06ec\u06df\u06e1\u06d7\u06eb\u06e6\u06db\u06db\u06d8\u06d8\u06d9\u06e5\u06df\u06e1\u06d9\u06e1\u06d8"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/entity/BindRegCodeResponse;->Message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06d6\u06d9\u06e1\u06d8\u06e8\u06db\u06e6\u06da\u06ec\u06dc\u06e6\u06e5\u06e6\u06d8\u06da\u06ec\u06df\u06ec\u06d8\u06d8\u06eb\u06d8\u06e5\u06da\u06ec\u06e7\u06e0\u06e5\u06e4\u06e6\u06e2\u06d6\u06d8\u06e7\u06db\u06d9\u06d9\u06db\u06d7\u06e5\u06db\u06e6\u06eb\u06e6\u06df"

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/entity/BindRegCodeResponse;->Data:Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    const-string v0, "\u06d8\u06e6\u06d6\u06d8\u06e2\u06dc\u06dc\u06ec\u06eb\u06db\u06e6\u06df\u06e1\u06df\u06e5\u06d6\u06d8\u06df\u06e0\u06e5\u06d8\u06df\u06d6\u06e5\u06db\u06e4\u06e5\u06d8\u06d8\u06d8\u06e2\u06db\u06d7\u06dc\u06e4\u06d8\u06d8\u06da\u06e4\u06d9\u06e0\u06db\u06e6\u06d8\u06d6\u06d7"

    goto :goto_0

    :sswitch_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6eaffe55 -> :sswitch_6
        -0x4e74a93e -> :sswitch_3
        -0x4cab9477 -> :sswitch_0
        -0x22394d90 -> :sswitch_2
        0x4205a63 -> :sswitch_4
        0x145a15c2 -> :sswitch_1
        0x3dfd1cef -> :sswitch_5
    .end sparse-switch
.end method
