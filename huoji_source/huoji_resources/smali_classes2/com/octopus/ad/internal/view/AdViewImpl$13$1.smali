.class public Lcom/octopus/ad/internal/view/AdViewImpl$13$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdViewImpl$13;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup$MarginLayoutParams;

.field public final synthetic b:Lcom/octopus/ad/internal/view/AdViewImpl$13;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl$13;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$13$1;->b:Lcom/octopus/ad/internal/view/AdViewImpl$13;

    iput-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$13$1;->a:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$13$1;->b:Lcom/octopus/ad/internal/view/AdViewImpl$13;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$13$1;->a:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
