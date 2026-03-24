.class public final Lcom/anythink/core/b/e$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/e$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/b/e$1;


# direct methods
.method public constructor <init>(Lcom/anythink/core/b/e$1;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/b/e$1$1;->a:Lcom/anythink/core/b/e$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/b/e$1$1;->a:Lcom/anythink/core/b/e$1;

    iget-object v0, v0, Lcom/anythink/core/b/e$1;->a:Lcom/anythink/core/b/e;

    invoke-static {v0}, Lcom/anythink/core/b/e;->a(Lcom/anythink/core/b/e;)V

    return-void
.end method
