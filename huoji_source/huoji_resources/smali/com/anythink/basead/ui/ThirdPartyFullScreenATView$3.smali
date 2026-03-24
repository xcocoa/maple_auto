.class public final Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->e(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;I)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$3;->b:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    iput p2, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$3;->a:I

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$3;->b:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    iget-object v1, v1, Lcom/anythink/basead/ui/BaseScreenATView;->P:Lcom/anythink/basead/ui/CountDownView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$3;->b:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    iget-object v1, v1, Lcom/anythink/basead/ui/BaseScreenATView;->P:Lcom/anythink/basead/ui/CountDownView;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/anythink/basead/ui/CountDownView;->refresh(J)V

    :cond_0
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$3;->b:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    iget v2, v1, Lcom/anythink/basead/ui/BaseScreenATView;->C:I

    if-ltz v2, :cond_1

    if-lt v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->I()V

    :cond_1
    return-void
.end method
