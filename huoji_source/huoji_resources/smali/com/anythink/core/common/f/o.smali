.class public Lcom/anythink/core/common/f/o;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public biddingNotice:Lcom/anythink/core/api/ATBiddingNotice;

.field public currency:Lcom/anythink/core/api/ATAdConst$CURRENCY;

.field public displayNoticeUrl:Ljava/lang/String;

.field public errorMsg:Ljava/lang/String;

.field public isSuccess:Z

.field public loseNoticeUrl:Ljava/lang/String;

.field public originPrice:D

.field public price:D

.field public sortPrice:D

.field public token:Ljava/lang/String;

.field public useType:I

.field public winNoticeUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZDDLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Ljava/lang/String;Lcom/anythink/core/api/ATAdConst$CURRENCY;)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-wide v2, p4

    move-object v4, p6

    move-object v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/anythink/core/common/f/o;-><init>(ZDLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Ljava/lang/String;Lcom/anythink/core/api/ATAdConst$CURRENCY;)V

    move-wide v1, p2

    iput-wide v1, v0, Lcom/anythink/core/common/f/o;->sortPrice:D

    return-void
.end method

.method public constructor <init>(ZDLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Ljava/lang/String;Lcom/anythink/core/api/ATAdConst$CURRENCY;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/core/common/f/o;->useType:I

    iput-boolean p1, p0, Lcom/anythink/core/common/f/o;->isSuccess:Z

    iput-wide p2, p0, Lcom/anythink/core/common/f/o;->originPrice:D

    iput-wide p2, p0, Lcom/anythink/core/common/f/o;->price:D

    iput-wide p2, p0, Lcom/anythink/core/common/f/o;->sortPrice:D

    iput-object p4, p0, Lcom/anythink/core/common/f/o;->token:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/core/common/f/o;->biddingNotice:Lcom/anythink/core/api/ATBiddingNotice;

    iput-object p6, p0, Lcom/anythink/core/common/f/o;->errorMsg:Ljava/lang/String;

    iput-object p7, p0, Lcom/anythink/core/common/f/o;->currency:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    return-void
.end method

.method public constructor <init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATAdConst$CURRENCY;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/core/common/f/o;->useType:I

    iput-boolean p1, p0, Lcom/anythink/core/common/f/o;->isSuccess:Z

    iput-wide p2, p0, Lcom/anythink/core/common/f/o;->originPrice:D

    iput-wide p2, p0, Lcom/anythink/core/common/f/o;->price:D

    iput-wide p2, p0, Lcom/anythink/core/common/f/o;->sortPrice:D

    iput-object p4, p0, Lcom/anythink/core/common/f/o;->token:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/core/common/f/o;->winNoticeUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/anythink/core/common/f/o;->loseNoticeUrl:Ljava/lang/String;

    iput-object p7, p0, Lcom/anythink/core/common/f/o;->displayNoticeUrl:Ljava/lang/String;

    iput-object p8, p0, Lcom/anythink/core/common/f/o;->errorMsg:Ljava/lang/String;

    iput-object p9, p0, Lcom/anythink/core/common/f/o;->currency:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    return-void
.end method


# virtual methods
.method public getPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/o;->price:D

    return-wide v0
.end method

.method public getSortPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/o;->sortPrice:D

    return-wide v0
.end method

.method public isSamePrice()Z
    .locals 5

    iget-wide v0, p0, Lcom/anythink/core/common/f/o;->sortPrice:D

    iget-wide v2, p0, Lcom/anythink/core/common/f/o;->originPrice:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSuccessWithUseType()Z
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/core/common/f/o;->isSuccess:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/anythink/core/common/f/o;->useType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setBiddingNotice(Lcom/anythink/core/api/ATBiddingNotice;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/o;->biddingNotice:Lcom/anythink/core/api/ATBiddingNotice;

    return-void
.end method

.method public setPrice(D)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/o;->price:D

    return-void
.end method

.method public setSortPrice(D)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/o;->sortPrice:D

    return-void
.end method
