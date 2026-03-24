.class public abstract Lcom/anythink/basead/mraid/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final expand(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public final getMraidCampaign()Lcom/anythink/expressad/foundation/d/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final unload()V
    .locals 0

    invoke-interface {p0}, Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;->close()V

    return-void
.end method

.method public useCustomClose(Z)V
    .locals 0

    return-void
.end method
