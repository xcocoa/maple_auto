.class public final Lcom/anythink/basead/f/a/b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/f/a/b;->a(Lcom/anythink/core/common/f/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/c/c;

.field public final synthetic b:Lcom/anythink/basead/f/a/b;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/f/a/b;Lcom/anythink/basead/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/f/a/b$1;->b:Lcom/anythink/basead/f/a/b;

    iput-object p2, p0, Lcom/anythink/basead/f/a/b$1;->a:Lcom/anythink/basead/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/f/a/b$1;->b:Lcom/anythink/basead/f/a/b;

    invoke-static {v0}, Lcom/anythink/basead/f/a/b;->a(Lcom/anythink/basead/f/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/basead/b/c;->a(Landroid/content/Context;)Lcom/anythink/basead/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/f/a/b$1;->a:Lcom/anythink/basead/c/c;

    iget-object v1, v1, Lcom/anythink/basead/c/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/b/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/basead/f/a/b$1;->b:Lcom/anythink/basead/f/a/b;

    invoke-static {v0}, Lcom/anythink/basead/f/a/b;->a(Lcom/anythink/basead/f/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/basead/b/c;->a(Landroid/content/Context;)Lcom/anythink/basead/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/f/a/b$1;->a:Lcom/anythink/basead/c/c;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/b/c;->a(Lcom/anythink/basead/c/c;)J

    return-void
.end method
