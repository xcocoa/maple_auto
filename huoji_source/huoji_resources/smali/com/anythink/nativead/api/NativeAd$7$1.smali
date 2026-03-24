.class public final Lcom/anythink/nativead/api/NativeAd$7$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/api/NativeAd$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/anythink/nativead/api/NativeAd$7;

.field public final synthetic val$atAdInfo:Lcom/anythink/core/api/ATAdInfo;


# direct methods
.method public constructor <init>(Lcom/anythink/nativead/api/NativeAd$7;Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd$7$1;->this$1:Lcom/anythink/nativead/api/NativeAd$7;

    iput-object p2, p0, Lcom/anythink/nativead/api/NativeAd$7$1;->val$atAdInfo:Lcom/anythink/core/api/ATAdInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$7$1;->this$1:Lcom/anythink/nativead/api/NativeAd$7;

    iget-object v0, v0, Lcom/anythink/nativead/api/NativeAd$7;->this$0:Lcom/anythink/nativead/api/NativeAd;

    invoke-static {v0}, Lcom/anythink/nativead/api/NativeAd;->access$500(Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/nativead/api/ATNativeEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$7$1;->this$1:Lcom/anythink/nativead/api/NativeAd$7;

    iget-object v0, v0, Lcom/anythink/nativead/api/NativeAd$7;->this$0:Lcom/anythink/nativead/api/NativeAd;

    invoke-static {v0}, Lcom/anythink/nativead/api/NativeAd;->access$500(Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/nativead/api/ATNativeEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd$7$1;->this$1:Lcom/anythink/nativead/api/NativeAd$7;

    iget-object v1, v1, Lcom/anythink/nativead/api/NativeAd$7;->val$view:Lcom/anythink/nativead/api/ATNativeAdView;

    iget-object v2, p0, Lcom/anythink/nativead/api/NativeAd$7$1;->val$atAdInfo:Lcom/anythink/core/api/ATAdInfo;

    invoke-interface {v0, v1, v2}, Lcom/anythink/nativead/api/ATNativeEventListener;->onAdImpressed(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/core/api/ATAdInfo;)V

    :cond_0
    return-void
.end method
