.class public final Lcom/anythink/core/b/b$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/b;->a(Lcom/anythink/core/common/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/b/d;

.field public final synthetic b:Ljava/lang/Integer;

.field public final synthetic c:Lcom/anythink/core/b/b;


# direct methods
.method public constructor <init>(Lcom/anythink/core/b/b;Lcom/anythink/core/b/d;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/b/b$2;->c:Lcom/anythink/core/b/b;

    iput-object p2, p0, Lcom/anythink/core/b/b$2;->a:Lcom/anythink/core/b/d;

    iput-object p3, p0, Lcom/anythink/core/b/b$2;->b:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/b/b$2;->a:Lcom/anythink/core/b/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/core/b/b$2;->c:Lcom/anythink/core/b/b;

    invoke-static {v1}, Lcom/anythink/core/b/b;->b(Lcom/anythink/core/b/b;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/d;->a(Z)V

    iget-object v0, p0, Lcom/anythink/core/b/b$2;->a:Lcom/anythink/core/b/d;

    new-instance v1, Lcom/anythink/core/b/b$2$1;

    invoke-direct {v1, p0}, Lcom/anythink/core/b/b$2$1;-><init>(Lcom/anythink/core/b/b$2;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/b/b/b;)V

    :cond_0
    return-void
.end method
