.class public final Lcom/anythink/core/common/k$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/k;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/k;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/k;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/k$1;->a:Lcom/anythink/core/common/k;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/anythink/core/common/k$1;->a:Lcom/anythink/core/common/k;

    invoke-virtual {p1}, Lcom/anythink/core/common/k;->a()V

    return-void
.end method
