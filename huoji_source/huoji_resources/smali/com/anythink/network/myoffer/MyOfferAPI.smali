.class public Lcom/anythink/network/myoffer/MyOfferAPI;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkOffersOutOfCap(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/anythink/basead/f/a/b;->a(Landroid/content/Context;)Lcom/anythink/basead/f/a/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/anythink/basead/f/a/b;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getDefaultOfferId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/anythink/basead/f/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/f/a/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/anythink/basead/f/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOutOfCapOfferIds(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/anythink/basead/f/a/b;->a(Landroid/content/Context;)Lcom/anythink/basead/f/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/basead/f/a/b;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static preloadTopOnOffer(Landroid/content/Context;Lcom/anythink/core/common/f/aa;)V
    .locals 0

    invoke-static {p0}, Lcom/anythink/basead/f/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/f/a/a;

    move-result-object p0

    iget-object p1, p1, Lcom/anythink/core/common/f/aa;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/anythink/basead/f/a/a;->a(Ljava/lang/String;)V

    return-void
.end method
