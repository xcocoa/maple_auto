.class public final Lcom/anythink/expressad/video/module/a/a/m$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/m/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/video/module/a/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/video/module/a/a/m;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/a/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/a/a/m$1;->a:Lcom/anythink/expressad/video/module/a/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m$1;->a:Lcom/anythink/expressad/video/module/a/a/m;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/a/a/m;->a(Lcom/anythink/expressad/video/module/a/a/m;)Lcom/anythink/expressad/video/module/AnythinkContainerView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showVideoClickView(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m$1;->a:Lcom/anythink/expressad/video/module/a/a/m;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/a/a/m;->b(Lcom/anythink/expressad/video/module/a/a/m;)Lcom/anythink/expressad/video/module/AnythinkVideoView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->soundOperate(II)V

    return-void
.end method
