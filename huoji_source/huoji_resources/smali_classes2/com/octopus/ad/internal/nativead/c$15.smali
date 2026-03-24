.class public Lcom/octopus/ad/internal/nativead/c$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/nativead/c;->a(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/nativead/c;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/nativead/c;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c$15;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c$15;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {p1}, Lcom/octopus/ad/internal/nativead/c;->d(Lcom/octopus/ad/internal/nativead/c;)Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/octopus/ad/internal/nativead/NativeAdEventListener;->onAdClose()V

    return-void
.end method
