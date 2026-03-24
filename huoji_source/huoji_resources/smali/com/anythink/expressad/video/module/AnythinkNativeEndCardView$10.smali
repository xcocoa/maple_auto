.class public final Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/video/dynview/f/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$10;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/video/dynview/a;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$10;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/dynview/a;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$10;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/dynview/a;->c()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->a(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;Z)Z

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$10;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/dynview/a;->a()Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->a(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;Landroid/view/View;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$10;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->c(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

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
