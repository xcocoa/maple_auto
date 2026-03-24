.class public final Lcom/anythink/core/common/b/e$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/b/e;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/b/e$1;->a:Lcom/anythink/core/common/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/e$1;->a:Lcom/anythink/core/common/b/e;

    invoke-static {v0}, Lcom/anythink/core/common/b/e;->a(Lcom/anythink/core/common/b/e;)V

    return-void
.end method
