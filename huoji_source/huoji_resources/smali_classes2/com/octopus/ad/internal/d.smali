.class public Lcom/octopus/ad/internal/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/octopus/ad/internal/l;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/octopus/ad/internal/l;->f:Lcom/octopus/ad/internal/l;

    iput-object v0, p0, Lcom/octopus/ad/internal/d;->b:Lcom/octopus/ad/internal/l;

    const/4 v0, 0x3

    iput v0, p0, Lcom/octopus/ad/internal/d;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/d;->g:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/octopus/ad/internal/d;->h:I

    iput v1, p0, Lcom/octopus/ad/internal/d;->i:I

    iput v1, p0, Lcom/octopus/ad/internal/d;->j:I

    iput v1, p0, Lcom/octopus/ad/internal/d;->k:I

    iput-boolean v0, p0, Lcom/octopus/ad/internal/d;->m:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/d;->n:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/octopus/ad/internal/d;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/d;->o:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/octopus/ad/internal/d;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/d;->p:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/d;->f:I

    return-void
.end method

.method public a(Lcom/octopus/ad/internal/l;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/d;->b:Lcom/octopus/ad/internal/l;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/d;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/d;->m:Z

    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/d;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/d;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/d;->h:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/d;->d:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/d;->g:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/d;->i:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/d;->e:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/d;->j:I

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/d;->k:I

    return-void
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/d;->b:Lcom/octopus/ad/internal/l;

    sget-object v1, Lcom/octopus/ad/internal/l;->b:Lcom/octopus/ad/internal/l;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/octopus/ad/internal/d;->h:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/d;->b:Lcom/octopus/ad/internal/l;

    sget-object v1, Lcom/octopus/ad/internal/l;->b:Lcom/octopus/ad/internal/l;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/octopus/ad/internal/d;->i:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/d;->j:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/d;->k:I

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/d;->g:Z

    return v0
.end method

.method public k()Lcom/octopus/ad/internal/l;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/d;->b:Lcom/octopus/ad/internal/l;

    return-object v0
.end method

.method public l()Z
    .locals 2

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->no_identification:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/octopus/ad/internal/d;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "h"

    goto :goto_0

    :cond_0
    const-string v1, "v"

    :goto_0
    iput-object v1, p0, Lcom/octopus/ad/internal/d;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mOrientation"

    iget-object v2, p0, Lcom/octopus/ad/internal/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget v1, p0, Lcom/octopus/ad/internal/d;->h:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "size"

    const-string v3, "x"

    if-lez v1, :cond_2

    :try_start_1
    iget v1, p0, Lcom/octopus/ad/internal/d;->i:I

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/octopus/ad/internal/d;->h:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/octopus/ad/internal/d;->i:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {p0}, Lcom/octopus/ad/internal/d;->i()I

    move-result v1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/d;->h()I

    move-result v4

    if-lez v1, :cond_5

    if-lez v4, :cond_5

    iget-object v5, p0, Lcom/octopus/ad/internal/d;->b:Lcom/octopus/ad/internal/l;

    sget-object v6, Lcom/octopus/ad/internal/l;->c:Lcom/octopus/ad/internal/l;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget v5, p0, Lcom/octopus/ad/internal/d;->h:I

    if-ltz v5, :cond_3

    iget v5, p0, Lcom/octopus/ad/internal/d;->i:I

    if-gez v5, :cond_4

    :cond_3
    const-string v2, "max_size"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/octopus/ad/internal/d;->b:Lcom/octopus/ad/internal/l;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/octopus/ad/internal/utilities/HaoboLog;->jsonLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to encode adUnitParams, err = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method
