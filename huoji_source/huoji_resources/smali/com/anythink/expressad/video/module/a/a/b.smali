.class public final Lcom/anythink/expressad/video/module/a/a/b;
.super Lcom/anythink/expressad/video/module/a/a/d;
.source ""


# instance fields
.field private ag:Lcom/anythink/expressad/video/module/AnythinkVideoView;

.field private ah:Lcom/anythink/expressad/video/module/AnythinkContainerView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;Lcom/anythink/expressad/video/module/AnythinkContainerView;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/c/c;Lcom/anythink/expressad/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/video/module/a/a;IZ)V
    .locals 12

    move-object v9, p0

    move-object v10, p1

    move-object v11, p2

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lcom/anythink/expressad/video/module/a/a/d;-><init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/b/c;Lcom/anythink/expressad/videocommon/c/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/video/module/a/a;IZ)V

    iput-object v10, v9, Lcom/anythink/expressad/video/module/a/a/b;->ag:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iput-object v11, v9, Lcom/anythink/expressad/video/module/a/a/b;->ah:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v10, :cond_0

    if-nez v11, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/anythink/expressad/video/module/a/a/k;->W:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 4

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/a/a/k;->W:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0x6b

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x70

    if-eq p1, v0, :cond_1

    const/16 v0, 0x73

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/b;->ah:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/b;->ag:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getBorderViewWidth()I

    move-result v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/a/a/b;->ag:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getBorderViewHeight()I

    move-result v2

    iget-object v3, p0, Lcom/anythink/expressad/video/module/a/a/b;->ag:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getBorderViewRadius()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->resizeMiniCard(III)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/b;->ag:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setCover(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/b;->ag:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/b;->ah:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showVideoClickView(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/b;->ag:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setCover(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/b;->ag:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->videoOperate(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/b;->ah:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showAlertWebView()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/b;->ag:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/b;->ag:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->alertWebViewShowed()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/b;->ag:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_6

    :goto_1
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->showAlertView()V

    :cond_6
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/module/a/a/d;->a(ILjava/lang/Object;)V

    return-void
.end method
