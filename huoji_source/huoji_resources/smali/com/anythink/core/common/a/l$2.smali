.class public final Lcom/anythink/core/common/a/l$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/a/l;->a(Lcom/anythink/core/common/a/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/a/k;

.field public final synthetic b:Lcom/anythink/core/common/a/l;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/a/l;Lcom/anythink/core/common/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/a/l$2;->b:Lcom/anythink/core/common/a/l;

    iput-object p2, p0, Lcom/anythink/core/common/a/l$2;->a:Lcom/anythink/core/common/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/anythink/core/common/a/l$2;->a:Lcom/anythink/core/common/a/k;

    invoke-virtual {v1}, Lcom/anythink/core/common/a/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/a/l$2;->b:Lcom/anythink/core/common/a/l;

    invoke-static {v0}, Lcom/anythink/core/common/a/l;->a(Lcom/anythink/core/common/a/l;)Lcom/anythink/core/common/c/m;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/a/l$2;->a:Lcom/anythink/core/common/a/k;

    invoke-virtual {v1}, Lcom/anythink/core/common/a/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/c/m;->c(Ljava/lang/String;)V

    return-void
.end method
