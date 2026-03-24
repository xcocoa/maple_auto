.class public final Lcom/anythink/basead/ui/MraidContainerView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/MraidContainerView;->loadMraidWebView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Lcom/anythink/basead/ui/MraidContainerView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/MraidContainerView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/MraidContainerView$3;->d:Lcom/anythink/basead/ui/MraidContainerView;

    iput-object p2, p0, Lcom/anythink/basead/ui/MraidContainerView$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/basead/ui/MraidContainerView$3;->b:Ljava/lang/String;

    iput p4, p0, Lcom/anythink/basead/ui/MraidContainerView$3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidContainerView$3;->d:Lcom/anythink/basead/ui/MraidContainerView;

    new-instance v1, Lcom/anythink/basead/mraid/MraidWebView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/anythink/basead/mraid/MraidWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/anythink/basead/ui/MraidContainerView;->f:Lcom/anythink/basead/mraid/MraidWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/anythink/basead/ui/MraidContainerView$3;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/basead/ui/MraidContainerView$3;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidContainerView$3;->d:Lcom/anythink/basead/ui/MraidContainerView;

    iget-object v5, v0, Lcom/anythink/basead/ui/MraidContainerView;->f:Lcom/anythink/basead/mraid/MraidWebView;

    new-instance v6, Lcom/anythink/basead/ui/MraidContainerView$3$1;

    invoke-direct {v6, p0}, Lcom/anythink/basead/ui/MraidContainerView$3$1;-><init>(Lcom/anythink/basead/ui/MraidContainerView$3;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidContainerView$3;->d:Lcom/anythink/basead/ui/MraidContainerView;

    iget-object v7, v0, Lcom/anythink/basead/ui/MraidContainerView;->a:Lcom/anythink/core/common/f/l;

    iget-object v8, v0, Lcom/anythink/basead/ui/MraidContainerView;->c:Lcom/anythink/core/common/f/m;

    iget v9, p0, Lcom/anythink/basead/ui/MraidContainerView$3;->c:I

    invoke-static/range {v3 .. v9}, Lcom/anythink/basead/mraid/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/basead/mraid/MraidWebView;Lcom/anythink/basead/mraid/d$a;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;I)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/anythink/basead/ui/MraidContainerView$3;->d:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-static {v1}, Lcom/anythink/basead/ui/MraidContainerView;->a(Lcom/anythink/basead/ui/MraidContainerView;)Z

    invoke-static {}, Lcom/anythink/basead/ui/MraidContainerView;->a()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFailed with exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/basead/ui/MraidContainerView$3;->d:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-static {v1}, Lcom/anythink/basead/ui/MraidContainerView;->b(Lcom/anythink/basead/ui/MraidContainerView;)V

    iget-object v1, p0, Lcom/anythink/basead/ui/MraidContainerView$3;->d:Lcom/anythink/basead/ui/MraidContainerView;

    iget-object v1, v1, Lcom/anythink/basead/ui/MraidContainerView;->g:Lcom/anythink/basead/ui/MraidContainerView$a;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-interface {v1}, Lcom/anythink/basead/ui/MraidContainerView$a;->c()V

    :cond_0
    return-void
.end method
