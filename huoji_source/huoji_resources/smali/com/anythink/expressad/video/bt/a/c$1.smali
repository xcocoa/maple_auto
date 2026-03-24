.class public final Lcom/anythink/expressad/video/bt/a/c$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/bt/a/c;->a(Ljava/lang/Object;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/graphics/Rect;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Lcom/anythink/expressad/video/bt/a/c;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/bt/a/c;Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;II)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/a/c$1;->f:Lcom/anythink/expressad/video/bt/a/c;

    iput-object p2, p0, Lcom/anythink/expressad/video/bt/a/c$1;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/anythink/expressad/video/bt/a/c$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/expressad/video/bt/a/c$1;->c:Landroid/graphics/Rect;

    iput p5, p0, Lcom/anythink/expressad/video/bt/a/c$1;->d:I

    iput p6, p0, Lcom/anythink/expressad/video/bt/a/c$1;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/a/c$1;->a:Ljava/lang/Object;

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
    iget-object v2, p0, Lcom/anythink/expressad/video/bt/a/c$1;->f:Lcom/anythink/expressad/video/bt/a/c;

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/a/c$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/anythink/expressad/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->c()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTLayout;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/anythink/expressad/video/bt/module/AnythinkBTLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->setInstanceId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/a/c$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->setUnitId(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTLayout;->setWebView(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/a/c$1;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->setRect(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/anythink/expressad/video/bt/a/c$1;->d:I

    if-gtz v0, :cond_1

    iget v2, p0, Lcom/anythink/expressad/video/bt/a/c$1;->e:I

    if-lez v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/anythink/expressad/video/bt/a/c$1;->e:I

    invoke-virtual {v1, v0, v2}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->setLayout(II)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/a/c$1;->a:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/anythink/expressad/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
