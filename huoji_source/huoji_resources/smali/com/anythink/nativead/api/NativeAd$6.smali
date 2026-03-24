.class public final Lcom/anythink/nativead/api/NativeAd$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/api/NativeAd;->recordShow(Lcom/anythink/nativead/api/ATNativeAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/anythink/nativead/api/NativeAd;

.field public final synthetic val$adTrackingInfo:Lcom/anythink/core/common/f/h;


# direct methods
.method public constructor <init>(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/core/common/f/h;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd$6;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iput-object p2, p0, Lcom/anythink/nativead/api/NativeAd$6;->val$adTrackingInfo:Lcom/anythink/core/common/f/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$6;->this$0:Lcom/anythink/nativead/api/NativeAd;

    invoke-static {v0}, Lcom/anythink/nativead/api/NativeAd;->access$000(Lcom/anythink/nativead/api/NativeAd;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$6;->this$0:Lcom/anythink/nativead/api/NativeAd;

    invoke-static {v0}, Lcom/anythink/nativead/api/NativeAd;->access$100(Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/core/common/f/b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$6;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd$6;->val$adTrackingInfo:Lcom/anythink/core/common/f/h;

    invoke-static {v0, v1}, Lcom/anythink/nativead/api/NativeAd;->access$200(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/core/common/f/h;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/anythink/nativead/api/NativeAd$6;->val$adTrackingInfo:Lcom/anythink/core/common/f/h;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/h;->t()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    move-wide v7, v0

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$6;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v0, v0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd$6;->val$adTrackingInfo:Lcom/anythink/core/common/f/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/h;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setShowId(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd$6;->this$0:Lcom/anythink/nativead/api/NativeAd;

    invoke-static {v1}, Lcom/anythink/nativead/api/NativeAd;->access$300(Lcom/anythink/nativead/api/NativeAd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/nativead/api/NativeAd$6;->this$0:Lcom/anythink/nativead/api/NativeAd;

    invoke-static {v2}, Lcom/anythink/nativead/api/NativeAd;->access$100(Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/core/common/f/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Lcom/anythink/core/common/f/b;)V

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$6;->this$0:Lcom/anythink/nativead/api/NativeAd;

    invoke-static {v0}, Lcom/anythink/nativead/api/NativeAd;->access$300(Lcom/anythink/nativead/api/NativeAd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v3

    const/16 v4, 0xd

    iget-object v5, p0, Lcom/anythink/nativead/api/NativeAd$6;->val$adTrackingInfo:Lcom/anythink/core/common/f/h;

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$6;->this$0:Lcom/anythink/nativead/api/NativeAd;

    invoke-static {v0}, Lcom/anythink/nativead/api/NativeAd;->access$100(Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/core/common/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v6

    invoke-virtual/range {v3 .. v8}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/av;J)V

    :cond_2
    return-void
.end method
