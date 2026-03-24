.class public final Lcom/anythink/basead/a/a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/a;->a(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/c/d;Ljava/lang/String;Lcom/anythink/core/common/g/b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/l;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/l;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/a/a$1;->a:Lcom/anythink/core/common/f/l;

    iput-object p2, p0, Lcom/anythink/basead/a/a$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/a/a$1;->a:Lcom/anythink/core/common/f/l;

    instance-of v0, v0, Lcom/anythink/core/common/f/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/a/a$1;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/a/g;->a(Landroid/content/Context;)Lcom/anythink/basead/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/basead/a/g;->a()V

    iget-object v0, p0, Lcom/anythink/basead/a/a$1;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/a/g;->a(Landroid/content/Context;)Lcom/anythink/basead/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/a/a$1;->a:Lcom/anythink/core/common/f/l;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/a/a$1;->a:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/a/g;->a(Ljava/lang/String;Lcom/anythink/core/common/f/l;)V

    :cond_0
    return-void
.end method
