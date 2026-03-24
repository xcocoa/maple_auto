.class public final Lcom/anythink/core/common/f/y;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:D

.field private b:I

.field private c:Lcom/anythink/core/common/f/h;

.field private d:Z

.field private e:D

.field private f:Ljava/lang/String;

.field private g:I

.field private h:D

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/anythink/core/common/f/y;->b:I

    invoke-virtual {p2}, Lcom/anythink/core/common/f/av;->Z()Z

    move-result p1

    iput-boolean p1, p0, Lcom/anythink/core/common/f/y;->d:Z

    invoke-static {p2}, Lcom/anythink/core/b/d/a;->b(Lcom/anythink/core/common/f/av;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/f/y;->e:D

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/anythink/core/common/f/h;->V()Lcom/anythink/core/common/f/h;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, p3}, Lcom/anythink/core/common/o/v;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/av;IZ)V

    :cond_0
    const-string p1, "0"

    iput-object p1, p0, Lcom/anythink/core/common/f/y;->f:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/anythink/core/common/f/av;->m()I

    move-result p1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    const/4 p3, 0x6

    if-eq p1, p3, :cond_1

    const-string p1, "1"

    goto :goto_0

    :cond_1
    const-string p1, "3"

    goto :goto_0

    :cond_2
    const-string p1, "2"

    :goto_0
    iput-object p1, p0, Lcom/anythink/core/common/f/y;->f:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/av;->aA()I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/f/y;->g:I

    :cond_3
    return-void
.end method

.method public constructor <init>(ILcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/h;D)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/core/common/f/y;-><init>(ILcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/h;)V

    iput-wide p4, p0, Lcom/anythink/core/common/f/y;->a:D

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/av;)V
    .locals 2

    const-string v0, "0"

    iput-object v0, p0, Lcom/anythink/core/common/f/y;->f:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->m()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, "3"

    goto :goto_0

    :cond_2
    const-string v0, "2"

    :goto_0
    iput-object v0, p0, Lcom/anythink/core/common/f/y;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->aA()I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/f/y;->g:I

    return-void
.end method

.method private u()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->i()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/y;->h:D

    return-wide v0
.end method

.method public final a(DLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/y;->h:D

    iput-object p3, p0, Lcom/anythink/core/common/f/y;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/common/f/y;->j:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/y;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/y;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/common/f/y;->d:Z

    return v0
.end method

.method public final e()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/y;->a:D

    return-wide v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/y;->b:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->ai()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->Q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->af()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final k()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->P()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->ag()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->aj()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->aa()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->ab()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final q()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/y;->e:D

    return-wide v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/y;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/y;->g:I

    return v0
.end method

.method public final t()Z
    .locals 2

    iget v0, p0, Lcom/anythink/core/common/f/y;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
