.class public final Lcom/anythink/basead/ui/BaseScreenATView$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/ui/MraidEndCardView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseScreenATView;->b(Z)Lcom/anythink/basead/ui/BaseEndCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/BaseScreenATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/BaseScreenATView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$9;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$9;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget v1, v0, Lcom/anythink/basead/ui/BaseScreenATView;->v:I

    const/4 v2, 0x3

    if-ne v2, v1, :cond_1

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->G()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$9;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->I()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$9;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->h()V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/anythink/basead/ui/BaseScreenATView;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$9;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/l;->w(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$9;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    const/4 v0, 0x1

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/anythink/basead/ui/BaseScreenATView;->a(II)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$9;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget v1, v0, Lcom/anythink/basead/ui/BaseScreenATView;->v:I

    const/4 v2, 0x3

    if-ne v2, v1, :cond_1

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->G()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$9;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->I()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$9;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    const-string v1, "40002"

    const-string v2, "Mraid init fail with exception:"

    invoke-static {v1, v2}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseScreenATView;->a(Lcom/anythink/basead/c/e;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$9;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseScreenATView;->c(I)V

    :cond_1
    return-void
.end method
