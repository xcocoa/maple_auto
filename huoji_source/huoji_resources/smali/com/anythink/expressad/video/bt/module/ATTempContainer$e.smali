.class public final Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;
.super Lcom/anythink/expressad/video/module/a/a/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/video/bt/module/ATTempContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/a/a/f;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/module/a/a/f;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    const-string v1, "Alert_window_status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p2, v1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->b(Lcom/anythink/expressad/video/bt/module/ATTempContainer;I)I

    iget-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    const-string v1, "complete_info"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->c(Lcom/anythink/expressad/video/bt/module/ATTempContainer;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    const/4 p2, 0x2

    const/4 v0, 0x0

    if-eq p1, p2, :cond_7

    const/16 p2, 0x79

    if-eq p1, p2, :cond_5

    const/16 p2, 0x10

    if-eq p1, p2, :cond_4

    const/16 p2, 0x11

    const/4 v1, 0x1

    if-eq p1, p2, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1, v1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a(Lcom/anythink/expressad/video/bt/module/ATTempContainer;Z)Z

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->d(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->d(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->d(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->l()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/video/bt/module/b/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/expressad/video/bt/module/b/h;->a()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/video/bt/module/b/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/expressad/video/bt/module/b/h;->a()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/video/bt/module/b/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/expressad/video/bt/module/b/h;->a()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget-object p1, p1, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setRewardStatus(Z)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->k(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/video/bt/module/b/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/expressad/video/bt/module/b/h;->b()V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a(Lcom/anythink/expressad/video/bt/module/ATTempContainer;Z)Z

    :cond_6
    :goto_1
    return-void

    :cond_7
    :pswitch_1
    const/16 p2, 0xc

    if-ne p1, p2, :cond_a

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->i(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->j(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/e/d;->U()I

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/video/bt/module/b/h;

    move-result-object p1

    const-string p2, "play error"

    invoke-interface {p1, p2}, Lcom/anythink/expressad/video/bt/module/b/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a(Lcom/anythink/expressad/video/bt/module/ATTempContainer;Z)Z

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->k(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->d(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->d(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->l(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->d(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->l()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/video/bt/module/b/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/expressad/video/bt/module/b/h;->a()V

    :cond_a
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSVideoModule()Lcom/anythink/expressad/video/signal/j;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lcom/anythink/expressad/video/signal/j;->videoOperate(I)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a(Lcom/anythink/expressad/video/bt/module/ATTempContainer;Z)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
