.class public final Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;->onProgressChanged(Landroid/webkit/WebView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;


# direct methods
.method public constructor <init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5$1;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5$1;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;

    iget-object v0, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {v0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->h(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/basead/ui/web/WebProgressBarView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
