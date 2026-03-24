.class public final Lcom/anythink/basead/d/b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/d/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/b;->a(Lcom/anythink/basead/d/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/d/b$a;

.field public final synthetic b:Lcom/anythink/basead/d/b;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/d/b;Lcom/anythink/basead/d/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/d/b$1;->b:Lcom/anythink/basead/d/b;

    iput-object p2, p0, Lcom/anythink/basead/d/b$1;->a:Lcom/anythink/basead/d/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/a/i;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/d/b$1;->b:Lcom/anythink/basead/d/b;

    invoke-static {v0, p1}, Lcom/anythink/basead/d/b;->a(Lcom/anythink/basead/d/b;Lcom/anythink/core/common/a/i;)V

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/j;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/j;Lcom/anythink/basead/c/e;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/a/i;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/basead/d/b$1;->a:Lcom/anythink/basead/d/b$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/anythink/basead/d/b$a;->onAdCacheLoaded()V

    :cond_0
    return-void
.end method
