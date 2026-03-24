.class public Lz2/bi$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/nativead/api/ATNativeNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/bi;->OooOOO(Landroid/content/Context;Landroid/view/ViewGroup;Lz2/di;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/di;

.field public final synthetic OooO0O0:Landroid/content/Context;

.field public final synthetic OooO0OO:Landroid/view/ViewGroup;

.field public final synthetic OooO0Oo:Lz2/bi;


# direct methods
.method public constructor <init>(Lz2/bi;Lz2/di;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lz2/bi$OooO0O0;->OooO0Oo:Lz2/bi;

    iput-object p2, p0, Lz2/bi$OooO0O0;->OooO00o:Lz2/di;

    iput-object p3, p0, Lz2/bi$OooO0O0;->OooO0O0:Landroid/content/Context;

    iput-object p4, p0, Lz2/bi$OooO0O0;->OooO0OO:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .locals 3

    iget-object v0, p0, Lz2/bi$OooO0O0;->OooO00o:Lz2/di;

    if-eqz v0, :cond_0

    new-instance v1, Lz2/zh;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lz2/zh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lz2/di;->OooO0O0(Lz2/zh;)V

    :cond_0
    return-void
.end method

.method public onNativeAdLoaded()V
    .locals 4

    iget-object v0, p0, Lz2/bi$OooO0O0;->OooO00o:Lz2/di;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz2/di;->onNativeAdLoaded()V

    :cond_0
    iget-object v0, p0, Lz2/bi$OooO0O0;->OooO0Oo:Lz2/bi;

    iget-object v1, p0, Lz2/bi$OooO0O0;->OooO0O0:Landroid/content/Context;

    iget-object v2, p0, Lz2/bi$OooO0O0;->OooO0OO:Landroid/view/ViewGroup;

    iget-object v3, p0, Lz2/bi$OooO0O0;->OooO00o:Lz2/di;

    invoke-static {v0, v1, v2, v3}, Lz2/bi;->OooO0O0(Lz2/bi;Landroid/content/Context;Landroid/view/ViewGroup;Lz2/di;)V

    return-void
.end method
