.class public final Lcom/anythink/basead/ui/b/f$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/ui/BaseShakeView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/b/f;->a(Lcom/anythink/basead/ui/BaseShakeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/b/f;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/b/f$3;->a:Lcom/anythink/basead/ui/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/ui/b/f$3;->a:Lcom/anythink/basead/ui/b/f;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/b/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/b/f$3;->a:Lcom/anythink/basead/ui/b/f;

    iget-object v0, v0, Lcom/anythink/basead/ui/b/b;->h:Lcom/anythink/basead/ui/b/b$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Lcom/anythink/basead/ui/b/b$a;->a(II)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
