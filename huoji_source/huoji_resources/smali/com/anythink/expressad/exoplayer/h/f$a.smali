.class public final Lcom/anythink/expressad/exoplayer/h/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/h/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/h/f;

.field private final b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT"
        }
    .end annotation
.end field

.field private c:Lcom/anythink/expressad/exoplayer/h/t$a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/h/f;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lcom/anythink/expressad/exoplayer/h/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/f$a;->a:Lcom/anythink/expressad/exoplayer/h/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/h/c;->a(Lcom/anythink/expressad/exoplayer/h/s$a;)Lcom/anythink/expressad/exoplayer/h/t$a;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/f$a;->c:Lcom/anythink/expressad/exoplayer/h/t$a;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/f$a;->b:Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/t$c;)Lcom/anythink/expressad/exoplayer/h/t$c;
    .locals 13

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/f$a;->a:Lcom/anythink/expressad/exoplayer/h/f;

    iget-wide v1, p1, Lcom/anythink/expressad/exoplayer/h/t$c;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/exoplayer/h/f;->a(J)J

    move-result-wide v9

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/f$a;->a:Lcom/anythink/expressad/exoplayer/h/f;

    iget-wide v1, p1, Lcom/anythink/expressad/exoplayer/h/t$c;->g:J

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/exoplayer/h/f;->a(J)J

    move-result-wide v11

    iget-wide v0, p1, Lcom/anythink/expressad/exoplayer/h/t$c;->f:J

    cmp-long v2, v9, v0

    if-nez v2, :cond_0

    iget-wide v0, p1, Lcom/anythink/expressad/exoplayer/h/t$c;->g:J

    cmp-long v2, v11, v0

    if-nez v2, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/anythink/expressad/exoplayer/h/t$c;

    iget v4, p1, Lcom/anythink/expressad/exoplayer/h/t$c;->a:I

    iget v5, p1, Lcom/anythink/expressad/exoplayer/h/t$c;->b:I

    iget-object v6, p1, Lcom/anythink/expressad/exoplayer/h/t$c;->c:Lcom/anythink/expressad/exoplayer/m;

    iget v7, p1, Lcom/anythink/expressad/exoplayer/h/t$c;->d:I

    iget-object v8, p1, Lcom/anythink/expressad/exoplayer/h/t$c;->e:Ljava/lang/Object;

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/anythink/expressad/exoplayer/h/t$c;-><init>(IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJ)V

    return-object v0
.end method

.method private d(ILcom/anythink/expressad/exoplayer/h/s$a;)Z
    .locals 2
    .param p2    # Lcom/anythink/expressad/exoplayer/h/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/f$a;->a:Lcom/anythink/expressad/exoplayer/h/f;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/f$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lcom/anythink/expressad/exoplayer/h/f;->a(Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s$a;)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/f$a;->a:Lcom/anythink/expressad/exoplayer/h/f;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/f$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/anythink/expressad/exoplayer/h/f;->a(Ljava/lang/Object;I)I

    move-result p1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/f$a;->c:Lcom/anythink/expressad/exoplayer/h/t$a;

    iget v1, v0, Lcom/anythink/expressad/exoplayer/h/t$a;->a:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/h/t$a;->b:Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-static {v0, p2}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/f$a;->a:Lcom/anythink/expressad/exoplayer/h/f;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/c;->a(ILcom/anythink/expressad/exoplayer/h/s$a;)Lcom/anythink/expressad/exoplayer/h/t$a;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/f$a;->c:Lcom/anythink/expressad/exoplayer/h/t$a;

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final a(ILcom/anythink/expressad/exoplayer/h/s$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/f$a;->d(ILcom/anythink/expressad/exoplayer/h/s$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/f$a;->c:Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/t$a;->a()V

    :cond_0
    return-void
.end method

.method public final a(ILcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;)V
    .locals 0
    .param p2    # Lcom/anythink/expressad/exoplayer/h/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/f$a;->d(ILcom/anythink/expressad/exoplayer/h/s$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/f$a;->c:Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-direct {p0, p4}, Lcom/anythink/expressad/exoplayer/h/f$a;->a(Lcom/anythink/expressad/exoplayer/h/t$c;)Lcom/anythink/expressad/exoplayer/h/t$c;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;)V

    :cond_0
    return-void
.end method

.method public final a(ILcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;Ljava/io/IOException;Z)V
    .locals 0
    .param p2    # Lcom/anythink/expressad/exoplayer/h/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/f$a;->d(ILcom/anythink/expressad/exoplayer/h/s$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/f$a;->c:Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-direct {p0, p4}, Lcom/anythink/expressad/exoplayer/h/f$a;->a(Lcom/anythink/expressad/exoplayer/h/t$c;)Lcom/anythink/expressad/exoplayer/h/t$c;

    move-result-object p2

    invoke-virtual {p1, p3, p2, p5, p6}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public final a(ILcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/h/t$c;)V
    .locals 0
    .param p2    # Lcom/anythink/expressad/exoplayer/h/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/f$a;->d(ILcom/anythink/expressad/exoplayer/h/s$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/f$a;->c:Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-direct {p0, p3}, Lcom/anythink/expressad/exoplayer/h/f$a;->a(Lcom/anythink/expressad/exoplayer/h/t$c;)Lcom/anythink/expressad/exoplayer/h/t$c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/h/t$c;)V

    :cond_0
    return-void
.end method

.method public final b(ILcom/anythink/expressad/exoplayer/h/s$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/f$a;->d(ILcom/anythink/expressad/exoplayer/h/s$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/f$a;->c:Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/t$a;->b()V

    :cond_0
    return-void
.end method

.method public final b(ILcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;)V
    .locals 0
    .param p2    # Lcom/anythink/expressad/exoplayer/h/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/f$a;->d(ILcom/anythink/expressad/exoplayer/h/s$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/f$a;->c:Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-direct {p0, p4}, Lcom/anythink/expressad/exoplayer/h/f$a;->a(Lcom/anythink/expressad/exoplayer/h/t$c;)Lcom/anythink/expressad/exoplayer/h/t$c;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/anythink/expressad/exoplayer/h/t$a;->b(Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;)V

    :cond_0
    return-void
.end method

.method public final b(ILcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/h/t$c;)V
    .locals 0
    .param p2    # Lcom/anythink/expressad/exoplayer/h/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/f$a;->d(ILcom/anythink/expressad/exoplayer/h/s$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/f$a;->c:Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-direct {p0, p3}, Lcom/anythink/expressad/exoplayer/h/f$a;->a(Lcom/anythink/expressad/exoplayer/h/t$c;)Lcom/anythink/expressad/exoplayer/h/t$c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/exoplayer/h/t$a;->b(Lcom/anythink/expressad/exoplayer/h/t$c;)V

    :cond_0
    return-void
.end method

.method public final c(ILcom/anythink/expressad/exoplayer/h/s$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/f$a;->d(ILcom/anythink/expressad/exoplayer/h/s$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/f$a;->c:Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/t$a;->c()V

    :cond_0
    return-void
.end method

.method public final c(ILcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;)V
    .locals 0
    .param p2    # Lcom/anythink/expressad/exoplayer/h/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/f$a;->d(ILcom/anythink/expressad/exoplayer/h/s$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/f$a;->c:Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-direct {p0, p4}, Lcom/anythink/expressad/exoplayer/h/f$a;->a(Lcom/anythink/expressad/exoplayer/h/t$c;)Lcom/anythink/expressad/exoplayer/h/t$c;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/anythink/expressad/exoplayer/h/t$a;->c(Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;)V

    :cond_0
    return-void
.end method
