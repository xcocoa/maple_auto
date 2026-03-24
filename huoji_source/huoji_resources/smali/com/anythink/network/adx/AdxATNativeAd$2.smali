.class public final Lcom/anythink/network/adx/AdxATNativeAd$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/ui/BaseMediaATView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/network/adx/AdxATNativeAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/adx/AdxATNativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$2;->a:Lcom/anythink/network/adx/AdxATNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickCloseView()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd$2;->a:Lcom/anythink/network/adx/AdxATNativeAd;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdDislikeClick()V

    return-void
.end method
