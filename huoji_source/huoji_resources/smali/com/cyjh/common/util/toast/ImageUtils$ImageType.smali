.class public final enum Lcom/cyjh/common/util/toast/ImageUtils$ImageType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/common/util/toast/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyjh/common/util/toast/ImageUtils$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

.field public static final enum TYPE_BMP:Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

.field public static final enum TYPE_GIF:Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

.field public static final enum TYPE_ICO:Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

.field public static final enum TYPE_JPG:Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

.field public static final enum TYPE_PNG:Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

.field public static final enum TYPE_TIFF:Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

.field public static final enum TYPE_UNKNOWN:Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

.field public static final enum TYPE_WEBP:Lcom/cyjh/common/util/toast/ImageUtils$ImageType;


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    const-string v1, "TYPE_JPG"

    const/4 v2, 0x0

    const-string v3, "jpg"

    invoke-direct {v0, v1, v2, v3}, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;->TYPE_JPG:Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    new-instance v1, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    const-string v3, "TYPE_PNG"

    const/4 v4, 0x1

    const-string v5, "png"

    invoke-direct {v1, v3, v4, v5}, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;->TYPE_PNG:Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    new-instance v3, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    const-string v5, "TYPE_GIF"

    const/4 v6, 0x2

    const-string v7, "gif"

    invoke-direct {v3, v5, v6, v7}, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;->TYPE_GIF:Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    new-instance v5, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    const-string v7, "TYPE_TIFF"

    const/4 v8, 0x3

    const-string v9, "tiff"

    invoke-direct {v5, v7, v8, v9}, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;->TYPE_TIFF:Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    new-instance v7, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    const-string v9, "TYPE_BMP"

    const/4 v10, 0x4

    const-string v11, "bmp"

    invoke-direct {v7, v9, v10, v11}, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;->TYPE_BMP:Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    new-instance v9, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    const-string v11, "TYPE_WEBP"

    const/4 v12, 0x5

    const-string v13, "webp"

    invoke-direct {v9, v11, v12, v13}, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;->TYPE_WEBP:Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    new-instance v11, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    const-string v13, "TYPE_ICO"

    const/4 v14, 0x6

    const-string v15, "ico"

    invoke-direct {v11, v13, v14, v15}, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;->TYPE_ICO:Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    new-instance v13, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    const-string v15, "TYPE_UNKNOWN"

    const/4 v14, 0x7

    const-string v12, "unknown"

    invoke-direct {v13, v15, v14, v12}, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;->TYPE_UNKNOWN:Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    sput-object v12, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;->$VALUES:[Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyjh/common/util/toast/ImageUtils$ImageType;
    .locals 1

    const-class v0, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    return-object p0
.end method

.method public static values()[Lcom/cyjh/common/util/toast/ImageUtils$ImageType;
    .locals 1

    sget-object v0, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;->$VALUES:[Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    invoke-virtual {v0}, [Lcom/cyjh/common/util/toast/ImageUtils$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyjh/common/util/toast/ImageUtils$ImageType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/common/util/toast/ImageUtils$ImageType;->value:Ljava/lang/String;

    return-object v0
.end method
