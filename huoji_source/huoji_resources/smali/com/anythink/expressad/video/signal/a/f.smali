.class public Lcom/anythink/expressad/video/signal/a/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/video/signal/i;


# static fields
.field public static final a:Ljava/lang/String; = "js"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "{}"

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public handlerPlayableException(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public install(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "install:campaignEx="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public notifyCloseBtn(I)V
    .locals 0

    return-void
.end method

.method public orientation(Landroid/content/res/Configuration;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "orientation\uff0cconfig="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public readyStatus(I)V
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
