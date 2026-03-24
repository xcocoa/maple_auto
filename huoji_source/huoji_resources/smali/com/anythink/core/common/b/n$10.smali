.class public final Lcom/anythink/core/common/b/n$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATNetworkConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/anythink/core/common/b/n;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/b/n;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/b/n$10;->c:Lcom/anythink/core/common/b/n;

    iput-object p2, p0, Lcom/anythink/core/common/b/n$10;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/core/common/b/n$10;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/b/n$10;->c:Lcom/anythink/core/common/b/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->b()Lcom/anythink/core/api/IExHandler;

    iget-object v0, p0, Lcom/anythink/core/common/b/n$10;->c:Lcom/anythink/core/common/b/n;

    invoke-static {v0}, Lcom/anythink/core/common/b/n;->c(Lcom/anythink/core/common/b/n;)Lcom/anythink/core/api/IExHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/b/n$10;->c:Lcom/anythink/core/common/b/n;

    invoke-static {v0}, Lcom/anythink/core/common/b/n;->c(Lcom/anythink/core/common/b/n;)Lcom/anythink/core/api/IExHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/b/n$10;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/IExHandler;->initDeviceInfo(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/b/n$10;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/d/h;->a()V

    iget-object v0, p0, Lcom/anythink/core/common/b/n$10;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/x;->a(Landroid/content/Context;)Lcom/anythink/core/common/x;

    invoke-static {}, Lcom/anythink/core/common/d;->a()Lcom/anythink/core/common/d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/b/n$10;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/d;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/anythink/core/common/b/n$10;->c:Lcom/anythink/core/common/b/n;

    invoke-static {v0}, Lcom/anythink/core/common/b/n;->b(Lcom/anythink/core/common/b/n;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/o/e;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/anythink/core/common/b/n$10;->c:Lcom/anythink/core/common/b/n;

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/b/n;->h(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
