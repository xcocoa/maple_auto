.class public final Lcom/anythink/core/c/b/d$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/c/b/d;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/anythink/core/c/b/d;


# direct methods
.method public constructor <init>(Lcom/anythink/core/c/b/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/c/b/d$1;->b:Lcom/anythink/core/c/b/d;

    iput-object p2, p0, Lcom/anythink/core/c/b/d$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/c/b/d$1;->b:Lcom/anythink/core/c/b/d;

    invoke-static {v0}, Lcom/anythink/core/c/b/d;->a(Lcom/anythink/core/c/b/d;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/c/b/d$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/core/c/b/d$1;->b:Lcom/anythink/core/c/b/d;

    invoke-static {v0}, Lcom/anythink/core/c/b/d;->b(Lcom/anythink/core/c/b/d;)Lcom/anythink/core/c/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/c/b/d$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b/e;->a(Ljava/lang/String;)V

    return-void
.end method
