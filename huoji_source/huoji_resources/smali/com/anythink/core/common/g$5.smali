.class public final Lcom/anythink/core/common/g$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/p/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/p/e;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/av;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/av;

.field public final synthetic b:Lcom/anythink/core/common/g;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/g;Lcom/anythink/core/common/f/av;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    iput-object p2, p0, Lcom/anythink/core/common/g$5;->a:Lcom/anythink/core/common/f/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/h;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    iget-object v0, v0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;)V

    sget-object v0, Lcom/anythink/core/common/b/h$n;->a:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/h$n;->n:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/anythink/core/common/o/p;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    invoke-static {v0, p1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/g;Lcom/anythink/core/common/f/h;)V

    iget-object p1, p0, Lcom/anythink/core/common/g$5;->a:Lcom/anythink/core/common/f/av;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->aD()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    invoke-static {p1, p2}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/g;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/b;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    invoke-virtual {p4}, Lcom/anythink/core/common/f/b;->e()Lcom/anythink/core/api/BaseAd;

    move-result-object p4

    invoke-static {v0, p1, p2, p4, p3}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/g;Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/common/f/av;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/p/b;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    invoke-virtual {v0, p1, p3}, Lcom/anythink/core/common/g;->a(Ljava/lang/String;Lcom/anythink/core/common/p/b;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    iget-object p1, p0, Lcom/anythink/core/common/g$5;->a:Lcom/anythink/core/common/f/av;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->aD()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    invoke-static {p1, p2}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/g;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    :cond_0
    return-void
.end method

.method public final varargs a(Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;[Lcom/anythink/core/api/BaseAd;)V
    .locals 4

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    iget-object v1, v1, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->p(Ljava/lang/String;)Lcom/anythink/core/api/IATAdFilter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, p3, v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/anythink/core/api/IATAdFilter;->isAdFilter(Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/IATThirdPartyMaterial;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p3, Lcom/anythink/core/common/p/b;

    invoke-direct {p3}, Lcom/anythink/core/common/p/b;-><init>()V

    const/16 v0, 0x8

    iput v0, p3, Lcom/anythink/core/common/p/b;->a:I

    invoke-virtual {p2}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->S()J

    move-result-wide v0

    iput-wide v0, p3, Lcom/anythink/core/common/p/b;->c:J

    const-string v0, "4008"

    const-string v1, ""

    invoke-static {v0, v1, v1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    iput-object v0, p3, Lcom/anythink/core/common/p/b;->b:Lcom/anythink/core/api/AdError;

    invoke-virtual {p2}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    iput-object v0, p3, Lcom/anythink/core/common/p/b;->d:Lcom/anythink/core/common/f/h;

    invoke-virtual {p2}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v0

    iput-object v0, p3, Lcom/anythink/core/common/p/b;->e:Lcom/anythink/core/common/f/av;

    iget-object v0, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    invoke-virtual {v0, p1, p3}, Lcom/anythink/core/common/g;->a(Ljava/lang/String;Lcom/anythink/core/common/p/b;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    if-eqz p3, :cond_2

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/core/common/g;->a(Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/util/List;)V

    :goto_1
    iget-object p1, p0, Lcom/anythink/core/common/g$5;->a:Lcom/anythink/core/common/f/av;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->aD()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_3

    iget-object p1, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    invoke-static {p1, p2}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/g;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    invoke-static {p2, p1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/g;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/core/common/g$5;->a:Lcom/anythink/core/common/f/av;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->aD()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    invoke-static {p1}, Lcom/anythink/core/common/g;->d(Lcom/anythink/core/common/g;)V

    :cond_0
    return-void
.end method
