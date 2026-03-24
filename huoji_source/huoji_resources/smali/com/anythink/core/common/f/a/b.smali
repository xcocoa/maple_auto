.class public Lcom/anythink/core/common/f/a/b;
.super Lcom/anythink/core/common/f/l;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/a/e;)V
    .locals 4

    invoke-direct {p0}, Lcom/anythink/core/common/f/l;-><init>()V

    const-class v0, Lcom/anythink/core/common/f/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/a/e;->getIconImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/l;->o(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/a/e;->getStarRating()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/l;->i(I)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/a/e;->getMainImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/l;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/a/e;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/l;->m(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/a/e;->getCallToActionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/l;->s(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/a/e;->getDescriptionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/l;->n(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/a/e;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/l;->r(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/a/e;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/l;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/a/e;->getAdAppInfo()Lcom/anythink/core/api/ATAdAppInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->A()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdAppInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/a/e;->getAdAppInfo()Lcom/anythink/core/api/ATAdAppInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/api/ATAdAppInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v1}, Lcom/anythink/core/api/ATAdAppInfo;->getPublisher()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/f/l;->z(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/anythink/core/api/ATAdAppInfo;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/f/l;->A(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/anythink/core/api/ATAdAppInfo;->getAppPrivacyUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/f/l;->B(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/anythink/core/api/ATAdAppInfo;->getAppPermissonUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/f/l;->C(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/anythink/core/api/ATAdAppInfo;->getFunctionUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/f/l;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final P()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/anythink/core/common/f/n;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f/n;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/anythink/core/common/f/l;->y()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final d()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
