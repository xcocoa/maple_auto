.class public Lcom/anythink/expressad/video/signal/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/video/signal/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/video/signal/a/c$a;,
        Lcom/anythink/expressad/video/signal/a/c$b;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "DefaultJSCommon"


# instance fields
.field public e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Lcom/anythink/expressad/videocommon/e/d;

.field public p:Lcom/anythink/expressad/videocommon/c/c;

.field public q:Lcom/anythink/expressad/a/a;

.field public r:Lcom/anythink/expressad/video/signal/c$a;

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/signal/a/c;->e:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/signal/a/c;->f:Z

    iput v0, p0, Lcom/anythink/expressad/video/signal/a/c;->g:I

    iput v0, p0, Lcom/anythink/expressad/video/signal/a/c;->h:I

    iput v0, p0, Lcom/anythink/expressad/video/signal/a/c;->i:I

    iput v0, p0, Lcom/anythink/expressad/video/signal/a/c;->j:I

    iput v0, p0, Lcom/anythink/expressad/video/signal/a/c;->k:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/video/signal/a/c;->l:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/expressad/video/signal/a/c;->m:I

    new-instance v0, Lcom/anythink/expressad/video/signal/a/c$a;

    invoke-direct {v0}, Lcom/anythink/expressad/video/signal/a/c$a;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/signal/a/c;->r:Lcom/anythink/expressad/video/signal/c$a;

    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/expressad/video/signal/a/c;->s:I

    return-void
.end method

.method private a(Lcom/anythink/expressad/videocommon/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/signal/a/c;->p:Lcom/anythink/expressad/videocommon/c/c;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/signal/a/c;->s:I

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "statistics,type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",json:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/anythink/expressad/video/signal/c$a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setTrackingListener:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/anythink/expressad/video/signal/a/c;->r:Lcom/anythink/expressad/video/signal/c$a;

    return-void
.end method

.method public final a(Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSetting:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/anythink/expressad/video/signal/a/c;->o:Lcom/anythink/expressad/videocommon/e/d;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/signal/a/c;->n:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/video/signal/a/c;->f:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/signal/a/c;->f:Z

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/video/signal/a/c;->h:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/expressad/video/signal/a/c;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/video/signal/a/c;->h:I

    :cond_0
    iget v0, p0, Lcom/anythink/expressad/video/signal/a/c;->h:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/signal/a/c;->h:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/video/signal/a/c;->g:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/expressad/video/signal/a/c;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/video/signal/a/c;->g:I

    :cond_0
    iget v0, p0, Lcom/anythink/expressad/video/signal/a/c;->g:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/signal/a/c;->g:I

    return-void
.end method

.method public click(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "click:type"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",pt:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/video/signal/a/c;->i:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/expressad/video/signal/a/c;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/video/signal/a/c;->i:I

    :cond_0
    iget v0, p0, Lcom/anythink/expressad/video/signal/a/c;->i:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/signal/a/c;->i:I

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/video/signal/a/c;->j:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/signal/a/c;->j:I

    return-void
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/video/signal/a/c;->k:I

    return v0
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/signal/a/c;->k:I

    return-void
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/signal/a/c;->m:I

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/signal/a/c;->e:Z

    return v0
.end method

.method public h(I)Ljava/lang/String;
    .locals 0

    const-string p1, "{}"

    return-object p1
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/signal/a/c;->e:Z

    return-void
.end method

.method public handlerH5Exception(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handlerH5Exception,code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",msg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "{}"

    return-object v0
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/signal/a/c;->l:I

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/c;->q:Lcom/anythink/expressad/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/a/a;->a()V

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/c;->q:Lcom/anythink/expressad/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/a/a;->a(Lcom/anythink/expressad/out/p$c;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/c;->q:Lcom/anythink/expressad/a/a;

    invoke-virtual {v0}, Lcom/anythink/expressad/a/a;->b()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/video/signal/a/c;->m:I

    return v0
.end method

.method public final n()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAlertDialogRole "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/anythink/expressad/video/signal/a/c;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/anythink/expressad/video/signal/a/c;->l:I

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
