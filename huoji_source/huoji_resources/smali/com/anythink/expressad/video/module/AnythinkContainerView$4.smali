.class public final Lcom/anythink/expressad/video/module/AnythinkContainerView$4;
.super Lcom/anythink/expressad/video/module/a/a/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/module/AnythinkContainerView;->a(Lcom/anythink/expressad/video/signal/factory/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/video/module/AnythinkContainerView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/AnythinkContainerView;Lcom/anythink/expressad/video/module/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView$4;->a:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-direct {p0, p2}, Lcom/anythink/expressad/video/module/a/a/i;-><init>(Lcom/anythink/expressad/video/module/a/a;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/module/a/a/i;->a(ILjava/lang/Object;)V

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView$4;->a:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->webviewshow()V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView$4;->a:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method
