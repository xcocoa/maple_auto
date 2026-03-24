.class public Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView$OooO00o;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06df\u06e0\u06e1\u06e0\u06d8\u06e6\u06d8\u06e1\u06d8\u06d8\u06d8\u06dc\u06da\u06e2\u06eb\u06e1\u06e1\u06d6\u06e5\u06dc\u06d8\u06e2\u06d6\u06eb\u06d6\u06d6\u06e0\u06da\u06e2\u06e5\u06d8\u06db\u06d9\u06e4\u06ec\u06e8\u06e5\u06d6\u06d8\u06df\u06e6\u06e7\u06d6\u06d7\u06e6\u06d8\u06dc\u06db\u06e2\u06da\u06d9\u06e6\u06d8\u06e7\u06d7\u06df\u06dc\u06df\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x3bb

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x8d

    const/16 v3, 0x20f

    const v4, 0x22efda9d

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06d6\u06e8\u06e2\u06db\u06e7\u06e2\u06e6\u06d8\u06d6\u06e7\u06e8\u06d8\u06db\u06d7\u06e1\u06d8\u06e8\u06e8\u06d7\u06df\u06e6\u06db\u06d7\u06d9\u06e2\u06e5\u06e1\u06d8\u06dc\u06d6\u06e8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06e0\u06db\u06e6\u06e0\u06e5\u06d6\u06d8\u06e1\u06e6\u06e4\u06e4\u06e8\u06d8\u06da\u06dc\u06df\u06e0\u06e1\u06eb\u06e1\u06db\u06e7\u06e8\u06d8\u06e8\u06e6\u06d6\u06e1\u06e4\u06e8\u06d7\u06e5\u06e1\u06d8\u06d7\u06e6\u06da\u06db\u06d7\u06e2\u06d7\u06e4\u06d8"

    goto :goto_0

    :sswitch_2
    const v2, -0x6a6b064d

    const-string v0, "\u06d7\u06d8\u06e2\u06ec\u06e0\u06eb\u06d8\u06dc\u06da\u06e1\u06e5\u06d8\u06d8\u06d6\u06e5\u06e1\u06d8\u06da\u06e1\u06e8\u06e6\u06dc\u06d7\u06ec\u06e8\u06e1\u06d6\u06e7\u06e2\u06d7\u06e6\u06e0\u06e8\u06db\u06e5\u06d8\u06e5\u06da\u06d8\u06d8\u06e1\u06e5\u06d8\u06df\u06d7\u06e1\u06da\u06e2\u06e7\u06e6\u06da\u06e8\u06d7\u06e7\u06db\u06d6\u06d8\u06e5\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06db\u06ec\u06eb\u06d7\u06e8\u06da\u06eb\u06e0\u06e5\u06d8\u06d8\u06e7\u06e1\u06df\u06da\u06df\u06e2\u06e1\u06eb\u06df\u06d7\u06dc\u06d8\u06dc\u06e1\u06e4\u06d9\u06e2\u06e0\u06db\u06e7\u06d6\u06e6\u06d8\u06e0\u06eb\u06ec\u06df\u06e6\u06e8\u06d8\u06e5\u06d7\u06df"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u06dc\u06e2\u06d7\u06d8\u06ec\u06dc\u06e6\u06da\u06d7\u06dc\u06ec\u06e0\u06e5\u06d6\u06e2\u06eb\u06d8\u06e0\u06e8\u06e7\u06d6\u06da\u06e5\u06db\u06e5\u06e7\u06e6\u06d8\u06d7\u06e2\u06e7"

    goto :goto_1

    :sswitch_5
    const v3, 0x5fea17e9

    const-string v0, "\u06df\u06dc\u06e5\u06d8\u06e2\u06e4\u06e8\u06d8\u06d8\u06dc\u06d8\u06e8\u06e7\u06dc\u06e8\u06e0\u06e8\u06d9\u06eb\u06db\u06d8\u06e6\u06d8\u06e0\u06e1\u06d8\u06d8\u06d6\u06da\u06e7\u06d7\u06ec\u06e6\u06e4\u06e2\u06e1\u06e2\u06d9\u06e8\u06d8\u06ec\u06e5\u06e4\u06e6\u06e5"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06da\u06d9\u06db\u06d6\u06d8\u06e6\u06eb\u06e7\u06e2\u06d9\u06eb\u06d6\u06e2\u06ec\u06db\u06e4\u06e6\u06e6\u06e4\u06e0\u06e7\u06d8\u06e5\u06da\u06e6\u06dc\u06d7\u06d8\u06d9\u06da\u06d8\u06d8\u06d7\u06e6\u06eb\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06eb\u06eb\u06e4\u06e0\u06eb\u06da\u06dc\u06e6\u06d9\u06e2\u06ec\u06d6\u06d8\u06ec\u06e7\u06e7\u06eb\u06e7\u06e1\u06e4\u06df\u06e4\u06e8\u06e8\u06e7\u06eb\u06e4\u06e6\u06d8\u06e7\u06e5\u06db\u06e0\u06e5\u06e7\u06d8\u06e5\u06e1\u06e8\u06d8"

    goto :goto_2

    :sswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v4, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView$OooO00o;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;

    iget-object v4, v4, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->OoooOoo:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v4

    if-ne v0, v4, :cond_0

    const-string v0, "\u06e7\u06e4\u06db\u06e4\u06e1\u06d6\u06e8\u06db\u06db\u06d6\u06e1\u06d6\u06e0\u06e1\u06d9\u06d9\u06e4\u06e7\u06da\u06e4\u06e4\u06df\u06d8\u06e7\u06d8\u06e5\u06e7\u06d6\u06da\u06e7\u06e6"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d7\u06df\u06e0\u06eb\u06e7\u06e8\u06e5\u06e0\u06e1\u06d8\u06d9\u06da\u06e1\u06d8\u06d6\u06d7\u06d7\u06d8\u06e7\u06e1\u06e5\u06e1\u06e2\u06dc\u06d7\u06e6\u06db\u06e4\u06e1\u06d8\u06ec\u06e6\u06e1\u06d8\u06df\u06da\u06e8"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06e4\u06df\u06d6\u06e5\u06e5\u06db\u06eb\u06e7\u06e1\u06d8\u06e8\u06db\u06e8\u06da\u06df\u06e2\u06d9\u06da\u06e0\u06e1\u06e7\u06d8\u06d7\u06eb\u06d8\u06eb\u06e6\u06d8\u06d8\u06ec\u06e4\u06e2\u06dc\u06db\u06dc\u06d8\u06d8\u06eb\u06ec\u06d6\u06d9\u06e0\u06dc\u06e6\u06e0\u06dc\u06da\u06db\u06db\u06d7\u06e5"

    goto :goto_1

    :sswitch_a
    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView$OooO00o;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;

    const-string v0, "\u06dc\u06e8\u06e4\u06e4\u06e4\u06e6\u06d9\u06e0\u06d7\u06d6\u06df\u06e5\u06d6\u06e2\u06e6\u06d7\u06d7\u06e6\u06d8\u06e8\u06d7\u06e8\u06e0\u06d6\u06eb\u06db\u06d6\u06e1\u06d8\u06d6\u06d9\u06dc\u06d8\u06d7\u06e1\u06d7\u06e4\u06e6\u06e6\u06ec\u06e4\u06e4\u06e7\u06dc\u06db\u06eb\u06da\u06d7\u06d8\u06d9\u06d8\u06d8"

    goto :goto_0

    :sswitch_b
    const v2, -0x5f3c04db

    const-string v0, "\u06d9\u06eb\u06ec\u06e6\u06e0\u06db\u06e1\u06d7\u06e6\u06d8\u06e4\u06e7\u06d8\u06d8\u06e4\u06eb\u06d8\u06d8\u06e7\u06e8\u06d9\u06e4\u06e8\u06e0\u06d8\u06e7\u06df\u06ec\u06e8\u06db\u06d9\u06ec\u06da\u06db\u06e5\u06e6\u06e6\u06e4\u06d6\u06d8\u06e5\u06dc\u06e5\u06d8\u06e4\u06df\u06e1\u06d8\u06db\u06e2\u06e2\u06d6\u06db\u06d7\u06ec\u06e7\u06dc\u06d8\u06e4\u06d7\u06e1"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_c
    const-string v0, "\u06eb\u06d6\u06e8\u06d8\u06d6\u06da\u06dc\u06d8\u06e7\u06e1\u06e0\u06e5\u06da\u06e0\u06e4\u06da\u06d7\u06e5\u06d7\u06e8\u06d8\u06d6\u06d8\u06e1\u06d8\u06eb\u06ec\u06e4\u06e0\u06df\u06eb\u06d8\u06e1\u06d8\u06e8\u06e1\u06e5\u06e6\u06db\u06d8\u06d8\u06e6\u06db\u06dc\u06d8\u06e2\u06e1\u06e8\u06e0\u06e6\u06e6\u06d8\u06e0\u06e1\u06e8\u06df\u06d9\u06e7\u06df\u06da\u06dc"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06dc\u06e0\u06e6\u06ec\u06e5\u06ec\u06df\u06db\u06dc\u06df\u06e4\u06e5\u06eb\u06df\u06e0\u06e4\u06d6\u06e0\u06e8\u06e7\u06d8\u06d8\u06db\u06dc\u06d8\u06d6\u06e2\u06e2\u06e2\u06d8\u06e5\u06d8\u06ec\u06dc\u06e1\u06e2\u06d9\u06d7\u06d7\u06e5\u06db\u06da\u06e7\u06e4\u06db\u06dc\u06e4\u06d8\u06d8"

    goto :goto_3

    :sswitch_e
    const v3, -0x16f09f25

    const-string v0, "\u06e8\u06db\u06e1\u06d8\u06e0\u06d6\u06eb\u06d9\u06e6\u06db\u06e0\u06e0\u06eb\u06e5\u06e5\u06e2\u06e5\u06da\u06dc\u06d8\u06e2\u06e1\u06db\u06e2\u06e6\u06df\u06d7\u06e4\u06dc\u06e8\u06eb\u06e4"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_4

    goto :goto_4

    :sswitch_f
    const-string v0, "\u06d9\u06da\u06df\u06e6\u06dc\u06d6\u06d8\u06e7\u06e0\u06e6\u06e1\u06d7\u06d8\u06d8\u06e2\u06e6\u06e2\u06e1\u06d7\u06dc\u06d8\u06d7\u06d9\u06e5\u06d8\u06eb\u06d8\u06da\u06e1\u06eb\u06ec\u06d9\u06d7\u06e5\u06d8\u06df\u06e1\u06db\u06e8\u06d6\u06e6\u06d8\u06e6\u06dc\u06da\u06e5\u06d7\u06e8\u06d8\u06ec\u06dc\u06db\u06e1\u06e2\u06dc\u06d8"

    goto :goto_3

    :cond_1
    const-string v0, "\u06dc\u06df\u06e6\u06e1\u06d6\u06e7\u06d8\u06db\u06e6\u06ec\u06d8\u06d6\u06d8\u06e6\u06eb\u06e8\u06e4\u06e5\u06d9\u06e8\u06e7\u06d8\u06da\u06eb\u06d8\u06e8\u06d8\u06db\u06d7\u06d8\u06d6\u06e8\u06d8\u06e5\u06d8\u06dc\u06e6\u06d6\u06da\u06e7\u06e7\u06e6\u06e7\u06dc\u06d8\u06e4\u06e1\u06d9\u06e4\u06e1\u06d8"

    goto :goto_4

    :sswitch_10
    iget-object v0, v1, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;->OoooOoO:Lz2/ua;

    if-eqz v0, :cond_1

    const-string v0, "\u06e2\u06d9\u06e1\u06d8\u06e1\u06d8\u06e7\u06dc\u06d6\u06e1\u06d8\u06df\u06e8\u06e1\u06d8\u06e5\u06d9\u06dc\u06d8\u06e7\u06eb\u06e6\u06e1\u06d7\u06dc\u06e0\u06e1\u06e1\u06d8\u06db\u06da\u06dc\u06e6\u06e5\u06e5\u06d8\u06d6\u06ec\u06e6\u06d8\u06db\u06e8\u06d6\u06d8\u06ec\u06e0\u06e6\u06d8\u06e8\u06e6\u06df\u06ec\u06e6\u06e0\u06ec\u06da\u06d8\u06da\u06db\u06d7\u06eb\u06dc\u06d9"

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06d9\u06e0\u06e7\u06e5\u06db\u06eb\u06d8\u06d8\u06e4\u06eb\u06e4\u06e7\u06e0\u06dc\u06e0\u06e8\u06e1\u06d8\u06da\u06d8\u06e5\u06d8\u06e8\u06e7\u06d8\u06eb\u06e4\u06e5\u06d8\u06e2\u06d8\u06d8\u06d8\u06dc\u06d7\u06d7\u06e0\u06e2\u06d8\u06df\u06ec\u06df\u06d6\u06e4\u06d6"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06d9\u06e2\u06d7\u06e2\u06e0\u06ec\u06d6\u06e4\u06e4\u06db\u06dc\u06d8\u06d9\u06ec\u06d9\u06d6\u06e1\u06df\u06d7\u06e8\u06e0\u06df\u06e5\u06e4\u06d7\u06e5\u06e1\u06d8\u06eb\u06e8\u06e6\u06d8\u06eb\u06e5\u06e0\u06e5\u06db\u06e1\u06d8\u06da\u06db\u06d8\u06e0\u06e6\u06d6\u06d7\u06ec\u06e7\u06e5\u06e6\u06d7\u06e7\u06e7\u06e7\u06e5"

    goto :goto_3

    :sswitch_13
    iget-object v0, v1, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->OoooOoo:Landroid/widget/TextView;

    const-string v2, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u06df\u06e5\u06d9\u06e0\u06dc\u06e4\u06d6\u06e4\u06df\u06df\u06e1\u06ec\u06e2\u06e1\u06ec\u06d6\u06e6\u06d8\u06db\u06e2\u06e2\u06df\u06e0\u06da\u06e4\u06d7\u06eb\u06e7\u06e5\u06d8\u06d8\u06d8\u06e6\u06d8\u06e0"

    goto/16 :goto_0

    :sswitch_14
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView$OooO00o;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;->OoooOoO:Lz2/ua;

    invoke-interface {v0}, Lz2/ua;->OooO00o()V

    const-string v0, "\u06e1\u06db\u06df\u06eb\u06dc\u06e4\u06df\u06db\u06d9\u06d9\u06da\u06d8\u06df\u06da\u06d6\u06d8\u06e8\u06df\u06e1\u06d9\u06e6\u06df\u06e7\u06d6\u06d8\u06d7\u06e1\u06e8\u06e4\u06eb\u06e6\u06db\u06e6\u06e1\u06d8\u06d9\u06eb\u06e5\u06e0\u06eb\u06e2\u06d6\u06e4\u06da\u06d8\u06e7\u06dc\u06d8\u06da\u06d7\u06ec\u06ec\u06d9\u06d9\u06da\u06dc\u06e2"

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "\u06e1\u06db\u06df\u06eb\u06dc\u06e4\u06df\u06db\u06d9\u06d9\u06da\u06d8\u06df\u06da\u06d6\u06d8\u06e8\u06df\u06e1\u06d9\u06e6\u06df\u06e7\u06d6\u06d8\u06d7\u06e1\u06e8\u06e4\u06eb\u06e6\u06db\u06e6\u06e1\u06d8\u06d9\u06eb\u06e5\u06e0\u06eb\u06e2\u06d6\u06e4\u06da\u06d8\u06e7\u06dc\u06d8\u06da\u06d7\u06ec\u06ec\u06d9\u06d9\u06da\u06dc\u06e2"

    goto/16 :goto_0

    :sswitch_16
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f1e688c -> :sswitch_2
        -0x77c7dcdf -> :sswitch_14
        -0x262052e3 -> :sswitch_b
        -0x13ec4a35 -> :sswitch_16
        0x180fc6 -> :sswitch_13
        0x35d5c26 -> :sswitch_a
        0x41cd0131 -> :sswitch_0
        0x4c41e221 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x14b49cc4 -> :sswitch_9
        0x213f7ed3 -> :sswitch_5
        0x65b40dd9 -> :sswitch_3
        0x7034f93a -> :sswitch_15
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x67c5f9c4 -> :sswitch_7
        0x6ac5bc24 -> :sswitch_4
        0x6bb61f4e -> :sswitch_8
        0x776150f4 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x628aca8b -> :sswitch_15
        -0x3b20855a -> :sswitch_e
        0x74a3959 -> :sswitch_c
        0x1f326d98 -> :sswitch_12
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x62b7c14f -> :sswitch_11
        -0x24a0ffb9 -> :sswitch_d
        -0x1ffc4fd9 -> :sswitch_10
        0x6ddcf3bb -> :sswitch_f
    .end sparse-switch
.end method
