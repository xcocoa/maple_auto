.class public final Lcom/anythink/core/common/a/d$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/a/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/a/d;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/a/d$3;->a:Lcom/anythink/core/common/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/a/d$3;->a:Lcom/anythink/core/common/a/d;

    invoke-static {v0}, Lcom/anythink/core/common/a/d;->a(Lcom/anythink/core/common/a/d;)Lcom/anythink/core/common/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/c/f;->c()V

    return-void
.end method
