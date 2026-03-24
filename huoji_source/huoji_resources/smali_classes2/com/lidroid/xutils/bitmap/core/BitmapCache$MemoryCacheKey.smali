.class public Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/bitmap/core/BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MemoryCacheKey"
.end annotation


# instance fields
.field private subKey:Ljava/lang/String;

.field public final synthetic this$0:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

.field private uri:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->this$0:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->uri:Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->subKey:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->uri:Ljava/lang/String;

    iget-object v3, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->uri:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->subKey:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->subKey:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
