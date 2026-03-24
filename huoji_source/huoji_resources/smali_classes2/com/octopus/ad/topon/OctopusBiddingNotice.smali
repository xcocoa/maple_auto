.class public Lcom/octopus/ad/topon/OctopusBiddingNotice;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/api/ATBiddingNotice;


# instance fields
.field private octopusAd:Lcom/octopus/ad/IBidding;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/IBidding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusBiddingNotice;->octopusAd:Lcom/octopus/ad/IBidding;

    return-void
.end method


# virtual methods
.method public getNoticePriceCurrency()Lcom/anythink/core/api/ATAdConst$CURRENCY;
    .locals 1

    sget-object v0, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    return-object v0
.end method

.method public notifyBidDisplay(ZD)V
    .locals 0

    return-void
.end method

.method public notifyBidLoss(Ljava/lang/String;DLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p4, p0, Lcom/octopus/ad/topon/OctopusBiddingNotice;->octopusAd:Lcom/octopus/ad/IBidding;

    if-eqz p4, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "103"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "102"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    :goto_0
    const-string p1, "OTHER"

    packed-switch p4, :pswitch_data_0

    move-object p4, p1

    goto :goto_1

    :pswitch_0
    const-string p4, "1002"

    goto :goto_1

    :pswitch_1
    const-string p4, "1005"

    :goto_1
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusBiddingNotice;->octopusAd:Lcom/octopus/ad/IBidding;

    double-to-int p2, p2

    invoke-interface {v0, p2, p4, p1}, Lcom/octopus/ad/IBidding;->sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusBiddingNotice;->octopusAd:Lcom/octopus/ad/IBidding;

    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_2
        0xbdf3 -> :sswitch_1
        0xbdf4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public notifyBidWin(DDLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusBiddingNotice;->octopusAd:Lcom/octopus/ad/IBidding;

    if-eqz p1, :cond_0

    double-to-int p2, p3

    invoke-interface {p1, p2}, Lcom/octopus/ad/IBidding;->sendWinNotice(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusBiddingNotice;->octopusAd:Lcom/octopus/ad/IBidding;

    :cond_0
    return-void
.end method
