.class public Lcom/octopus/ad/internal/view/AdViewImpl$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdViewImpl;->a(IIIILcom/octopus/ad/internal/view/e$a;ZLcom/octopus/ad/internal/view/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/e;

.field public final synthetic b:Lcom/octopus/ad/internal/view/AdViewImpl;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl;Lcom/octopus/ad/internal/view/e;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$14;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    iput-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$14;->a:Lcom/octopus/ad/internal/view/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$14;->a:Lcom/octopus/ad/internal/view/e;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/e;->a()V

    return-void
.end method
