.class public Lcom/octopus/ad/internal/view/AdViewImpl$18;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdViewImpl;->setAutoClickStrategy(Landroid/content/Context;Lcom/octopus/ad/internal/network/ServerResponse;Lcom/octopus/ad/internal/view/AdViewImpl$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/AdViewImpl$d;

.field public final synthetic b:[I


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl$d;[I)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$18;->a:Lcom/octopus/ad/internal/view/AdViewImpl$d;

    iput-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$18;->b:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$18;->a:Lcom/octopus/ad/internal/view/AdViewImpl$d;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$18;->b:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, v1, v2

    invoke-interface {v0, v3}, Lcom/octopus/ad/internal/view/AdViewImpl$d;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
