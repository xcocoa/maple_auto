.class public Lcom/anythink/basead/handler/OfferClickHandler;
.super Lcom/anythink/core/api/IOfferClickHandler;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/core/api/IOfferClickHandler;-><init>()V

    return-void
.end method

.method private static a(Lcom/anythink/core/common/f/l;)Lcom/anythink/basead/c/d;
    .locals 2

    invoke-static {}, Lcom/anythink/basead/a/c;->a()Lcom/anythink/basead/a/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/core/common/f/l;->d()I

    move-result v1

    invoke-virtual {p0}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/anythink/basead/a/c;->a(ILjava/lang/String;)Lcom/anythink/basead/c/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public startDownloadApp(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Ljava/lang/String;)Z
    .locals 9

    invoke-static {}, Lcom/anythink/basead/a/c;->a()Lcom/anythink/basead/a/c;

    move-result-object v0

    invoke-virtual {p2}, Lcom/anythink/core/common/f/l;->d()I

    move-result v1

    invoke-virtual {p2}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/a/c;->a(ILjava/lang/String;)Lcom/anythink/basead/c/d;

    move-result-object v6

    new-instance v8, Lcom/anythink/basead/a/h;

    invoke-direct {v8}, Lcom/anythink/basead/a/h;-><init>()V

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v7, p4

    invoke-static/range {v3 .. v8}, Lcom/anythink/basead/a/a;->a(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/c/d;Ljava/lang/String;Lcom/anythink/core/common/g/b;)Z

    move-result p1

    return p1
.end method
