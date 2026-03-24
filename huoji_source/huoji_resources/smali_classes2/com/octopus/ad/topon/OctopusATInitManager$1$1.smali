.class public Lcom/octopus/ad/topon/OctopusATInitManager$1$1;
.super Lcom/octopus/ad/OctopusAdSdkController;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/topon/OctopusATInitManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/octopus/ad/topon/OctopusATInitManager$1;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/topon/OctopusATInitManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATInitManager$1$1;->this$1:Lcom/octopus/ad/topon/OctopusATInitManager$1;

    invoke-direct {p0}, Lcom/octopus/ad/OctopusAdSdkController;-><init>()V

    return-void
.end method


# virtual methods
.method public getImei()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/octopus/ad/OctopusAdSdkController;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/octopus/ad/OctopusAdSdkController;->getOaid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCanUsePhoneState()Z
    .locals 1

    invoke-super {p0}, Lcom/octopus/ad/OctopusAdSdkController;->isCanUsePhoneState()Z

    move-result v0

    return v0
.end method
