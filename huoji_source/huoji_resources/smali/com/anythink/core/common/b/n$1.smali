.class public final Lcom/anythink/core/common/b/n$1;
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

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/anythink/core/common/b/n;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/b/n;Landroid/content/Context;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/b/n$1;->d:Lcom/anythink/core/common/b/n;

    iput-object p2, p0, Lcom/anythink/core/common/b/n$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/core/common/b/n$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/common/b/n$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/n/d;->a()Lcom/anythink/core/common/n/d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/b/n$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/n/d;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/anythink/core/common/b/n$1;->d:Lcom/anythink/core/common/b/n;

    iget-object v1, p0, Lcom/anythink/core/common/b/n$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/core/common/b/n$1;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/b/n;->a(Landroid/content/Context;Ljava/lang/String;I)J

    iget-object v0, p0, Lcom/anythink/core/common/b/n$1;->d:Lcom/anythink/core/common/b/n;

    iget-object v1, p0, Lcom/anythink/core/common/b/n$1;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/anythink/core/common/b/n;->a(Lcom/anythink/core/common/b/n;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/anythink/core/common/b/n$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/b/i;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/i;->a()V

    iget-object v0, p0, Lcom/anythink/core/common/b/n$1;->d:Lcom/anythink/core/common/b/n;

    invoke-static {v0}, Lcom/anythink/core/common/b/n;->a(Lcom/anythink/core/common/b/n;)V

    iget-object v0, p0, Lcom/anythink/core/common/b/n$1;->d:Lcom/anythink/core/common/b/n;

    iget-object v1, p0, Lcom/anythink/core/common/b/n$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/anythink/core/common/b/n;->b(Lcom/anythink/core/common/b/n;Landroid/content/Context;)V

    invoke-static {}, Lcom/anythink/core/common/a/l;->a()Lcom/anythink/core/common/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/a/l;->b()V

    iget-object v0, p0, Lcom/anythink/core/common/b/n$1;->d:Lcom/anythink/core/common/b/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/res/d;->b()V

    iget-object v0, p0, Lcom/anythink/core/common/b/n$1;->d:Lcom/anythink/core/common/b/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;

    invoke-static {}, Lcom/anythink/core/common/res/d;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
