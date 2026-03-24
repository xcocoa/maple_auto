.class public final Lcom/anythink/nativead/api/ATNative$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/api/ATNative$1;->onAdLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/anythink/nativead/api/ATNative$1;


# direct methods
.method public constructor <init>(Lcom/anythink/nativead/api/ATNative$1;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNative$1$1;->this$1:Lcom/anythink/nativead/api/ATNative$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative$1$1;->this$1:Lcom/anythink/nativead/api/ATNative$1;

    iget-object v0, v0, Lcom/anythink/nativead/api/ATNative$1;->this$0:Lcom/anythink/nativead/api/ATNative;

    iget-object v0, v0, Lcom/anythink/nativead/api/ATNative;->mListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/nativead/api/ATNativeNetworkListener;->onNativeAdLoaded()V

    :cond_0
    return-void
.end method
