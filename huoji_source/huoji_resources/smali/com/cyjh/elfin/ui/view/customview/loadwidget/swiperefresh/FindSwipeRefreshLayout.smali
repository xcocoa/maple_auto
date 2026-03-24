.class public Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FindSwipeRefreshLayout;
.super Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReHeadDefaultSwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReHeadDefaultSwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public OooO0oO()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06df\u06eb\u06da\u06e0\u06e1\u06e5\u06d8\u06db\u06e7\u06e5\u06d8\u06db\u06da\u06e1\u06e1\u06d6\u06ec\u06d9\u06e8\u06d7\u06d9\u06d7\u06e6\u06d8\u06dc\u06e0\u06e1\u06d8\u06eb\u06e0\u06e5\u06d8\u06e5\u06dc\u06e4\u06d7\u06e1\u06d8\u06d8\u06d6\u06eb\u06da\u06d6\u06dc\u06e7\u06d8\u06e6\u06e0\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x306

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x302

    const/16 v3, 0x3bc

    const v4, 0x58007ec7

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06df\u06e0\u06e1\u06dc\u06d8\u06d8\u06ec\u06e4\u06db\u06d9\u06da\u06e5\u06db\u06d6\u06d8\u06e5\u06e2\u06d6\u06d8\u06e4\u06db\u06d7\u06e8\u06e6\u06e8\u06e4\u06da\u06eb\u06d9\u06d7\u06e1\u06e4\u06d6\u06d8\u06e8\u06df\u06e8\u06e4\u06e0\u06e5\u06e1\u06e5\u06d8\u06d6\u06da\u06e6\u06d8\u06df\u06e8\u06e6\u06e0\u06e8\u06e7\u06d8\u06e8\u06df\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    const v3, 0x7f060061

    aput v3, v0, v2

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    const-string v0, "\u06db\u06d6\u06e7\u06e0\u06e5\u06eb\u06e5\u06e0\u06e4\u06d6\u06d8\u06e5\u06d8\u06d7\u06e6\u06e6\u06e2\u06db\u06e2\u06d6\u06e8\u06d8\u06d8\u06e8\u06e7\u06d8\u06da\u06db\u06da\u06e7\u06df\u06ec\u06e8\u06e5\u06e1\u06d8\u06d8\u06d8\u06d6\u06d8"

    goto :goto_0

    :sswitch_2
    const v0, 0x7f09025a

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    const-string v0, "\u06db\u06d8\u06e8\u06d8\u06d9\u06e2\u06e7\u06e5\u06eb\u06e8\u06d8\u06eb\u06d9\u06d6\u06d8\u06d9\u06d8\u06ec\u06da\u06df\u06d6\u06da\u06df\u06e5\u06da\u06dc\u06d7\u06e6\u06d6\u06e5\u06eb\u06d6\u06db\u06e8\u06e1\u06d8\u06e0\u06d6\u06e5\u06d8"

    goto :goto_0

    :sswitch_3
    new-instance v1, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;-><init>(Landroid/content/Context;)V

    const-string v0, "\u06e6\u06e6\u06e6\u06d9\u06e6\u06d8\u06d8\u06eb\u06d9\u06e8\u06d8\u06e2\u06e1\u06db\u06e8\u06d7\u06eb\u06e6\u06e5\u06e8\u06db\u06d6\u06e8\u06d8\u06e1\u06e1\u06df\u06e8\u06ec\u06da\u06dc\u06d8\u06e6\u06d8\u06df\u06e4\u06e1\u06d8\u06d8\u06df"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/ReDefaultSwipeRefreshLayout;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OooO0o(Landroid/view/View;)V

    const-string v0, "\u06ec\u06e5\u06e5\u06e0\u06d7\u06e1\u06d8\u06d7\u06dc\u06d6\u06d8\u06e0\u06d7\u06d7\u06e8\u06d7\u06eb\u06e1\u06d9\u06d7\u06da\u06df\u06db\u06d9\u06e6\u06e6\u06db\u06e6\u06e1\u06d7\u06d8\u06d8\u06da\u06eb\u06dc\u06d8\u06df\u06e2\u06e8\u06d8"

    goto :goto_0

    :sswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x64fe4c3e -> :sswitch_3
        -0x448474ea -> :sswitch_1
        0x751edec -> :sswitch_0
        0x409cefbd -> :sswitch_2
        0x533fe9b9 -> :sswitch_5
        0x75edec14 -> :sswitch_4
    .end sparse-switch
.end method
