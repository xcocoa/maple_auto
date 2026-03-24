.class public Lz2/o0oo0000$OooO0o;
.super Lz2/o0oo0000;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o0oo0000;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/o0oo0000;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OooO0O0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public OooO0OO(Lcom/bumptech/glide/load/DataSource;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public OooO0Oo(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z
    .locals 0

    sget-object p1, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p2, p1, :cond_0

    sget-object p1, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
