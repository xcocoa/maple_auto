.class public final Lcom/anythink/core/common/p/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/api/ATCustomLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/p/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/anythink/core/api/ATBaseAdAdapter;

.field public b:Lcom/anythink/core/common/p/e;

.field public final synthetic c:Lcom/anythink/core/common/p/e;


# direct methods
.method private constructor <init>(Lcom/anythink/core/common/p/e;Lcom/anythink/core/common/p/e;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/p/e$a;->c:Lcom/anythink/core/common/p/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/anythink/core/common/p/e$a;->b:Lcom/anythink/core/common/p/e;

    iput-object p3, p0, Lcom/anythink/core/common/p/e$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/anythink/core/common/p/e;Lcom/anythink/core/common/p/e;Lcom/anythink/core/api/ATBaseAdAdapter;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/core/common/p/e$a;-><init>(Lcom/anythink/core/common/p/e;Lcom/anythink/core/common/p/e;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    return-void
.end method


# virtual methods
.method public final varargs onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/i/e;->a()Lcom/anythink/core/common/i/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/i/e;->d()V

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/p/e$a$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/p/e$a$2;-><init>(Lcom/anythink/core/common/p/e$a;[Lcom/anythink/core/api/BaseAd;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAdDataLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/p/e$a;->c:Lcom/anythink/core/common/p/e;

    invoke-static {v0}, Lcom/anythink/core/common/p/e;->d(Lcom/anythink/core/common/p/e;)V

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/p/e$a$1;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/p/e$a$1;-><init>(Lcom/anythink/core/common/p/e$a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/i/e;->a()Lcom/anythink/core/common/i/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/i/e;->d()V

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/p/e$a$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/core/common/p/e$a$3;-><init>(Lcom/anythink/core/common/p/e$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
