.class public Lcom/cyjh/http/bean/response/FengLingAdInfo$WebTracks;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/http/bean/response/FengLingAdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebTracks"
.end annotation


# instance fields
.field private ctrackUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dstrackUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imptrackUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private istrackUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/cyjh/http/bean/response/FengLingAdInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/cyjh/http/bean/response/FengLingAdInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo$WebTracks;->this$0:Lcom/cyjh/http/bean/response/FengLingAdInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCtrackUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo$WebTracks;->ctrackUrls:Ljava/util/List;

    return-object v0
.end method

.method public getDstrackUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo$WebTracks;->dstrackUrls:Ljava/util/List;

    return-object v0
.end method

.method public getImptrackUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo$WebTracks;->imptrackUrls:Ljava/util/List;

    return-object v0
.end method

.method public getIstrackUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo$WebTracks;->istrackUrls:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo$WebTracks;->type:I

    return v0
.end method

.method public setCtrackUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo$WebTracks;->ctrackUrls:Ljava/util/List;

    return-void
.end method

.method public setDstrackUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo$WebTracks;->dstrackUrls:Ljava/util/List;

    return-void
.end method

.method public setImptrackUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo$WebTracks;->imptrackUrls:Ljava/util/List;

    return-void
.end method

.method public setIstrackUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo$WebTracks;->istrackUrls:Ljava/util/List;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo$WebTracks;->type:I

    return-void
.end method
