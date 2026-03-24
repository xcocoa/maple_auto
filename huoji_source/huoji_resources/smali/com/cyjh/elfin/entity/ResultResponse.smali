.class public Lcom/cyjh/elfin/entity/ResultResponse;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cyjh/elfin/entity/ResultResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Code:Ljava/lang/String;

.field public Msg:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06ec\u06d6\u06dc\u06eb\u06e1\u06e6\u06d8\u06df\u06dc\u06e2\u06eb\u06e2\u06d7\u06e7\u06db\u06e5\u06d8\u06e2\u06d6\u06e7\u06e5\u06d8\u06e1\u06d7\u06dc\u06d6\u06d8\u06d9\u06e5\u06d8\u06d8\u06df\u06d8\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xe1

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x28

    const/16 v2, 0x125

    const v3, -0x6e7a6f88

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/cyjh/elfin/entity/ResultResponse$1;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/ResultResponse$1;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/entity/ResultResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "\u06dc\u06e8\u06db\u06e7\u06e6\u06e7\u06d8\u06ec\u06da\u06e1\u06e7\u06e0\u06d7\u06db\u06d6\u06e7\u06da\u06da\u06e6\u06e0\u06d9\u06d6\u06da\u06eb\u06d9\u06e2\u06db\u06e2\u06e4\u06e4\u06e7\u06e6\u06dc\u06e2\u06e0\u06e8\u06e1\u06d8\u06d8\u06e5\u06e0\u06d6\u06d6\u06e1\u06d8\u06d7\u06d9\u06dc\u06e6\u06e6\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a1d39ec -> :sswitch_1
        -0x3e2b6898 -> :sswitch_0
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

    iput-object v0, p0, Lcom/cyjh/elfin/entity/ResultResponse;->Code:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/ResultResponse;->Msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    const-string v0, "\u06d9\u06d9\u06d6\u06ec\u06e2\u06d6\u06dc\u06d8\u06db\u06e8\u06d8\u06e8\u06d8\u06e1\u06d7\u06eb\u06e6\u06db\u06da\u06e1\u06e5\u06e0\u06db\u06db\u06ec\u06da\u06e1\u06d6\u06eb\u06e2\u06e0\u06db\u06d9\u06e6\u06e8\u06eb\u06db\u06da\u06df\u06e1\u06df\u06e0\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3bf

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x255

    const/16 v2, 0x2cb

    const v3, 0x35e26034

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06e6\u06e6\u06d7\u06db\u06e2\u06e2\u06e6\u06e6\u06d8\u06e6\u06ec\u06e5\u06d8\u06d6\u06dc\u06d6\u06d8\u06db\u06d8\u06e5\u06ec\u06db\u06dc\u06d8\u06d9\u06db\u06ec\u06df\u06e0\u06db\u06d8\u06e7\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5314d93a -> :sswitch_1
        0x64ffa17b -> :sswitch_0
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "\u06e6\u06d6\u06ec\u06db\u06e6\u06d8\u06d7\u06e1\u06e1\u06e8\u06d7\u06e6\u06d8\u06e1\u06df\u06e6\u06d8\u06e1\u06eb\u06e7\u06e8\u06da\u06df\u06e4\u06e5\u06d6\u06d8\u06e0\u06d9\u06d6\u06d9\u06e4\u06e5\u06d8\u06d6\u06e8\u06e7\u06e0\u06ec\u06dc\u06d8\u06e4\u06df\u06e8\u06e1\u06d8\u06e5\u06d8\u06e5\u06e7\u06dc\u06e6\u06d7\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1bf

    const/16 v2, 0x15b

    const v3, -0x33cf784c    # -4.6276304E7f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06e8\u06da\u06e8\u06e8\u06e0\u06e0\u06e0\u06e1\u06d7\u06d8\u06e5\u06e0\u06e4\u06ec\u06e7\u06dc\u06d8\u06d7\u06e8\u06e4\u06e0\u06e0\u06e6\u06d8\u06dc\u06e4\u06d9\u06e5\u06e4\u06e8\u06d8\u06e7\u06da\u06e7\u06dc\u06df\u06e6\u06e7\u06e0\u06e8\u06d8\u06dc\u06e8\u06e5\u06dc\u06e5\u06e1\u06d8\u06db\u06e4\u06e6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e8\u06e2\u06da\u06df\u06d7\u06e1\u06d8\u06ec\u06e2\u06ec\u06d8\u06e8\u06e8\u06d8\u06dc\u06e0\u06d6\u06df\u06e6\u06e8\u06d7\u06d9\u06eb\u06eb\u06dc\u06e2\u06e5\u06e1\u06e5\u06d8\u06e7\u06e0\u06d6\u06d8\u06e4\u06e8\u06e4\u06d6\u06e6\u06d6\u06d8\u06eb\u06eb\u06d6\u06d8\u06eb\u06e5\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e7\u06e6\u06e7\u06d8\u06e6\u06d9\u06d8\u06e7\u06eb\u06df\u06e6\u06d6\u06df\u06e6\u06eb\u06e0\u06da\u06e5\u06e0\u06e7\u06e2\u06dc\u06d8\u06ec\u06ec\u06d9\u06d8\u06df\u06e0\u06e8\u06d8\u06eb\u06e5\u06d8\u06e0\u06eb\u06eb"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/entity/ResultResponse;->Code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06e6\u06eb\u06e2\u06e5\u06d8\u06dc\u06e6\u06e8\u06e7\u06e2\u06e6\u06ec\u06e7\u06e6\u06e6\u06d8\u06df\u06e7\u06d6\u06d8\u06e2\u06da\u06e8\u06eb\u06eb\u06d9\u06db\u06d6\u06df\u06e5\u06d8\u06d6\u06eb\u06e8\u06e8\u06d6\u06e0"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/entity/ResultResponse;->Msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06db\u06da\u06dc\u06d7\u06ec\u06d8\u06d8\u06d6\u06e2\u06e5\u06ec\u06db\u06da\u06e2\u06d8\u06d7\u06e7\u06e5\u06d6\u06e0\u06e5\u06d9\u06e2\u06df\u06e0\u06dc\u06d9\u06e8\u06da\u06e5\u06e7\u06ec\u06d8\u06d7\u06ec\u06d8\u06dc\u06d8\u06e0\u06d7\u06d9\u06e1\u06eb\u06e7"

    goto :goto_0

    :sswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d6127f6 -> :sswitch_0
        -0x6fcbaef1 -> :sswitch_5
        -0x619aff41 -> :sswitch_4
        -0x342b9b49 -> :sswitch_1
        0x258c5c4a -> :sswitch_2
        0x54306230 -> :sswitch_3
    .end sparse-switch
.end method
