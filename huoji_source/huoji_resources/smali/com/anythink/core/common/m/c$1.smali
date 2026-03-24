.class public final Lcom/anythink/core/common/m/c$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/m/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/m/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/m/c;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/m/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/m/c$1;->a:Lcom/anythink/core/common/m/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/common/m/c$1;->a:Lcom/anythink/core/common/m/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anythink/core/common/m/c;->d:Z

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/anythink/core/common/m/c;->b:J

    iget-boolean v0, v0, Lcom/anythink/core/common/m/c;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/m/c$1;->a:Lcom/anythink/core/common/m/c;

    iget-object v1, v1, Lcom/anythink/core/common/m/c;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    iget-object v0, p0, Lcom/anythink/core/common/m/c$1;->a:Lcom/anythink/core/common/m/c;

    iget-object v0, v0, Lcom/anythink/core/common/m/c;->c:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method
