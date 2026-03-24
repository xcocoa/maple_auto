.class public final Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$1;
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

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$1;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$1;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->a(Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;)Lcom/anythink/expressad/playercommon/PlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/playercommon/PlayerView;->isSilent()Z

    move-result p1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$1;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->b(Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    sget v2, Lcom/anythink/expressad/video/bt/module/BTBaseView;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "id"

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$1;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    iget-object v2, v2, Lcom/anythink/expressad/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "mute"

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$1;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    invoke-static {v3}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->c(Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$1;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    invoke-static {v1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->b(Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;)Landroid/webkit/WebView;

    move-result-object v1

    const-string v2, "onPlayerMuteBtnClicked"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPlayerMuteBtnClicked isMute = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mute = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$1;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->c(Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$1;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->b(Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/anythink/expressad/video/bt/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
