.class public final Lcom/anythink/core/common/p/e$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/m/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/p/e;->m()Lcom/anythink/core/common/m/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/p/e;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/p/e;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/p/e$2;->a:Lcom/anythink/core/common/p/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/p/e$2$1;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/p/e$2$1;-><init>(Lcom/anythink/core/common/p/e$2;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
