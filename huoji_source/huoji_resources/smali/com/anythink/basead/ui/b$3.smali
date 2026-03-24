.class public final Lcom/anythink/basead/ui/b$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/b;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/b$3;->a:Lcom/anythink/basead/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/ui/b$3;->a:Lcom/anythink/basead/ui/b;

    invoke-static {v0}, Lcom/anythink/basead/ui/b;->c(Lcom/anythink/basead/ui/b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/anythink/basead/ui/b$3;->a:Lcom/anythink/basead/ui/b;

    invoke-static {v0}, Lcom/anythink/basead/ui/b;->c(Lcom/anythink/basead/ui/b;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/anythink/basead/ui/b$3;->a:Lcom/anythink/basead/ui/b;

    invoke-static {v0}, Lcom/anythink/basead/ui/b;->a(Lcom/anythink/basead/ui/b;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/b$3;->a:Lcom/anythink/basead/ui/b;

    invoke-static {v1}, Lcom/anythink/basead/ui/b;->c(Lcom/anythink/basead/ui/b;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
