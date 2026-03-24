.class public final Lcom/anythink/basead/a/b/b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/m/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/a/b/b;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/a/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/a/b/b$1;->a:Lcom/anythink/basead/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/a/b/b$1;->a:Lcom/anythink/basead/a/b/b;

    const-string v1, "20001"

    const-string v2, "Load timeout!"

    invoke-static {v1, v2}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/basead/a/b/b;->a(Lcom/anythink/basead/a/b/b;Lcom/anythink/basead/c/e;)V

    return-void
.end method
