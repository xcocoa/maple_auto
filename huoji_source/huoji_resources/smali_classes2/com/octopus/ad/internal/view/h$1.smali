.class public Lcom/octopus/ad/internal/view/h$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/h;->a(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/h;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/h;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/h$1;->a:Lcom/octopus/ad/internal/view/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/octopus/ad/internal/view/h$1;->a:Lcom/octopus/ad/internal/view/h;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/h;->onHideCustomView()V

    return-void
.end method
