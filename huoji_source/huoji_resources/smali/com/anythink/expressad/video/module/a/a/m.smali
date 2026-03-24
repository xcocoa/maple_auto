.class public final Lcom/anythink/expressad/video/module/a/a/m;
.super Lcom/anythink/expressad/video/module/a/a/o;
.source ""


# static fields
.field public static final ag:J = 0xbb8L


# instance fields
.field private ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

.field private aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

.field private ak:I

.field private final al:Lcom/anythink/core/common/m/a;

.field private am:Z

.field private an:Z

.field private ao:I

.field private ap:I

.field private final aq:Lcom/anythink/core/common/m/b;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;Lcom/anythink/expressad/video/module/AnythinkContainerView;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/c/c;Lcom/anythink/expressad/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;IILcom/anythink/expressad/video/module/a/a;IZI)V
    .locals 12

    move-object v9, p0

    move-object v10, p1

    move-object v11, p2

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/anythink/expressad/video/module/a/a/o;-><init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/c/c;Lcom/anythink/expressad/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/video/module/a/a;IZ)V

    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iput-object v0, v9, Lcom/anythink/expressad/video/module/a/a/m;->al:Lcom/anythink/core/common/m/a;

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/anythink/expressad/video/module/a/a/m;->am:Z

    iput-boolean v0, v9, Lcom/anythink/expressad/video/module/a/a/m;->an:Z

    const/4 v1, 0x1

    iput v1, v9, Lcom/anythink/expressad/video/module/a/a/m;->ao:I

    new-instance v2, Lcom/anythink/expressad/video/module/a/a/m$1;

    invoke-direct {v2, p0}, Lcom/anythink/expressad/video/module/a/a/m$1;-><init>(Lcom/anythink/expressad/video/module/a/a/m;)V

    iput-object v2, v9, Lcom/anythink/expressad/video/module/a/a/m;->aq:Lcom/anythink/core/common/m/b;

    iput-object v10, v9, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iput-object v11, v9, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    move/from16 v2, p8

    iput v2, v9, Lcom/anythink/expressad/video/module/a/a/m;->ap:I

    move/from16 v2, p9

    iput v2, v9, Lcom/anythink/expressad/video/module/a/a/m;->ak:I

    move/from16 v2, p13

    iput v2, v9, Lcom/anythink/expressad/video/module/a/a/m;->ao:I

    if-eqz v10, :cond_1

    invoke-virtual {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getVideoSkipTime()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v9, Lcom/anythink/expressad/video/module/a/a/m;->am:Z

    :cond_1
    if-eqz v10, :cond_2

    if-nez v11, :cond_3

    :cond_2
    iput-boolean v0, v9, Lcom/anythink/expressad/video/module/a/a/k;->W:Z

    :cond_3
    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/module/a/a/m;)Lcom/anythink/expressad/video/module/AnythinkContainerView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    return-object p0
.end method

.method private a(II)V
    .locals 4

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->am:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->ak:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ltz v1, :cond_2

    if-lt p1, v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    if-eq v1, v3, :cond_4

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->i()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v0, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrPlayNum:I

    if-le v0, v2, :cond_4

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->i()I

    move-result v0

    if-le p1, v0, :cond_4

    :goto_1
    const/4 v1, 0x2

    :cond_4
    if-eq v1, v3, :cond_5

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v0, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrPlayNum:I

    if-le v0, v2, :cond_5

    if-ne p1, p2, :cond_5

    const/4 v1, 0x2

    :cond_5
    if-ne v1, v3, :cond_6

    iget-object p1, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->closeVideoOperate(II)V

    iput-boolean v2, p0, Lcom/anythink/expressad/video/module/a/a/m;->am:Z

    :cond_6
    :goto_2
    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/video/module/a/a/m;)Lcom/anythink/expressad/video/module/AnythinkVideoView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    return-object p0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->al:Lcom/anythink/core/common/m/a;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->aq:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    return-void
.end method

.method private h()V
    .locals 2

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/a/a/m;->g()V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->al:Lcom/anythink/core/common/m/a;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->aq:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;)V

    return-void
.end method

