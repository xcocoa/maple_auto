.class public final Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer$a;
.super Lcom/anythink/expressad/video/signal/a/c$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer$a;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    invoke-direct {p0}, Lcom/anythink/expressad/video/signal/a/c$a;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer$a;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/a/c$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/a/c$a;->a(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/a/c$a;->a(Lcom/anythink/expressad/foundation/d/c;Z)V

    iget-object p2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer$a;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    invoke-static {p2}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->t(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Lcom/anythink/expressad/video/bt/module/b/h;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/anythink/expressad/video/bt/module/b/h;->a(Lcom/anythink/expressad/foundation/d/c;)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/out/j;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/a/c$a;->a(Lcom/anythink/expressad/out/j;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    instance-of p2, p1, Lcom/anythink/expressad/foundation/d/c;

    if-eqz p2, :cond_2

    :try_start_0
    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    iget-object p2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer$a;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    invoke-virtual {p2}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSVideoModule()Lcom/anythink/expressad/video/signal/j;

    move-result-object p2

    invoke-interface {p2}, Lcom/anythink/expressad/video/signal/j;->getCurrentProgress()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "progress"

    const-string v1, ""

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->Q()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->C()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "1.0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer$a;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->q(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer$a;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->r(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer$a;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->onAdClose()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer$a;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->s(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public final b(Lcom/anythink/expressad/out/j;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/a/c$a;->b(Lcom/anythink/expressad/out/j;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 0

    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/c$a;->c()V

    return-void
.end method

.method public final d()V
    .locals 0

    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/c$a;->d()V

    return-void
.end method
