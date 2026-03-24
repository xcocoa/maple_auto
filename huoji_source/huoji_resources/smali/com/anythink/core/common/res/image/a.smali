.class public final Lcom/anythink/core/common/res/image/a;
.super Lcom/anythink/core/common/res/image/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/res/image/a$a;
    }
.end annotation


# instance fields
.field public a:Lcom/anythink/core/common/res/e;

.field public b:Lcom/anythink/core/common/res/image/a$a;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/res/e;)V
    .locals 1

    iget-object v0, p1, Lcom/anythink/core/common/res/e;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anythink/core/common/res/image/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/anythink/core/common/res/image/a;->a:Lcom/anythink/core/common/res/e;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/anythink/core/common/o/b/d;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/anythink/core/common/o/b/b;->a(Lcom/anythink/core/common/o/b/d;I)V

    return-void
.end method

.method public final a(Lcom/anythink/core/common/res/image/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/res/image/a;->b:Lcom/anythink/core/common/res/image/a$a;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/core/common/res/image/a;->b:Lcom/anythink/core/common/res/image/a$a;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/res/image/a;->a:Lcom/anythink/core/common/res/e;

    invoke-interface {p1, v0, p2}, Lcom/anythink/core/common/res/image/a$a;->a(Lcom/anythink/core/common/res/e;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/io/InputStream;)Z
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/res/image/a;->a:Lcom/anythink/core/common/res/e;

    iget v2, v1, Lcom/anythink/core/common/res/e;->e:I

    iget-object v1, v1, Lcom/anythink/core/common/res/e;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/anythink/core/common/o/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, p1}, Lcom/anythink/core/common/res/d;->a(ILjava/lang/String;Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/res/image/a;->b:Lcom/anythink/core/common/res/image/a$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/core/common/res/image/a;->a:Lcom/anythink/core/common/res/e;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/res/image/a$a;->a(Lcom/anythink/core/common/res/e;)V

    :cond_0
    return-void
.end method
