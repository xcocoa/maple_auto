.class public final Lcom/anythink/expressad/video/bt/a/c$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/bt/a/c;->b(Ljava/lang/Object;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Landroid/graphics/Rect;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Lcom/anythink/expressad/video/bt/a/c;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/bt/a/c;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;II)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/a/c$2;->i:Lcom/anythink/expressad/video/bt/a/c;

    iput-object p2, p0, Lcom/anythink/expressad/video/bt/a/c$2;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/anythink/expressad/video/bt/a/c$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/expressad/video/bt/a/c$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/expressad/video/bt/a/c$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/anythink/expressad/video/bt/a/c$2;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/anythink/expressad/video/bt/a/c$2;->f:Landroid/graphics/Rect;

    iput p8, p0, Lcom/anythink/expressad/video/bt/a/c$2;->g:I

    iput p9, p0, Lcom/anythink/expressad/video/bt/a/c$2;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/a/c$2;->a:Ljava/lang/Object;

    check-cast v0, Lcom/anythink/expressad/atsignalcommon/windvane/a;

    iget-object v0, v0, Lcom/anythink/expressad/atsignalcommon/windvane/a;->a:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/anythink/expressad/video/bt/a/c$2;->i:Lcom/anythink/expressad/video/bt/a/c;

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/a/c$2;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/anythink/expressad/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->c()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v3}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->setInstanceId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/a/c$2;->b:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->setUnitId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/a/c$2;->c:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->setFileURL(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/a/c$2;->d:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->setFilePath(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/a/c$2;->e:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->setHtml(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/a/c$2;->f:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->setRect(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->setWebViewRid(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->setCreateWebView(Landroid/webkit/WebView;)V

    iget v0, p0, Lcom/anythink/expressad/video/bt/a/c$2;->g:I

    if-gtz v0, :cond_1

    iget v1, p0, Lcom/anythink/expressad/video/bt/a/c$2;->h:I

    if-lez v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/anythink/expressad/video/bt/a/c$2;->h:I

    invoke-virtual {v4, v0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->setLayout(II)V

    :cond_2
    invoke-virtual {v4}, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->preload()V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/a/c$2;->a:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/anythink/expressad/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
