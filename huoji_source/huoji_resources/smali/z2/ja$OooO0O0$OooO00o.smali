.class public Lz2/ja$OooO0O0$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/ja$OooO0O0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/ja$OooO0O0;


# direct methods
.method public constructor <init>(Lz2/ja$OooO0O0;)V
    .locals 0

    iput-object p1, p0, Lz2/ja$OooO0O0$OooO00o;->OooO00o:Lz2/ja$OooO0O0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 2

    iget-object v0, p0, Lz2/ja$OooO0O0$OooO00o;->OooO00o:Lz2/ja$OooO0O0;

    iget-object v0, v0, Lz2/ja$OooO0O0;->OoooOoO:Lz2/ja;

    invoke-static {v0}, Lz2/ja;->OooOooo(Lz2/ja;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public OooO0O0(Lz2/zh;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadILFYAd -- onNativeAdLoadFail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XJL_AD_TAG"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lz2/ja$OooO0O0$OooO00o;->OooO00o:Lz2/ja$OooO0O0;

    iget-object p1, p1, Lz2/ja$OooO0O0;->OoooOoO:Lz2/ja;

    invoke-static {p1}, Lz2/ja;->Oooo0O0(Lz2/ja;)Lz2/rh;

    move-result-object p1

    invoke-virtual {p1}, Lz2/rh;->OooOOo0()V

    return-void
.end method

.method public onNativeAdLoaded()V
    .locals 2

    const-string v0, "XJL_AD_TAG"

    const-string v1, "loadILFYAd: -- onNativeAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lz2/ja$OooO0O0$OooO00o;->OooO00o:Lz2/ja$OooO0O0;

    iget-object v0, v0, Lz2/ja$OooO0O0;->OoooOoO:Lz2/ja;

    invoke-static {v0}, Lz2/ja;->OooOooo(Lz2/ja;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
