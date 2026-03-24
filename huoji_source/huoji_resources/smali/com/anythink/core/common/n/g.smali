.class public final Lcom/anythink/core/common/n/g;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/anythink/core/common/f/h;IILjava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;ZZZZ)V
    .locals 3

    new-instance v0, Lcom/anythink/core/common/f/k;

    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->aj()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/common/f/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1004684"

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->ai()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->d:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->k:Ljava/lang/String;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    iput-object p5, v0, Lcom/anythink/core/common/f/k;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->aj()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/anythink/core/common/f/k;->n:Ljava/lang/String;

    const-string p0, "1"

    const-string p5, "2"

    if-eqz p8, :cond_0

    move-object p8, p0

    goto :goto_0

    :cond_0
    move-object p8, p5

    :goto_0
    iput-object p8, v0, Lcom/anythink/core/common/f/k;->o:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/anythink/core/common/f/k;->p:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iput-object p3, v0, Lcom/anythink/core/common/f/k;->q:Ljava/lang/String;

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iput-object p4, v0, Lcom/anythink/core/common/f/k;->r:Ljava/lang/String;

    :cond_2
    if-nez p6, :cond_3

    const-string p2, "0"

    goto :goto_1

    :cond_3
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    move-object p2, p0

    goto :goto_1

    :cond_4
    move-object p2, p5

    :goto_1
    iput-object p2, v0, Lcom/anythink/core/common/f/k;->s:Ljava/lang/String;

    iput-object p7, v0, Lcom/anythink/core/common/f/k;->t:Ljava/lang/String;

    if-eqz p9, :cond_5

    move-object p2, p0

    goto :goto_2

    :cond_5
    move-object p2, p5

    :goto_2
    iput-object p2, v0, Lcom/anythink/core/common/f/k;->u:Ljava/lang/String;

    if-eqz p10, :cond_6

    move-object p2, p0

    goto :goto_3

    :cond_6
    move-object p2, p5

    :goto_3
    iput-object p2, v0, Lcom/anythink/core/common/f/k;->v:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/anythink/core/common/f/k;->w:Ljava/lang/String;

    if-eqz p11, :cond_7

    goto :goto_4

    :cond_7
    move-object p0, p5

    :goto_4
    iput-object p0, v0, Lcom/anythink/core/common/f/k;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/core/common/n/e;->b(Lcom/anythink/core/common/f/k;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;)V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->q()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "null"

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {p1}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object p1, v1

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object p1, v1

    move-object v3, p1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "format: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " | adapter: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " | tracking: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " | unitGroupInfo: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " | baseAd: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    const-string p1, "Empty ATAdInfo"

    invoke-static {p1, p0, v0}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method
