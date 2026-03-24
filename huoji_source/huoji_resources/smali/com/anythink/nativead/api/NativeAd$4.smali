.class public final Lcom/anythink/nativead/api/NativeAd$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/nativead/api/NativeAd$ImpressionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/api/NativeAd;->renderViewToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/anythink/nativead/api/NativeAd;


# direct methods
.method public constructor <init>(Lcom/anythink/nativead/api/NativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd$4;->this$0:Lcom/anythink/nativead/api/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImpression()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/anythink/nativead/api/NativeAd$4;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v2, v2, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/anythink/nativead/unitgroup/a;->getDetail()Lcom/anythink/core/common/f/h;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/anythink/core/common/f/h;->t()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->ai()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/anythink/core/common/f/h;->F()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0, v1}, Lcom/anythink/core/common/o/h;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/h;->h(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$4;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v0, v0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    instance-of v1, v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/h;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setShowId(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$4;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v1, v0, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/NativeAd;->recordShow(Lcom/anythink/nativead/api/ATNativeAdView;)V

    return-void
.end method
