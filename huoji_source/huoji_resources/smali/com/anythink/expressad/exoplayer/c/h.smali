.class public final Lcom/anythink/expressad/exoplayer/c/h;
.super Lcom/anythink/expressad/exoplayer/c/f;
.source ""


# instance fields
.field public c:Ljava/nio/ByteBuffer;

.field private final d:Lcom/anythink/expressad/exoplayer/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/anythink/expressad/exoplayer/c/g<",
            "*",
            "Lcom/anythink/expressad/exoplayer/c/h;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/exoplayer/c/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/exoplayer/c/g<",
            "*",
            "Lcom/anythink/expressad/exoplayer/c/h;",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/c/f;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/c/h;->d:Lcom/anythink/expressad/exoplayer/c/g;

    return-void
.end method

.method private a(JI)Ljava/nio/ByteBuffer;
    .locals 0

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/c/f;->a:J

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/c/h;->c:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    if-ge p1, p3, :cond_1

    :cond_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/c/h;->c:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/c/h;->c:Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/c/h;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/c/h;->c:Ljava/nio/ByteBuffer;

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-super {p0}, Lcom/anythink/expressad/exoplayer/c/a;->a()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/h;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/h;->d:Lcom/anythink/expressad/exoplayer/c/g;

    invoke-virtual {v0, p0}, Lcom/anythink/expressad/exoplayer/c/g;->a(Lcom/anythink/expressad/exoplayer/c/f;)V

    return-void
.end method
