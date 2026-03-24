.class public final Lcom/anythink/basead/a/b$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/g/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/b$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/anythink/basead/a/b$3;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/a/b$3;I)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/a/b$3$1;->b:Lcom/anythink/basead/a/b$3;

    iput p2, p0, Lcom/anythink/basead/a/b$3$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object p1

    new-instance v0, Lcom/anythink/basead/a/b$3$1$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/a/b$3$1$1;-><init>(Lcom/anythink/basead/a/b$3$1;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/a/b$3$1;->b:Lcom/anythink/basead/a/b$3;

    iget-object p1, p1, Lcom/anythink/basead/a/b$3;->b:Lcom/anythink/basead/a/b;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/anythink/basead/a/b;->P:Z

    return-void
.end method
