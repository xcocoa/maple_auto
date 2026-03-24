.class public Lcom/octopus/ad/internal/nativead/c$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/nativead/NativeAdShownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/nativead/c;->bindUnifiedView(Landroid/view/ViewGroup;Ljava/util/List;Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V
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

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c$8;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdShown()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$8;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v0}, Lcom/octopus/ad/internal/nativead/c;->d(Lcom/octopus/ad/internal/nativead/c;)Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$8;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v0}, Lcom/octopus/ad/internal/nativead/c;->d(Lcom/octopus/ad/internal/nativead/c;)Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/nativead/NativeAdEventListener;->onADExposed()V

    :cond_0
    return-void
.end method
