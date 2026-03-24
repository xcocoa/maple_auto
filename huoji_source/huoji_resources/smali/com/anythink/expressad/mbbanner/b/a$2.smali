.class public final Lcom/anythink/expressad/mbbanner/b/a$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/mbbanner/a/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/mbbanner/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/mbbanner/b/a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/mbbanner/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/b/a$2;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$2;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/b/a;->h(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/foundation/d/d;

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$2;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/b/a;->i(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/TemplateBannerView;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$2;->a:Lcom/anythink/expressad/mbbanner/b/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/anythink/expressad/mbbanner/b/a;->b(Lcom/anythink/expressad/mbbanner/b/a;Z)Z

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$2;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/b/a;->j(Lcom/anythink/expressad/mbbanner/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a$2;->a:Lcom/anythink/expressad/mbbanner/b/a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/anythink/expressad/mbbanner/b/a;->b(Lcom/anythink/expressad/mbbanner/b/a;Z)Z

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a$2;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v1}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/h;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a$2;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v1}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/h;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startShowBanner fail:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/anythink/expressad/out/h;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/anythink/expressad/mbbanner/b/a;->e()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResourceSuccess but startShowBanner fail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/d;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$2;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v0, p1}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;Lcom/anythink/expressad/foundation/d/d;)Lcom/anythink/expressad/foundation/d/d;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$2;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$2;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/out/h;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/anythink/expressad/mbbanner/b/a;->e()Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$2;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$2;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/h;

    move-result-object v0

    const-string v1, "banner res load failed"

    invoke-interface {v0, v1}, Lcom/anythink/expressad/out/h;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/anythink/expressad/mbbanner/b/a;->e()Ljava/lang/String;

    return-void
.end method