.method private i()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampOrderViewData:Ljava/util/List;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v3, v3, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampOrderViewData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v3, v3, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampOrderViewData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v3, v3, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampOrderViewData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v4}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v2, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v2, v2, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampOrderViewData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v0, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampOrderViewData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    :cond_2
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    :cond_3
    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    :cond_4
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/a/a/k;->a(Lcom/anythink/expressad/foundation/d/c;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 7

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/a/a/k;->W:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_26

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq p1, v3, :cond_22

    const/4 v5, 0x3

    const/4 v6, 0x5

    if-eq p1, v4, :cond_1d

    if-eq p1, v6, :cond_1b

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x8

    if-eq p1, v0, :cond_18

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    if-eqz p2, :cond_26

    instance-of v0, p2, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;

    if-eqz v0, :cond_26

    move-object v0, p2

    check-cast v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->getVideoInteractiveType()I

    move-result v1

    iget-object v5, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->f()I

    move-result v5

    if-ne v5, v4, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v1, v3}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showVideoClickView(I)V

    goto :goto_0

    :cond_0
    if-ltz v1, :cond_1

    iget v5, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;->a:I

    if-lt v5, v1, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v1, v3}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showVideoClickView(I)V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v1, v2, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->soundOperate(II)V

    :cond_1
    :goto_0
    iget-boolean v1, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;->c:Z

    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->am:Z

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v1

    if-ne v1, v6, :cond_7

    iget v1, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;->a:I

    iget v0, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;->b:I

    iget-boolean v5, p0, Lcom/anythink/expressad/video/module/a/a/m;->am:Z

    if-nez v5, :cond_26

    iget-object v5, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v5, :cond_26

    iget-object v5, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    if-nez v5, :cond_2

    goto/16 :goto_d

    :cond_2
    iget v6, p0, Lcom/anythink/expressad/video/module/a/a/m;->ak:I

    if-ltz v6, :cond_3

    if-lt v1, v6, :cond_3

    const/4 v6, 0x2

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    :goto_1
    if-eq v6, v4, :cond_5

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->i()I

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v5, v5, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrPlayNum:I

    if-le v5, v3, :cond_5

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->i()I

    move-result v5

    if-le v1, v5, :cond_5

    :goto_2
    const/4 v6, 0x2

    :cond_5
    if-eq v6, v4, :cond_6

    iget-object v5, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v5, v5, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrPlayNum:I

    if-le v5, v3, :cond_6

    if-ne v1, v0, :cond_6

    const/4 v6, 0x2

    :cond_6
    if-ne v6, v4, :cond_26

    :goto_3
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v0, v2, v4}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->closeVideoOperate(II)V

    iput-boolean v3, p0, Lcom/anythink/expressad/video/module/a/a/m;->am:Z

    goto/16 :goto_d

    :cond_7
    iget v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->ak:I

    if-ltz v1, :cond_8

    iget v5, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;->a:I

    if-ge v5, v1, :cond_9

    iget v1, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;->b:I

    if-eq v5, v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->i()I

    move-result v1

    if-lez v1, :cond_26

    iget v1, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;->a:I

    iget-object v5, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->i()I

    move-result v5

    if-gt v1, v5, :cond_9

    iget v1, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;->a:I

    iget v0, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;->b:I

    if-ne v1, v0, :cond_26

    :cond_9
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->am:Z

    if-nez v0, :cond_26

    goto :goto_3

    :pswitch_1
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->am:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v0, v2, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->closeVideoOperate(II)V

    goto/16 :goto_d

    :pswitch_2
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v0, v2, v4}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->closeVideoOperate(II)V

    goto/16 :goto_d

    :pswitch_3
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/a/a/k;->f()V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v1, v5}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->videoOperate(I)V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->dismissAllAlert()V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->F()I

    move-result v1

    if-eq v1, v5, :cond_a

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_4
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->an:Z

    if-nez v0, :cond_b

    iget v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ao:I

    if-eqz v0, :cond_26

    :cond_b
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v0

    if-ne v0, v6, :cond_12

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v0

    if-ne v0, v6, :cond_11

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v1, :cond_e

    iget-object v1, v1, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampOrderViewData:Ljava/util/List;

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    :goto_5
    iget-object v5, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v5, v5, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampOrderViewData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_d

    iget-object v5, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v5, v5, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampOrderViewData:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v5, v5, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampOrderViewData:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v5}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v6}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v6

    if-ne v5, v6, :cond_c

    sub-int/2addr v1, v3

    goto :goto_6

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_d
    const/4 v1, 0x0

    :goto_6
    if-ltz v1, :cond_e

    iget-object v5, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v5, v5, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampOrderViewData:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_e

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v0, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampOrderViewData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    :cond_e
    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v1, :cond_f

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    :cond_f
    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v1, :cond_10

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    :cond_10
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/a/a/k;->a(Lcom/anythink/expressad/foundation/d/c;)V

    :cond_11
    iput v2, p0, Lcom/anythink/expressad/video/module/a/a/m;->ao:I

    :cond_12
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->an:Z

    if-nez v0, :cond_13

    iget v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ao:I

    if-ne v0, v3, :cond_13

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/a/a/k;->e()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/a/a/k;->d()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/a/a/k;->c()V

    :cond_13
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->f()I

    move-result v0

    if-eq v0, v4, :cond_17

    goto/16 :goto_b

    :pswitch_4
    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v1, v5}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->videoOperate(I)V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->dismissAllAlert()V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->F()I

    move-result v1

    if-eq v1, v5, :cond_14

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->f()I

    move-result v1

    if-eq v1, v4, :cond_15

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_7

    :cond_14
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_15
    :goto_7
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v0

    if-ne v0, v6, :cond_16

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v1, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrPlayNum:I

    iget v0, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampaignSize:I

    if-ne v1, v0, :cond_16

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_26

    goto/16 :goto_a

    :cond_16
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->f()I

    move-result v0

    if-ne v0, v4, :cond_20

    :cond_17
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showVideoEndCover()V

    goto/16 :goto_d

    :pswitch_5
    iput-boolean v3, p0, Lcom/anythink/expressad/video/module/a/a/m;->an:Z

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v0, v2, v4}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->soundOperate(II)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v0, v2, v4}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->progressOperate(II)V

    goto/16 :goto_d

    :cond_18
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showAlertWebView()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_26

    goto :goto_8

    :cond_19
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->alertWebViewShowed()V

    goto/16 :goto_d

    :cond_1a
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_26

    :goto_8
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->showAlertView()V

    goto/16 :goto_d

    :cond_1b
    if-eqz p2, :cond_26

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_26

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_9

    :cond_1c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_9
    iget-object v2, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->soundOperate(II)V

    goto/16 :goto_d

    :cond_1d
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->dismissAllAlert()V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v0, v5}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->videoOperate(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v0

    if-ne v0, v6, :cond_1f

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v2, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrPlayNum:I

    iget v0, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampaignSize:I

    if-ne v2, v0, :cond_1f

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->f()I

    move-result v0

    if-ne v0, v4, :cond_1e

    goto :goto_c

    :cond_1e
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    :goto_a
    invoke-virtual {v0, v3}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setRewardStatus(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showOrderCampView()V

    goto/16 :goto_d

    :cond_1f
    iget v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ap:I

    if-ne v0, v4, :cond_21

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->endCardShowing()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->f()I

    move-result v0

    if-ne v0, v4, :cond_20

    goto :goto_c

    :cond_20
    :goto_b
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->F()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showEndcard(I)V

    goto :goto_d

    :cond_21
    :goto_c
    const/16 p1, 0x10

    goto :goto_d

    :cond_22
    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->endCardShowing()Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->getVideoInteractiveType()I

    move-result v1

    const/4 v5, -0x2

    if-eq v1, v5, :cond_25

    if-eq v1, v0, :cond_23

    goto :goto_d

    :cond_23
    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->isLast()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showVideoClickView(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v0, v2, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->soundOperate(II)V

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/a/a/m;->g()V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->al:Lcom/anythink/core/common/m/a;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->aq:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;)V

    goto :goto_d

    :cond_24
    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showVideoClickView(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->ai:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v0, v2, v4}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->soundOperate(II)V

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/a/a/m;->g()V

    goto :goto_d

    :cond_25
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->miniCardLoaded()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/m;->aj:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v0, v4}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showVideoClickView(I)V

    :cond_26
    :goto_d
    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/module/a/a/o;->a(ILjava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
