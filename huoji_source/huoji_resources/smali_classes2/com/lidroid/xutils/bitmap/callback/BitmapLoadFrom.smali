.class public final enum Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISK_CACHE:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

.field private static final synthetic ENUM$VALUES:[Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

.field public static final enum MEMORY_CACHE:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

.field public static final enum URI:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    const-string v1, "MEMORY_CACHE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;->MEMORY_CACHE:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    new-instance v1, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    const-string v3, "DISK_CACHE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;->DISK_CACHE:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    new-instance v3, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    const-string v5, "URI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;->URI:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;->ENUM$VALUES:[Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;
    .locals 1

    const-class v0, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    return-object p0
.end method

.method public static values()[Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;
    .locals 4

    sget-object v0, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;->ENUM$VALUES:[Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    array-length v1, v0

    new-array v2, v1, [Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
