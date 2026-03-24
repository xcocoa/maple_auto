.class public Lcom/octopus/ad/internal/view/AdViewImpl$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdViewImpl;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/AdViewImpl;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$12;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$12;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/octopus/ad/internal/view/AdViewImpl$12$1;

    invoke-direct {v2, p0}, Lcom/octopus/ad/internal/view/AdViewImpl$12$1;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl$12;)V

    invoke-direct {v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(Lcom/octopus/ad/internal/view/AdViewImpl;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;

    return-void
.end method
