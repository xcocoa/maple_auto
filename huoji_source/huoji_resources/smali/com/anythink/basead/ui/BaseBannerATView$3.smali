.class public final Lcom/anythink/basead/ui/BaseBannerATView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseBannerATView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/BaseBannerATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/BaseBannerATView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseBannerATView$3;->a:Lcom/anythink/basead/ui/BaseBannerATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseBannerATView$3;->a:Lcom/anythink/basead/ui/BaseBannerATView;

    iget-object p1, p1, Lcom/anythink/basead/ui/BaseBannerATView;->v:Lcom/anythink/basead/e/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/anythink/basead/e/a;->onAdClosed()V

    :cond_0
    return-void
.end method
