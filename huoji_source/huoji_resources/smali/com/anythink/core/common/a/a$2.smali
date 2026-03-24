.class public final Lcom/anythink/core/common/a/a$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/a/a;->b(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/anythink/core/common/a/a;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/a/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/a/a$2;->c:Lcom/anythink/core/common/a/a;

    iput-object p2, p0, Lcom/anythink/core/common/a/a$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/core/common/a/a$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/a/a$2;->c:Lcom/anythink/core/common/a/a;

    invoke-static {v0}, Lcom/anythink/core/common/a/a;->a(Lcom/anythink/core/common/a/a;)Lcom/anythink/core/common/c/k;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/a/a$2;->c:Lcom/anythink/core/common/a/a;

    iget-object v1, p0, Lcom/anythink/core/common/a/a$2;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/c/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/c/k;->a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/a/a;->a(Lcom/anythink/core/common/a/a;Lcom/anythink/core/common/c/k;)Lcom/anythink/core/common/c/k;

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/a/a$2;->c:Lcom/anythink/core/common/a/a;

    invoke-static {v0}, Lcom/anythink/core/common/a/a;->a(Lcom/anythink/core/common/a/a;)Lcom/anythink/core/common/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/a/a$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/c/k;->a(Ljava/lang/String;)V

    return-void
.end method
