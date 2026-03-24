.class public Lcom/anythink/expressad/video/signal/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/video/signal/e;
.implements Lcom/anythink/expressad/video/signal/h;


# static fields
.field public static final j:Ljava/lang/String; = "DefaultJSContainerModule"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configurationChanged(III)V
    .locals 0

    return-void
.end method

.method public endCardShowing()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handlerPlayableException(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public hideAlertWebview()V
    .locals 0

    return-void
.end method

.method public install(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "install ,campaign="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public ivRewardAdsWithoutVideo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public miniCardLoaded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public miniCardShowing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyCloseBtn(I)V
    .locals 0

    return-void
.end method

.method public orientation(Landroid/content/res/Configuration;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "orientation ,config="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V
    .locals 0

    return-void
.end method

.method public readyStatus(I)V
    .locals 0

    return-void
.end method

.method public resizeMiniCard(III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showMiniCard width = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " radius = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public showAlertWebView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showEndcard(I)V
    .locals 0

    return-void
.end method

.method public showMiniCard(IIIII)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showMiniCard top = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " left = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " width = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " radius = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public showPlayableView()V
    .locals 0

    return-void
.end method

.method public showVideoClickView(I)V
    .locals 0

    return-void
.end method

.method public showVideoEndCover()V
    .locals 0

    return-void
.end method

.method public toggleCloseBtn(I)V
    .locals 0

    return-void
.end method

.method public webviewshow()V
    .locals 0

    return-void
.end method
