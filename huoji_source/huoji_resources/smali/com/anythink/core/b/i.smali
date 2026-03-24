.class public Lcom/anythink/core/b/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/b/i$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "i"


# instance fields
.field public b:Lcom/anythink/core/common/f/a;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/anythink/core/b/i$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/anythink/core/common/f/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object p1, p1, Lcom/anythink/core/common/f/a;->q:Ljava/util/Map;

    iput-object p1, p0, Lcom/anythink/core/b/i;->c:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/av;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v0, v0, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/ba;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/ba;->a()Lcom/anythink/core/d/f;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v2, v1, Lcom/anythink/core/common/f/a;->e:Ljava/lang/String;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, p2}, Lcom/anythink/core/d/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/av;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->s:Lcom/anythink/core/common/f/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/h;->V()Lcom/anythink/core/common/f/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p2, v2, v2}, Lcom/anythink/core/common/o/v;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/av;IZ)V

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/h;->a(Ljava/util/Map;Lcom/anythink/core/common/f/h;)V

    iget-object v1, p0, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/core/b/i;->c:Ljava/util/Map;

    new-instance v3, Lcom/anythink/core/b/i$2;

    invoke-direct {v3, p0, p2}, Lcom/anythink/core/b/i$2;-><init>(Lcom/anythink/core/b/i;Lcom/anythink/core/common/f/av;)V

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/anythink/core/api/ATBaseAdAdapter;->getBidRequestInfo(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBidRequestInfoListener;)V

    iget-object v0, p0, Lcom/anythink/core/b/i;->d:Lcom/anythink/core/b/i$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p1}, Lcom/anythink/core/b/i$a;->a(Lcom/anythink/core/common/f/av;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/anythink/core/b/i;->d:Lcom/anythink/core/b/i$a;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/b/i$a;->a(Ljava/lang/String;Lcom/anythink/core/common/f/av;)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/b/i;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/av;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v0, v0, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/ba;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/ba;->a()Lcom/anythink/core/d/f;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v2, v1, Lcom/anythink/core/common/f/a;->e:Ljava/lang/String;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, p2}, Lcom/anythink/core/d/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/av;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->s:Lcom/anythink/core/common/f/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/h;->V()Lcom/anythink/core/common/f/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p2, v2, v2}, Lcom/anythink/core/common/o/v;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/av;IZ)V

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/h;->a(Ljava/util/Map;Lcom/anythink/core/common/f/h;)V

    iget-object v1, p0, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/core/b/i;->c:Ljava/util/Map;

    new-instance v3, Lcom/anythink/core/b/i$2;

    invoke-direct {v3, p0, p2}, Lcom/anythink/core/b/i$2;-><init>(Lcom/anythink/core/b/i;Lcom/anythink/core/common/f/av;)V

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/anythink/core/api/ATBaseAdAdapter;->getBidRequestInfo(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBidRequestInfoListener;)V

    iget-object v0, p0, Lcom/anythink/core/b/i;->d:Lcom/anythink/core/b/i$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p1}, Lcom/anythink/core/b/i$a;->a(Lcom/anythink/core/common/f/av;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/anythink/core/b/i;->d:Lcom/anythink/core/b/i$a;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/anythink/core/b/i$a;->a(Ljava/lang/String;Lcom/anythink/core/common/f/av;)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/b/i;Lcom/anythink/core/common/f/av;Lcom/anythink/core/api/ATBidRequestInfo;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/b/i$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/anythink/core/b/i$3;-><init>(Lcom/anythink/core/b/i;Lcom/anythink/core/api/ATBidRequestInfo;Lcom/anythink/core/common/f/av;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/av;Lcom/anythink/core/api/ATBidRequestInfo;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/b/i$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/anythink/core/b/i$3;-><init>(Lcom/anythink/core/b/i;Lcom/anythink/core/api/ATBidRequestInfo;Lcom/anythink/core/common/f/av;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/av;Lcom/anythink/core/b/i$a;)V
    .locals 2

    iput-object p2, p0, Lcom/anythink/core/b/i;->d:Lcom/anythink/core/b/i$a;

    invoke-static {p1}, Lcom/anythink/core/common/o/j;->a(Lcom/anythink/core/common/f/av;)Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "There is no Network Adapter."

    invoke-interface {p2, v0, p1}, Lcom/anythink/core/b/i$a;->a(Ljava/lang/String;Lcom/anythink/core/common/f/av;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object p2

    new-instance v1, Lcom/anythink/core/b/i$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/anythink/core/b/i$1;-><init>(Lcom/anythink/core/b/i;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/av;)V

    invoke-virtual {p2, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
