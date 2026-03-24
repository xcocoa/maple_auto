.class public final Lcom/anythink/basead/d/a/a$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/core/common/f/aj;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/aj;

.field public final synthetic b:Lcom/anythink/core/common/f/m;

.field public final synthetic c:Lcom/anythink/basead/d/a/a$a;

.field public final synthetic d:Lcom/anythink/basead/d/a/a;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/d/a/a;Lcom/anythink/core/common/f/aj;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/d/a/a$3;->d:Lcom/anythink/basead/d/a/a;

    iput-object p2, p0, Lcom/anythink/basead/d/a/a$3;->a:Lcom/anythink/core/common/f/aj;

    iput-object p3, p0, Lcom/anythink/basead/d/a/a$3;->b:Lcom/anythink/core/common/f/m;

    iput-object p4, p0, Lcom/anythink/basead/d/a/a$3;->c:Lcom/anythink/basead/d/a/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/basead/d/a/a$3;->a:Lcom/anythink/core/common/f/aj;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/core/common/f/j;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/core/common/f/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anythink/basead/d/a/b;->a()Lcom/anythink/basead/d/a/b;

    iget-object v0, p0, Lcom/anythink/basead/d/a/a$3;->a:Lcom/anythink/core/common/f/aj;

    check-cast v0, Lcom/anythink/core/common/f/j;

    invoke-static {v0}, Lcom/anythink/basead/d/a/b;->a(Lcom/anythink/core/common/f/j;)V

    iget-object v0, p0, Lcom/anythink/basead/d/a/a$3;->d:Lcom/anythink/basead/d/a/a;

    iget-object v1, p0, Lcom/anythink/basead/d/a/a$3;->a:Lcom/anythink/core/common/f/aj;

    check-cast v1, Lcom/anythink/core/common/f/j;

    iget-object v2, p0, Lcom/anythink/basead/d/a/a$3;->b:Lcom/anythink/core/common/f/m;

    iget-object v3, p0, Lcom/anythink/basead/d/a/a$3;->c:Lcom/anythink/basead/d/a/a$a;

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/basead/d/a/a;Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;)V

    :cond_0
    return-void
.end method
