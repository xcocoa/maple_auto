.class public Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public bidFloor:D

.field public currency:Lcom/anythink/core/api/ATAdConst$CURRENCY;


# direct methods
.method public constructor <init>(DLcom/anythink/core/api/ATAdConst$CURRENCY;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;->bidFloor:D

    iput-object p3, p0, Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;->currency:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    return-void
.end method


# virtual methods
.method public getBidFloor()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;->bidFloor:D

    return-wide v0
.end method

.method public getCurrency()Lcom/anythink/core/api/ATAdConst$CURRENCY;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;->currency:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    return-object v0
.end method
