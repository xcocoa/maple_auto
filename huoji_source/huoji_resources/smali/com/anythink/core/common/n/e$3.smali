.class public final Lcom/anythink/core/common/n/e$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Z

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/n/e$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/core/common/n/e$3;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/n/e$3;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/common/n/e$3;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/core/common/n/e$3;->e:Ljava/lang/String;

    iput p6, p0, Lcom/anythink/core/common/n/e$3;->f:I

    iput p7, p0, Lcom/anythink/core/common/n/e$3;->g:I

    iput-object p8, p0, Lcom/anythink/core/common/n/e$3;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/anythink/core/common/n/e$3;->i:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/anythink/core/common/n/e$3;->j:Z

    iput-object p11, p0, Lcom/anythink/core/common/n/e$3;->k:Ljava/lang/String;

    iput-wide p12, p0, Lcom/anythink/core/common/n/e$3;->l:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    new-instance v0, Lcom/anythink/core/common/f/k;

    iget-object v1, p0, Lcom/anythink/core/common/n/e$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/n/e$3;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/common/f/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1004687"

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->a:Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/d/a;Lcom/anythink/core/common/f/k;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/anythink/core/common/n/e$3;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/n/e$3;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/n/e$3;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->m:Ljava/lang/String;

    iget v1, p0, Lcom/anythink/core/common/n/e$3;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->n:Ljava/lang/String;

    iget v1, p0, Lcom/anythink/core/common/n/e$3;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->o:Ljava/lang/String;

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x0

    :try_start_1
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v4

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    :goto_1
    const-string v4, "2"

    const-string v5, "0"

    const-string v6, "1"

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    move-object v2, v5

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    if-nez v2, :cond_3

    move-object v2, v6

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    move-object v2, v4

    goto :goto_2

    :cond_4
    const-string v2, "3"

    :goto_2
    iput-object v2, v0, Lcom/anythink/core/common/f/k;->p:Ljava/lang/String;

    :try_start_2
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    nop

    :goto_3
    if-eqz v1, :cond_5

    move-object v5, v6

    :cond_5
    iput-object v5, v0, Lcom/anythink/core/common/f/k;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/n/e$3;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/n/e$3;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->s:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/anythink/core/common/n/e$3;->j:Z

    if-eqz v1, :cond_6

    move-object v4, v6

    :cond_6
    iput-object v4, v0, Lcom/anythink/core/common/f/k;->t:Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/common/n/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/anythink/core/common/n/e;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->u:Ljava/lang/String;

    goto :goto_4

    :cond_7
    :try_start_3
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    mul-long v1, v1, v3

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "MB"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/n/e;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/common/n/e;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->u:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :goto_4
    iget-object v1, p0, Lcom/anythink/core/common/n/e$3;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->v:Ljava/lang/String;

    iget-wide v1, p0, Lcom/anythink/core/common/n/e$3;->l:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/k;)V

    return-void
.end method
