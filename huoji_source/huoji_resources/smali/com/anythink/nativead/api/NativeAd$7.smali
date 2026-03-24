.class public Lcom/anythink/nativead/api/NativeAd$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/api/NativeAd;->handleImpression(Lcom/anythink/nativead/api/ATNativeAdView;)V
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

    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd$7;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iput-object p2, p0, Lcom/anythink/nativead/api/NativeAd$7;->val$view:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$7;->this$0:Lcom/anythink/nativead/api/NativeAd;

    invoke-static {v0}, Lcom/anythink/nativead/api/NativeAd;->access$000(Lcom/anythink/nativead/api/NativeAd;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$7;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v0, v0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getDetail()Lcom/anythink/core/common/f/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd$7;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v1, v1, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v1}, Lcom/anythink/core/api/BaseAd;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/h;->a(Ljava/util/Map;)V

    sget-object v1, Lcom/anythink/core/common/b/h$n;->c:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$n;->l:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/p;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd$7;->this$0:Lcom/anythink/nativead/api/NativeAd;

    invoke-static {v1, v0}, Lcom/anythink/nativead/api/NativeAd;->access$200(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/core/common/f/h;)V

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd$7;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v2, p0, Lcom/anythink/nativead/api/NativeAd$7;->val$view:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-static {v1, v0, v2}, Lcom/anythink/nativead/api/NativeAd;->access$400(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/core/common/f/h;Lcom/anythink/nativead/api/ATNativeAdView;)V

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd$7;->this$0:Lcom/anythink/nativead/api/NativeAd;

    invoke-static {v1}, Lcom/anythink/nativead/api/NativeAd;->access$300(Lcom/anythink/nativead/api/NativeAd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/anythink/nativead/api/NativeAd$7;->this$0:Lcom/anythink/nativead/api/NativeAd;

    invoke-static {v3}, Lcom/anythink/nativead/api/NativeAd;->access$100(Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/core/common/f/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/av;)V

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$7;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v1, v0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-static {v0}, Lcom/anythink/nativead/api/NativeAd;->access$100(Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/core/common/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/api/ATBaseAdAdapter;)Lcom/anythink/core/common/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdInfo;->getNetworkFirmId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v1, "Native"

    iget-object v2, p0, Lcom/anythink/nativead/api/NativeAd$7;->this$0:Lcom/anythink/nativead/api/NativeAd;

    invoke-static {v2}, Lcom/anythink/nativead/api/NativeAd;->access$100(Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/core/common/f/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/nativead/api/NativeAd$7;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v3, v3, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/n/g;->a(Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;)V

    :cond_1
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    new-instance v2, Lcom/anythink/nativead/api/NativeAd$7$1;

    invoke-direct {v2, p0, v0}, Lcom/anythink/nativead/api/NativeAd$7$1;-><init>(Lcom/anythink/nativead/api/NativeAd$7;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    const-string v0, "NativeAd"

    const-string v1, "BaseNativeAd has been destotyed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
