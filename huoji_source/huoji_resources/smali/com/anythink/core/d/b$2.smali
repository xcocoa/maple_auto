.class public final Lcom/anythink/core/d/b$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/h/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/anythink/core/d/b;


# direct methods
.method public constructor <init>(Lcom/anythink/core/d/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/d/b$2;->b:Lcom/anythink/core/d/b;

    iput-object p2, p0, Lcom/anythink/core/d/b$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadCanceled(I)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/core/d/b$2;->b:Lcom/anythink/core/d/b;

    invoke-static {p1}, Lcom/anythink/core/d/b;->b(Lcom/anythink/core/d/b;)Z

    iget-object p1, p0, Lcom/anythink/core/d/b$2;->b:Lcom/anythink/core/d/b;

    invoke-static {p1}, Lcom/anythink/core/d/b;->d(Lcom/anythink/core/d/b;)V

    return-void
.end method

.method public final onLoadError(ILjava/lang/String;Lcom/anythink/core/api/AdError;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/core/d/b$2;->b:Lcom/anythink/core/d/b;

    invoke-static {p1}, Lcom/anythink/core/d/b;->b(Lcom/anythink/core/d/b;)Z

    sget-object p1, Lcom/anythink/core/d/b;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/core/d/b$2;->b:Lcom/anythink/core/d/b;

    invoke-static {p1}, Lcom/anythink/core/d/b;->d(Lcom/anythink/core/d/b;)V

    return-void
.end method

.method public final onLoadFinish(ILjava/lang/Object;)V
    .locals 2

    iget-object p1, p0, Lcom/anythink/core/d/b$2;->b:Lcom/anythink/core/d/b;

    invoke-static {p1}, Lcom/anythink/core/d/b;->b(Lcom/anythink/core/d/b;)Z

    iget-object p1, p0, Lcom/anythink/core/d/b$2;->b:Lcom/anythink/core/d/b;

    invoke-static {p1}, Lcom/anythink/core/d/b;->c(Lcom/anythink/core/d/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/d/b$2;->a:Ljava/lang/String;

    invoke-static {p1, v0, p2, v1}, Lcom/anythink/core/d/b;->a(Lcom/anythink/core/d/b;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onLoadStart(I)V
    .locals 0

    return-void
.end method
