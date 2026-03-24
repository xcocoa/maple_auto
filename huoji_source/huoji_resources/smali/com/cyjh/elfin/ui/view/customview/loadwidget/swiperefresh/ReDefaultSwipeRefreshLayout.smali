.class public abstract Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;
.super Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

# interfaces
.implements Lz2/wa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout$OooO00o;
    }
.end annotation


# instance fields
.field public OoooOoO:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

.field private OoooOoo:I

.field private Ooooo00:F

.field private Ooooo0o:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout$OooO00o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public OooO(Lz2/ua;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 4

    const-string v0, "\u06e8\u06dc\u06d8\u06d8\u06da\u06e6\u06d6\u06d8\u06db\u06e1\u06d6\u06e0\u06e8\u06d8\u06e4\u06e7\u06e0\u06e1\u06e0\u06e4\u06db\u06d9\u06e1\u06d8\u06ec\u06e6\u06e0\u06e7\u06e6\u06dc\u06d8\u06e5\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1d1

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1c0

    const/16 v2, 0x35

    const v3, -0x4b246d9a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06da\u06d9\u06e2\u06d6\u06e6\u06d8\u06d7\u06dc\u06e6\u06d8\u06e8\u06e0\u06ec\u06e1\u06e2\u06e4\u06d7\u06e7\u06e8\u06dc\u06e1\u06e4\u06da\u06e5\u06e5\u06eb\u06e6\u06e4\u06e5\u06e1\u06e1\u06d7\u06e7\u06e5\u06e8\u06e0\u06e5\u06d8\u06db\u06e5\u06e1\u06e7\u06e8\u06df\u06d6\u06e2\u06e0\u06df"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06e2\u06da\u06e6\u06e2\u06dc\u06d8\u06d7\u06df\u06dc\u06d8\u06d8\u06e8\u06e8\u06e6\u06e8\u06df\u06e7\u06e0\u06dc\u06df\u06d6\u06e6\u06db\u06d7\u06db\u06d9\u06dc\u06e7\u06d8\u06e8\u06e1\u06e0\u06e6\u06eb\u06e1\u06e5\u06d8\u06e6\u06d8"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06eb\u06df\u06d6\u06da\u06e6\u06d6\u06db\u06ec\u06e8\u06e0\u06ec\u06e0\u06da\u06d9\u06e4\u06db\u06da\u06dc\u06d8\u06e8\u06d8\u06e2\u06dc\u06dc\u06d8\u06db\u06e0\u06e6\u06d8\u06eb\u06e2\u06e1\u06d8\u06d6\u06e6\u06e1\u06d8\u06dc\u06d9\u06dc\u06d8\u06e2\u06eb\u06e2\u06eb\u06d6\u06d8\u06d8"

    goto :goto_0

    :sswitch_3
    const v1, -0x5fdda194

    const-string v0, "\u06da\u06dc\u06da\u06e6\u06df\u06da\u06dc\u06e7\u06dc\u06eb\u06e2\u06dc\u06ec\u06e7\u06dc\u06e0\u06e1\u06dc\u06d8\u06df\u06d8\u06df\u06e5\u06d8\u06dc\u06d8\u06e0\u06e5\u06dc\u06d8\u06da\u06e4\u06d6\u06d7\u06da\u06d8\u06ec\u06da\u06e1\u06df\u06eb\u06e8\u06d8\u06e5\u06e8\u06e6\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const v2, -0x37fe0409

    const-string v0, "\u06d6\u06e8\u06e6\u06da\u06e5\u06e5\u06dc\u06e5\u06e7\u06e5\u06ec\u06e6\u06d7\u06d6\u06ec\u06e2\u06e5\u06d8\u06d8\u06e8\u06dc\u06d8\u06dc\u06d7\u06da\u06eb\u06d9\u06dc\u06df\u06e5\u06e7\u06dc\u06d8\u06d6\u06d6\u06e4"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06d9\u06e1\u06eb\u06e1\u06e0\u06e0\u06e2\u06e1\u06e5\u06df\u06e8\u06e5\u06e6\u06da\u06e0\u06dc\u06ec\u06e8\u06d6\u06db\u06e6\u06e8\u06d7\u06eb\u06e1\u06eb\u06d6\u06d8\u06e4\u06d8\u06d9\u06d8\u06e1\u06dc\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06ec\u06e1\u06e5\u06df\u06e1\u06d8\u06d8\u06eb\u06e0\u06e7\u06eb\u06e8\u06e2\u06dc\u06e6\u06e8\u06e2\u06e6\u06e6\u06d8\u06d7\u06db\u06e1\u06e6\u06e5\u06d7\u06e5\u06eb\u06d8\u06d8\u06d8\u06ec\u06e5\u06d8\u06df\u06e6\u06db\u06ec\u06d6\u06eb\u06d9\u06d6\u06e6\u06e0\u06e5\u06e6\u06d8\u06e6\u06e1\u06ec\u06e5\u06e4\u06d9"

    goto :goto_2

    :sswitch_6
    if-eqz p1, :cond_0

    const-string v0, "\u06df\u06e7\u06d7\u06e8\u06d9\u06e8\u06eb\u06d7\u06eb\u06e6\u06e2\u06da\u06ec\u06db\u06e4\u06e7\u06d8\u06dc\u06da\u06ec\u06d6\u06df\u06e4\u06d6\u06d6\u06e4\u06db\u06db\u06dc\u06d8\u06d9\u06df\u06e5\u06d8\u06d9\u06ec\u06e1\u06d8\u06e0\u06e1\u06e1\u06e4\u06e2\u06e1\u06e5\u06ec\u06e5\u06d8\u06dc\u06e5\u06e5\u06d8"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e5\u06e2\u06e1\u06d8\u06e0\u06da\u06e6\u06d8\u06da\u06e7\u06e8\u06db\u06e1\u06e1\u06e5\u06df\u06d7\u06d9\u06df\u06dc\u06d8\u06d6\u06d8\u06eb\u06d9\u06e5\u06da\u06e7\u06d7\u06e5\u06d8\u06e8\u06e7\u06d6\u06d8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d7\u06d9\u06e8\u06ec\u06da\u06d6\u06eb\u06ec\u06eb\u06d7\u06db\u06da\u06e2\u06e1\u06e8\u06d9\u06dc\u06e8\u06d8\u06e4\u06eb\u06e7\u06df\u06d6\u06d9\u06e2\u06e6\u06e1\u06d8\u06e4\u06da\u06eb\u06d6\u06e7\u06e7\u06e6\u06d8\u06eb\u06d6\u06ec\u06db\u06d6\u06d8\u06eb\u06eb\u06ec\u06d7\u06da\u06e6\u06d8\u06e0\u06da\u06e5\u06df\u06e7\u06e0"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e5\u06d6\u06e5\u06dc\u06e5\u06d8\u06e7\u06d8\u06dc\u06d6\u06d6\u06d8\u06e5\u06e7\u06df\u06eb\u06e5\u06db\u06e0\u06e1\u06e0\u06dc\u06e0\u06e0\u06d8\u06d9\u06d9\u06d6\u06df\u06eb"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06df\u06d7\u06e6\u06d8\u06e2\u06e0\u06df\u06da\u06d8\u06e6\u06eb\u06eb\u06ec\u06d9\u06eb\u06e6\u06e2\u06dc\u06d8\u06e4\u06d9\u06db\u06e5\u06e0\u06e6\u06d8\u06d6\u06e6\u06d8\u06da\u06e4\u06e0\u06e5\u06da\u06e4\u06dc\u06e2\u06e1\u06d8\u06df\u06d6\u06da\u06eb\u06e4\u06e8\u06d8"

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->setIListViewCallBack(Lz2/ua;)V

    const-string v0, "\u06e4\u06d7\u06e0\u06e6\u06db\u06d9\u06e4\u06d6\u06dc\u06e1\u06eb\u06e1\u06df\u06e5\u06e6\u06d8\u06db\u06d8\u06e4\u06d7\u06dc\u06e8\u06d8\u06d7\u06dc\u06d8\u06e0\u06d7\u06e7\u06d9\u06ec\u06d8\u06d6\u06df\u06e6\u06d7\u06eb\u06d8\u06e1\u06e1\u06dc\u06d8\u06e8\u06e5\u06d7\u06d6\u06db\u06db\u06df\u06da\u06ec\u06e4\u06dc\u06eb\u06ec\u06ec\u06df"

    goto :goto_0

    :sswitch_c
    const v1, 0x75171ba6

    const-string v0, "\u06da\u06e2\u06e4\u06d8\u06d6\u06e6\u06e0\u06e5\u06e2\u06da\u06e0\u06e5\u06ec\u06e4\u06e8\u06db\u06d7\u06dc\u06d8\u06ec\u06ec\u06da\u06d7\u06da\u06e1\u06d8\u06eb\u06e8\u06d6\u06d8\u06d6\u06db\u06d8\u06d8\u06e0\u06e1\u06d8\u06e7\u06db\u06d6\u06d8\u06e6\u06e6\u06ec\u06e5\u06da\u06e0"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_3

    goto :goto_3

    :sswitch_d
    const-string v0, "\u06e6\u06eb\u06d8\u06e7\u06d6\u06e4\u06e1\u06ec\u06e1\u06e5\u06ec\u06d7\u06e8\u06e7\u06ec\u06eb\u06ec\u06e8\u06e1\u06eb\u06e4\u06d9\u06e7\u06e0\u06d9\u06e8\u06dc\u06d8\u06d8\u06e6\u06ec"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06e8\u06e7\u06e2\u06e5\u06e7\u06d6\u06e1\u06da\u06e5\u06d8\u06e2\u06d8\u06eb\u06df\u06d6\u06e0\u06e5\u06e5\u06e8\u06e5\u06d9\u06e8\u06eb\u06db\u06d8\u06db\u06d8\u06e1\u06e5\u06eb\u06d6\u06d8\u06e1\u06eb\u06d8\u06e6\u06e5\u06d6\u06d7\u06da\u06e4\u06ec\u06e2\u06d6\u06d8\u06e5\u06d9\u06d6\u06eb\u06db\u06e5\u06eb\u06dc\u06d6\u06d8\u06da\u06e5\u06d9"

    goto :goto_3

    :sswitch_f
    const v2, 0x65b0326b

    const-string v0, "\u06d8\u06ec\u06dc\u06d8\u06e2\u06df\u06e5\u06d8\u06e0\u06ec\u06e7\u06eb\u06d8\u06d7\u06da\u06e5\u06d9\u06dc\u06d8\u06e6\u06d8\u06d7\u06e8\u06d6\u06e6\u06d8\u06e5\u06dc\u06d6\u06dc\u06d8\u06e2\u06d8\u06db\u06d6\u06e0\u06dc\u06d7\u06e4\u06d8\u06d8\u06e6\u06eb\u06e5\u06e0\u06e1\u06d9\u06eb\u06e0\u06d8\u06d8\u06e0\u06e6\u06d8\u06e1\u06e5\u06e8\u06d8\u06dc\u06da\u06dc"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_4

    goto :goto_4

    :sswitch_10
    if-eqz p2, :cond_1

    const-string v0, "\u06ec\u06ec\u06e0\u06d6\u06e7\u06d8\u06d8\u06d6\u06d6\u06eb\u06e8\u06db\u06e8\u06df\u06d6\u06d8\u06d7\u06eb\u06dc\u06d8\u06e6\u06e7\u06e4\u06dc\u06db\u06d9\u06eb\u06e6\u06df\u06e6"

    goto :goto_4

    :cond_1
    const-string v0, "\u06db\u06e5\u06e4\u06e2\u06dc\u06e8\u06d8\u06e6\u06d9\u06d8\u06dc\u06e8\u06e2\u06e2\u06df\u06e4\u06e4\u06e7\u06e8\u06d8\u06e5\u06e7\u06d7\u06d9\u06db\u06e7\u06d8\u06db\u06d9\u06ec\u06d7\u06ec\u06e7\u06ec\u06e1\u06d8\u06e4\u06e7\u06e6\u06d8\u06e2\u06d6\u06db\u06d8\u06da\u06d9\u06e0\u06e7\u06e2\u06d9\u06db\u06d7\u06e7\u06db\u06e7\u06e7\u06d8\u06d8"

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06e6\u06db\u06e5\u06d8\u06d7\u06d8\u06e5\u06dc\u06e5\u06eb\u06e8\u06db\u06e6\u06ec\u06e5\u06d6\u06e5\u06e6\u06d8\u06d6\u06d6\u06e7\u06d8\u06ec\u06d9\u06e0\u06e5\u06d9\u06d8\u06d8\u06e1\u06e2\u06db"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06e5\u06e8\u06d8\u06db\u06db\u06eb\u06e5\u06df\u06d8\u06e2\u06e7\u06e1\u06e7\u06e4\u06e0\u06da\u06e2\u06e6\u06d8\u06d6\u06eb\u06e5\u06d8\u06e1\u06d8\u06db\u06d8\u06e1\u06e1\u06e0\u06e0\u06e2"

    goto :goto_3

    :sswitch_13
    const-string v0, "\u06e1\u06da\u06e2\u06e6\u06e1\u06d6\u06e4\u06e0\u06e2\u06d6\u06d6\u06e4\u06e5\u06ec\u06e6\u06d8\u06df\u06e1\u06e5\u06e6\u06d6\u06e4\u06e1\u06e0\u06db\u06d9\u06d9\u06ec\u06e1\u06e2\u06e7\u06e7\u06d6\u06ec\u06ec\u06e6\u06ec\u06d7\u06dc\u06e2\u06ec\u06e8\u06d9\u06d7\u06d6\u06d8\u06d6\u06e8\u06e6\u06e2\u06e2\u06e8\u06df\u06e1\u06df"

    goto :goto_3

    :sswitch_14
    invoke-virtual {p0, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    const-string v0, "\u06dc\u06d9\u06e1\u06d7\u06d6\u06d9\u06d9\u06e2\u06e6\u06e2\u06e8\u06eb\u06e5\u06da\u06e4\u06d7\u06db\u06e2\u06df\u06d9\u06dc\u06d8\u06d8\u06df\u06df\u06e0\u06d7\u06d6\u06e4\u06e0\u06e7"

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "\u06e4\u06d7\u06e0\u06e6\u06db\u06d9\u06e4\u06d6\u06dc\u06e1\u06eb\u06e1\u06df\u06e5\u06e6\u06d8\u06db\u06d8\u06e4\u06d7\u06dc\u06e8\u06d8\u06d7\u06dc\u06d8\u06e0\u06d7\u06e7\u06d9\u06ec\u06d8\u06d6\u06df\u06e6\u06d7\u06eb\u06d8\u06e1\u06e1\u06dc\u06d8\u06e8\u06e5\u06d7\u06d6\u06db\u06db\u06df\u06da\u06ec\u06e4\u06dc\u06eb\u06ec\u06ec\u06df"

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "\u06dc\u06d9\u06e1\u06d7\u06d6\u06d9\u06d9\u06e2\u06e6\u06e2\u06e8\u06eb\u06e5\u06da\u06e4\u06d7\u06db\u06e2\u06df\u06d9\u06dc\u06d8\u06d8\u06df\u06df\u06e0\u06d7\u06d6\u06e4\u06e0\u06e7"

    goto/16 :goto_0

    :sswitch_17
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48b64ccc -> :sswitch_1
        -0x44c95a42 -> :sswitch_b
        -0x3542401d -> :sswitch_17
        -0x1e227491 -> :sswitch_2
        -0x165f0624 -> :sswitch_3
        0x13dbea74 -> :sswitch_c
        0x1b16bf6b -> :sswitch_0
        0x40b868c7 -> :sswitch_14
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x693ea0b6 -> :sswitch_4
        -0x68ba0a71 -> :sswitch_15
        -0x3af470e1 -> :sswitch_a
        0x19bcc4b8 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x1927d33a -> :sswitch_6
        -0x18b13c6e -> :sswitch_5
        0x17cb7567 -> :sswitch_7
        0x590951df -> :sswitch_8
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x6ec14b18 -> :sswitch_f
        -0x1b88dc19 -> :sswitch_d
        -0x10273e61 -> :sswitch_16
        0x7c4aab1b -> :sswitch_13
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x100e6fe4 -> :sswitch_11
        0x5bf8a760 -> :sswitch_12
        0x7368ce44 -> :sswitch_e
        0x7f3b36db -> :sswitch_10
    .end sparse-switch
.end method

.method public OooO00o()V
    .locals 4

    const-string v0, "\u06e1\u06e5\u06e7\u06d8\u06eb\u06da\u06d9\u06e4\u06e4\u06d6\u06d8\u06eb\u06d8\u06ec\u06d6\u06df\u06db\u06e6\u06e7\u06e8\u06dc\u06e7\u06d8\u06e4\u06e6\u06da\u06db\u06e0\u06e7\u06d6\u06e1\u06e5\u06e5\u06e8\u06d8\u06d9\u06dc\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2ec

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2c9

    const/16 v2, 0x360

    const v3, -0x51a1565

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06e7\u06ec\u06d6\u06e0\u06dc\u06e2\u06e8\u06d9\u06d7\u06db\u06e8\u06ec\u06e7\u06df\u06e4\u06e8\u06dc\u06d8\u06e8\u06d9\u06dc\u06d8\u06da\u06eb\u06e8\u06d8\u06d9\u06d6\u06d8\u06d8\u06e7\u06e5\u06ec\u06db\u06d7"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    const-string v0, "\u06ec\u06d6\u06ec\u06e8\u06da\u06df\u06e5\u06e2\u06e5\u06e2\u06df\u06e4\u06e6\u06da\u06e1\u06e7\u06d6\u06df\u06e1\u06e6\u06d8\u06d9\u06e5\u06d6\u06d8\u06df\u06dc\u06d8\u06e0\u06e0\u06e6\u06d8\u06dc\u06e0\u06e1\u06e0\u06eb\u06e5\u06d8\u06e4\u06da\u06d7\u06dc\u06df\u06e7\u06e0\u06e5\u06e7\u06e8\u06e5\u06da"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OooO00o()V

    const-string v0, "\u06ec\u06e2\u06e1\u06d8\u06d7\u06e6\u06d6\u06e4\u06eb\u06da\u06dc\u06e1\u06dc\u06df\u06df\u06e2\u06d8\u06e2\u06d6\u06e4\u06e5\u06eb\u06e8\u06d8\u06d8\u06d6\u06e6\u06d9\u06d8\u06d9\u06dc\u06dc\u06e2\u06e4\u06d9\u06ec\u06db\u06dc\u06d9\u06e5\u06d8\u06e7\u06e1\u06df"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x529c7bf3 -> :sswitch_3
        0xba2bd5e -> :sswitch_2
        0xec4ec10 -> :sswitch_1
        0x13ffe5f3 -> :sswitch_0
    .end sparse-switch
.end method

.method public OooO0O0()V
    .locals 4

    const-string v0, "\u06e8\u06e5\u06e8\u06d8\u06db\u06db\u06d6\u06d8\u06e7\u06e8\u06eb\u06dc\u06e7\u06d8\u06e2\u06e2\u06d8\u06d8\u06e2\u06e5\u06e2\u06d6\u06e7\u06e6\u06e2\u06db\u06e6\u06db\u06e6\u06db\u06e2\u06ec\u06eb\u06db\u06e2\u06e2\u06e2\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x284

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x21c

    const/16 v2, 0x271

    const v3, 0x26e71022

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06e8\u06d6\u06e4\u06e8\u06e1\u06dc\u06e8\u06df\u06eb\u06d7\u06e4\u06e1\u06db\u06d8\u06e6\u06df\u06d7\u06e1\u06d8\u06e2\u06e5\u06da\u06dc\u06e6\u06dc\u06d6\u06e1\u06db\u06e8\u06d8\u06dc\u06d7\u06dc\u06da\u06d9\u06e6"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    const-string v0, "\u06e6\u06e4\u06df\u06e0\u06da\u06d6\u06dc\u06d6\u06d6\u06d8\u06d8\u06e6\u06e8\u06e8\u06e7\u06da\u06da\u06db\u06dc\u06d6\u06e8\u06e7\u06db\u06e0\u06e2\u06df\u06d9\u06d6\u06df\u06e2\u06e4\u06d7\u06d8\u06eb\u06e6\u06dc\u06dc\u06db\u06dc\u06d9\u06eb\u06df\u06e4\u06d8\u06db\u06e0\u06df"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OooO0O0()V

    const-string v0, "\u06d8\u06ec\u06e6\u06e1\u06db\u06e6\u06db\u06d9\u06dc\u06d8\u06d9\u06e2\u06d9\u06e5\u06e6\u06eb\u06e6\u06eb\u06e8\u06d8\u06d8\u06e4\u06d8\u06d8\u06e5\u06e0\u06dc\u06eb\u06d8\u06e7\u06d8\u06e8\u06d7\u06e1\u06d8\u06e5\u06e2\u06df\u06e1\u06ec\u06eb"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a530b6c -> :sswitch_0
        -0x3c546541 -> :sswitch_3
        0x36c323f4 -> :sswitch_1
        0x4ba87b8d -> :sswitch_2
    .end sparse-switch
.end method

.method public OooO0OO()V
    .locals 4

    const-string v0, "\u06e4\u06da\u06e2\u06db\u06eb\u06e1\u06db\u06eb\u06e0\u06e1\u06e5\u06e1\u06d8\u06d6\u06e8\u06d9\u06da\u06e7\u06e0\u06e0\u06dc\u06e0\u06df\u06d9\u06e6\u06e4\u06e4\u06db\u06d7\u06df\u06d7\u06e8\u06e6\u06e1\u06dc\u06e2\u06e7\u06e2\u06e8\u06db\u06e8\u06e6\u06d8\u06d8\u06e1\u06db\u06e7\u06e8\u06d8\u06ec\u06e0\u06dc\u06d9\u06d9\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x233

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1b9

    const/16 v2, 0xab

    const v3, 0x62a47d2d

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06e1\u06d6\u06e6\u06e7\u06e7\u06e1\u06d6\u06db\u06df\u06e8\u06d6\u06dc\u06d8\u06e6\u06d8\u06d7\u06d8\u06e1\u06d8\u06d9\u06eb\u06e6\u06d8\u06d6\u06e5\u06d8\u06dc\u06d9\u06e0\u06e8\u06e7\u06e8\u06e1\u06d8\u06d6\u06d8\u06d8\u06e1\u06d8\u06e2\u06df\u06d6\u06da\u06d7\u06db"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    const-string v0, "\u06e8\u06df\u06e7\u06eb\u06d9\u06e5\u06e5\u06e5\u06d6\u06d8\u06d6\u06e0\u06e4\u06e5\u06df\u06dc\u06d6\u06e6\u06e7\u06d8\u06d9\u06da\u06e8\u06da\u06eb\u06ec\u06da\u06d6\u06e2\u06e4\u06d8\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OooO0OO()V

    const-string v0, "\u06ec\u06df\u06d7\u06e5\u06ec\u06e7\u06d7\u06e5\u06e7\u06d8\u06d7\u06df\u06d8\u06d6\u06e4\u06dc\u06e8\u06df\u06e5\u06ec\u06d6\u06e5\u06eb\u06e1\u06e4\u06e7\u06eb\u06dc\u06d8\u06d9\u06e5\u06dc\u06e0\u06d9\u06e7\u06d8\u06e8\u06df"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x10db2e5b -> :sswitch_1
        0x1432bc39 -> :sswitch_0
        0x1ef7e565 -> :sswitch_3
        0x35c95228 -> :sswitch_2
    .end sparse-switch
.end method

.method public OooO0Oo()V
    .locals 4

    const-string v0, "\u06df\u06db\u06e8\u06d8\u06e7\u06e2\u06e0\u06e2\u06db\u06d8\u06d8\u06d8\u06d9\u06d8\u06d8\u06d8\u06e5\u06e7\u06d8\u06df\u06e0\u06d9\u06df\u06dc\u06d8\u06d8\u06df\u06e2\u06e5\u06d8\u06e6\u06e5\u06d8\u06e2\u06e8\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x9e

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x276

    const/16 v2, 0x390

    const v3, 0x2bf9a06

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06ec\u06ec\u06dc\u06e8\u06d9\u06e7\u06e8\u06e7\u06d8\u06ec\u06da\u06e1\u06d8\u06d6\u06d8\u06e6\u06e8\u06e0\u06e1\u06d8\u06e6\u06e0\u06e8\u06d8\u06e7\u06e8\u06df\u06e8\u06ec\u06e5\u06d8\u06e0\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    const-string v0, "\u06eb\u06ec\u06e1\u06d8\u06e6\u06df\u06e1\u06d8\u06e0\u06d6\u06d9\u06e6\u06d7\u06e2\u06db\u06e4\u06e0\u06dc\u06e6\u06d8\u06e5\u06d8\u06d6\u06d8\u06e0\u06d9\u06d8\u06d8\u06dc\u06e6\u06e8\u06d8\u06d9\u06e6\u06d8\u06e1\u06e6\u06eb\u06d8\u06e8\u06d8\u06e2\u06d6\u06d6\u06d8\u06ec\u06e7\u06e1\u06d8\u06e5\u06e0\u06d7\u06e6\u06d8\u06d7"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OooO0Oo()V

    const-string v0, "\u06d9\u06e6\u06d8\u06d8\u06e0\u06e5\u06d7\u06d7\u06d9\u06df\u06e7\u06e2\u06d8\u06e0\u06eb\u06e6\u06d8\u06da\u06e7\u06eb\u06eb\u06eb\u06eb\u06e6\u06e5\u06e5\u06d8\u06da\u06e2\u06e7\u06dc\u06e5\u06d7\u06df\u06df\u06dc\u06dc\u06d6\u06d8\u06e4\u06df\u06e1\u06e8\u06e0\u06d9\u06dc\u06e5\u06e5\u06da\u06e6"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x31b76e67 -> :sswitch_0
        -0x2d5a5ee9 -> :sswitch_2
        -0x243267b -> :sswitch_3
        0x59dce6e3 -> :sswitch_1
    .end sparse-switch
.end method

.method public OooO0o(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06d9\u06dc\u06e8\u06d8\u06e8\u06dc\u06d9\u06e0\u06e0\u06e7\u06d9\u06e7\u06e6\u06d6\u06d9\u06d6\u06d8\u06d6\u06e1\u06d8\u06e0\u06df\u06e6\u06d8\u06eb\u06e7\u06e6\u06e2\u06d9\u06e5\u06d8\u06da\u06db\u06e5\u06e4\u06d7\u06e1\u06d8\u06dc\u06dc\u06db\u06e7\u06dc\u06e0\u06e0\u06d7\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xc8

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x229

    const/16 v2, 0x389

    const v3, -0xa0e72b5

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e0\u06e8\u06d8\u06e1\u06e0\u06ec\u06dc\u06e4\u06e4\u06d7\u06da\u06db\u06dc\u06e8\u06e5\u06d8\u06df\u06d6\u06e1\u06d8\u06ec\u06d7\u06dc\u06db\u06d8\u06d8\u06e4\u06e5\u06d6\u06d8\u06e4\u06eb\u06dc\u06d8\u06e8\u06d6\u06dc\u06e7\u06da\u06da"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06e8\u06e0\u06ec\u06e2\u06dc\u06e2\u06d7\u06ec\u06da\u06dc\u06e7\u06d8\u06db\u06e7\u06e6\u06d8\u06db\u06e7\u06d7\u06df\u06d9\u06e6\u06d8\u06df\u06dc\u06e2\u06e2\u06db\u06db\u06e2\u06ec\u06d8\u06d8\u06e4\u06df\u06ec\u06dc\u06e6\u06d8\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const-string v0, "\u06df\u06e7\u06dc\u06d8\u06e7\u06d7\u06e5\u06d8\u06d8\u06d7\u06dc\u06d8\u06d9\u06e6\u06e6\u06ec\u06d6\u06e4\u06d8\u06e5\u06da\u06eb\u06e5\u06e5\u06d8\u06e4\u06e5\u06d8\u06d9\u06e1\u06dc\u06d8\u06ec\u06e7\u06dc"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x599bc2fd -> :sswitch_0
        -0x57f251e2 -> :sswitch_3
        -0x1d24537a -> :sswitch_1
        0x4cb13033 -> :sswitch_2
    .end sparse-switch
.end method

.method public OooO0o0()V
    .locals 4

    const-string v0, "\u06e1\u06e0\u06e4\u06dc\u06db\u06dc\u06d8\u06e4\u06e8\u06dc\u06d8\u06df\u06e0\u06e1\u06d8\u06e7\u06e0\u06e1\u06d7\u06d8\u06e8\u06eb\u06ec\u06dc\u06d8\u06e2\u06dc\u06d9\u06eb\u06dc\u06d6\u06d8\u06ec\u06e7\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3bf

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x11a

    const/16 v2, 0x2da

    const v3, 0x35b11c6d

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e1\u06dc\u06d8\u06db\u06ec\u06d9\u06e6\u06e7\u06dc\u06d8\u06ec\u06e8\u06e6\u06da\u06e7\u06d8\u06eb\u06d6\u06d9\u06e4\u06eb\u06e5\u06d6\u06df\u06e8\u06d8\u06da\u06e6\u06d7\u06e0\u06d9\u06d6\u06e1\u06e1\u06d6\u06d8\u06df\u06db\u06e7\u06e0\u06da\u06db\u06e1\u06e8\u06e8\u06d8\u06db\u06df\u06eb\u06e6\u06e2\u06da\u06d9\u06e7\u06e5\u06e5\u06e5\u06e7\u06d8"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    const-string v0, "\u06eb\u06e2\u06e4\u06e5\u06d9\u06e4\u06d6\u06e0\u06e2\u06ec\u06e8\u06df\u06e6\u06e2\u06d6\u06da\u06df\u06d6\u06d8\u06e7\u06d8\u06da\u06eb\u06e4\u06dc\u06d8\u06e4\u06e4\u06d8\u06e7\u06e7\u06e7\u06e7\u06e0\u06e8\u06d8\u06d7\u06d9\u06e2"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OooO0o0()V

    const-string v0, "\u06e7\u06e6\u06e0\u06dc\u06e8\u06dc\u06d8\u06e2\u06db\u06e2\u06e0\u06da\u06e1\u06e2\u06e7\u06d8\u06db\u06e4\u06e0\u06e0\u06e4\u06e5\u06d8\u06d8\u06ec\u06e5\u06e2\u06d9\u06e8\u06d8\u06da\u06ec\u06e4\u06e8\u06ec\u06da\u06e8\u06e2\u06dc"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5495fb06 -> :sswitch_3
        -0x1fefb117 -> :sswitch_0
        -0xfd0be71 -> :sswitch_2
        0x4383975 -> :sswitch_1
    .end sparse-switch
.end method

.method public abstract OooO0oO()V
.end method

.method public OooO0oo(II)V
    .locals 4

    const-string v0, "\u06e6\u06e7\u06ec\u06e0\u06d7\u06d8\u06db\u06da\u06e1\u06eb\u06e5\u06dc\u06d7\u06d9\u06df\u06db\u06e6\u06d8\u06e2\u06dc\u06e0\u06e5\u06d6\u06d9\u06df\u06e1\u06db\u06d7\u06df\u06da\u06db\u06e2\u06e4\u06e8\u06e4\u06db\u06dc\u06e5\u06d8\u06da\u06e7\u06e1\u06d9\u06df\u06d8\u06d8\u06e2\u06d6\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x15b

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x223

    const/16 v2, 0xfa

    const v3, -0x5ef96a67

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06e4\u06da\u06d6\u06da\u06e5\u06d8\u06e8\u06e5\u06df\u06d9\u06e4\u06db\u06db\u06e7\u06da\u06e2\u06ec\u06e7\u06e6\u06e2\u06dc\u06e8\u06e6\u06ec\u06e2\u06e0\u06eb\u06e0\u06db\u06e1\u06d8\u06e6\u06ec\u06e8\u06d8\u06df\u06e5\u06eb\u06e1\u06e0\u06e8\u06d7\u06db\u06e6\u06d8\u06e8\u06d6\u06e1\u06e5\u06e0\u06e1\u06d8\u06d8\u06d8\u06d6\u06eb\u06d9\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06e8\u06e1\u06d8\u06e0\u06e7\u06e0\u06df\u06e6\u06db\u06e5\u06d9\u06dc\u06d9\u06e1\u06d8\u06df\u06d7\u06e8\u06d8\u06d7\u06da\u06d7\u06d9\u06df\u06e8\u06d8\u06e1\u06d7\u06e7\u06e8\u06e7\u06d6\u06d8\u06d6\u06da\u06e5\u06da\u06d8\u06eb\u06df\u06db\u06e5\u06d8\u06dc\u06db\u06e7\u06e8\u06e7\u06e6\u06d8\u06e6\u06e7\u06d8\u06e6\u06e8\u06d9\u06dc\u06df\u06db"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e4\u06d9\u06e7\u06df\u06e6\u06e5\u06d8\u06ec\u06e7\u06d8\u06d8\u06e6\u06e5\u06db\u06e2\u06da\u06e2\u06e2\u06e4\u06e8\u06d8\u06d6\u06da\u06e1\u06d8\u06e1\u06da\u06d7\u06e5\u06d9\u06e7\u06e2\u06d6\u06e2\u06d8\u06e0\u06da\u06d9\u06e7\u06e2\u06e4\u06dc\u06e2\u06d8\u06e4\u06e7\u06e1\u06e5\u06e6\u06d9\u06e4\u06e7\u06d9\u06d9\u06d9\u06e2\u06e7"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0, p1, p2}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OooOO0(II)V

    const-string v0, "\u06d7\u06e2\u06d8\u06ec\u06e5\u06da\u06d7\u06e1\u06d8\u06da\u06d9\u06da\u06e6\u06e6\u06eb\u06d8\u06d7\u06d9\u06ec\u06dc\u06d9\u06db\u06e7\u06e1\u06d6\u06e0\u06df\u06e7\u06e4\u06da\u06eb\u06e8\u06e5\u06d8\u06dc\u06e1\u06d8\u06ec\u06e2\u06e0\u06e7\u06e0\u06e5\u06e4\u06e0\u06d9\u06e4\u06e4\u06e5\u06ec\u06e5\u06d8\u06e4\u06e0\u06d8"

    goto :goto_0

    :sswitch_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5739251f -> :sswitch_3
        -0x2abbe0ef -> :sswitch_0
        0x191fd99d -> :sswitch_4
        0x66862092 -> :sswitch_1
        0x70347bdc -> :sswitch_2
    .end sparse-switch
.end method

.method public getListView()Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;
    .locals 4

    const-string v0, "\u06e5\u06e0\u06e8\u06d8\u06df\u06eb\u06e2\u06e5\u06eb\u06db\u06df\u06d8\u06e4\u06d7\u06e2\u06dc\u06d6\u06e2\u06d8\u06d8\u06d9\u06e6\u06e1\u06d8\u06e2\u06e7\u06e1\u06d8\u06e0\u06df\u06dc\u06e0\u06df\u06d8\u06d9\u06ec\u06e8\u06e1\u06ec\u06db\u06dc\u06e0\u06e4\u06d8\u06dc\u06d8\u06dc\u06e7\u06e6\u06d8\u06db\u06d6\u06e4\u06ec\u06e8\u06d8\u06db\u06db\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x233

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x34b

    const/16 v2, 0x370

    const v3, 0x3ab83b39

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06dc\u06db\u06df\u06dc\u06e5\u06d8\u06e8\u06e7\u06d7\u06d7\u06e1\u06dc\u06e8\u06e4\u06ec\u06d6\u06e1\u06e7\u06db\u06d9\u06e6\u06d8\u06e0\u06e0\u06e8\u06d8\u06e8\u06e2\u06ec\u06da\u06e5"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1eca99ff -> :sswitch_1
        0x7ed72336 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v0, "\u06eb\u06e5\u06dc\u06d8\u06e6\u06e2\u06da\u06d8\u06e4\u06e6\u06d7\u06e7\u06e5\u06e7\u06e6\u06dc\u06d8\u06e0\u06db\u06e8\u06d8\u06ec\u06e4\u06ec\u06d8\u06db\u06d8\u06d8\u06eb\u06df\u06dc\u06dc\u06dc\u06d8\u06d7\u06d9\u06da\u06ec\u06e8\u06df\u06dc\u06d9\u06d6\u06d8\u06e4\u06dc\u06e2\u06e5\u06d9\u06e8\u06d8\u06d6\u06df\u06e7\u06e2\u06e1\u06dc\u06d8\u06e7\u06d6\u06df"

    move v2, v3

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x89

    xor-int/2addr v4, v5

    xor-int/lit8 v4, v4, 0x1

    const/16 v5, 0x2d3

    const v6, -0x2c8f55ed

    xor-int/2addr v4, v5

    xor-int/2addr v4, v6

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06da\u06e5\u06d8\u06d8\u06e2\u06e4\u06d7\u06d8\u06e5\u06d8\u06df\u06e7\u06e2\u06d6\u06db\u06e8\u06d8\u06d7\u06e2\u06d8\u06e5\u06e1\u06ec\u06d8\u06ec\u06d6\u06ec\u06e2\u06e4\u06d8\u06e8\u06d6\u06df\u06eb\u06e6\u06e5\u06e5\u06e4\u06e7\u06d8\u06dc\u06d7\u06e0\u06db\u06d9\u06df\u06e4\u06e0\u06d8\u06db"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e8\u06e5\u06e5\u06db\u06dc\u06da\u06d7\u06df\u06e5\u06d7\u06e4\u06d7\u06eb\u06e2\u06e5\u06d8\u06d7\u06df\u06e6\u06d8\u06e0\u06e2\u06e1\u06d8\u06e6\u06e2\u06ec\u06db\u06d9\u06eb\u06d6\u06e5\u06e0"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const-string v0, "\u06e8\u06d8\u06d9\u06df\u06e5\u06d8\u06e7\u06e5\u06e1\u06e0\u06e2\u06eb\u06e8\u06d8\u06e4\u06e5\u06d7\u06e7\u06e7\u06e0\u06dc\u06d8\u06e6\u06d9\u06e8\u06e6\u06dc\u06e5\u06db\u06ec\u06e7"

    goto :goto_0

    :sswitch_3
    const v4, 0x5fd65400

    const-string v0, "\u06e0\u06e6\u06dc\u06d8\u06e0\u06e8\u06e8\u06e4\u06e8\u06e2\u06e0\u06eb\u06d9\u06d9\u06df\u06d8\u06e1\u06e2\u06d8\u06e7\u06d8\u06e1\u06d8\u06d7\u06e2\u06db\u06e5\u06e6\u06e5\u06eb\u06d6\u06dc\u06e2\u06e6\u06dc\u06d8\u06eb\u06db\u06e6\u06d8\u06db\u06ec\u06da\u06df\u06dc\u06dc\u06d8\u06dc\u06da\u06e1\u06db\u06da\u06d8\u06d6\u06e2\u06e5\u06d8\u06e2\u06d9\u06d9"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const v5, -0x53256a45

    const-string v0, "\u06e2\u06e1\u06e6\u06db\u06eb\u06ec\u06da\u06e1\u06d8\u06ec\u06db\u06e1\u06d6\u06eb\u06e2\u06e6\u06d9\u06d8\u06dc\u06e8\u06d9\u06d6\u06dc\u06df\u06e4\u06eb\u06d9\u06d8\u06dc\u06e4\u06e2\u06dc\u06d8\u06ec\u06d7\u06d6\u06da\u06ec\u06e2\u06dc\u06d7\u06e1\u06d8\u06e2\u06da\u06d8\u06e2\u06e4\u06ec"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    if-eqz v2, :cond_0

    const-string v0, "\u06e6\u06e0\u06ec\u06dc\u06e2\u06e4\u06d8\u06e1\u06df\u06db\u06e6\u06e6\u06d8\u06d9\u06e5\u06d9\u06e4\u06d9\u06d8\u06ec\u06d7\u06da\u06e8\u06e8\u06d8\u06e4\u06d8\u06ec\u06e4\u06dc\u06d8\u06d6\u06e7\u06e8\u06d8\u06e8\u06e0\u06e1\u06d8\u06e6\u06eb\u06d8\u06d9\u06dc\u06e5\u06d8\u06df\u06e6\u06e0\u06e6\u06d6\u06e8"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06db\u06d8\u06d6\u06d8\u06d8\u06eb\u06dc\u06d8\u06d7\u06d7\u06e5\u06e7\u06d9\u06e8\u06d8\u06e0\u06e6\u06e1\u06d8\u06e6\u06d8\u06d6\u06d8\u06e0\u06e0\u06e2\u06ec\u06e1\u06e7\u06e1\u06d8\u06e1\u06d7\u06d8\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06d8\u06d6\u06ec\u06d7\u06d6\u06e2\u06e6\u06e2\u06e1\u06d8\u06e5\u06e6\u06e7\u06e8\u06dc\u06e5\u06e2\u06e5\u06e7\u06d9\u06eb\u06e7\u06eb\u06e4\u06e4\u06e1\u06d8\u06d6\u06d9\u06e2"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06df\u06e7\u06e8\u06d8\u06ec\u06d6\u06d6\u06d8\u06e6\u06ec\u06e6\u06d8\u06e5\u06e0\u06df\u06db\u06df\u06e0\u06e6\u06df\u06d9\u06d8\u06e0\u06e7\u06dc\u06d8\u06dc\u06d8\u06e1\u06df\u06da\u06e6\u06e6"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06dc\u06d6\u06e8\u06d8\u06e1\u06e8\u06e7\u06d8\u06d8\u06d6\u06e7\u06d8\u06df\u06e6\u06d8\u06d8\u06e4\u06da\u06e7\u06e8\u06e6\u06e1\u06d8\u06e5\u06d6\u06dc\u06d8\u06d6\u06d6\u06e7\u06e5\u06dc\u06e1\u06e5\u06e0\u06e6\u06dc\u06da\u06d8\u06dc\u06ec\u06e5\u06e4\u06e6\u06d8\u06d6\u06df\u06e5\u06d8\u06df\u06df\u06eb\u06ec\u06df\u06dc"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e2\u06e4\u06eb\u06df\u06e1\u06d8\u06d8\u06d6\u06d6\u06e2\u06e1\u06d9\u06d6\u06e2\u06e0\u06e5\u06ec\u06e5\u06da\u06e4\u06db\u06d6\u06d8\u06dc\u06db\u06dc\u06d8\u06e6\u06da\u06ec\u06d9\u06d6\u06d6\u06d7\u06e7\u06e7\u06d9\u06e0\u06db\u06d6\u06d6\u06e5\u06d8\u06dc\u06eb\u06e7\u06e4\u06e8\u06e4\u06e2\u06db\u06e7\u06eb\u06e6\u06e6\u06eb\u06d6\u06d8"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06e4\u06d8\u06da\u06e7\u06e6\u06e5\u06d8\u06ec\u06ec\u06e1\u06d8\u06e7\u06e1\u06e8\u06e6\u06db\u06e1\u06e0\u06db\u06dc\u06e6\u06d7\u06e6\u06d8\u06d8\u06e4\u06d6\u06d8\u06e1\u06ec\u06da\u06e1\u06e7\u06e1"

    goto :goto_0

    :sswitch_b
    const v4, 0x373af364

    const-string v0, "\u06da\u06e5\u06e0\u06eb\u06e2\u06e1\u06d8\u06d7\u06e2\u06e1\u06d8\u06da\u06e4\u06e0\u06e7\u06da\u06dc\u06d8\u06db\u06db\u06d6\u06dc\u06db\u06e4\u06d7\u06e7\u06dc\u06d8\u06df\u06e0\u06e1\u06d9\u06e7"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_3

    goto :goto_3

    :sswitch_c
    const v5, 0x6f8bc4d7

    const-string v0, "\u06ec\u06dc\u06e7\u06d8\u06e0\u06ec\u06d6\u06d8\u06e5\u06e7\u06df\u06db\u06e6\u06e8\u06ec\u06da\u06e8\u06da\u06e0\u06e5\u06d8\u06e4\u06eb\u06df\u06db\u06e1\u06e6\u06d8\u06ec\u06e0\u06e1\u06eb\u06db\u06da"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_4

    goto :goto_4

    :sswitch_d
    const/4 v0, 0x2

    if-eq v2, v0, :cond_1

    const-string v0, "\u06ec\u06d8\u06e5\u06db\u06e6\u06e7\u06e5\u06da\u06e1\u06e1\u06d7\u06e8\u06d8\u06eb\u06ec\u06d9\u06eb\u06e7\u06e2\u06e5\u06d8\u06e7\u06da\u06e8\u06e7\u06d8\u06e5\u06db\u06d6\u06e5\u06d8\u06dc\u06dc\u06df\u06d8\u06e2\u06e6\u06e7\u06d8"

    goto :goto_4

    :sswitch_e
    const-string v0, "\u06e4\u06e1\u06e8\u06dc\u06d6\u06da\u06da\u06e8\u06e8\u06d8\u06db\u06e2\u06df\u06d6\u06e6\u06e5\u06e2\u06d6\u06e1\u06d8\u06e7\u06d9\u06d8\u06d6\u06d7\u06d6\u06d8\u06e7\u06d8\u06e8\u06dc\u06db\u06e5\u06d8\u06e2\u06e5\u06e6\u06e2\u06ec\u06e4\u06d7\u06ec\u06e1\u06e1\u06ec\u06da\u06e5\u06e8\u06df\u06ec\u06e5\u06d7\u06e4\u06e6\u06d8"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e5\u06e2\u06d6\u06d8\u06e1\u06e1\u06eb\u06e0\u06da\u06df\u06e6\u06e4\u06da\u06eb\u06db\u06eb\u06d6\u06e2\u06ec\u06e8\u06e0\u06e0\u06e4\u06e0\u06e2\u06eb\u06e5\u06e8\u06e1\u06d9\u06e2\u06e2\u06e0\u06e8\u06e1\u06e2\u06e6\u06e8\u06dc\u06d8\u06eb\u06db\u06dc\u06d8\u06e2\u06dc\u06eb\u06d6\u06d8\u06e0\u06da\u06dc\u06d6\u06e8\u06e8\u06e6\u06d8"

    goto :goto_4

    :sswitch_f
    const-string v0, "\u06e1\u06da\u06d9\u06ec\u06d6\u06e2\u06db\u06e6\u06e5\u06d8\u06e2\u06d9\u06d7\u06db\u06ec\u06e7\u06d9\u06d9\u06e0\u06d7\u06eb\u06db\u06eb\u06d8\u06d6\u06eb\u06d6\u06ec\u06ec\u06d6\u06d6\u06dc\u06e6\u06e1\u06d8\u06e2\u06e0\u06e1\u06d8\u06e8\u06d8\u06e2\u06e5\u06dc\u06d7\u06e0\u06e7\u06e5\u06d7\u06e1\u06d6"

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06d8\u06e6\u06d9\u06e4\u06e1\u06e7\u06e1\u06d9\u06dc\u06d8\u06e1\u06d9\u06d8\u06e7\u06e4\u06d8\u06e0\u06d7\u06d8\u06d8\u06d7\u06e0\u06d7\u06e1\u06d8\u06e5\u06e1\u06e1\u06e8\u06d8\u06d6\u06da\u06db"

    goto :goto_3

    :sswitch_11
    const-string v0, "\u06e7\u06d9\u06ec\u06d7\u06e6\u06e5\u06ec\u06e0\u06dc\u06d8\u06d6\u06e5\u06e8\u06dc\u06e6\u06da\u06d7\u06df\u06df\u06e7\u06eb\u06d9\u06db\u06df\u06e1\u06d8\u06eb\u06d7\u06da\u06e4\u06e7\u06d7\u06da\u06da\u06d6\u06e6\u06d6\u06d8\u06db\u06e6\u06e7\u06d9\u06df\u06da\u06e6\u06d7\u06da\u06df\u06e4\u06e5\u06d8"

    goto :goto_3

    :sswitch_12
    const-string v0, "\u06e7\u06d6\u06d8\u06d8\u06db\u06e5\u06d6\u06d8\u06df\u06e7\u06df\u06ec\u06e0\u06e5\u06d8\u06e1\u06e8\u06da\u06e2\u06da\u06e8\u06d8\u06e0\u06d6\u06d8\u06df\u06ec\u06d6\u06d8\u06db\u06df\u06e1\u06d8\u06e0\u06e7\u06e1\u06d8\u06d8\u06dc\u06e8\u06ec\u06e7\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_13
    const v4, -0x498232

    const-string v0, "\u06e2\u06d6\u06d8\u06e6\u06d9\u06d8\u06d8\u06e6\u06e8\u06dc\u06d8\u06e5\u06db\u06d8\u06d8\u06e0\u06da\u06ec\u06e1\u06e5\u06e8\u06d8\u06da\u06e0\u06da\u06dc\u06e5\u06e4\u06dc\u06e8\u06dc\u06d8\u06e1\u06ec\u06e5\u06d9\u06d7\u06e6\u06eb\u06e1\u06e2\u06e6\u06d8\u06e8\u06d8\u06d7\u06e5\u06e8\u06d8\u06d7\u06eb\u06db\u06da\u06e1\u06dc\u06d8"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_5

    goto :goto_5

    :sswitch_14
    const-string v0, "\u06eb\u06df\u06e2\u06d8\u06da\u06e8\u06d8\u06d8\u06db\u06da\u06e7\u06e1\u06e1\u06d8\u06e0\u06e0\u06d6\u06d8\u06e1\u06dc\u06e1\u06d8\u06d6\u06dc\u06d8\u06e8\u06e5\u06e2\u06d7\u06e1\u06e5\u06dc\u06d9\u06e1\u06d8\u06e0\u06e1\u06e5\u06d8\u06d7\u06e8\u06eb\u06e2\u06e4\u06db\u06eb\u06e2\u06e2\u06df\u06e1\u06e5\u06d8\u06db\u06da\u06dc"

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "\u06d9\u06d9\u06e6\u06dc\u06d7\u06e1\u06d8\u06e1\u06e4\u06d8\u06e4\u06e2\u06e1\u06d7\u06da\u06e4\u06d7\u06db\u06e1\u06e6\u06d6\u06e1\u06d8\u06dc\u06e4\u06d6\u06d8\u06d8\u06df\u06e4\u06d9\u06d6\u06d6\u06e4\u06d7\u06e5\u06d8\u06df\u06df\u06d6\u06e7\u06ec\u06dc\u06da\u06d8\u06e8\u06d8\u06eb\u06e1\u06e7\u06d8\u06e0\u06d8\u06e8\u06d9\u06e6\u06e8\u06d8\u06df\u06e8\u06d6\u06d8"

    goto :goto_5

    :sswitch_16
    const v5, -0x5fb69fec

    const-string v0, "\u06e4\u06d7\u06dc\u06d8\u06dc\u06db\u06dc\u06db\u06e1\u06dc\u06d8\u06d8\u06e6\u06e7\u06e4\u06ec\u06d6\u06df\u06d9\u06e6\u06e8\u06d6\u06e8\u06e6\u06e5\u06e4\u06da\u06d8\u06e6\u06eb\u06dc\u06da\u06e4\u06d9\u06e8\u06d8\u06dc\u06d7\u06eb\u06da\u06eb\u06e8\u06d8\u06db\u06e0\u06e2\u06e7\u06eb\u06dc\u06d8\u06e6\u06e6\u06eb"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_6

    goto :goto_6

    :sswitch_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v6, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->Ooooo00:F

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v6, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->OoooOoo:I

    add-int/lit8 v6, v6, 0x3c

    int-to-float v6, v6

    cmpl-float v0, v0, v6

    if-lez v0, :cond_2

    const-string v0, "\u06d8\u06e0\u06e1\u06dc\u06e2\u06e4\u06d7\u06e1\u06ec\u06e7\u06eb\u06e8\u06e4\u06da\u06d7\u06e4\u06e2\u06e7\u06d7\u06e8\u06d8\u06e1\u06d7\u06eb\u06d8\u06df\u06e2\u06d6\u06eb\u06e8\u06d8\u06eb\u06e7\u06da\u06e0\u06e8\u06eb\u06e0\u06dc\u06e7\u06d7\u06e4"

    goto :goto_6

    :cond_2
    const-string v0, "\u06e6\u06da\u06d8\u06e1\u06df\u06d6\u06eb\u06e7\u06e6\u06d8\u06d6\u06e7\u06e5\u06d8\u06e7\u06e1\u06e0\u06e8\u06e6\u06e1\u06e0\u06e4\u06e5\u06d6\u06e2\u06e8\u06d8\u06e6\u06ec\u06d7\u06ec\u06d8\u06d8\u06e7\u06e4\u06e2\u06eb\u06db\u06d6\u06ec\u06eb\u06d8\u06e8\u06df\u06ec\u06db\u06e6\u06d8\u06db\u06dc\u06dc\u06d8"

    goto :goto_6

    :sswitch_18
    const-string v0, "\u06d6\u06e1\u06eb\u06db\u06ec\u06d8\u06d9\u06eb\u06d7\u06eb\u06e1\u06dc\u06d8\u06e4\u06e7\u06e8\u06d9\u06eb\u06e1\u06d8\u06ec\u06d7\u06eb\u06da\u06e5\u06e2\u06df\u06dc\u06e4\u06ec\u06e5\u06d7\u06e1\u06d9\u06e8\u06dc\u06d8\u06e4"

    goto :goto_6

    :sswitch_19
    const-string v0, "\u06e1\u06df\u06da\u06d9\u06d9\u06e2\u06e4\u06dc\u06e6\u06df\u06d9\u06e2\u06db\u06da\u06d6\u06d9\u06d9\u06dc\u06d9\u06e8\u06d9\u06d7\u06e4\u06e5\u06da\u06d6\u06e8\u06d8\u06dc\u06d6\u06e8"

    goto :goto_5

    :sswitch_1a
    const-string v0, "\u06e5\u06e4\u06d8\u06d8\u06e8\u06e8\u06e1\u06d7\u06d6\u06d6\u06e8\u06e2\u06dc\u06dc\u06e8\u06e0\u06e2\u06d9\u06d9\u06eb\u06d8\u06d6\u06d8\u06eb\u06e6\u06ec\u06d9\u06eb\u06d6\u06d8\u06e6\u06e1\u06e6\u06d8"

    goto :goto_5

    :sswitch_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->Ooooo00:F

    const-string v0, "\u06eb\u06d6\u06d9\u06e5\u06e6\u06d6\u06d8\u06df\u06d9\u06d9\u06e4\u06e7\u06df\u06eb\u06e8\u06e1\u06d9\u06dc\u06e0\u06e7\u06e8\u06d7\u06e2\u06e2\u06e2\u06e8\u06e7\u06e8\u06db\u06d6\u06e6\u06e0\u06e0\u06d8\u06d8\u06eb\u06d7\u06df\u06df\u06da\u06d8\u06d8\u06e5\u06e0\u06e5\u06d8\u06e4\u06d6\u06d9\u06d9\u06dc\u06ec"

    goto/16 :goto_0

    :sswitch_1c
    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->Ooooo0o:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout$OooO00o;

    const-string v0, "\u06d7\u06e4\u06d8\u06d8\u06ec\u06d8\u06ec\u06e6\u06da\u06e1\u06d8\u06dc\u06e6\u06dc\u06d8\u06df\u06e8\u06e0\u06db\u06e4\u06da\u06db\u06d9\u06e1\u06e2\u06e0\u06dc\u06d8\u06e5\u06e4\u06e6\u06d8\u06eb\u06e0\u06e5\u06d8\u06ec\u06e8\u06d8\u06d8\u06e5\u06e7\u06d8\u06d8\u06e6\u06e1\u06d9\u06da\u06dc\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_1d
    const v4, -0x4337543f

    const-string v0, "\u06d8\u06e4\u06d8\u06dc\u06d6\u06db\u06e7\u06e7\u06eb\u06dc\u06d8\u06d6\u06d8\u06db\u06ec\u06e4\u06eb\u06e1\u06e1\u06e0\u06d8\u06e7\u06d8\u06e6\u06e4\u06e1\u06d8\u06e0\u06e4\u06df\u06e6\u06d7\u06e2\u06e7\u06da\u06d6\u06e4\u06e8\u06d8\u06d7\u06e6\u06e0\u06e8\u06da\u06d6\u06e6\u06d6\u06d7\u06db\u06da\u06da"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_7

    goto :goto_7

    :sswitch_1e
    const-string v0, "\u06e7\u06d8\u06e5\u06d8\u06e2\u06d6\u06e1\u06d8\u06e5\u06db\u06e2\u06d9\u06e4\u06d8\u06dc\u06d7\u06d8\u06e2\u06e5\u06e6\u06df\u06e7\u06eb\u06e6\u06db\u06da\u06e6\u06d8\u06d7\u06e8\u06e2\u06ec\u06ec\u06d8\u06e1\u06e6\u06e5\u06e1\u06e2\u06e7\u06df\u06e1\u06dc\u06e7\u06dc\u06e7\u06df\u06e2\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "\u06e8\u06e5\u06e7\u06d8\u06e7\u06e5\u06e2\u06e4\u06e0\u06e6\u06d8\u06df\u06d8\u06eb\u06e4\u06d6\u06e8\u06e1\u06e4\u06d8\u06da\u06d8\u06e5\u06db\u06df\u06d8\u06eb\u06d8\u06d8\u06e4\u06db\u06da\u06da\u06e1\u06e6\u06d8\u06e8\u06e2\u06e8\u06d8"

    goto :goto_7

    :sswitch_20
    const v5, -0x7cc0ece1

    const-string v0, "\u06e1\u06e2\u06d8\u06da\u06d6\u06e1\u06e1\u06e8\u06e8\u06d8\u06df\u06df\u06e7\u06e5\u06e7\u06d9\u06e5\u06dc\u06d7\u06eb\u06ec\u06d8\u06d8\u06d6\u06dc\u06d9\u06e8\u06db\u06e5\u06d8\u06d8\u06e8\u06e6\u06d7\u06d9\u06dc\u06d8\u06e5\u06e6\u06dc\u06d8"

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_8

    goto :goto_8

    :sswitch_21
    if-eqz v1, :cond_3

    const-string v0, "\u06e6\u06e1\u06dc\u06ec\u06da\u06da\u06d8\u06dc\u06d6\u06d8\u06d9\u06dc\u06e6\u06d8\u06e5\u06d7\u06e8\u06d8\u06e7\u06ec\u06ec\u06e4\u06d8\u06db\u06e4\u06e0\u06d8\u06d8\u06e8\u06d6\u06e6\u06d8\u06d7\u06e0\u06d9\u06dc\u06e5\u06e1\u06d8\u06db\u06d6\u06e6"

    goto :goto_8

    :cond_3
    const-string v0, "\u06df\u06d9\u06eb\u06eb\u06df\u06e6\u06e4\u06ec\u06d8\u06d8\u06e4\u06dc\u06e6\u06d8\u06d9\u06dc\u06ec\u06d8\u06eb\u06d8\u06e7\u06d8\u06e5\u06d8\u06e8\u06df\u06e7\u06e6\u06d9\u06e2\u06da\u06d6\u06d8\u06db\u06eb\u06eb\u06db\u06e6\u06e8\u06d8\u06e2\u06e4\u06e0\u06d7\u06d8\u06d9\u06e8\u06e8\u06e2\u06da\u06e1\u06eb\u06dc\u06dc\u06e2\u06e0\u06e8\u06e4"

    goto :goto_8

    :sswitch_22
    const-string v0, "\u06d8\u06e4\u06e7\u06e4\u06d7\u06e7\u06e6\u06e4\u06d9\u06d8\u06db\u06eb\u06e0\u06d8\u06e6\u06d8\u06e7\u06e4\u06dc\u06d8\u06d8\u06d6\u06e2\u06d8\u06ec\u06e1\u06d7\u06e5\u06e1\u06e8\u06e6\u06ec\u06eb\u06dc\u06dc\u06d8\u06eb\u06e5\u06d7\u06df\u06e0\u06db\u06e0\u06e5\u06e6\u06d8"

    goto :goto_8

    :sswitch_23
    const-string v0, "\u06e8\u06d6\u06eb\u06db\u06da\u06eb\u06e0\u06e2\u06e1\u06e0\u06e6\u06dc\u06e5\u06e6\u06d9\u06eb\u06e8\u06dc\u06d8\u06e2\u06df\u06db\u06da\u06dc\u06e0\u06da\u06db\u06df\u06e7\u06e0\u06d8\u06d8\u06ec\u06eb\u06d9\u06ec\u06e6\u06e5\u06d8\u06d7\u06d7\u06e6\u06d8\u06ec\u06e6\u06db\u06e2\u06eb\u06db\u06d9\u06d6\u06eb"

    goto :goto_7

    :sswitch_24
    const-string v0, "\u06e1\u06e6\u06dc\u06d8\u06e5\u06e4\u06e8\u06d8\u06e5\u06d8\u06d8\u06eb\u06eb\u06e7\u06d6\u06da\u06e6\u06d8\u06e0\u06db\u06e1\u06d9\u06e0\u06e5\u06e1\u06e1\u06d7\u06e8\u06db\u06ec\u06e8\u06df\u06d6\u06d6\u06e7\u06d7\u06e4\u06db\u06dc\u06e7\u06da\u06db\u06e2\u06d8\u06d8\u06e1\u06da\u06d9"

    goto :goto_7

    :sswitch_25
    invoke-interface {v1}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout$OooO00o;->OooO00o()V

    const-string v0, "\u06e0\u06dc\u06e6\u06eb\u06e8\u06d8\u06d8\u06e1\u06db\u06d8\u06db\u06db\u06e7\u06d8\u06d8\u06d8\u06d8\u06e2\u06d8\u06d9\u06e6\u06e8\u06e4\u06e2\u06e8\u06eb\u06ec\u06e1\u06e8\u06eb\u06db\u06d6\u06d6\u06d7\u06dc\u06e8\u06e2\u06e5\u06df\u06e0\u06e4\u06eb\u06e4\u06df\u06d6\u06d8\u06db\u06e2\u06e7\u06d8\u06dc\u06e8\u06e4\u06d7\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_26
    invoke-super {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :sswitch_27
    return v3

    :sswitch_28
    const-string v0, "\u06ec\u06df\u06e5\u06d8\u06e7\u06e8\u06e8\u06df\u06e7\u06d6\u06d8\u06e6\u06d7\u06d8\u06da\u06d8\u06e1\u06d6\u06e4\u06df\u06e7\u06df\u06e2\u06e7\u06dc\u06eb\u06db\u06dc\u06dc\u06d8\u06e6\u06df\u06da\u06dc\u06e0\u06df\u06e5\u06e5\u06da\u06e1\u06dc\u06e5\u06d8\u06d9\u06ec\u06df\u06e6\u06e0\u06e5\u06d8\u06dc\u06e2\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "\u06d6\u06e0\u06e6\u06d8\u06e6\u06eb\u06d9\u06d6\u06ec\u06e0\u06e4\u06df\u06d8\u06d7\u06df\u06e5\u06d8\u06e2\u06e1\u06df\u06da\u06e1\u06e7\u06e7\u06e7\u06e6\u06e7\u06d7\u06e6\u06d8\u06e5\u06db\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "\u06e0\u06dc\u06e6\u06eb\u06e8\u06d8\u06d8\u06e1\u06db\u06d8\u06db\u06db\u06e7\u06d8\u06d8\u06d8\u06d8\u06e2\u06d8\u06d9\u06e6\u06e8\u06e4\u06e2\u06e8\u06eb\u06ec\u06e1\u06e8\u06eb\u06db\u06d6\u06d6\u06d7\u06dc\u06e8\u06e2\u06e5\u06df\u06e0\u06e4\u06eb\u06e4\u06df\u06d6\u06d8\u06db\u06e2\u06e7\u06d8\u06dc\u06e8\u06e4\u06d7\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x79e50b9f -> :sswitch_1c
        -0x5740c422 -> :sswitch_13
        -0x3e9e4655 -> :sswitch_1
        -0x39f66f34 -> :sswitch_2a
        -0x393e9387 -> :sswitch_b
        -0xfc9bec8 -> :sswitch_27
        -0xdff09cf -> :sswitch_2
        -0x8d5735a -> :sswitch_25
        0x2362918f -> :sswitch_26
        0x351c829f -> :sswitch_3
        0x4f672cd5 -> :sswitch_0
        0x5b219dce -> :sswitch_1d
        0x79682c30 -> :sswitch_1b
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3e62db31 -> :sswitch_4
        -0x34aa96f9 -> :sswitch_29
        -0x348e26b8 -> :sswitch_9
        0x57506502 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1d03c38c -> :sswitch_5
        0x251e7f0a -> :sswitch_8
        0x43728991 -> :sswitch_7
        0x4475d93a -> :sswitch_6
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x6085afc9 -> :sswitch_c
        0x5b1411b -> :sswitch_28
        0x10624a51 -> :sswitch_12
        0x43ab9a26 -> :sswitch_11
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x4a6aa48f -> :sswitch_e
        -0x46b6a982 -> :sswitch_d
        -0x3198a5bc -> :sswitch_10
        -0x77834a4 -> :sswitch_f
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x7e179a1f -> :sswitch_1a
        -0x12f0df7d -> :sswitch_2a
        0x45d631c6 -> :sswitch_14
        0x49421d78 -> :sswitch_16
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x23c17874 -> :sswitch_15
        -0x19487950 -> :sswitch_19
        0x6d77473 -> :sswitch_17
        0x2186d284 -> :sswitch_18
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x3eb2934c -> :sswitch_2a
        -0x166be20f -> :sswitch_24
        0x5853bb79 -> :sswitch_20
        0x7e16cd0b -> :sswitch_1e
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x12b722c3 -> :sswitch_1f
        0x2a1801f1 -> :sswitch_23
        0x3c6c9efb -> :sswitch_21
        0x596155c0 -> :sswitch_22
    .end sparse-switch
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 4

    const-string v0, "\u06db\u06e1\u06dc\u06d8\u06e8\u06e5\u06e1\u06e5\u06d7\u06e1\u06d8\u06e7\u06e6\u06ec\u06e4\u06dc\u06d8\u06d8\u06dc\u06e1\u06e8\u06d8\u06d8\u06eb\u06df\u06d7\u06e7\u06e0\u06e5\u06e0\u06e2\u06e2\u06e8\u06e7\u06e2\u06e4\u06d6\u06da\u06e2\u06d8\u06eb\u06ec\u06e4\u06e7\u06eb\u06e7\u06e1\u06d6\u06dc\u06d8\u06e8\u06e2\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xbb

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2ff

    const/16 v2, 0x3b1

    const v3, 0x6ca995c6

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06ec\u06d9\u06e0\u06da\u06e2\u06dc\u06d7\u06dc\u06d8\u06d6\u06e8\u06dc\u06eb\u06e4\u06db\u06d9\u06e2\u06e6\u06d6\u06df\u06ec\u06d7\u06d6\u06e7\u06d8\u06d8\u06d8\u06d8\u06e5\u06ec\u06e6\u06e5\u06d9\u06da\u06e0\u06d8\u06e8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06d7\u06e5\u06d8\u06e6\u06e1\u06da\u06eb\u06e7\u06dc\u06dc\u06e5\u06d7\u06d6\u06dc\u06e6\u06e4\u06dc\u06d8\u06d8\u06e1\u06d9\u06dc\u06da\u06e6\u06d8\u06d7\u06ec\u06e1\u06d8\u06ec\u06e0\u06eb\u06e1\u06e5\u06e0\u06e0\u06d9\u06e4\u06e1\u06d6\u06d9\u06df\u06e5\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v0, "\u06db\u06eb\u06e6\u06d6\u06da\u06e1\u06d8\u06e2\u06e0\u06e1\u06d8\u06d9\u06d7\u06e0\u06d6\u06da\u06d8\u06db\u06d7\u06d8\u06d8\u06d8\u06ec\u06e5\u06d8\u06d8\u06e2\u06db\u06d8\u06d8\u06d7\u06e1\u06d8\u06d8\u06e6\u06ec\u06d8\u06e7\u06e6\u06e7\u06d8\u06db\u06e5\u06e5\u06d8\u06d7\u06eb\u06e5\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x657604f6 -> :sswitch_1
        -0x49e91142 -> :sswitch_0
        -0x14bb2beb -> :sswitch_3
        -0x1475fd5f -> :sswitch_2
    .end sparse-switch
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 4

    const-string v0, "\u06e7\u06e2\u06e5\u06d9\u06d9\u06e8\u06d8\u06e6\u06d6\u06d8\u06e5\u06e5\u06dc\u06e0\u06e7\u06e2\u06ec\u06e6\u06d7\u06d9\u06db\u06dc\u06e1\u06e1\u06da\u06d9\u06e2\u06e7\u06e8\u06d7\u06e5\u06e0\u06d6\u06d7\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x72

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3d2

    const/16 v2, 0x35f

    const v3, -0x78f1543d

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e0\u06e6\u06d8\u06d6\u06eb\u06da\u06d9\u06e4\u06d8\u06d8\u06df\u06e4\u06ec\u06eb\u06d8\u06e2\u06e7\u06db\u06ec\u06da\u06d9\u06d6\u06e7\u06da\u06e4\u06d6\u06eb\u06dc\u06e1\u06df\u06da\u06db\u06e6\u06d8\u06e5\u06db\u06d8\u06df\u06e2\u06e4\u06e8\u06e6\u06dc"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06eb\u06d6\u06dc\u06e0\u06e5\u06db\u06d6\u06d6\u06d8\u06e7\u06db\u06dc\u06d7\u06da\u06e1\u06d8\u06eb\u06e2\u06d7\u06d6\u06d8\u06d7\u06d7\u06e5\u06e1\u06d8\u06d9\u06d7\u06e1\u06e5\u06e2\u06db\u06db\u06d6\u06e1\u06e6\u06e6\u06dc\u06d6\u06d8\u06e1\u06e1\u06d8\u06ec\u06dc\u06e6\u06db\u06d7\u06e5"

    goto :goto_0

    :sswitch_2
    const v1, -0x3dd9b770

    const-string v0, "\u06da\u06e6\u06d8\u06dc\u06d8\u06d8\u06d8\u06e0\u06e2\u06e1\u06d8\u06d9\u06ec\u06df\u06e1\u06ec\u06d8\u06dc\u06e6\u06d6\u06d8\u06d8\u06e2\u06e1\u06e2\u06e8\u06d7\u06e5\u06e5\u06df\u06e5\u06ec\u06da\u06dc\u06db\u06e4\u06d7\u06e1\u06e1\u06e1\u06dc\u06e1\u06dc\u06d6\u06e1\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06e4\u06e5\u06e1\u06d8\u06d6\u06ec\u06da\u06df\u06d9\u06e8\u06d8\u06e6\u06eb\u06d7\u06d7\u06d8\u06e1\u06d8\u06e5\u06eb\u06ec\u06e8\u06db\u06e5\u06da\u06d8\u06dc\u06d7\u06db\u06e1\u06ec\u06e8\u06df\u06dc\u06e7\u06d8\u06e7\u06e8\u06eb\u06eb\u06e2\u06e8\u06d8\u06df\u06d9\u06df"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u06e4\u06db\u06df\u06da\u06ec\u06d8\u06d8\u06e6\u06e7\u06e1\u06d8\u06d8\u06dc\u06df\u06da\u06d6\u06e6\u06d8\u06e2\u06d6\u06e8\u06d8\u06e2\u06d7\u06d8\u06dc\u06e6\u06e7\u06d8\u06e1\u06dc\u06dc\u06dc\u06eb\u06e6\u06d8\u06e7\u06dc\u06d8\u06d9\u06db\u06d8\u06d8\u06d9\u06e2\u06e1\u06d8\u06d8\u06d6\u06ec\u06d6\u06da\u06e5"

    goto :goto_1

    :sswitch_5
    const v2, -0x5c3073b0

    const-string v0, "\u06ec\u06e4\u06eb\u06dc\u06d8\u06e8\u06d8\u06d8\u06d6\u06e7\u06e4\u06d8\u06e8\u06d8\u06e5\u06d8\u06d8\u06d6\u06e2\u06e5\u06d8\u06e6\u06db\u06dc\u06d8\u06e5\u06e5\u06e8\u06da\u06e1\u06db\u06e7\u06d9\u06d6\u06ec\u06e0\u06db\u06d6\u06dc\u06e1\u06d6\u06e8\u06e8\u06e0\u06e2\u06d8\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06d7\u06e1\u06d6\u06eb\u06e0\u06da\u06e4\u06e8\u06dc\u06d6\u06d7\u06e5\u06da\u06ec\u06e2\u06e8\u06d7\u06d8\u06d8\u06eb\u06e8\u06d6\u06d8\u06dc\u06e6\u06ec\u06da\u06da\u06e5\u06dc\u06d9\u06d8\u06d8\u06d9\u06d9\u06dc\u06d8\u06eb\u06dc\u06eb\u06e5\u06e6\u06e7\u06e5\u06e8\u06d8\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06ec\u06e6\u06e6\u06e0\u06e1\u06e2\u06da\u06d9\u06e6\u06d8\u06e8\u06e1\u06e7\u06df\u06e2\u06d6\u06d8\u06ec\u06df\u06db\u06d9\u06e5\u06dc\u06e2\u06e8\u06d6\u06d8\u06eb\u06e2\u06db\u06db\u06d9\u06da\u06ec\u06e8\u06e7\u06d8\u06db\u06e8\u06d8"

    goto :goto_2

    :sswitch_7
    if-eqz p1, :cond_0

    const-string v0, "\u06e6\u06e0\u06e8\u06d7\u06d8\u06d8\u06e4\u06e7\u06e6\u06e6\u06e5\u06d6\u06e1\u06ec\u06e7\u06dc\u06e1\u06e2\u06dc\u06e6\u06dc\u06d8\u06ec\u06e7\u06d8\u06e0\u06dc\u06df\u06e8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e5\u06df\u06dc\u06d7\u06e8\u06e5\u06da\u06df\u06da\u06e5\u06e0\u06e1\u06ec\u06e5\u06e6\u06e7\u06e5\u06d7\u06eb\u06e0\u06e2\u06e8\u06e6\u06d7\u06db\u06e4\u06d9\u06e8\u06d6\u06d8\u06e2\u06ec\u06e7\u06e0\u06dc\u06e5\u06df\u06d7\u06e5\u06d7\u06d6\u06d8\u06e1\u06e5\u06e1\u06e0\u06e8\u06ec\u06e4\u06ec\u06dc\u06d8\u06da\u06e6"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e8\u06e8\u06e1\u06d8\u06d7\u06db\u06dc\u06e0\u06da\u06e2\u06e1\u06db\u06e4\u06da\u06dc\u06db\u06e6\u06e1\u06e5\u06d7\u06e5\u06e4\u06eb\u06e4\u06df\u06e8\u06e0\u06e0\u06d8\u06db"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06d8\u06da\u06e1\u06da\u06d9\u06df\u06d6\u06d9\u06d8\u06e6\u06e7\u06d7\u06df\u06e1\u06d6\u06d8\u06e1\u06d9\u06d6\u06e4\u06e5\u06da\u06e4\u06db\u06e4\u06d8\u06dc\u06d8\u06d8\u06e7\u06e6\u06e8\u06df\u06d8\u06d6\u06d8\u06e2\u06e6\u06e5\u06e1\u06e8\u06d7\u06d8\u06dc\u06e8\u06d8"

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-string v0, "\u06e4\u06e5\u06e1\u06d8\u06d6\u06ec\u06da\u06df\u06d9\u06e8\u06d8\u06e6\u06eb\u06d7\u06d7\u06d8\u06e1\u06d8\u06e5\u06eb\u06ec\u06e8\u06db\u06e5\u06da\u06d8\u06dc\u06d7\u06db\u06e1\u06ec\u06e8\u06df\u06dc\u06e7\u06d8\u06e7\u06e8\u06eb\u06eb\u06e2\u06e8\u06d8\u06df\u06d9\u06df"

    goto :goto_0

    :sswitch_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a99a319 -> :sswitch_0
        -0x53e8d2ff -> :sswitch_c
        -0x50eed615 -> :sswitch_b
        0x3a871933 -> :sswitch_2
        0x740bb808 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x224a2f47 -> :sswitch_5
        0x14eafa09 -> :sswitch_3
        0x1a4b1b14 -> :sswitch_9
        0x28d8a9d7 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x7c466ffd -> :sswitch_7
        -0x726c17a7 -> :sswitch_4
        0x4c8a2d4 -> :sswitch_8
        0x4ab2eaae -> :sswitch_6
    .end sparse-switch
.end method

.method public setTouchCallBackListener(Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout$OooO00o;)V
    .locals 4

    const-string v0, "\u06eb\u06e0\u06e8\u06e8\u06df\u06e5\u06e2\u06d7\u06e7\u06e8\u06e7\u06df\u06e0\u06d8\u06eb\u06e4\u06da\u06e5\u06da\u06d9\u06dc\u06e8\u06e1\u06e7\u06e8\u06d6\u06e5\u06d6\u06e8\u06d8\u06d8\u06e5\u06df\u06dc\u06df\u06d9\u06d6\u06db\u06d9\u06d7\u06e8\u06df\u06ec\u06e8\u06e0\u06e8\u06d8\u06e1\u06d7\u06e5\u06d8\u06e7\u06e4\u06d7\u06e0\u06d9\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2af

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x290

    const/16 v2, 0xb7

    const v3, -0x714ec11b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06d7\u06df\u06e8\u06e8\u06e5\u06e6\u06e1\u06df\u06d6\u06e8\u06db\u06dc\u06d6\u06d8\u06dc\u06e1\u06d8\u06eb\u06e0\u06d8\u06d8\u06da\u06da\u06df\u06ec\u06d9\u06d6\u06d8\u06e7\u06d9\u06e6\u06d8\u06e2\u06da\u06eb\u06e5\u06d7\u06e0\u06e1\u06eb\u06e8\u06d8\u06da\u06e2\u06e5\u06d9\u06d7\u06d8\u06db\u06da\u06e6\u06e0\u06d6\u06ec\u06e7\u06db"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e1\u06e0\u06dc\u06d8\u06e6\u06e0\u06df\u06e1\u06d7\u06e1\u06d8\u06da\u06e2\u06db\u06e5\u06d8\u06d7\u06da\u06e6\u06e8\u06e2\u06d7\u06dc\u06dc\u06d8\u06ec\u06d9\u06d9\u06e8\u06dc\u06d8\u06eb\u06e7\u06d7\u06e0\u06d9"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->Ooooo0o:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout$OooO00o;

    const-string v0, "\u06da\u06e2\u06e6\u06d8\u06e0\u06e5\u06d6\u06e5\u06d6\u06df\u06d6\u06df\u06e0\u06df\u06ec\u06db\u06e7\u06db\u06e5\u06e0\u06dc\u06e5\u06d8\u06d8\u06e5\u06e6\u06db\u06d8\u06e2\u06e4\u06d8\u06da"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x73cc5682 -> :sswitch_0
        -0x52bf14db -> :sswitch_3
        0x20aa550f -> :sswitch_1
        0x27c8c720 -> :sswitch_2
    .end sparse-switch
.end method
