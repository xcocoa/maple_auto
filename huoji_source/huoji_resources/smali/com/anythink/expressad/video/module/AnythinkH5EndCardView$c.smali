.class public final Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$c;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iput p2, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$c;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$c;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->m(Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$c;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->n(Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;)Z

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$c;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iget-object v0, v0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$c;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iget-object v0, v0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_2
    return-void
.end method
