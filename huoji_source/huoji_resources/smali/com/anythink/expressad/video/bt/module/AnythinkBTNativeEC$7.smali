.class public final Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$7;
.super Lcom/anythink/expressad/widget/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$7;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;

    invoke-direct {p0}, Lcom/anythink/expressad/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$7;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->a(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$7;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->a(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;FF)V

    return-void
.end method
