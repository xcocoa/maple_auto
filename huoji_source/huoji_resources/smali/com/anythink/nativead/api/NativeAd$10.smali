.class public final Lcom/anythink/nativead/api/NativeAd$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/api/NativeAd;->handleVideoStart(Lcom/anythink/nativead/api/ATNativeAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/anythink/nativead/api/NativeAd;

.field public final synthetic val$view:Lcom/anythink/nativead/api/ATNativeAdView;


# direct methods
.method public constructor <init>(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/nativead/api/ATNativeAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd$10;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iput-object p2, p0, Lcom/anythink/nativead/api/NativeAd$10;->val$view:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$10;->this$0:Lcom/anythink/nativead/api/NativeAd;

    invoke-static {v0}, Lcom/anythink/nativead/api/NativeAd;->access$500(Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/nativead/api/ATNativeEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$10;->this$0:Lcom/anythink/nativead/api/NativeAd;

    invoke-static {v0}, Lcom/anythink/nativead/api/NativeAd;->access$500(Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/nativead/api/ATNativeEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd$10;->val$view:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-interface {v0, v1}, Lcom/anythink/nativead/api/ATNativeEventListener;->onAdVideoStart(Lcom/anythink/nativead/api/ATNativeAdView;)V

    :cond_0
    return-void
.end method
