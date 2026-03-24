.class public final Lcom/anythink/core/common/o/v;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/av;)Lcom/anythink/core/common/f/h;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/anythink/core/common/b/d;->setUnitGroupInfo(Lcom/anythink/core/common/f/av;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->N()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/anythink/core/common/b/d;->setRefresh(Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getInternalNetworkSDKVersion()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/anythink/core/common/f/h;->u:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->ae()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getInternalNetworkName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/f/au;->u(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/f/h;->e(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/b/d;->setTrackingInfo(Lcom/anythink/core/common/f/h;)V

    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;IILjava/util/Map;Lcom/anythink/core/common/f/c;)Lcom/anythink/core/common/f/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/anythink/core/d/f;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/common/f/c;",
            ")",
            "Lcom/anythink/core/common/f/h;"
        }
    .end annotation

    new-instance v0, Lcom/anythink/core/common/f/h;

    invoke-direct {v0}, Lcom/anythink/core/common/f/h;-><init>()V

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/au;->w(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/f/au;->x(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/anythink/core/common/f/h;->x(I)V

    const/4 p0, 0x0

    iput p0, v0, Lcom/anythink/core/common/f/h;->r:I

    const/4 p3, 0x2

    iput p3, v0, Lcom/anythink/core/common/f/h;->q:I

    iput p0, v0, Lcom/anythink/core/common/f/h;->s:I

    invoke-static {v0, p2}, Lcom/anythink/core/common/o/v;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/d/f;)V

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->ac()V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/n;->i()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/f/au;->L(I)V

    invoke-virtual {v0, p4}, Lcom/anythink/core/common/f/au;->M(I)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/anythink/core/d/f;->h()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/f/au;->J(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p3}, Lcom/anythink/core/common/f/au;->J(I)V

    :goto_0
    invoke-static {p5, v0}, Lcom/anythink/core/common/o/v;->a(Ljava/util/Map;Lcom/anythink/core/common/f/h;)V

    invoke-virtual {v0, p6}, Lcom/anythink/core/common/f/h;->a(Lcom/anythink/core/common/f/c;)V

    invoke-static {}, Lcom/anythink/core/basead/adx/api/ATAdxSetting;->getInstance()Lcom/anythink/core/basead/adx/api/ATAdxSetting;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/anythink/core/basead/adx/api/ATAdxSetting;->isAdxNetworkMode(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/f/h;->c(Z)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/anythink/core/common/f/h;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->aj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v3

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->aj()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/anythink/core/a/a;->a(I)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v6, 0x1

    aget v3, v3, v6

    invoke-static {p0}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v2}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;I)Lcom/anythink/core/common/f/ao;

    move-result-object p0

    add-int/2addr v5, v6

    invoke-virtual {p1, v5}, Lcom/anythink/core/common/f/h;->j(I)V

    add-int/2addr v3, v6

    invoke-virtual {p1, v3}, Lcom/anythink/core/common/f/h;->k(I)V

    if-eqz p0, :cond_0

    iget v2, p0, Lcom/anythink/core/common/f/ao;->c:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v2, v6

    invoke-virtual {p1, v2}, Lcom/anythink/core/common/f/h;->l(I)V

    if-eqz p0, :cond_1

    iget v4, p0, Lcom/anythink/core/common/f/ao;->d:I

    :cond_1
    add-int/2addr v4, v6

    invoke-virtual {p1, v4}, Lcom/anythink/core/common/f/h;->m(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Check cap waite time:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/av;IZ)V
    .locals 5

    const-string v0, "0"

    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->aj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p3

    invoke-virtual {p3}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object p3

    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3, v1}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/anythink/core/common/f/ao$a;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/h;->f(I)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->m()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/h;->e(I)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->d()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/h;->y(I)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/h;->l(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->D()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/h;->p(I)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->E()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/h;->q(I)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->T()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/h;->i(I)V

    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->s(I)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->n(Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    iget v1, p3, Lcom/anythink/core/common/f/ao$a;->e:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/h;->u(I)V

    if-eqz p3, :cond_2

    iget p2, p3, Lcom/anythink/core/common/f/ao$a;->d:I

    :cond_2
    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->v(I)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->L()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->ap()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->a(Z)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->y()D

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/anythink/core/common/f/h;->f(D)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->ag()D

    move-result-wide p2

    goto :goto_2

    :cond_3
    const-wide/16 p2, 0x0

    invoke-virtual {p0, p2, p3}, Lcom/anythink/core/common/f/h;->f(D)V

    :goto_2
    invoke-virtual {p0, p2, p3}, Lcom/anythink/core/common/f/h;->c(D)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->k()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->U()I

    move-result p2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_5

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->aa()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->M()Lcom/anythink/core/common/f/q;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-wide v1, p2, Lcom/anythink/core/common/f/q;->o:D

    invoke-virtual {p0}, Lcom/anythink/core/common/f/h;->o()D

    move-result-wide v3

    mul-double v1, v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/anythink/core/common/f/h;->d(D)V

    iget-object p2, p2, Lcom/anythink/core/common/f/q;->p:Ljava/lang/String;

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->y()D

    move-result-wide p2

    invoke-virtual {p0}, Lcom/anythink/core/common/f/h;->o()D

    move-result-wide v1

    mul-double p2, p2, v1

    invoke-virtual {p0, p2, p3}, Lcom/anythink/core/common/f/h;->d(D)V

    const-string p2, "exact"

    :goto_3
    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->i(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->ae()D

    move-result-wide p2

    invoke-virtual {p0}, Lcom/anythink/core/common/f/h;->o()D

    move-result-wide v1

    mul-double p2, p2, v1

    invoke-virtual {p0, p2, p3}, Lcom/anythink/core/common/f/h;->a(D)V

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->J()D

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/anythink/core/common/f/h;->d(D)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->G()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_7

    const-string p2, "publisher_defined"

    :cond_7
    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->i(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->j()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->r(I)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->z()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->v()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/core/common/f/au;->an:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->w()I

    move-result p2

    iput p2, p0, Lcom/anythink/core/common/f/au;->ao:I

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->x()I

    move-result p2

    iput p2, p0, Lcom/anythink/core/common/f/au;->ap:I

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->F()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->n(I)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->U()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->h(I)V

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->h()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const/16 v1, 0x23

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->d()I

    move-result v2

    if-ne v1, v2, :cond_8

    const-string v1, "my_oid"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v2

    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2, v1}, Lcom/anythink/core/d/f;->b(Ljava/lang/String;)Lcom/anythink/core/common/f/z;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v3, "o_id"

    invoke-virtual {p3, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "c_id"

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->aj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->m()I

    move-result v2

    if-eq v1, v2, :cond_9

    const/4 v1, 0x7

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->m()I

    move-result v2

    if-ne v1, v2, :cond_c

    :cond_9
    const-string v1, "layout_type"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const-string p2, "2"

    :cond_b
    const-string v0, "tpl_type"

    invoke-virtual {p3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    const/16 p2, 0x1c

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->d()I

    move-result v0

    if-ne p2, v0, :cond_d

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->M()Lcom/anythink/core/common/f/q;

    move-result-object p2

    if-eqz p2, :cond_d

    const-string v0, "origin_price"

    iget-wide v1, p2, Lcom/anythink/core/common/f/o;->originPrice:D

    invoke-virtual {p3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_d
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->p(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    nop

    :goto_5
    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->M()Lcom/anythink/core/common/f/q;

    move-result-object p2

    if-eqz p2, :cond_e

    iget-object p2, p2, Lcom/anythink/core/common/f/q;->g:Ljava/lang/String;

    goto :goto_6

    :cond_e
    const-string p2, ""

    :goto_6
    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->X()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->A(I)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/f/au;->u(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/ba;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/anythink/core/common/f/ba;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->c(I)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/ba;->f()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/f/h;->d(I)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/d/f;)V
    .locals 3

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->ah()I

    move-result v0

    const-string v1, "1"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/h;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->o(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lcom/anythink/core/d/f;->Z()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/au;->N(I)V

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/au;->v(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->ao()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->z(I)V

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->ah()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/au;->y(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->V()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->j(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->U()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->k(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->K()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/anythink/core/common/f/h;->e(D)V

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->T()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->c(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->W()Lcom/anythink/core/api/ATRewardInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->a(Lcom/anythink/core/api/ATRewardInfo;)V

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->X()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->d(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->x()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->c(I)V

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->y()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->d(I)V

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/au;->s(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->aI()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/au;->a(Lorg/json/JSONObject;)V

    :cond_1
    invoke-virtual {p1}, Lcom/anythink/core/d/f;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/au;->J(I)V

    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/w;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->b(I)V

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->aT()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/f/h;->H(I)V

    :cond_3
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/anythink/core/common/f/h;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/core/d/f;->aX()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, v0, p1}, Lcom/anythink/core/common/o/v;->a(Ljava/lang/String;Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/h;)V

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/h;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/anythink/core/common/f/c;

    invoke-direct {v0}, Lcom/anythink/core/common/f/c;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->ao()I

    move-result v1

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->Z()I

    move-result p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;II)V

    invoke-virtual {p2, v0}, Lcom/anythink/core/common/f/h;->a(Lcom/anythink/core/common/f/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/anythink/core/common/f/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/common/f/h;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_2

    const-string v0, "cp_placement_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/f/au;->t(Ljava/lang/String;)V

    :cond_0
    const-string v0, "cp_pre_md"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/f/au;->K(I)V

    :cond_1
    const-string v0, "cp_event_callback_info"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Lcom/anythink/core/common/f/au;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
