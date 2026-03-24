.class public final Lcom/anythink/basead/ui/BaseSplashATView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseSplashATView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/BaseSplashATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/BaseSplashATView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseSplashATView$2;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseSplashATView$2;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    iget-object p1, p1, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object p1, p1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->v()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseSplashATView$2;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    iget-boolean p1, p1, Lcom/anythink/basead/ui/BaseSplashATView;->O:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseSplashATView$2;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/anythink/basead/ui/BaseSplashATView;->a(ZI)V

    :cond_1
    return-void
.end method
