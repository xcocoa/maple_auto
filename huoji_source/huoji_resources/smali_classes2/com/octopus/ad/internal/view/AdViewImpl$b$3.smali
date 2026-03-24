.class public Lcom/octopus/ad/internal/view/AdViewImpl$b$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdViewImpl$b;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/octopus/ad/internal/view/AdViewImpl$b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl$b;I)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$3;->b:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iput p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$3;->b:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$3;->a:I

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->onAdFailedToLoad(I)V

    return-void
.end method
