.class public final Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$2;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$2;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->b(Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$2;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->b(Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;)Landroid/webkit/WebView;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$2;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    iget-object v0, v0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    const-string v1, "onPlayerCloseBtnClicked"

    invoke-static {p1, v1, v0}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
