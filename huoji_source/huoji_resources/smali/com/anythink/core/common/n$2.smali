.class public final Lcom/anythink/core/common/n$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/n;->a(ILcom/anythink/core/common/f/v;Lcom/anythink/core/common/f/ba;Lcom/anythink/core/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/v;

.field public final synthetic b:Lcom/anythink/core/common/f;

.field public final synthetic c:Lcom/anythink/core/common/n;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/n;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/f;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/n$2;->c:Lcom/anythink/core/common/n;

    iput-object p2, p0, Lcom/anythink/core/common/n$2;->a:Lcom/anythink/core/common/f/v;

    iput-object p3, p0, Lcom/anythink/core/common/n$2;->b:Lcom/anythink/core/common/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/anythink/core/common/n$2;->a:Lcom/anythink/core/common/f/v;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/v;->b()Lcom/anythink/core/common/f/v;

    move-result-object v5

    const/16 v0, 0x8

    iput v0, v5, Lcom/anythink/core/common/f/v;->d:I

    const/4 v0, 0x0

    iput-object v0, v5, Lcom/anythink/core/common/f/v;->f:Lcom/anythink/core/common/n;

    iput-object v0, v5, Lcom/anythink/core/common/f/v;->e:Lcom/anythink/core/common/b/b;

    iget-object v1, p0, Lcom/anythink/core/common/n$2;->b:Lcom/anythink/core/common/f;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/anythink/core/common/n$2;->c:Lcom/anythink/core/common/n;

    iget-object v3, v0, Lcom/anythink/core/common/n;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/anythink/core/common/n;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/b/a;)V

    return-void
.end method
