.class public Lcom/cyjh/elfin/ui/view/customview/RTDViewPager;
.super Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "\u06dc\u06d6\u06d6\u06e4\u06e8\u06db\u06e1\u06d9\u06da\u06e5\u06d8\u06e1\u06d8\u06e2\u06d7\u06ec\u06d6\u06ec\u06df\u06ec\u06d6\u06dc\u06d8\u06e8\u06e4\u06dc\u06d7\u06e1\u06e7\u06d8\u06db\u06dc\u06df\u06dc\u06d9\u06e2\u06eb\u06df\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3e7

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2ff

    const/16 v2, 0x27a

    const v3, -0x495ccfe1

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06db\u06e7\u06df\u06e2\u06da\u06db\u06e8\u06e7\u06dc\u06d6\u06e1\u06d8\u06d7\u06e5\u06eb\u06e4\u06e0\u06db\u06e2\u06d6\u06ec\u06d9\u06e6\u06da\u06ec\u06dc\u06e5\u06e1\u06d9\u06dc\u06e5\u06e6\u06e4\u06db\u06e2\u06e0\u06e6\u06e5\u06d8\u06d8\u06eb\u06d9\u06ec\u06e4\u06dc\u06d8\u06d8\u06e6\u06e8\u06da\u06ec\u06d8\u06e0\u06eb\u06df"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06e5\u06e8\u06d8\u06d8\u06db\u06eb\u06d6\u06db\u06ec\u06e2\u06db\u06e2\u06dc\u06e7\u06dc\u06d8\u06eb\u06dc\u06e8\u06d8\u06e0\u06e1\u06e0\u06d6\u06e8\u06ec\u06d6\u06df\u06d6\u06d8\u06e0\u06e6\u06d6\u06eb\u06d8\u06d6\u06e7\u06e4\u06e6"

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x68c860d1 -> :sswitch_2
        0x2f8b0259 -> :sswitch_1
        0x5b796eef -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "\u06e8\u06d9\u06df\u06ec\u06e2\u06e5\u06d8\u06eb\u06e6\u06e1\u06d8\u06df\u06d7\u06e1\u06d8\u06e1\u06e7\u06e1\u06d8\u06e6\u06db\u06e6\u06d8\u06df\u06d9\u06e7\u06da\u06d7\u06df\u06e8\u06e7\u06dc\u06eb\u06e0\u06e5\u06d8\u06da\u06e4\u06dc\u06d8\u06d8\u06d6\u06df\u06df\u06e1\u06ec\u06da\u06da\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x7e

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2e8

    const/16 v2, 0x3ae

    const v3, 0x3a613a2a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06d7\u06e2\u06df\u06d6\u06dc\u06d8\u06e7\u06d9\u06e6\u06d6\u06db\u06d9\u06e2\u06e1\u06e8\u06d8\u06e0\u06d7\u06db\u06e4\u06e0\u06e6\u06e1\u06e7\u06e4\u06eb\u06d6\u06db\u06eb\u06df\u06e6\u06eb\u06e8\u06e1\u06e5\u06e8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06d7\u06d8\u06ec\u06db\u06e6\u06e8\u06df\u06e6\u06dc\u06d8\u06e7\u06db\u06e4\u06da\u06d7\u06d8\u06e7\u06d8\u06e0\u06db\u06ec\u06d6\u06e1\u06d6\u06e6\u06e2\u06d6\u06db\u06ec\u06e6"

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x71c2327a -> :sswitch_0
        -0x1f946167 -> :sswitch_2
        0x1b0ed014 -> :sswitch_1
    .end sparse-switch
.end method
