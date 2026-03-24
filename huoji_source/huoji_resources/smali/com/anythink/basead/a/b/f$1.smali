.class public final Lcom/anythink/basead/a/b/f$1;
.super Lcom/anythink/core/common/res/a/a$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/b/f;-><init>(Ljava/lang/String;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/a/b/f;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/a/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/a/b/f$1;->a:Lcom/anythink/basead/a/b/f;

    invoke-direct {p0}, Lcom/anythink/core/common/res/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(IJJ)Z
    .locals 0

    iget-object p2, p0, Lcom/anythink/basead/a/b/f$1;->a:Lcom/anythink/basead/a/b/f;

    invoke-static {p2}, Lcom/anythink/basead/a/b/f;->a(Lcom/anythink/basead/a/b/f;)Lcom/anythink/core/common/f/n;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/f/n;->W()I

    move-result p2

    if-lt p1, p2, :cond_0

    invoke-static {}, Lcom/anythink/basead/a/b/d;->a()Lcom/anythink/basead/a/b/d;

    move-result-object p2

    iget-object p3, p0, Lcom/anythink/basead/a/b/f$1;->a:Lcom/anythink/basead/a/b/f;

    invoke-static {p3}, Lcom/anythink/basead/a/b/f;->b(Lcom/anythink/basead/a/b/f;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/anythink/basead/a/b/d;->a(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
