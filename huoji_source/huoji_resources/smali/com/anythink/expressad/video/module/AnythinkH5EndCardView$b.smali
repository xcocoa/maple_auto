.class public final Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

.field private b:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$b;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$b;->b:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$b;->b:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->c(Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$b;->b:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->d(Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;)Z

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$b;->b:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->v:Z

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$b;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    const/4 v1, 0x5

    const-string v2, "timeout"

    invoke-virtual {v0, v2, v1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->reportRenderResult(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$b;->b:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iget-object v0, v0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v1, 0x7f

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
