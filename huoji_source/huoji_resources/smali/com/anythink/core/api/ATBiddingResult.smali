.class public Lcom/anythink/core/api/ATBiddingResult;
.super Lcom/anythink/core/common/f/o;
.source ""


# direct methods
.method private constructor <init>(ZDDLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Ljava/lang/String;Lcom/anythink/core/api/ATAdConst$CURRENCY;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/anythink/core/common/f/o;-><init>(ZDDLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Ljava/lang/String;Lcom/anythink/core/api/ATAdConst$CURRENCY;)V

    return-void
.end method

.method public static fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;
    .locals 11

    new-instance v10, Lcom/anythink/core/api/ATBiddingResult;

    sget-object v9, Lcom/anythink/core/api/ATAdConst$CURRENCY;->USD:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    move-object v8, p0

    invoke-direct/range {v0 .. v9}, Lcom/anythink/core/api/ATBiddingResult;-><init>(ZDDLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Ljava/lang/String;Lcom/anythink/core/api/ATAdConst$CURRENCY;)V

    return-object v10
.end method

.method public static success(DDLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;
    .locals 11

    new-instance v10, Lcom/anythink/core/api/ATBiddingResult;

    const/4 v1, 0x1

    const/4 v8, 0x0

    move-object v0, v10

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/anythink/core/api/ATBiddingResult;-><init>(ZDDLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Ljava/lang/String;Lcom/anythink/core/api/ATAdConst$CURRENCY;)V

    return-object v10
.end method

.method public static success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;)Lcom/anythink/core/api/ATBiddingResult;
    .locals 11

    new-instance v10, Lcom/anythink/core/api/ATBiddingResult;

    sget-object v9, Lcom/anythink/core/api/ATAdConst$CURRENCY;->USD:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    const/4 v1, 0x1

    const/4 v8, 0x0

    move-object v0, v10

    move-wide v2, p0

    move-wide v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v9}, Lcom/anythink/core/api/ATBiddingResult;-><init>(ZDDLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Ljava/lang/String;Lcom/anythink/core/api/ATAdConst$CURRENCY;)V

    return-object v10
.end method

.method public static success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;
    .locals 11

    new-instance v10, Lcom/anythink/core/api/ATBiddingResult;

    const/4 v1, 0x1

    const/4 v8, 0x0

    move-object v0, v10

    move-wide v2, p0

    move-wide v4, p0

    move-object v6, p2

    move-object v7, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/anythink/core/api/ATBiddingResult;-><init>(ZDDLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Ljava/lang/String;Lcom/anythink/core/api/ATAdConst$CURRENCY;)V

    return-object v10
.end method
