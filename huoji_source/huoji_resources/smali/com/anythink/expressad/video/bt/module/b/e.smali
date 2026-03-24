.class public final Lcom/anythink/expressad/video/bt/module/b/e;
.super Lcom/anythink/expressad/video/bt/module/b/c;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "ProxyShowRewardListener"


# instance fields
.field private b:Lcom/anythink/expressad/video/bt/module/b/h;

.field private c:Lcom/anythink/expressad/videocommon/e/d;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/anythink/expressad/videocommon/e/d;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/video/bt/module/b/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/anythink/expressad/video/bt/module/b/c;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/b/e;->h:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/b/e;->i:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/b/e;->j:Z

    iput-object p5, p0, Lcom/anythink/expressad/video/bt/module/b/e;->b:Lcom/anythink/expressad/video/bt/module/b/h;

    iput-object p3, p0, Lcom/anythink/expressad/video/bt/module/b/e;->c:Lcom/anythink/expressad/videocommon/e/d;

    iput-object p7, p0, Lcom/anythink/expressad/video/bt/module/b/e;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/anythink/expressad/video/bt/module/b/e;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/anythink/expressad/video/bt/module/b/e;->f:Z

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/b/e;->g:Landroid/content/Context;

    :try_start_0
    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-wide/16 p5, 0x0

    if-nez p1, :cond_1

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/d/b;->b()Lcom/anythink/expressad/d/a;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/d/b;->c()Lcom/anythink/expressad/d/a;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/anythink/expressad/d/a;->l()J

    move-result-wide p1

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    goto :goto_0

    :cond_1
    move-wide p1, p5

    :goto_0
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object p7

    invoke-virtual {p7}, Lcom/anythink/expressad/videocommon/e/c;->b()Lcom/anythink/expressad/videocommon/e/a;

    move-result-object p7

    if-eqz p7, :cond_2

    invoke-virtual {p7}, Lcom/anythink/expressad/videocommon/e/a;->c()J

    move-result-wide p5

    :cond_2
    if-eqz p4, :cond_5

    invoke-virtual {p4, p5, p6, p1, p2}, Lcom/anythink/expressad/foundation/d/c;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    invoke-virtual {p4, p1}, Lcom/anythink/expressad/foundation/d/c;->e(I)V

    invoke-virtual {p3}, Lcom/anythink/expressad/videocommon/e/d;->M()I

    move-result p2

    if-ne p2, p1, :cond_3

    invoke-virtual {p4, p1}, Lcom/anythink/expressad/foundation/d/c;->m(I)V

    return-void

    :cond_3
    invoke-virtual {p4, v0}, Lcom/anythink/expressad/foundation/d/c;->m(I)V

    return-void

    :cond_4
    invoke-virtual {p4, v0}, Lcom/anythink/expressad/foundation/d/c;->e(I)V

    invoke-virtual {p4, v0}, Lcom/anythink/expressad/foundation/d/c;->m(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method private static a(Lcom/anythink/expressad/videocommon/e/d;Lcom/anythink/expressad/foundation/d/c;)V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/d/b;->b()Lcom/anythink/expressad/d/a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/d/b;->c()Lcom/anythink/expressad/d/a;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->l()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/e/c;->b()Lcom/anythink/expressad/videocommon/e/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/e/a;->c()J

    move-result-wide v1

    :cond_2
    if-eqz p1, :cond_5

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/anythink/expressad/foundation/d/c;->a(JJ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/d/c;->e(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/videocommon/e/d;->M()I

    move-result p0

    if-ne p0, v0, :cond_3

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/d/c;->m(I)V

    return-void

    :cond_3
    invoke-virtual {p1, v1}, Lcom/anythink/expressad/foundation/d/c;->m(I)V

    return-void

    :cond_4
    invoke-virtual {p1, v1}, Lcom/anythink/expressad/foundation/d/c;->e(I)V

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/foundation/d/c;->m(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-super {p0}, Lcom/anythink/expressad/video/bt/module/b/c;->a()V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/b/e;->b:Lcom/anythink/expressad/video/bt/module/b/h;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/b/e;->h:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/b/e;->h:Z

    invoke-interface {v0}, Lcom/anythink/expressad/video/bt/module/b/h;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/bt/module/b/c;->a(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/b/e;->b:Lcom/anythink/expressad/video/bt/module/b/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/video/bt/module/b/h;->a(Lcom/anythink/expressad/foundation/d/c;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/bt/module/b/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/b/e;->b:Lcom/anythink/expressad/video/bt/module/b/h;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/b/e;->i:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/b/e;->i:Z

    invoke-interface {v0, p1}, Lcom/anythink/expressad/video/bt/module/b/h;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(ZI)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/bt/module/b/c;->a(ZI)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/b/e;->b:Lcom/anythink/expressad/video/bt/module/b/h;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/b/e;->j:Z

    if-nez v1, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/video/bt/module/b/h;->a(ZI)V

    :cond_0
    return-void
.end method

.method public final a(ZLcom/anythink/expressad/videocommon/c/c;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/bt/module/b/c;->a(ZLcom/anythink/expressad/videocommon/c/c;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/b/e;->b:Lcom/anythink/expressad/video/bt/module/b/h;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/b/e;->j:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/b/e;->j:Z

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/video/bt/module/b/h;->a(ZLcom/anythink/expressad/videocommon/c/c;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    invoke-super {p0}, Lcom/anythink/expressad/video/bt/module/b/c;->b()V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/b/e;->b:Lcom/anythink/expressad/video/bt/module/b/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/expressad/video/bt/module/b/h;->b()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    invoke-super {p0}, Lcom/anythink/expressad/video/bt/module/b/c;->c()V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/b/e;->b:Lcom/anythink/expressad/video/bt/module/b/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/expressad/video/bt/module/b/h;->c()V

    :cond_0
    return-void
.end method
