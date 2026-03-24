.class public final Lcom/anythink/expressad/exoplayer/k/l;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Z

.field private c:Z


# direct methods
.method private varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/k/l;->a:[Ljava/lang/String;

    return-void
.end method

.method private varargs a([Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/k/l;->b:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot set libraries after loading"

    invoke-static {v0, v1}, Lcom/anythink/expressad/exoplayer/k/a;->b(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/k/l;->a:[Ljava/lang/String;

    return-void
.end method

.method private a()Z
    .locals 5

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/k/l;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/k/l;->c:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/k/l;->b:Z

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k/l;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/k/l;->c:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/k/l;->c:Z

    return v0
.end method
