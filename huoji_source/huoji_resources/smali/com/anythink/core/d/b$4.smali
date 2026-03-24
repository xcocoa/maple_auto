.class public final Lcom/anythink/core/d/b$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/d/b;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/d/b;


# direct methods
.method public constructor <init>(Lcom/anythink/core/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/d/b$4;->a:Lcom/anythink/core/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/l;->a()Lcom/anythink/core/common/l;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/d/b;->c()Lcom/anythink/core/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/d/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/l;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/i/e;->a()Lcom/anythink/core/common/i/e;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/d/b;->c()Lcom/anythink/core/d/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/i/e;->a(Lcom/anythink/core/d/a;)V

    return-void
.end method
