.class public final Lcom/anythink/expressad/exoplayer/k$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/k;->e(Lcom/anythink/expressad/exoplayer/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/x;

.field public final synthetic b:Lcom/anythink/expressad/exoplayer/k;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/k;Lcom/anythink/expressad/exoplayer/x;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/k$1;->b:Lcom/anythink/expressad/exoplayer/k;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/k$1;->a:Lcom/anythink/expressad/exoplayer/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k$1;->a:Lcom/anythink/expressad/exoplayer/x;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k;->b(Lcom/anythink/expressad/exoplayer/x;)V
    :try_end_0
    .catch Lcom/anythink/expressad/exoplayer/g; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Unexpected error delivering message on external thread."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
