.class public final Lcom/anythink/expressad/exoplayer/h/ac$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/h/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# static fields
.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static final d:I = 0x2


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/h/ac;

.field private e:I

.field private f:Z


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/exoplayer/h/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/ac$a;->a:Lcom/anythink/expressad/exoplayer/h/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/anythink/expressad/exoplayer/h/ac;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/h/ac$a;-><init>(Lcom/anythink/expressad/exoplayer/h/ac;)V

    return-void
.end method

.method private d()V
    .locals 8

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/ac$a;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/ac$a;->a:Lcom/anythink/expressad/exoplayer/h/ac;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/h/ac;->a(Lcom/anythink/expressad/exoplayer/h/ac;)Lcom/anythink/expressad/exoplayer/h/t$a;

    move-result-object v1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/ac$a;->a:Lcom/anythink/expressad/exoplayer/h/ac;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/h/ac;->b:Lcom/anythink/expressad/exoplayer/m;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/o;->d(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/ac$a;->a:Lcom/anythink/expressad/exoplayer/h/ac;

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/h/ac;->b:Lcom/anythink/expressad/exoplayer/m;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(ILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/ac$a;->f:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget p1, p0, Lcom/anythink/expressad/exoplayer/h/ac$a;->e:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    iput p2, p0, Lcom/anythink/expressad/exoplayer/h/ac$a;->e:I

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/ac$a;->d()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/n;Lcom/anythink/expressad/exoplayer/c/e;Z)I
    .locals 7

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/ac$a;->e:I

    const/4 v1, -0x4

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    invoke-virtual {p2, v2}, Lcom/anythink/expressad/exoplayer/c/a;->b(I)V

    return v1

    :cond_0
    const/4 v4, 0x1

    if-nez p3, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/ac$a;->a:Lcom/anythink/expressad/exoplayer/h/ac;

    iget-boolean p3, p1, Lcom/anythink/expressad/exoplayer/h/ac;->e:Z

    if-eqz p3, :cond_3

    iget-boolean p1, p1, Lcom/anythink/expressad/exoplayer/h/ac;->f:Z

    if-eqz p1, :cond_2

    const-wide/16 v5, 0x0

    iput-wide v5, p2, Lcom/anythink/expressad/exoplayer/c/e;->f:J

    invoke-virtual {p2, v4}, Lcom/anythink/expressad/exoplayer/c/a;->b(I)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/ac$a;->a:Lcom/anythink/expressad/exoplayer/h/ac;

    iget p1, p1, Lcom/anythink/expressad/exoplayer/h/ac;->h:I

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/exoplayer/c/e;->d(I)V

    iget-object p1, p2, Lcom/anythink/expressad/exoplayer/c/e;->e:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/ac$a;->a:Lcom/anythink/expressad/exoplayer/h/ac;

    iget-object p3, p2, Lcom/anythink/expressad/exoplayer/h/ac;->g:[B

    const/4 v0, 0x0

    iget p2, p2, Lcom/anythink/expressad/exoplayer/h/ac;->h:I

    invoke-virtual {p1, p3, v0, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/ac$a;->d()V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v2}, Lcom/anythink/expressad/exoplayer/c/a;->b(I)V

    :goto_0
    iput v3, p0, Lcom/anythink/expressad/exoplayer/h/ac$a;->e:I

    return v1

    :cond_3
    const/4 p1, -0x3

    return p1

    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/ac$a;->a:Lcom/anythink/expressad/exoplayer/h/ac;

    iget-object p2, p2, Lcom/anythink/expressad/exoplayer/h/ac;->b:Lcom/anythink/expressad/exoplayer/m;

    iput-object p2, p1, Lcom/anythink/expressad/exoplayer/n;->a:Lcom/anythink/expressad/exoplayer/m;

    iput v4, p0, Lcom/anythink/expressad/exoplayer/h/ac$a;->e:I

    const/4 p1, -0x5

    return p1
.end method

.method public final a()V
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/ac$a;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/exoplayer/h/ac$a;->e:I

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/ac$a;->a:Lcom/anythink/expressad/exoplayer/h/ac;

    iget-boolean v0, v0, Lcom/anythink/expressad/exoplayer/h/ac;->e:Z

    return v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/ac$a;->a:Lcom/anythink/expressad/exoplayer/h/ac;

    iget-boolean v1, v0, Lcom/anythink/expressad/exoplayer/h/ac;->c:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/h/ac;->a:Lcom/anythink/expressad/exoplayer/j/t;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/j/t;->c()V

    :cond_0
    return-void
.end method
