.class public final Lcom/anythink/expressad/video/module/AnythinkClickCTAView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/video/dynview/f/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/module/AnythinkClickCTAView;->a(Landroid/view/ViewGroup;Lcom/anythink/expressad/foundation/d/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/AnythinkClickCTAView;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkClickCTAView$1;->b:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    iput-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkClickCTAView$1;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/video/dynview/a;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkClickCTAView$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/dynview/a;->a()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkClickCTAView$1;->b:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;->a(Lcom/anythink/expressad/video/module/AnythinkClickCTAView;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkClickCTAView$1;->b:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    const-string v0, "anythink_tv_desc"

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;->a(Lcom/anythink/expressad/video/module/AnythinkClickCTAView;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkClickCTAView$1;->b:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;->c()V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/video/dynview/c/b;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorMsg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/video/dynview/c/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
