.class public final Lcom/anythink/basead/d/d$1;
.super Lcom/anythink/expressad/videocommon/d/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/d;->a(Landroid/app/Activity;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/anythink/basead/d/d;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/d/d;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/d/d$1;->b:Lcom/anythink/basead/d/d;

    iput-object p4, p0, Lcom/anythink/basead/d/d$1;->a:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/anythink/expressad/videocommon/d/b;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/d/d$1$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/d/d$1$1;-><init>(Lcom/anythink/basead/d/d$1;Lcom/anythink/expressad/foundation/d/c;)V

    const/4 p1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(ZLjava/lang/String;F)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/anythink/expressad/videocommon/d/b;->a(ZLjava/lang/String;F)V

    iget-object p1, p0, Lcom/anythink/basead/d/d$1;->b:Lcom/anythink/basead/d/d;

    iget-object p1, p1, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/anythink/basead/e/a;->onAdClosed()V

    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/d/d$1;->b:Lcom/anythink/basead/d/d;

    invoke-virtual {p1}, Lcom/anythink/basead/d/b;->e()V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/d/d$1;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    const-string v1, "40002"

    invoke-static {v1, p1}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onShowFailed(Lcom/anythink/basead/c/e;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/d/d$1;->b:Lcom/anythink/basead/d/d;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/d/d$1;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/anythink/basead/e/i;

    invoke-direct {v1}, Lcom/anythink/basead/e/i;-><init>()V

    invoke-interface {v0, v1}, Lcom/anythink/basead/e/a;->onAdShow(Lcom/anythink/basead/e/i;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/d$1;->b:Lcom/anythink/basead/d/d;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/d/d$1;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/basead/e/j;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/basead/e/j;

    invoke-interface {v0}, Lcom/anythink/basead/e/j;->onVideoAdPlayEnd()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method
