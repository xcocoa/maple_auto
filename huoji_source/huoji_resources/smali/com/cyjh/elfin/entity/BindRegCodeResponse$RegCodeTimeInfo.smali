.class public Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/BindRegCodeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegCodeTimeInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ClientTimestamp:J

.field public ExpireTime:J

.field public ServerTimestamp:J


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06e4\u06d9\u06d9\u06e4\u06e8\u06d7\u06d7\u06e5\u06e4\u06e7\u06e2\u06dc\u06d8\u06e8\u06db\u06e6\u06d8\u06eb\u06e5\u06e1\u06d8\u06e4\u06dc\u06d8\u06d7\u06dc\u06e1\u06d8\u06ec\u06d7\u06df\u06ec\u06d9\u06e5\u06d8\u06d7\u06dc\u06d7\u06e8\u06e6\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1ab

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x234

    const/16 v2, 0x189

    const v3, 0x1da1ea90

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo$1;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo$1;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "\u06d8\u06df\u06d9\u06e8\u06d6\u06d6\u06e5\u06dc\u06e2\u06ec\u06e4\u06e4\u06e4\u06df\u06e6\u06d8\u06ec\u06d6\u06e1\u06e4\u06d6\u06da\u06e1\u06e6\u06db\u06da\u06e2\u06dc\u06d8\u06df\u06ec\u06eb\u06e0\u06d9\u06d8\u06d9\u06e4\u06da\u06dc\u06dc\u06d8\u06e0\u06d8\u06df"

    goto :goto_0

    :sswitch_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5bdf6da2 -> :sswitch_1
        -0x3014094d -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;->ClientTimestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;->ServerTimestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;->ExpireTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    const-string v0, "\u06df\u06e8\u06e7\u06eb\u06ec\u06d8\u06d8\u06d6\u06da\u06e6\u06d8\u06d8\u06e2\u06e2\u06e2\u06eb\u06df\u06ec\u06dc\u06d8\u06e6\u06da\u06db\u06d9\u06db\u06e1\u06dc\u06e8\u06d6\u06e2\u06d6\u06d8\u06d8\u06d6\u06ec\u06e6\u06e8\u06eb\u06d6\u06d8\u06eb\u06e1\u06e7\u06e2\u06e8\u06e6\u06e0\u06d9\u06e5\u06e2\u06e5\u06e8\u06d7\u06e4\u06e7\u06ec\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1b1

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x142

    const/16 v2, 0x75

    const v3, -0x64d74141

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06d8\u06df\u06e6\u06e8\u06e8\u06d8\u06d7\u06e1\u06e6\u06ec\u06e8\u06dc\u06e4\u06e0\u06db\u06e2\u06d7\u06e8\u06e5\u06d6\u06d8\u06e5\u06e7\u06e5\u06d8\u06da\u06e5\u06e0\u06e2\u06e1\u06e6\u06d8\u06e8\u06d7\u06df\u06e4\u06df\u06d8"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f2bf1d0 -> :sswitch_1
        -0x180a9514 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "\u06dc\u06d7\u06d9\u06d9\u06e2\u06dc\u06e2\u06e2\u06e4\u06df\u06d8\u06d6\u06e4\u06df\u06e0\u06da\u06d8\u06df\u06ec\u06e0\u06e6\u06d8\u06d6\u06d9\u06e0\u06d7\u06eb\u06e5\u06dc\u06ec\u06e4\u06e2\u06e5\u06e8\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xf5

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xf2

    const/16 v2, 0x106

    const v3, 0x9d83112

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e7\u06e8\u06e1\u06dc\u06d7\u06e4\u06e8\u06e7\u06d7\u06e2\u06e6\u06d8\u06e0\u06db\u06e4\u06ec\u06df\u06e6\u06d8\u06da\u06e6\u06e1\u06ec\u06e5\u06e1\u06d8\u06e8\u06da\u06e4\u06e1\u06e8\u06e7\u06d8\u06e5\u06e0\u06df\u06d8\u06d9\u06ec\u06ec\u06d9\u06da\u06e6\u06eb\u06e2\u06dc\u06eb\u06eb\u06e7\u06da\u06e7\u06db\u06d6\u06d8\u06e4\u06e2\u06e1"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06ec\u06d7\u06e6\u06d8\u06e2\u06df\u06e2\u06e0\u06e4\u06d9\u06d6\u06d8\u06d8\u06d8\u06df\u06df\u06e6\u06d8\u06ec\u06db\u06e1\u06d8\u06e7\u06d9\u06e4\u06e6\u06dc\u06e0\u06e0\u06e1\u06dc\u06dc\u06e0\u06e8\u06d8\u06e6\u06e7\u06ec\u06da\u06db\u06e7\u06dc\u06e7\u06dc\u06eb\u06d6\u06e2\u06da\u06e1\u06e1\u06df\u06e0"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e1\u06eb\u06e1\u06e6\u06e2\u06d7\u06e6\u06d8\u06e5\u06d8\u06e5\u06e0\u06e8\u06d8\u06e5\u06e5\u06d6\u06d8\u06e8\u06da\u06e6\u06d8\u06e0\u06e7\u06e6\u06ec\u06e0\u06eb\u06e7\u06e0\u06e5\u06e5\u06dc\u06e0\u06e1\u06e6\u06dc\u06d8\u06e8\u06e5\u06e5\u06d8\u06e6\u06d8\u06e1\u06da\u06da\u06d6\u06dc\u06e5\u06e8\u06eb\u06e1\u06d8"

    goto :goto_0

    :sswitch_3
    iget-wide v0, p0, Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;->ClientTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const-string v0, "\u06e4\u06d9\u06db\u06e0\u06eb\u06e0\u06e5\u06d7\u06dc\u06e2\u06e1\u06d8\u06da\u06e0\u06d9\u06ec\u06d6\u06dc\u06da\u06dc\u06e5\u06d9\u06db\u06eb\u06d7\u06e2\u06db\u06e8\u06e1\u06e8\u06d8"

    goto :goto_0

    :sswitch_4
    iget-wide v0, p0, Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;->ServerTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const-string v0, "\u06e7\u06e2\u06e5\u06d8\u06e7\u06e2\u06e1\u06d8\u06ec\u06e4\u06db\u06e1\u06d8\u06dc\u06d6\u06e2\u06da\u06e2\u06d7\u06ec\u06e4\u06e4\u06ec\u06d6\u06d8\u06dc\u06e5\u06eb\u06d6\u06eb\u06d6\u06e6\u06d8\u06e7\u06db\u06e0\u06e6\u06e1\u06dc\u06d8\u06ec\u06d6\u06d6\u06d9\u06df\u06df\u06e2\u06df\u06e5\u06e0\u06d7\u06e8\u06d8"

    goto :goto_0

    :sswitch_5
    iget-wide v0, p0, Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;->ExpireTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const-string v0, "\u06db\u06da\u06e1\u06e7\u06d6\u06da\u06e4\u06e1\u06e1\u06d8\u06d7\u06e1\u06d8\u06d6\u06df\u06df\u06d6\u06e5\u06e2\u06d7\u06d8\u06d8\u06da\u06eb\u06ec\u06e0\u06d7\u06d7\u06da\u06dc\u06e8\u06e8\u06e0\u06e6\u06da\u06d9\u06eb\u06df\u06e1\u06d8\u06eb\u06d6\u06e7\u06e5\u06ec\u06e4\u06e4\u06e4\u06eb"

    goto :goto_0

    :sswitch_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5be3d6db -> :sswitch_4
        -0x11bdadc7 -> :sswitch_2
        0x145a6c1 -> :sswitch_0
        0x3bbc4d39 -> :sswitch_6
        0x49a6ff60 -> :sswitch_5
        0x561d2259 -> :sswitch_3
        0x57f9eafe -> :sswitch_1
    .end sparse-switch
.end method
