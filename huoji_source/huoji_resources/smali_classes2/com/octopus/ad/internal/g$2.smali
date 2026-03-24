.class public Lcom/octopus/ad/internal/g$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/g;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/g;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/g$2;->a:Lcom/octopus/ad/internal/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/g$2;->a:Lcom/octopus/ad/internal/g;

    invoke-static {v0}, Lcom/octopus/ad/internal/g;->d(Lcom/octopus/ad/internal/g;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/g$2;->a:Lcom/octopus/ad/internal/g;

    invoke-static {v0}, Lcom/octopus/ad/internal/g;->d(Lcom/octopus/ad/internal/g;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/internal/g$2;->a:Lcom/octopus/ad/internal/g;

    invoke-static {v1}, Lcom/octopus/ad/internal/g;->e(Lcom/octopus/ad/internal/g;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
