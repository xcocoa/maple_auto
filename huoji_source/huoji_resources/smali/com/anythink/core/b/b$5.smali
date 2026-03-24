.class public final Lcom/anythink/core/b/b$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/b;->b(Lcom/anythink/core/common/f/av;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/h;

.field public final synthetic b:Lcom/anythink/core/common/f/av;

.field public final synthetic c:Lcom/anythink/core/b/b;


# direct methods
.method public constructor <init>(Lcom/anythink/core/b/b;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/av;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/b/b$5;->c:Lcom/anythink/core/b/b;

    iput-object p2, p0, Lcom/anythink/core/b/b$5;->a:Lcom/anythink/core/common/f/h;

    iput-object p3, p0, Lcom/anythink/core/b/b$5;->b:Lcom/anythink/core/common/f/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/b/b$5;->c:Lcom/anythink/core/b/b;

    invoke-static {v0}, Lcom/anythink/core/b/b;->c(Lcom/anythink/core/b/b;)Lcom/anythink/core/common/f/a;

    move-result-object v0

    iget-object v0, v0, Lcom/anythink/core/common/f/a;->c:Lcom/anythink/core/common/f/v;

    iget-object v0, v0, Lcom/anythink/core/common/f/v;->e:Lcom/anythink/core/common/b/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/core/b/b$5;->a:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/core/b/b$5;->b:Lcom/anythink/core/common/f/av;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/anythink/core/common/o/v;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/av;IZ)V

    iget-object v0, p0, Lcom/anythink/core/b/b$5;->c:Lcom/anythink/core/b/b;

    invoke-static {v0}, Lcom/anythink/core/b/b;->c(Lcom/anythink/core/b/b;)Lcom/anythink/core/common/f/a;

    move-result-object v0

    iget-object v0, v0, Lcom/anythink/core/common/f/a;->c:Lcom/anythink/core/common/f/v;

    iget-object v0, v0, Lcom/anythink/core/common/f/v;->e:Lcom/anythink/core/common/b/b;

    iget-object v1, p0, Lcom/anythink/core/b/b$5;->a:Lcom/anythink/core/common/f/h;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/b;->b(Lcom/anythink/core/common/f/h;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/b/b$5;->c:Lcom/anythink/core/b/b;

    iget-object v0, v0, Lcom/anythink/core/b/b;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/anythink/core/b/b$5;->b:Lcom/anythink/core/common/f/av;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
