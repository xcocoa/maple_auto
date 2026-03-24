.class public final Lcom/anythink/core/common/f/bc;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field private b:Lcom/anythink/core/common/f/h;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:D

.field private i:D

.field private j:D

.field private k:D

.field private l:I

.field private m:D

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/core/common/f/bc;->n:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final a()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/bc;->m:D

    return-wide v0
.end method

.method public final a(D)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/bc;->h:D

    return-void
.end method

.method public final a(DLjava/lang/String;)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/bc;->m:D

    iput-object p3, p0, Lcom/anythink/core/common/f/bc;->n:Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/av;)V
    .locals 2

    const-string v0, "0"

    iput-object v0, p0, Lcom/anythink/core/common/f/bc;->g:Ljava/lang/String;

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
    iput-object v0, p0, Lcom/anythink/core/common/f/bc;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->az()I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/f/bc;->l:I

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/h;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/bc;->b:Lcom/anythink/core/common/f/h;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/bc;->e:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "offer_id"

    invoke-static {p1, v0}, Lcom/anythink/core/common/f/bc;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/bc;->c:Ljava/lang/String;

    const-string v0, "dsp_id"

    invoke-static {p1, v0}, Lcom/anythink/core/common/f/bc;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/bc;->d:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "ws_imp_switch"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/f/bc;->a:I

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/bc;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final b(D)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/bc;->i:D

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/bc;->f:Ljava/lang/String;

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/bc;->a:I

    return v0
.end method

.method public final c(D)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/bc;->j:D

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/bc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d(D)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/bc;->k:D

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/bc;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/bc;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/bc;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/bc;->b:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/bc;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/bc;->b:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->ai()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/bc;->b:Lcom/anythink/core/common/f/h;

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

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/bc;->b:Lcom/anythink/core/common/f/h;

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

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/bc;->b:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final n()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/bc;->b:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->P()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/bc;->b:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/bc;->b:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->ag()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/bc;->b:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->aj()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final r()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/bc;->h:D

    return-wide v0
.end method

.method public final s()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/bc;->i:D

    return-wide v0
.end method

.method public final t()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/bc;->j:D

    return-wide v0
.end method

.method public final u()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/bc;->k:D

    return-wide v0
.end method

.method public final v()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/bc;->l:I

    return v0
.end method

.method public final w()Z
    .locals 2

    iget v0, p0, Lcom/anythink/core/common/f/bc;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
