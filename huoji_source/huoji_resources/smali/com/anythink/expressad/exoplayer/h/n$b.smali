.class public final Lcom/anythink/expressad/exoplayer/h/n$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:[Lcom/anythink/expressad/exoplayer/e/e;

.field private final b:Lcom/anythink/expressad/exoplayer/e/g;

.field private c:Lcom/anythink/expressad/exoplayer/e/e;


# direct methods
.method public constructor <init>([Lcom/anythink/expressad/exoplayer/e/e;Lcom/anythink/expressad/exoplayer/e/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n$b;->a:[Lcom/anythink/expressad/exoplayer/e/e;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/n$b;->b:Lcom/anythink/expressad/exoplayer/e/g;

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/exoplayer/e/f;Landroid/net/Uri;)Lcom/anythink/expressad/exoplayer/e/e;
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n$b;->c:Lcom/anythink/expressad/exoplayer/e/e;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n$b;->a:[Lcom/anythink/expressad/exoplayer/e/e;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    :try_start_0
    invoke-interface {v3, p1}, Lcom/anythink/expressad/exoplayer/e/e;->a(Lcom/anythink/expressad/exoplayer/e/f;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v3, p0, Lcom/anythink/expressad/exoplayer/h/n$b;->c:Lcom/anythink/expressad/exoplayer/e/e;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/e/f;->a()V

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/e/f;->a()V

    throw p2

    :catch_0
    :cond_1
    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/e/f;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n$b;->c:Lcom/anythink/expressad/exoplayer/e/e;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/n$b;->b:Lcom/anythink/expressad/exoplayer/e/g;

    invoke-interface {p1, p2}, Lcom/anythink/expressad/exoplayer/e/e;->a(Lcom/anythink/expressad/exoplayer/e/g;)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n$b;->c:Lcom/anythink/expressad/exoplayer/e/e;

    return-object p1

    :cond_3
    new-instance p1, Lcom/anythink/expressad/exoplayer/h/ag;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "None of the available extractors ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/n$b;->a:[Lcom/anythink/expressad/exoplayer/e/e;

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/af;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") could read the stream."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/anythink/expressad/exoplayer/h/ag;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p1
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n$b;->c:Lcom/anythink/expressad/exoplayer/e/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n$b;->c:Lcom/anythink/expressad/exoplayer/e/e;

    :cond_0
    return-void
.end method
