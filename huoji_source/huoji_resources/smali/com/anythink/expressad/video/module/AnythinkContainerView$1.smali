.class public final Lcom/anythink/expressad/video/module/AnythinkContainerView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/module/AnythinkContainerView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/video/signal/factory/b;

.field public final synthetic b:Lcom/anythink/expressad/video/module/AnythinkContainerView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/AnythinkContainerView;Lcom/anythink/expressad/video/signal/factory/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView$1;->b:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iput-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView$1;->a:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView$1;->b:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView$1;->a:Lcom/anythink/expressad/video/signal/factory/b;

    iget-object v2, v0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->F()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->a(Lcom/anythink/expressad/video/module/AnythinkContainerView;Lcom/anythink/expressad/video/signal/factory/b;Ljava/lang/Integer;)V

    return-void
.end method
