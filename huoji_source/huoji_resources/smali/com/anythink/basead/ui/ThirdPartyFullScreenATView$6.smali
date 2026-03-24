.class public final Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$6;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$6;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$6;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    invoke-static {v0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->c(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;)Lcom/anythink/core/api/BaseAd;

    move-result-object v1

    invoke-interface {v1}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getVideoProgress()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->a(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;I)V

    return-void
.end method
