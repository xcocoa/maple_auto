.class public Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lz2/wa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView$OooO00o;
    }
.end annotation


# static fields
.field private static OoooooO:I = 0x5


# instance fields
.field private OoooOoO:Z

.field private OoooOoo:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

.field private Ooooo00:I

.field private Ooooo0o:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;

.field private OooooO0:Lz2/ua;

.field private OooooOO:I

.field private OooooOo:I

.field private Oooooo:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView$OooO00o;

.field private Oooooo0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06e4\u06df\u06ec\u06e8\u06da\u06df\u06e4\u06e8\u06dc\u06e5\u06e6\u06df\u06e8\u06d7\u06ec\u06db\u06e2\u06da\u06e7\u06e8\u06e7\u06d8\u06d9\u06e6\u06da\u06da\u06e1\u06df\u06e6\u06e5\u06d8\u06e4\u06e0\u06e6\u06d8\u06da\u06d9\u06e4\u06e5\u06d8\u06e1\u06d7\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x234

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x18a

    const/16 v2, 0x1c9

    const v3, -0x231a390

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2528fa5e
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OoooOoO:Z

    sget-object v0, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;->NON:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OoooOoo:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const/16 v0, 0xa

    iput v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Ooooo00:I

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OooO0oO()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OoooOoO:Z

    sget-object v0, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;->NON:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OoooOoo:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const/16 v0, 0xa

    iput v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Ooooo00:I

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OooO0oO()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OoooOoO:Z

    sget-object v0, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;->NON:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OoooOoo:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const/16 v0, 0xa

    iput v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Ooooo00:I

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OooO0oO()V

    return-void
.end method

.method private OooO0oO()V
    .locals 4

    const-string v0, "\u06db\u06e2\u06db\u06d6\u06da\u06e5\u06d8\u06e1\u06d6\u06e7\u06e7\u06e0\u06d6\u06ec\u06db\u06e6\u06d6\u06e0\u06d6\u06e4\u06e0\u06d6\u06d9\u06e1\u06d8\u06e1\u06e8\u06d8\u06d8\u06df\u06e2\u06e4\u06df\u06e7\u06e5\u06e7\u06e8\u06dc\u06d9\u06d6\u06df\u06e2\u06eb\u06e8\u06db\u06d9\u06e2\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2eb

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x49

    const/16 v2, 0x15a

    const v3, 0x4329df84

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e8\u06e5\u06d8\u06e2\u06e0\u06dc\u06d8\u06d8\u06e1\u06dc\u06ec\u06e4\u06e5\u06d8\u06d7\u06e5\u06e6\u06d8\u06e1\u06e8\u06e6\u06dc\u06e8\u06e5\u06eb\u06db\u06dc\u06d6\u06d8\u06d6\u06d8\u06e8\u06e2\u06e4\u06e7\u06eb\u06ec\u06d8\u06da\u06d6\u06d8\u06e4\u06db\u06d8\u06e0\u06ec\u06df"

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const-string v0, "\u06e4\u06dc\u06eb\u06d9\u06eb\u06dc\u06d8\u06df\u06e0\u06e6\u06dc\u06db\u06e1\u06e8\u06e1\u06db\u06e4\u06d8\u06e7\u06d8\u06eb\u06eb\u06e4\u06e0\u06ec\u06e8\u06e1\u06e1\u06e4\u06d8\u06d8\u06d8\u06d8\u06e7\u06d8\u06e8\u06da\u06e2\u06d9\u06ec\u06d6\u06e5\u06d8\u06e4\u06e1\u06e6"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x56f68aad -> :sswitch_2
        -0x258daeac -> :sswitch_1
        0x7d470414 -> :sswitch_0
    .end sparse-switch
.end method

.method private OooOOO0()V
    .locals 7

    const/4 v2, 0x0

    const-string v0, "\u06db\u06e1\u06df\u06ec\u06df\u06db\u06e5\u06e5\u06d9\u06e4\u06df\u06e1\u06d8\u06e6\u06e2\u06da\u06e0\u06e4\u06dc\u06d8\u06d8\u06ec\u06e8\u06d8\u06da\u06d7\u06e1\u06dc\u06dc\u06ec\u06e7\u06d6\u06df\u06d9\u06dc\u06e2\u06d7\u06df\u06e4\u06eb\u06e5\u06e1\u06d9\u06d8\u06e5\u06d7\u06e6\u06e8\u06d8\u06e6\u06e1\u06da\u06d6\u06e4\u06e8\u06d8\u06e4\u06eb\u06db"

    move v1, v2

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x44

    xor-int/2addr v4, v5

    xor-int/lit8 v4, v4, 0x1f

    const/16 v5, 0x2af

    const v6, -0x5e877134

    xor-int/2addr v4, v5

    xor-int/2addr v4, v6

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06dc\u06dc\u06d8\u06ec\u06e6\u06e5\u06d8\u06da\u06d7\u06d7\u06df\u06e0\u06e0\u06d8\u06da\u06e2\u06d6\u06d9\u06e2\u06d7\u06d9\u06d6\u06d8\u06d7\u06d6\u06eb\u06d9\u06d9\u06d8\u06d8\u06e2\u06e1\u06d6\u06e1\u06e7\u06d8\u06df\u06da\u06da"

    goto :goto_0

    :sswitch_1
    const v4, -0x5c3791eb

    const-string v0, "\u06db\u06d9\u06dc\u06d8\u06e7\u06e2\u06d9\u06eb\u06dc\u06d8\u06d7\u06e8\u06dc\u06d8\u06d6\u06df\u06e1\u06d8\u06d8\u06e8\u06e7\u06df\u06e6\u06eb\u06e8\u06e0\u06eb\u06e7\u06d8\u06d6\u06e0\u06e5\u06e8\u06d8\u06d8\u06da\u06d7\u06df\u06e8\u06df"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const-string v0, "\u06ec\u06e2\u06e8\u06db\u06e5\u06e1\u06d9\u06eb\u06e1\u06d7\u06d7\u06d8\u06df\u06d6\u06eb\u06dc\u06ec\u06e0\u06eb\u06e6\u06e8\u06e4\u06e0\u06dc\u06d8\u06db\u06d6\u06dc\u06d8\u06e0\u06e6\u06dc\u06d8\u06ec\u06eb\u06e5\u06d7\u06e5\u06e7\u06d8\u06dc\u06e7\u06dc\u06d8\u06df\u06e5\u06e6\u06df\u06e4\u06dc\u06e6\u06eb\u06ec"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06dc\u06e8\u06d6\u06e4\u06df\u06e8\u06d8\u06eb\u06e7\u06d8\u06d8\u06d6\u06e0\u06df\u06ec\u06da\u06e1\u06d8\u06e6\u06e1\u06d8\u06ec\u06d7\u06e8\u06e2\u06e6\u06e5\u06d6\u06dc\u06d8\u06dc\u06e1\u06d8\u06d9\u06eb\u06d8\u06d8\u06da\u06df\u06db\u06d9\u06d6\u06e2\u06dc\u06e5\u06d8"

    goto :goto_1

    :sswitch_4
    const v5, 0x771f99f

    const-string v0, "\u06d9\u06e0\u06d6\u06d8\u06e8\u06eb\u06d8\u06da\u06e1\u06d8\u06e7\u06d8\u06e7\u06d6\u06e7\u06e1\u06d8\u06d9\u06eb\u06e2\u06d7\u06e5\u06e2\u06e2\u06d8\u06d8\u06e2\u06eb\u06d6\u06d8\u06dc\u06d6\u06d6\u06d8\u06e8\u06d9\u06e1\u06d8\u06df\u06db\u06e1\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06dc\u06df\u06d9\u06e7\u06eb\u06e8\u06e0\u06e2\u06d7\u06dc\u06da\u06e1\u06d8\u06e2\u06d6\u06e5\u06dc\u06eb\u06e4\u06ec\u06d7\u06e5\u06dc\u06e2\u06d8\u06df\u06ec\u06e4\u06e0\u06e1\u06e2\u06e1\u06d6\u06ec\u06ec\u06e4"

    goto :goto_1

    :cond_0
    const-string v0, "\u06dc\u06eb\u06dc\u06d8\u06d8\u06eb\u06e0\u06e1\u06e1\u06e0\u06db\u06d6\u06e1\u06e6\u06db\u06e7\u06da\u06e4\u06e6\u06db\u06eb\u06e2\u06e2\u06eb\u06e5\u06d8\u06d9\u06dc\u06e6\u06d8\u06e4\u06eb\u06eb\u06df\u06da\u06e4\u06eb\u06d9\u06d6\u06d8\u06d9\u06e1\u06dc\u06e8\u06e8\u06d9"

    goto :goto_2

    :sswitch_6
    iget v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Oooooo0:I

    if-nez v0, :cond_0

    const-string v0, "\u06e5\u06e1\u06e6\u06df\u06e0\u06e8\u06e2\u06ec\u06e7\u06d6\u06e5\u06da\u06ec\u06eb\u06e8\u06d8\u06d6\u06df\u06df\u06ec\u06d6\u06d6\u06d8\u06da\u06e1\u06df\u06da\u06ec\u06d6\u06d8\u06d8\u06e6\u06e6\u06d8\u06e5\u06d9\u06da\u06d6\u06da"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06eb\u06db\u06e5\u06d8\u06e6\u06d6\u06d8\u06eb\u06d9\u06d8\u06db\u06db\u06d6\u06d8\u06e6\u06e6\u06dc\u06e1\u06e1\u06eb\u06e5\u06e5\u06e6\u06d7\u06e2\u06e0\u06e8\u06dc\u06d7\u06e6\u06e8\u06eb\u06e6\u06da\u06d8\u06d8\u06e6\u06e4\u06e6\u06d8\u06e2\u06da\u06dc\u06dc\u06e8\u06dc\u06d8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06da\u06d9\u06e1\u06d8\u06eb\u06e4\u06e5\u06d8\u06e6\u06e7\u06e6\u06df\u06e0\u06e5\u06dc\u06e7\u06ec\u06dc\u06db\u06e8\u06d8\u06d9\u06e6\u06ec\u06ec\u06eb\u06eb\u06d7\u06e0\u06d9\u06e4\u06d7\u06eb\u06d9\u06e0\u06d8\u06e4\u06db\u06e1\u06d8"

    goto :goto_1

    :sswitch_9
    const v4, -0x69f6c54

    const-string v0, "\u06da\u06df\u06dc\u06d8\u06e1\u06e6\u06db\u06df\u06df\u06ec\u06d8\u06e5\u06e4\u06e2\u06ec\u06e1\u06d8\u06e8\u06e0\u06eb\u06eb\u06db\u06e5\u06d8\u06eb\u06e4\u06d7\u06d6\u06d6\u06d8\u06e6\u06dc\u06d8\u06e0\u06dc\u06e8\u06e6\u06db\u06da\u06da\u06df\u06e2\u06eb\u06db\u06df\u06e7\u06d9\u06e1\u06da\u06e2\u06df\u06e6\u06eb\u06db\u06eb\u06e6\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_3

    goto :goto_3

    :sswitch_a
    const-string v0, "\u06d6\u06dc\u06e1\u06eb\u06d6\u06d6\u06e8\u06d7\u06eb\u06db\u06e6\u06dc\u06dc\u06d8\u06e7\u06eb\u06e2\u06d9\u06e8\u06d6\u06d6\u06dc\u06e8\u06e0\u06e6\u06e6\u06d6\u06d7\u06da\u06dc\u06db\u06d6\u06d8\u06d9\u06e8\u06e4\u06e4\u06d6\u06d8\u06dc\u06e4\u06e1\u06e6\u06d9\u06d8\u06d8\u06e2\u06eb\u06dc\u06d8"

    goto :goto_0

    :sswitch_b
    const-string v0, "\u06e2\u06e5\u06da\u06df\u06e5\u06e6\u06dc\u06e1\u06d8\u06e0\u06d7\u06df\u06eb\u06d9\u06d8\u06d8\u06db\u06d9\u06e8\u06d8\u06e0\u06d6\u06d6\u06d8\u06df\u06e2\u06db\u06e0\u06e7\u06e1\u06d8\u06ec\u06eb\u06e0\u06e2\u06e5\u06d8\u06e8\u06d8\u06e0\u06e2\u06e7\u06d8\u06d8\u06d8\u06e7\u06e8"

    goto :goto_3

    :sswitch_c
    const v5, -0x17882b5b

    const-string v0, "\u06da\u06e7\u06dc\u06e5\u06e5\u06e8\u06d7\u06e4\u06d9\u06d8\u06e5\u06d8\u06d9\u06e5\u06d9\u06eb\u06dc\u06dc\u06d8\u06e5\u06e7\u06e1\u06d8\u06df\u06df\u06e1\u06d8\u06e1\u06ec\u06dc\u06e1\u06e0\u06dc\u06ec\u06e1\u06e6\u06d8\u06e4\u06d8\u06e5\u06e2\u06ec\u06d7\u06d7\u06db\u06e0\u06df\u06d7\u06d9\u06e8\u06e0\u06d9"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_4

    goto :goto_4

    :sswitch_d
    const-string v0, "\u06d6\u06da\u06d6\u06eb\u06d6\u06dc\u06d8\u06da\u06e0\u06e6\u06d7\u06e1\u06e2\u06e1\u06e1\u06d9\u06e0\u06e1\u06e1\u06d8\u06da\u06da\u06e5\u06d7\u06ec\u06e5\u06df\u06ec\u06ec\u06d9\u06d6\u06df\u06e5\u06d7\u06eb\u06e2\u06d6\u06dc\u06e7\u06e6\u06eb\u06da\u06e7"

    goto :goto_4

    :cond_1
    const-string v0, "\u06d9\u06da\u06e1\u06e2\u06e7\u06ec\u06eb\u06db\u06db\u06e4\u06db\u06e1\u06d8\u06db\u06e0\u06e1\u06d8\u06d6\u06e4\u06e7\u06e1\u06e4\u06d6\u06d7\u06d7\u06e5\u06d8\u06e5\u06e2\u06d6\u06d8\u06ec\u06d9\u06d8\u06da\u06e4\u06e7\u06e8\u06e2\u06e8\u06d8\u06e2\u06e5\u06d8\u06d7\u06e1\u06d8"

    goto :goto_4

    :sswitch_e
    iget v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OooooOo:I

    iget v6, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OooooOO:I

    sub-int/2addr v0, v6

    sget v6, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OoooooO:I

    if-ge v0, v6, :cond_1

    const-string v0, "\u06ec\u06dc\u06ec\u06d8\u06e0\u06ec\u06e8\u06eb\u06e1\u06d8\u06e5\u06eb\u06d7\u06d6\u06d8\u06e6\u06d6\u06df\u06e1\u06d8\u06e2\u06e5\u06e0\u06eb\u06d8\u06e5\u06d8\u06ec\u06e0\u06e7\u06eb\u06e6\u06e6\u06e1\u06eb\u06e0\u06d7\u06e7\u06d8"

    goto :goto_4

    :sswitch_f
    const-string v0, "\u06db\u06e8\u06e5\u06e7\u06e8\u06df\u06e1\u06da\u06d8\u06d8\u06e0\u06d8\u06e8\u06d8\u06e5\u06eb\u06e6\u06e6\u06df\u06e5\u06d8\u06da\u06d9\u06dc\u06e7\u06e4\u06e6\u06e6\u06d6\u06e5\u06d8\u06d7\u06e6\u06dc\u06ec\u06e6\u06e0\u06d6\u06e1\u06e6\u06d8\u06da\u06ec\u06d8\u06eb\u06e8\u06e0"

    goto :goto_3

    :sswitch_10
    const-string v0, "\u06e1\u06e2\u06dc\u06d8\u06ec\u06df\u06e6\u06d8\u06eb\u06e8\u06e2\u06db\u06eb\u06e5\u06d8\u06ec\u06dc\u06e7\u06d8\u06dc\u06e5\u06d6\u06e1\u06e4\u06e1\u06df\u06d8\u06e2\u06d9\u06eb\u06e2\u06db\u06ec\u06e1\u06d7\u06d9\u06e2\u06e0\u06d7\u06db\u06df\u06eb\u06e1\u06d8\u06e7\u06d9\u06d6\u06e0\u06d8\u06d9\u06ec\u06eb\u06e8\u06e2\u06e1\u06d8\u06e2\u06e4\u06e8"

    goto :goto_3

    :sswitch_11
    const/4 v3, 0x1

    const-string v0, "\u06eb\u06e7\u06e1\u06e6\u06da\u06e8\u06d8\u06df\u06e0\u06d7\u06e8\u06d7\u06e5\u06e5\u06e1\u06d6\u06d8\u06e7\u06e7\u06df\u06d7\u06db\u06e5\u06d8\u06d7\u06eb\u06e0\u06df\u06e8\u06e7\u06dc\u06d9\u06d9\u06d7\u06e7\u06db\u06e2"

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "\u06ec\u06e4\u06e1\u06e6\u06da\u06e5\u06db\u06ec\u06da\u06d8\u06e1\u06db\u06e8\u06ec\u06df\u06e8\u06d6\u06e0\u06e0\u06d9\u06e1\u06d8\u06da\u06e6\u06d8\u06dc\u06e1\u06d6\u06e7\u06db\u06e2\u06e7\u06e7\u06e8\u06eb\u06e0\u06d6\u06d8\u06da\u06db\u06d6\u06ec\u06e4\u06db\u06ec\u06d8\u06e8\u06dc\u06df\u06e0\u06df\u06e5\u06e0\u06d8\u06e8\u06e6"

    move v1, v3

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "\u06da\u06eb\u06e5\u06d9\u06e6\u06e7\u06dc\u06d8\u06e7\u06eb\u06e0\u06d7\u06da\u06e7\u06d7\u06e5\u06df\u06e6\u06d8\u06da\u06d6\u06e5\u06d6\u06e6\u06e7\u06d8\u06d8\u06da\u06e5\u06d8\u06d9\u06e6\u06ec\u06e4\u06e8\u06e6\u06d8\u06da\u06d9\u06e1\u06d8\u06d6\u06e0\u06e1\u06ec\u06e2\u06df\u06e6\u06e8\u06e2\u06db\u06d7\u06db\u06dc\u06ec\u06e8\u06d8\u06e7\u06eb\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "\u06da\u06ec\u06eb\u06d7\u06e0\u06d7\u06df\u06e4\u06dc\u06d8\u06dc\u06d7\u06e7\u06db\u06da\u06ec\u06e5\u06d6\u06e8\u06df\u06e2\u06d6\u06da\u06e7\u06e4\u06e8\u06e7\u06d8\u06e4\u06d7\u06dc\u06e5\u06d7\u06d6\u06d8\u06e4\u06e8\u06d8\u06d8\u06db\u06d6\u06d8\u06d8\u06e1\u06e5\u06e6"

    move v1, v2

    goto/16 :goto_0

    :sswitch_15
    const v4, -0x404d4c06

    const-string v0, "\u06df\u06e6\u06e2\u06d7\u06df\u06d6\u06d8\u06e4\u06ec\u06e6\u06dc\u06e8\u06e4\u06da\u06e4\u06e6\u06d6\u06d7\u06d8\u06d8\u06d8\u06dc\u06e4\u06da\u06e2\u06e5\u06d8\u06eb\u06d6\u06dc\u06d7\u06dc\u06ec\u06e8\u06d8\u06e1\u06d9\u06d6\u06d8\u06e6\u06d9\u06d6\u06ec\u06db\u06e4\u06d9\u06d8\u06d6\u06e8\u06e8\u06e2"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_5

    goto :goto_5

    :sswitch_16
    const-string v0, "\u06e1\u06d9\u06d6\u06d8\u06eb\u06e6\u06d6\u06d8\u06e8\u06e6\u06e2\u06e0\u06e1\u06da\u06e0\u06d7\u06e1\u06e6\u06db\u06e6\u06da\u06d7\u06e0\u06db\u06e6\u06d7\u06d9\u06d9\u06eb\u06d6\u06e0\u06dc\u06d8\u06e1\u06e4\u06d8\u06e6\u06df\u06e1\u06d8\u06da\u06da\u06d6\u06d8\u06e7\u06d9\u06da\u06e1\u06e7\u06d6\u06d8\u06e2\u06df\u06e8"

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "\u06db\u06ec\u06eb\u06e8\u06d7\u06e1\u06e7\u06ec\u06d9\u06dc\u06e1\u06e8\u06d8\u06d9\u06d8\u06db\u06d6\u06dc\u06d8\u06dc\u06d8\u06d8\u06e5\u06e4\u06ec\u06db\u06e7\u06e1\u06da\u06eb\u06df\u06dc\u06ec\u06d9\u06eb\u06e7\u06e1\u06d8\u06e8\u06e7\u06e5\u06e1\u06e0\u06e1\u06d7\u06db\u06e6\u06d8\u06d7\u06d9\u06db"

    goto :goto_5

    :sswitch_18
    const v5, 0x468582a9

    const-string v0, "\u06db\u06e8\u06d7\u06d9\u06df\u06d6\u06d8\u06df\u06e2\u06e8\u06d8\u06e6\u06e8\u06e7\u06d8\u06e6\u06e4\u06d6\u06d8\u06d8\u06e1\u06df\u06d8\u06d9\u06e1\u06e0\u06e8\u06e6\u06d8\u06d8\u06ec\u06e0\u06d8\u06e8\u06db\u06d9\u06d7\u06e7\u06dc\u06d7\u06d8\u06d8\u06d6\u06eb\u06e6\u06d8\u06d8\u06e1\u06d8\u06d8"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_6

    goto :goto_6

    :sswitch_19
    const-string v0, "\u06dc\u06e4\u06d6\u06d8\u06dc\u06e8\u06e7\u06d7\u06e7\u06d8\u06da\u06e2\u06d8\u06e6\u06e8\u06ec\u06d7\u06e0\u06dc\u06d8\u06d7\u06d9\u06ec\u06da\u06e0\u06db\u06df\u06da\u06dc\u06d8\u06dc\u06e7\u06e1\u06d8\u06da\u06ec\u06d6\u06da\u06e5\u06e6\u06d8\u06d7\u06db\u06d6\u06e5\u06db\u06d6\u06d8\u06d6\u06e8\u06d8\u06e7\u06eb\u06df\u06e7\u06ec\u06d6\u06d8\u06da\u06d8\u06df"

    goto :goto_6

    :cond_2
    const-string v0, "\u06da\u06e1\u06db\u06d7\u06dc\u06e2\u06ec\u06e0\u06d6\u06d8\u06df\u06d8\u06d8\u06db\u06ec\u06e2\u06e0\u06e6\u06e4\u06e7\u06e6\u06e0\u06dc\u06e7\u06d8\u06db\u06db\u06ec\u06e6\u06e1\u06e5\u06d8\u06d7\u06d8\u06e2\u06da\u06d6\u06e8\u06d8\u06da\u06d8\u06da\u06d6\u06e1\u06d6"

    goto :goto_6

    :sswitch_1a
    if-eqz v1, :cond_2

    const-string v0, "\u06ec\u06df\u06dc\u06ec\u06d6\u06e1\u06e8\u06e5\u06d6\u06eb\u06ec\u06da\u06ec\u06d8\u06e8\u06d8\u06dc\u06dc\u06d6\u06d8\u06e1\u06e5\u06d7\u06db\u06d9\u06db\u06da\u06eb\u06e0\u06e0\u06e6\u06e0\u06eb\u06df\u06d6\u06d6\u06db\u06dc\u06e5\u06e7\u06e5\u06e4\u06e4\u06e6\u06d8"

    goto :goto_6

    :sswitch_1b
    const-string v0, "\u06df\u06dc\u06d6\u06d8\u06d6\u06d6\u06d8\u06d8\u06eb\u06ec\u06e4\u06eb\u06da\u06e5\u06da\u06e5\u06d8\u06e4\u06da\u06e1\u06e4\u06db\u06e4\u06d9\u06e5\u06dc\u06d8\u06ec\u06df\u06e4\u06eb\u06e5\u06d6"

    goto :goto_5

    :sswitch_1c
    const-string v0, "\u06e4\u06e0\u06db\u06e7\u06d9\u06d6\u06d8\u06d9\u06db\u06e5\u06e7\u06d6\u06e4\u06e2\u06d9\u06e1\u06d8\u06e2\u06e0\u06d6\u06d8\u06d7\u06e4\u06e6\u06d9\u06d7\u06d6\u06d8\u06e8\u06d6\u06e6\u06d8\u06d8\u06eb\u06dc"

    goto :goto_5

    :sswitch_1d
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OooO()V

    const-string v0, "\u06e8\u06df\u06ec\u06d8\u06d9\u06e2\u06e2\u06e8\u06dc\u06db\u06ec\u06e5\u06eb\u06e8\u06da\u06db\u06df\u06e4\u06d6\u06d9\u06eb\u06e8\u06e2\u06e7\u06d6\u06d9\u06eb\u06e8\u06dc\u06e8"

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "\u06d8\u06ec\u06e0\u06db\u06e7\u06dc\u06d8\u06d7\u06e5\u06e4\u06e5\u06e5\u06e5\u06d8\u06d9\u06da\u06e2\u06e6\u06e4\u06da\u06e2\u06da\u06ec\u06ec\u06e1\u06ec\u06ec\u06dc\u06d6\u06d7\u06e0\u06e4"

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "\u06db\u06ec\u06d6\u06e0\u06dc\u06d9\u06d9\u06e1\u06e8\u06d8\u06dc\u06e6\u06e5\u06dc\u06d7\u06e6\u06d8\u06e5\u06e1\u06e7\u06d8\u06d9\u06e4\u06d8\u06e2\u06dc\u06e8\u06d8\u06d7\u06e5\u06d7\u06df\u06e5\u06e5\u06dc\u06ec\u06e0\u06d9\u06ec\u06e6\u06e1\u06eb\u06e1\u06d8\u06e1\u06e5\u06e5"

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "\u06da\u06ec\u06eb\u06d7\u06e0\u06d7\u06df\u06e4\u06dc\u06d8\u06dc\u06d7\u06e7\u06db\u06da\u06ec\u06e5\u06d6\u06e8\u06df\u06e2\u06d6\u06da\u06e7\u06e4\u06e8\u06e7\u06d8\u06e4\u06d7\u06dc\u06e5\u06d7\u06d6\u06d8\u06e4\u06e8\u06d8\u06d8\u06db\u06d6\u06d8\u06d8\u06e1\u06e5\u06e6"

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "\u06e8\u06df\u06ec\u06d8\u06d9\u06e2\u06e2\u06e8\u06dc\u06db\u06ec\u06e5\u06eb\u06e8\u06da\u06db\u06df\u06e4\u06d6\u06d9\u06eb\u06e8\u06e2\u06e7\u06d6\u06d9\u06eb\u06e8\u06dc\u06e8"

    goto/16 :goto_0

    :sswitch_22
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x480591cb -> :sswitch_1d
        -0x406039fd -> :sswitch_15
        -0x1b9be0b0 -> :sswitch_9
        -0x741022a -> :sswitch_1
        0x6a1422c -> :sswitch_0
        0x8dcde26 -> :sswitch_22
        0xbeaf2c0 -> :sswitch_22
        0x172e2d21 -> :sswitch_20
        0x271c4f16 -> :sswitch_11
        0x2fc9196d -> :sswitch_13
        0x415386a9 -> :sswitch_14
        0x69a8eb4a -> :sswitch_12
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x65055112 -> :sswitch_2
        -0x4a3cd2c8 -> :sswitch_8
        -0x3ae97ef0 -> :sswitch_4
        -0xdbc36c0 -> :sswitch_1e
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6f730407 -> :sswitch_7
        -0x62a643fe -> :sswitch_5
        -0x33130e28 -> :sswitch_6
        0x1eda2694 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x37f161f0 -> :sswitch_1f
        0x5526fab -> :sswitch_10
        0x5a954c01 -> :sswitch_c
        0x6b5bf8ed -> :sswitch_a
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x336c3a49 -> :sswitch_d
        0x1c555cca -> :sswitch_b
        0x524c6c19 -> :sswitch_f
        0x617453de -> :sswitch_e
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x69253bc0 -> :sswitch_18
        -0x50734316 -> :sswitch_1c
        0xbd3d606 -> :sswitch_21
        0x3ddec479 -> :sswitch_16
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x322ed715 -> :sswitch_1b
        0x18963570 -> :sswitch_1a
        0x339d5236 -> :sswitch_19
        0x4281bad2 -> :sswitch_17
    .end sparse-switch
.end method


# virtual methods
.method public OooO()V
    .locals 7

    const/4 v2, 0x0

    const-string v0, "\u06e0\u06da\u06dc\u06df\u06d6\u06ec\u06e5\u06df\u06e8\u06eb\u06da\u06e6\u06d8\u06e6\u06e1\u06e8\u06d8\u06d7\u06e8\u06e8\u06d8\u06df\u06e5\u06e6\u06e6\u06db\u06e6\u06d6\u06e0\u06e8\u06e7\u06e1\u06d7\u06e7\u06e0\u06d6\u06d7\u06db\u06e7\u06e5\u06e8\u06d7\u06dc\u06db\u06e2\u06dc\u06d6\u06db\u06d6\u06d8"

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v5, 0x390

    xor-int/2addr v2, v5

    xor-int/lit16 v2, v2, 0x1b3

    const/16 v5, 0x1e

    const v6, 0x41010e0a

    xor-int/2addr v2, v5

    xor-int/2addr v2, v6

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06e6\u06e8\u06df\u06eb\u06dc\u06d8\u06d9\u06d7\u06e4\u06d9\u06e4\u06da\u06e6\u06dc\u06e1\u06e7\u06d6\u06e2\u06e5\u06e4\u06e6\u06da\u06e6\u06ec\u06d9\u06df\u06e2\u06e2\u06e1\u06da\u06e8\u06e2\u06d7\u06d8\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OooooO0:Lz2/ua;

    const-string v0, "\u06eb\u06eb\u06e2\u06ec\u06d9\u06ec\u06d8\u06e1\u06e4\u06ec\u06e6\u06dc\u06df\u06e2\u06df\u06e8\u06dc\u06d6\u06d9\u06e1\u06e5\u06e1\u06e8\u06d8\u06d7\u06e0\u06ec\u06e6\u06d6\u06ec\u06e1\u06eb\u06e5\u06d6\u06e5\u06dc\u06e1\u06e5\u06e6\u06d8\u06d8\u06e8\u06d8"

    move-object v4, v2

    goto :goto_0

    :sswitch_2
    const v2, -0x41f9c095

    const-string v0, "\u06dc\u06e6\u06e1\u06d8\u06e8\u06e1\u06e4\u06e8\u06d7\u06d8\u06d8\u06d8\u06eb\u06d7\u06d9\u06d7\u06d9\u06e4\u06db\u06e0\u06e1\u06e4\u06e8\u06dc\u06e8\u06e4\u06db\u06d6\u06e1\u06e7\u06e6\u06e8\u06e5\u06db\u06da\u06d6\u06e4\u06e2\u06d7\u06d9\u06da\u06dc\u06e8\u06d8\u06e0\u06d7\u06e5\u06d8\u06e5\u06e0\u06da"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v2

    sparse-switch v5, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const v5, 0x161dded8

    const-string v0, "\u06e7\u06e7\u06da\u06db\u06db\u06dc\u06df\u06ec\u06d6\u06d8\u06d6\u06d8\u06dc\u06e8\u06e6\u06e7\u06d8\u06e4\u06d9\u06d8\u06ec\u06e4\u06e7\u06db\u06e0\u06df\u06e8\u06df\u06dc\u06d8\u06e1\u06e6\u06d8\u06d8\u06e2\u06e1\u06da\u06d7\u06e6\u06eb\u06eb\u06dc\u06e8\u06e5\u06e8\u06e6\u06dc\u06e7\u06d9\u06e5\u06e6\u06d6\u06d8\u06d9\u06e2\u06db\u06e7\u06e0\u06e8\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_2

    goto :goto_2

    :sswitch_4
    const-string v0, "\u06db\u06e8\u06e2\u06d9\u06d8\u06d8\u06e0\u06d7\u06e5\u06e2\u06e4\u06e1\u06e0\u06e2\u06d8\u06d8\u06d8\u06df\u06d8\u06d8\u06e2\u06e1\u06e5\u06d8\u06df\u06e8\u06db\u06dc\u06eb\u06e8\u06d8\u06ec\u06e6\u06e7"

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06db\u06d7\u06e2\u06db\u06d8\u06e6\u06e1\u06da\u06da\u06e7\u06df\u06df\u06db\u06e5\u06d8\u06e6\u06e6\u06d6\u06d6\u06e0\u06dc\u06db\u06e2\u06e5\u06d8\u06d9\u06e2\u06e1\u06d8\u06e7\u06da\u06ec\u06ec\u06e4\u06e5\u06d7\u06e8\u06e8\u06e6\u06df\u06e5\u06eb\u06d7\u06e6\u06e7\u06e4\u06ec\u06e8\u06d6\u06d8\u06d6\u06e7\u06ec\u06d8\u06d7\u06dc\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e2\u06eb\u06db\u06d6\u06e4\u06d6\u06d9\u06eb\u06e6\u06e5\u06eb\u06dc\u06e8\u06e4\u06eb\u06e7\u06e2\u06d7\u06eb\u06e5\u06da\u06e5\u06d9\u06e8\u06d8\u06e7\u06e7\u06d9\u06d7\u06e8\u06e8\u06d8\u06db\u06e4\u06da\u06d7\u06d9\u06e1"

    goto :goto_2

    :sswitch_6
    if-eqz v4, :cond_0

    const-string v0, "\u06e4\u06e1\u06e5\u06e6\u06da\u06e1\u06e2\u06e1\u06dc\u06e6\u06d8\u06ec\u06e2\u06e7\u06e1\u06d8\u06e6\u06e1\u06d7\u06e7\u06dc\u06e7\u06d8\u06e6\u06d8\u06d8\u06d6\u06d7\u06e4\u06d6\u06e7\u06d8\u06db\u06e8\u06e2\u06ec\u06eb\u06e0\u06db\u06e6\u06e1\u06d8\u06e5\u06d8\u06d8\u06d8\u06eb\u06e6\u06d6\u06d6\u06e1\u06dc\u06d8"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e1\u06e7\u06d8\u06d8\u06d7\u06e5\u06dc\u06e1\u06e5\u06e7\u06d8\u06ec\u06d8\u06e1\u06e5\u06d7\u06e2\u06d6\u06e8\u06e8\u06d8\u06e4\u06e7\u06e5\u06e1\u06db\u06e0\u06ec\u06d6\u06eb\u06d6\u06d9\u06d9\u06e4\u06e1\u06e5\u06e8\u06d8\u06d8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e5\u06e2\u06e7\u06db\u06ec\u06e6\u06d8\u06eb\u06e0\u06e4\u06df\u06e4\u06d7\u06d9\u06df\u06eb\u06d7\u06e1\u06ec\u06da\u06e6\u06ec\u06d7\u06e1\u06dc\u06e0\u06db\u06e1\u06d6\u06e4\u06e2\u06df\u06e2\u06e1\u06d8\u06d8\u06e7\u06df\u06d8\u06ec\u06d6\u06da\u06d8\u06e0\u06db\u06d8\u06d8\u06e0\u06d9\u06df\u06e6\u06ec\u06d6\u06d8\u06db\u06db\u06db"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e1\u06eb\u06da\u06e7\u06e5\u06db\u06eb\u06dc\u06d6\u06d8\u06dc\u06df\u06e5\u06e7\u06e5\u06e6\u06e1\u06ec\u06ec\u06eb\u06dc\u06da\u06e4\u06eb\u06e7\u06e5\u06dc\u06d8\u06e6\u06ec\u06e8\u06d8\u06e1\u06e6\u06df\u06e6\u06da\u06e5\u06d6\u06d8\u06e8\u06d8\u06d7\u06e1\u06d8\u06df\u06dc\u06d6\u06d8\u06e8\u06e7\u06d8"

    goto :goto_0

    :sswitch_a
    iget-object v2, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OoooOoo:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const-string v0, "\u06df\u06e0\u06da\u06d8\u06d9\u06dc\u06d8\u06e4\u06db\u06e5\u06e2\u06dc\u06ec\u06d8\u06ec\u06e8\u06d8\u06e2\u06d6\u06e7\u06d8\u06e4\u06e0\u06e2\u06e0\u06db\u06e7\u06e1\u06eb\u06e6\u06e4\u06e7\u06db\u06e8\u06e0\u06d6\u06e7\u06df\u06e0"

    move-object v3, v2

    goto :goto_0

    :sswitch_b
    sget-object v1, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;->LOADING:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const-string v0, "\u06e5\u06d6\u06e1\u06d9\u06e4\u06d8\u06dc\u06e0\u06e8\u06e0\u06e2\u06dc\u06e4\u06d7\u06d9\u06eb\u06eb\u06e4\u06eb\u06e5\u06e6\u06e1\u06e7\u06d8\u06e4\u06eb\u06df\u06d6\u06ec\u06e1\u06d8\u06d6\u06e6\u06e2\u06dc\u06df\u06e1\u06e0\u06e8\u06e6\u06d8\u06e7\u06da\u06e8\u06d8\u06da\u06e6\u06df\u06ec\u06d8\u06e6\u06db\u06df\u06d8\u06d8\u06e7\u06dc\u06e1"

    goto :goto_0

    :sswitch_c
    const v2, 0x5b7b5165

    const-string v0, "\u06d8\u06d6\u06e5\u06d8\u06e7\u06e2\u06d6\u06d8\u06d7\u06e6\u06d8\u06e7\u06e1\u06d6\u06e1\u06e8\u06df\u06db\u06df\u06d8\u06d8\u06eb\u06e4\u06dc\u06d8\u06e2\u06d8\u06dc\u06d6\u06e0\u06dc\u06d8\u06d6\u06d8\u06e1\u06d8\u06ec\u06d9\u06df\u06e4\u06ec\u06ec"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v2

    sparse-switch v5, :sswitch_data_3

    goto :goto_3

    :sswitch_d
    const-string v0, "\u06d8\u06df\u06e6\u06d6\u06e8\u06dc\u06d8\u06e8\u06dc\u06e8\u06ec\u06eb\u06e6\u06d8\u06d7\u06e6\u06ec\u06d6\u06d6\u06e0\u06d8\u06da\u06e8\u06d8\u06e5\u06e0\u06e6\u06d8\u06dc\u06e2\u06db\u06e2\u06ec\u06e5\u06d8"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06d6\u06db\u06e1\u06ec\u06eb\u06d9\u06e1\u06d6\u06d8\u06e4\u06d7\u06df\u06e4\u06e2\u06d9\u06e4\u06e8\u06ec\u06e5\u06e6\u06d9\u06df\u06e8\u06df\u06d9\u06df\u06d7\u06e8\u06d6\u06df\u06dc\u06e1\u06db\u06ec\u06e1\u06e4"

    goto :goto_3

    :sswitch_f
    const v5, 0x652f3641

    const-string v0, "\u06d7\u06e4\u06e0\u06e8\u06d8\u06d8\u06d8\u06ec\u06e5\u06ec\u06e6\u06d9\u06d6\u06d8\u06db\u06e8\u06ec\u06e0\u06e8\u06e7\u06d8\u06e2\u06e7\u06e8\u06e6\u06dc\u06eb\u06dc\u06eb\u06e6"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_4

    goto :goto_4

    :sswitch_10
    if-eq v3, v1, :cond_1

    const-string v0, "\u06d6\u06d6\u06e0\u06e2\u06d8\u06d6\u06e1\u06e7\u06d6\u06d8\u06e8\u06ec\u06e5\u06d8\u06e6\u06e5\u06e1\u06e2\u06da\u06e8\u06d6\u06df\u06e6\u06dc\u06d7\u06d6\u06d8\u06e5\u06d8\u06e5\u06e5\u06e1\u06dc\u06e0\u06df\u06e1\u06e2\u06ec"

    goto :goto_4

    :cond_1
    const-string v0, "\u06d9\u06e8\u06e1\u06d6\u06e2\u06e4\u06ec\u06e1\u06e6\u06d8\u06e1\u06d6\u06e5\u06d8\u06e2\u06eb\u06e5\u06d8\u06e0\u06e4\u06df\u06d6\u06df\u06e5\u06d8\u06e0\u06e0\u06d6\u06e6\u06ec\u06e5\u06e6\u06df\u06d6\u06d8\u06df\u06e8\u06e6\u06eb\u06da\u06e6\u06d8\u06d9\u06e2\u06d8\u06e5\u06e5\u06da\u06e8\u06d6\u06e8\u06df\u06dc\u06d9\u06d8\u06da\u06d7"

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06da\u06e8\u06e8\u06d8\u06e0\u06e4\u06dc\u06d6\u06e2\u06e7\u06eb\u06d7\u06e8\u06e7\u06e7\u06df\u06db\u06eb\u06e5\u06e1\u06dc\u06e1\u06d8\u06e2\u06e1\u06e5\u06d8\u06e7\u06d6\u06d6\u06d8\u06dc\u06d8\u06e0\u06d6\u06e6\u06e8\u06d8\u06df\u06e8\u06e0\u06df\u06ec\u06d7\u06eb\u06e8\u06da"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06df\u06e1\u06d8\u06d8\u06e2\u06d6\u06e5\u06df\u06dc\u06d8\u06db\u06df\u06e5\u06d8\u06e4\u06d8\u06da\u06e0\u06db\u06d6\u06d8\u06e6\u06e2\u06eb\u06d9\u06d8\u06ec\u06ec\u06e7\u06e1\u06e4\u06e6\u06d9"

    goto :goto_3

    :sswitch_13
    const-string v0, "\u06e8\u06e4\u06e1\u06e7\u06ec\u06dc\u06e4\u06e2\u06d6\u06e7\u06e4\u06e1\u06ec\u06eb\u06db\u06d8\u06d7\u06d6\u06eb\u06d6\u06d7\u06ec\u06da\u06e8\u06d8\u06ec\u06e6\u06db\u06da\u06e2\u06e5\u06df\u06db\u06db\u06d8\u06e2\u06e0\u06d8\u06d9\u06e2\u06e4\u06e7\u06e8\u06e7\u06dc\u06d8\u06ec\u06da\u06ec"

    goto :goto_3

    :sswitch_14
    iput-object v1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OoooOoo:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const-string v0, "\u06d6\u06dc\u06e1\u06d8\u06e0\u06e4\u06eb\u06d7\u06e7\u06d6\u06db\u06dc\u06d8\u06db\u06eb\u06da\u06eb\u06eb\u06e8\u06df\u06d7\u06e0\u06d6\u06e8\u06d8\u06e2\u06e0\u06dc\u06d6\u06db\u06e1\u06d8\u06e7\u06dc\u06e4\u06e2\u06df\u06e4\u06d9\u06e0\u06e8\u06d8\u06ec\u06e7\u06e5\u06e7\u06eb\u06d6\u06d9\u06ec\u06df\u06dc\u06e8\u06d9\u06e6\u06dc"

    goto/16 :goto_0

    :sswitch_15
    invoke-interface {v4}, Lz2/ua;->OooO00o()V

    const-string v0, "\u06eb\u06e1\u06e1\u06d8\u06e7\u06d7\u06e0\u06d7\u06e4\u06e6\u06dc\u06d8\u06d6\u06db\u06db\u06da\u06eb\u06e8\u06d8\u06e7\u06e8\u06d9\u06e8\u06e4\u06eb\u06d6\u06e7\u06d9\u06d7\u06d8\u06d6\u06d8\u06dc\u06eb\u06db\u06e1\u06d6"

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "\u06eb\u06e1\u06e1\u06d8\u06e7\u06d7\u06e0\u06d7\u06e4\u06e6\u06dc\u06d8\u06d6\u06db\u06db\u06da\u06eb\u06e8\u06d8\u06e7\u06e8\u06d9\u06e8\u06e4\u06eb\u06d6\u06e7\u06d9\u06d7\u06d8\u06d6\u06d8\u06dc\u06eb\u06db\u06e1\u06d6"

    goto/16 :goto_0

    :sswitch_17
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7da613a2 -> :sswitch_2
        -0x63ea78b3 -> :sswitch_a
        -0x5cf9623b -> :sswitch_17
        -0x5374ea3f -> :sswitch_0
        -0x2db75d5 -> :sswitch_1
        0x11582c6f -> :sswitch_14
        0x13f5cf26 -> :sswitch_15
        0x369a3ff8 -> :sswitch_b
        0x74f154bd -> :sswitch_c
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x46d424ec -> :sswitch_9
        -0x14ffcd97 -> :sswitch_3
        -0x69c9932 -> :sswitch_16
        0x1b5b94a7 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x52a33be3 -> :sswitch_6
        -0xc07def -> :sswitch_5
        0x4cd40863 -> :sswitch_7
        0x6c6e5d2b -> :sswitch_4
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x674403f2 -> :sswitch_16
        -0x1ae6ea96 -> :sswitch_13
        -0x1204a59a -> :sswitch_d
        0x7f26f8c2 -> :sswitch_f
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x57cc3fad -> :sswitch_10
        -0x50f61190 -> :sswitch_11
        0x96c9655 -> :sswitch_e
        0x1e2113ed -> :sswitch_12
    .end sparse-switch
.end method

.method public OooO00o()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06df\u06e2\u06e6\u06d8\u06d9\u06d7\u06e6\u06d8\u06dc\u06d9\u06d9\u06eb\u06e5\u06e6\u06e0\u06e0\u06ec\u06e0\u06e1\u06d8\u06e2\u06d9\u06d8\u06d8\u06e7\u06e0\u06e8\u06e0\u06d8\u06e2\u06da\u06eb\u06dc\u06d8\u06d8\u06db\u06e0\u06dc\u06da\u06e5\u06e2\u06e8\u06d9\u06e1\u06e4\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x2fb

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x1f4

    const/16 v3, 0x169

    const v4, -0x1b0c13cb

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06e1\u06e4\u06dc\u06d6\u06e2\u06d9\u06eb\u06d6\u06d7\u06dc\u06d8\u06d8\u06ec\u06e8\u06da\u06dc\u06db\u06e2\u06da\u06d8\u06dc\u06e1\u06d7\u06dc\u06d8\u06eb\u06e6\u06e2\u06e0\u06e4\u06e4\u06d8\u06e5\u06d8\u06df\u06d6\u06d8\u06d8\u06e8\u06da\u06d7\u06e1\u06d7\u06ec\u06da\u06dc\u06e8\u06ec\u06e1\u06e7"

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;->NON:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OoooOoo:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const-string v0, "\u06e2\u06d7\u06e8\u06d8\u06d6\u06e1\u06dc\u06d8\u06e5\u06d6\u06d8\u06d8\u06dc\u06e6\u06e4\u06ec\u06ec\u06e1\u06e6\u06eb\u06e2\u06db\u06da\u06e5\u06df\u06e6\u06d9\u06df\u06ec\u06da\u06e6\u06e7\u06d8\u06d8\u06d9\u06d6\u06e1\u06d8\u06d7\u06e4\u06e8\u06d8\u06d8\u06e1\u06e8\u06d9\u06e4\u06ec\u06eb\u06ec\u06dc\u06e8\u06e8\u06dc\u06e1\u06d8\u06db\u06ec\u06e4\u06d9"

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Ooooo0o:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;

    const-string v0, "\u06e0\u06dc\u06dc\u06e6\u06e5\u06e6\u06d9\u06e6\u06dc\u06dc\u06e1\u06e1\u06d8\u06e2\u06e7\u06d6\u06d6\u06d8\u06ec\u06dc\u06e7\u06e4\u06dc\u06e7\u06eb\u06da\u06d6\u06d8\u06d7\u06e4\u06e4\u06e0\u06e8\u06e8\u06e2\u06dc\u06d8\u06db\u06e8\u06e6\u06e1\u06e7\u06dc\u06e0\u06ec\u06df\u06e2\u06e4\u06e8\u06d8\u06d9\u06d6\u06db\u06e2\u06e2\u06e2"

    goto :goto_0

    :sswitch_3
    const v2, 0x2355d7ef

    const-string v0, "\u06d7\u06ec\u06e8\u06d8\u06d7\u06dc\u06db\u06e0\u06e2\u06eb\u06d7\u06dc\u06d8\u06da\u06e8\u06e1\u06e2\u06e0\u06da\u06d9\u06e6\u06e4\u06d7\u06d9\u06e8\u06dc\u06d8\u06e2\u06e8\u06e6\u06d8\u06e0\u06e7\u06e6\u06d8\u06d9\u06df\u06e6\u06d8\u06e6\u06dc\u06e6\u06d8\u06d9\u06df\u06ec"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06ec\u06d8\u06d9\u06e1\u06e5\u06e6\u06e5\u06e7\u06da\u06e7\u06db\u06d7\u06eb\u06d9\u06e0\u06e7\u06e1\u06e1\u06d7\u06d6\u06e8\u06e5\u06e1\u06e1\u06db\u06dc\u06ec\u06ec\u06d6\u06e1\u06d9\u06d9\u06e8\u06e0\u06da\u06d7\u06d9\u06d9\u06e1\u06e6\u06eb"

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06e4\u06e6\u06e1\u06e6\u06e1\u06e6\u06d8\u06eb\u06d9\u06e6\u06e6\u06e2\u06e1\u06d8\u06e0\u06e4\u06e6\u06e6\u06db\u06e8\u06d8\u06d6\u06e8\u06e7\u06d8\u06e7\u06e6\u06e6\u06da\u06e5\u06e6\u06d8\u06eb\u06d6\u06e5\u06d8\u06d8\u06da\u06d8\u06e6\u06d8\u06db\u06da\u06e0\u06e1\u06d6\u06d8\u06d8"

    goto :goto_1

    :sswitch_6
    const v3, 0x48c36192

    const-string v0, "\u06e7\u06e0\u06e6\u06e1\u06e2\u06db\u06e8\u06e1\u06e8\u06d8\u06dc\u06da\u06e5\u06d9\u06ec\u06e6\u06d8\u06e0\u06e7\u06e8\u06dc\u06e6\u06db\u06eb\u06ec\u06e6\u06e6\u06d8\u06dc\u06d8\u06e4\u06dc\u06d8\u06d8\u06e2\u06e4\u06e7\u06e0\u06e4\u06ec\u06d8\u06df\u06d7\u06df\u06e7\u06e6\u06e8\u06eb\u06e2\u06dc\u06d6\u06ec\u06e7\u06d8\u06e6\u06e2\u06e6"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e4\u06e6\u06dc\u06d8\u06df\u06e0\u06dc\u06d8\u06e1\u06df\u06e1\u06d8\u06ec\u06e8\u06e2\u06e5\u06d8\u06d9\u06d7\u06d6\u06d8\u06eb\u06d8\u06e5\u06d8\u06e7\u06db\u06e2\u06e4\u06df\u06d6\u06d8\u06df\u06da\u06d7\u06ec\u06e8\u06e6\u06d8\u06e1\u06e0\u06e6\u06d8\u06e1\u06e6\u06ec\u06e5\u06e8\u06e7\u06e8\u06dc\u06d8\u06e1\u06d8\u06e7\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06dc\u06d9\u06d9\u06e2\u06d7\u06e6\u06d8\u06d6\u06e4\u06e8\u06e6\u06e1\u06e5\u06ec\u06e5\u06dc\u06d8\u06e7\u06d7\u06e6\u06d8\u06d9\u06d6\u06e1\u06d8\u06e8\u06df\u06ec\u06dc\u06d6\u06e5\u06d8\u06d9\u06dc\u06d8\u06e8\u06da\u06e5\u06df\u06e7\u06e8\u06d8\u06df\u06d8\u06db\u06dc\u06e6\u06e8\u06eb\u06d6\u06d8\u06d9\u06da\u06e2\u06e1\u06e6\u06d9\u06db\u06e4\u06e1"

    goto :goto_2

    :sswitch_8
    if-eqz v1, :cond_0

    const-string v0, "\u06da\u06ec\u06e1\u06d8\u06d7\u06e8\u06dc\u06d8\u06d8\u06db\u06e6\u06d8\u06e2\u06e0\u06e1\u06e8\u06ec\u06e5\u06d8\u06e7\u06d9\u06dc\u06e8\u06e4\u06db\u06e1\u06e4\u06ec\u06d7\u06db\u06d6\u06d8\u06d8\u06da\u06e5\u06d8\u06db\u06e6\u06d7\u06df\u06d8\u06e8\u06e4\u06e6\u06e0\u06e6\u06e1\u06da\u06e5\u06e8\u06d8\u06dc\u06e1\u06d9"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06e4\u06df\u06e5\u06e6\u06ec\u06e5\u06d8\u06e6\u06da\u06d7\u06e6\u06e8\u06e0\u06db\u06ec\u06e6\u06d8\u06d9\u06d9\u06e1\u06da\u06d8\u06dc\u06d8\u06e1\u06e7\u06e6\u06d8\u06e6\u06e6\u06e1\u06d8\u06d8\u06eb\u06d8\u06db\u06d7\u06d8\u06d8\u06e1\u06df\u06eb\u06d8\u06dc\u06e1\u06d8\u06d8\u06e5\u06d6\u06e7\u06df\u06e6\u06d8\u06e0\u06d9\u06e8"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06e7\u06df\u06d8\u06e6\u06df\u06ec\u06e0\u06e1\u06e2\u06dc\u06ec\u06e7\u06da\u06d6\u06d6\u06e1\u06dc\u06eb\u06da\u06e6\u06d8\u06d8\u06d7\u06e1\u06e7\u06d8\u06dc\u06df\u06e6\u06e4"

    goto :goto_0

    :sswitch_b
    invoke-interface {v1}, Lz2/wa;->OooO00o()V

    const-string v0, "\u06d7\u06e5\u06da\u06eb\u06e6\u06e7\u06d6\u06d7\u06e5\u06d8\u06ec\u06d8\u06e1\u06dc\u06e4\u06e6\u06d8\u06e2\u06e7\u06e1\u06d8\u06da\u06e2\u06db\u06d6\u06dc\u06df\u06d8\u06e5\u06e4\u06e4\u06d6\u06e6\u06da\u06d9\u06e1\u06e4\u06da\u06e7\u06da\u06d7\u06ec\u06e0\u06d8\u06d8\u06eb\u06eb\u06da\u06eb\u06d6\u06e5"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06d7\u06e5\u06da\u06eb\u06e6\u06e7\u06d6\u06d7\u06e5\u06d8\u06ec\u06d8\u06e1\u06dc\u06e4\u06e6\u06d8\u06e2\u06e7\u06e1\u06d8\u06da\u06e2\u06db\u06d6\u06dc\u06df\u06d8\u06e5\u06e4\u06e4\u06d6\u06e6\u06da\u06d9\u06e1\u06e4\u06da\u06e7\u06da\u06d7\u06ec\u06e0\u06d8\u06d8\u06eb\u06eb\u06da\u06eb\u06d6\u06e5"

    goto :goto_0

    :sswitch_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77765f4c -> :sswitch_b
        -0x4a00baf7 -> :sswitch_d
        -0x434a1e8e -> :sswitch_1
        0xf3e64bc -> :sswitch_3
        0x165b5f8b -> :sswitch_0
        0x2acbfc29 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x54149607 -> :sswitch_4
        -0x520a5ab6 -> :sswitch_c
        -0x47f02ec5 -> :sswitch_a
        -0x162e63d7 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x4fd8a62f -> :sswitch_9
        0x270862c2 -> :sswitch_8
        0x3f8255fe -> :sswitch_7
        0x47a8945c -> :sswitch_5
    .end sparse-switch
.end method

.method public OooO0O0()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06d6\u06e6\u06e8\u06db\u06df\u06e2\u06e7\u06eb\u06e1\u06d8\u06eb\u06e8\u06da\u06eb\u06e0\u06df\u06eb\u06e6\u06e5\u06e8\u06e7\u06e2\u06eb\u06e8\u06e7\u06eb\u06da\u06ec\u06e4\u06df\u06db\u06eb\u06e2\u06dc\u06d9\u06dc\u06e2\u06da\u06e0\u06d9\u06eb\u06e4\u06e4\u06e2\u06ec\u06e6\u06e7\u06e5\u06e5\u06d8\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xc6

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x97

    const/16 v3, 0x18c

    const v4, -0x320c69fa

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06e0\u06e7\u06ec\u06e1\u06e1\u06e1\u06ec\u06e2\u06eb\u06e8\u06e4\u06e5\u06d6\u06e8\u06e5\u06d9\u06db\u06d6\u06e4\u06d8\u06e1\u06d8\u06e6\u06da\u06e5\u06e5\u06db\u06e6\u06e6\u06df\u06da\u06d9\u06e1\u06dc\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;->FAILED:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OoooOoo:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const-string v0, "\u06e5\u06e0\u06df\u06eb\u06e4\u06e2\u06ec\u06db\u06e0\u06df\u06e7\u06e0\u06d8\u06e6\u06d6\u06e5\u06db\u06da\u06ec\u06dc\u06dc\u06e5\u06d8\u06e8\u06da\u06da\u06d8\u06e2\u06e6\u06e6\u06e0\u06dc\u06d8\u06e7\u06d8\u06e2\u06df\u06e2\u06e5\u06e8\u06ec\u06e8\u06e5\u06da\u06e1\u06e2\u06ec\u06e5"

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Ooooo0o:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;

    const-string v0, "\u06e2\u06d9\u06e2\u06d9\u06d9\u06dc\u06d8\u06da\u06d6\u06e4\u06ec\u06e1\u06e1\u06d8\u06db\u06e0\u06e1\u06d8\u06e5\u06eb\u06da\u06db\u06db\u06e0\u06ec\u06dc\u06e7\u06d8\u06d8\u06e7\u06d6\u06d8\u06e5\u06e8\u06e8"

    goto :goto_0

    :sswitch_3
    const v2, -0x31e02137

    const-string v0, "\u06d9\u06e8\u06e4\u06eb\u06da\u06e5\u06d8\u06dc\u06d8\u06e4\u06df\u06e7\u06d8\u06d8\u06e4\u06d7\u06eb\u06e8\u06df\u06e6\u06e8\u06e8\u06e4\u06d6\u06d8\u06ec\u06ec\u06e8\u06e8\u06d8\u06e7\u06e7\u06d8\u06d8\u06eb\u06ec\u06e5\u06e7\u06ec\u06e6"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06e0\u06e2\u06e1\u06d9\u06ec\u06dc\u06d8\u06eb\u06d8\u06dc\u06d8\u06d9\u06e4\u06e2\u06e8\u06eb\u06d8\u06d8\u06ec\u06dc\u06d8\u06e2\u06ec\u06dc\u06d8\u06e6\u06e8\u06d8\u06df\u06dc\u06e1\u06d8\u06ec\u06e8\u06d6\u06e7\u06db\u06e0\u06ec\u06e1\u06e8\u06d8\u06e4\u06e4\u06e2\u06da\u06e1\u06e4\u06eb\u06e4\u06e0\u06d6\u06d6\u06df\u06e7\u06e5\u06dc\u06e0\u06df\u06e4"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06d6\u06d6\u06d6\u06d8\u06e0\u06e8\u06da\u06db\u06e6\u06eb\u06da\u06ec\u06d9\u06e0\u06dc\u06e8\u06e6\u06d8\u06d8\u06d8\u06e0\u06d9\u06d6\u06d9\u06e1\u06eb\u06e5\u06ec\u06e0\u06e6\u06e0"

    goto :goto_1

    :sswitch_6
    const v3, 0x34c56021

    const-string v0, "\u06df\u06e1\u06e4\u06db\u06ec\u06db\u06d6\u06e0\u06e7\u06d8\u06df\u06df\u06ec\u06e1\u06e5\u06df\u06e1\u06d8\u06d8\u06e8\u06eb\u06d9\u06e2\u06e6\u06d8\u06d8\u06eb\u06d6\u06dc\u06e6\u06d7\u06e6\u06d8\u06e0\u06eb\u06d9\u06eb\u06e1\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06dc\u06db\u06d6\u06d8\u06d6\u06e7\u06e1\u06e5\u06d6\u06e0\u06e8\u06d6\u06d6\u06e5\u06e8\u06e0\u06d6\u06d6\u06e5\u06d8\u06e8\u06d9\u06e1\u06e6\u06d8\u06d8\u06dc\u06dc\u06e6\u06d8\u06ec\u06e4\u06e0"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e4\u06d8\u06db\u06e2\u06ec\u06e6\u06e4\u06e1\u06e7\u06d8\u06e8\u06df\u06d7\u06da\u06dc\u06e6\u06e7\u06e7\u06e1\u06dc\u06d8\u06e6\u06da\u06e8\u06d8\u06e5\u06e8\u06ec\u06ec\u06ec\u06d7\u06e5\u06dc\u06e0\u06da\u06dc\u06da\u06e7\u06dc\u06d8\u06da\u06e6\u06e5\u06d8\u06e0\u06e2\u06e0\u06d7\u06db\u06e6\u06ec\u06e8\u06d9\u06e5\u06d8"

    goto :goto_2

    :sswitch_8
    if-eqz v1, :cond_0

    const-string v0, "\u06ec\u06d6\u06e0\u06e1\u06da\u06e1\u06d8\u06d9\u06da\u06d8\u06d8\u06e2\u06dc\u06e8\u06d8\u06e6\u06e7\u06dc\u06e4\u06d8\u06e1\u06da\u06e4\u06d6\u06e4\u06ec\u06d9\u06e7\u06da\u06dc\u06d8\u06df\u06eb\u06e5\u06d8\u06eb\u06e0\u06da\u06e0\u06da\u06e6\u06d6\u06d6\u06db\u06dc\u06d8\u06d6\u06d8\u06e1\u06db\u06d7\u06d7\u06e8\u06d8\u06e5\u06d6\u06e5"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06e7\u06e1\u06e4\u06e0\u06e5\u06d8\u06d8\u06df\u06ec\u06da\u06e8\u06e4\u06d8\u06d8\u06df\u06dc\u06da\u06df\u06eb\u06e6\u06d8\u06e2\u06d7\u06e8\u06d8\u06e6\u06d7\u06d6\u06d8\u06e5\u06e0\u06e1\u06d8\u06dc\u06da\u06e7\u06e7\u06ec\u06eb\u06e0\u06e7\u06e8\u06dc\u06e5\u06e1\u06d8\u06df\u06eb\u06d8"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06da\u06e1\u06e2\u06e7\u06db\u06df\u06d7\u06e0\u06e1\u06d8\u06df\u06d8\u06e1\u06e7\u06e2\u06d6\u06db\u06e8\u06db\u06e8\u06d6\u06d8\u06d7\u06e7\u06e7\u06e5\u06e7\u06e1\u06e2\u06da\u06dc\u06d8\u06e7\u06db\u06dc\u06e6\u06e1\u06d8\u06dc\u06d9\u06da\u06e5\u06e0\u06d6\u06e5\u06dc\u06dc\u06d8\u06d9\u06d6\u06e6\u06d8\u06eb\u06df\u06d8\u06e6\u06d6\u06e6\u06d8"

    goto :goto_1

    :sswitch_b
    invoke-interface {v1}, Lz2/wa;->OooO0O0()V

    const-string v0, "\u06dc\u06d9\u06e2\u06df\u06e8\u06d6\u06d8\u06d8\u06e5\u06e8\u06d8\u06eb\u06ec\u06e6\u06d8\u06e8\u06e5\u06e5\u06dc\u06e2\u06e4\u06da\u06eb\u06eb\u06d7\u06d8\u06e6\u06da\u06e8\u06ec\u06df\u06e2\u06e4\u06e4\u06ec\u06eb\u06e7\u06e7\u06dc\u06d9\u06d8\u06d8\u06d7\u06e1\u06eb"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06dc\u06d9\u06e2\u06df\u06e8\u06d6\u06d8\u06d8\u06e5\u06e8\u06d8\u06eb\u06ec\u06e6\u06d8\u06e8\u06e5\u06e5\u06dc\u06e2\u06e4\u06da\u06eb\u06eb\u06d7\u06d8\u06e6\u06da\u06e8\u06ec\u06df\u06e2\u06e4\u06e4\u06ec\u06eb\u06e7\u06e7\u06dc\u06d9\u06d8\u06d8\u06d7\u06e1\u06eb"

    goto :goto_0

    :sswitch_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x299874f8 -> :sswitch_0
        -0x28f3e65b -> :sswitch_3
        -0x4d134e2 -> :sswitch_d
        0x32512585 -> :sswitch_1
        0x32ad048b -> :sswitch_b
        0x3758357a -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x1aeb64b1 -> :sswitch_c
        0x5d10cf3f -> :sswitch_4
        0x61c8bad1 -> :sswitch_a
        0x7d3697f6 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x51019bee -> :sswitch_7
        0x210fc32f -> :sswitch_9
        0x27b252dc -> :sswitch_8
        0x4a5616c0 -> :sswitch_5
    .end sparse-switch
.end method

.method public OooO0OO()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e8\u06dc\u06e1\u06dc\u06e8\u06d8\u06e6\u06d9\u06e6\u06d8\u06ec\u06e2\u06d7\u06d9\u06da\u06d7\u06e8\u06e4\u06d8\u06d8\u06db\u06e8\u06d8\u06d8\u06eb\u06e8\u06e6\u06d8\u06e2\u06df\u06d9\u06eb\u06d6\u06e6\u06d8\u06ec\u06eb\u06db\u06ec\u06d9\u06e5\u06e5\u06e0\u06d8\u06d8\u06d8\u06e7\u06ec\u06df\u06d8\u06e8\u06d8\u06eb\u06d9\u06d8\u06d8\u06df\u06df\u06d6\u06d8\u06e2\u06d7\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x52

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x142

    const/16 v3, 0x2be

    const v4, -0x1c6ddb37

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06d7\u06da\u06db\u06d7\u06df\u06d9\u06e2\u06e5\u06d8\u06e6\u06dc\u06d8\u06d8\u06db\u06e5\u06da\u06db\u06d8\u06e2\u06d8\u06df\u06e5\u06ec\u06e0\u06d9\u06df\u06eb\u06d8\u06d9\u06d7\u06e8\u06dc\u06ec\u06e8\u06d8\u06e8\u06ec\u06da\u06d7\u06ec\u06e5\u06e0\u06e0\u06d8\u06d8\u06d9\u06db\u06e7\u06da\u06db\u06d9\u06da\u06dc\u06e1\u06d8\u06e4\u06d7\u06e8"

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;->EMPTY:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OoooOoo:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const-string v0, "\u06e1\u06db\u06e1\u06d8\u06e1\u06e2\u06db\u06e8\u06e7\u06e4\u06e8\u06e1\u06d8\u06e4\u06eb\u06e5\u06d8\u06d8\u06db\u06d7\u06e0\u06e0\u06e6\u06e4\u06e5\u06e1\u06da\u06e7\u06ec\u06dc\u06d6\u06e7\u06db\u06e0\u06e6"

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Ooooo0o:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;

    const-string v0, "\u06e1\u06eb\u06d8\u06e7\u06e4\u06d6\u06e1\u06e6\u06e1\u06e2\u06d7\u06d7\u06d7\u06dc\u06d8\u06d9\u06d7\u06e5\u06d7\u06eb\u06eb\u06e8\u06db\u06db\u06df\u06eb\u06e8\u06d6\u06e4"

    goto :goto_0

    :sswitch_3
    const v2, 0x70b22a6c

    const-string v0, "\u06e0\u06d7\u06e7\u06ec\u06d6\u06e5\u06d8\u06e4\u06ec\u06dc\u06d7\u06db\u06d6\u06df\u06e1\u06e6\u06d8\u06e4\u06d9\u06e4\u06da\u06dc\u06d8\u06d9\u06df\u06e1\u06db\u06eb\u06e5\u06e4\u06d8\u06d7\u06e2\u06d9\u06d6\u06d7\u06dc\u06d9\u06df\u06dc\u06e1\u06ec\u06ec\u06d8\u06e4\u06db\u06e6\u06d8\u06d9\u06ec\u06e5\u06e1\u06e7\u06d8\u06e1\u06eb\u06e5"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06d8\u06e1\u06e8\u06d8\u06d6\u06d7\u06e5\u06d8\u06d9\u06df\u06e1\u06da\u06e2\u06e5\u06d7\u06db\u06d8\u06d8\u06e8\u06db\u06eb\u06e0\u06e8\u06d7\u06e5\u06e4\u06e6\u06da\u06e4\u06d9\u06d9\u06e1\u06d8\u06d7\u06d7\u06e5\u06d8\u06e5\u06e4\u06da\u06e7\u06e8\u06df\u06e1\u06e4\u06e5\u06d8\u06d9\u06e1\u06e6\u06e6\u06e1\u06e0"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06ec\u06e0\u06d9\u06e1\u06e8\u06ec\u06e1\u06da\u06dc\u06d8\u06d6\u06df\u06d8\u06e6\u06e5\u06e6\u06d7\u06eb\u06dc\u06d8\u06e8\u06e0\u06e1\u06e2\u06e4\u06e6\u06d8\u06db\u06da\u06d8\u06db\u06e0\u06e1\u06d8\u06e6\u06ec\u06da\u06d7\u06da\u06d6\u06d8"

    goto :goto_1

    :sswitch_6
    const v3, -0x3c4c0777

    const-string v0, "\u06e5\u06eb\u06d9\u06e2\u06db\u06e0\u06d6\u06e8\u06e5\u06d8\u06df\u06eb\u06dc\u06d8\u06e2\u06e6\u06e5\u06e0\u06e4\u06e0\u06db\u06e2\u06e5\u06d8\u06e5\u06eb\u06e1\u06da\u06eb\u06e2\u06df\u06db\u06e1\u06d8\u06eb\u06dc\u06d6\u06dc\u06e7\u06e5\u06d8\u06eb\u06e7\u06e1\u06d8\u06e2\u06df\u06df"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    if-eqz v1, :cond_0

    const-string v0, "\u06e8\u06e4\u06df\u06ec\u06dc\u06e8\u06d8\u06db\u06e7\u06e1\u06e1\u06e5\u06dc\u06d8\u06d6\u06d8\u06da\u06e4\u06da\u06ec\u06d6\u06d6\u06d6\u06e7\u06e5\u06e0\u06e6\u06ec\u06e5\u06d8\u06dc\u06e4\u06da\u06d6\u06e4\u06e7\u06e5"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e7\u06d8\u06d7\u06d9\u06e6\u06db\u06db\u06eb\u06e6\u06d8\u06e2\u06d9\u06e8\u06e6\u06ec\u06e4\u06e1\u06e7\u06d7\u06e1\u06eb\u06d6\u06d8\u06e8\u06d6\u06e1\u06d8\u06e6\u06e4\u06d6\u06d8\u06e2\u06e2\u06e7\u06db\u06d9\u06d8\u06d8\u06e4\u06e1\u06d9\u06e7\u06d6\u06e5\u06e2\u06e4\u06dc\u06da\u06d8\u06d8\u06d8\u06e2\u06e6\u06e8\u06d8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e6\u06e7\u06d7\u06ec\u06df\u06d6\u06d8\u06e7\u06d7\u06d8\u06d8\u06e5\u06d6\u06e6\u06ec\u06e1\u06e7\u06e7\u06df\u06d8\u06eb\u06d9\u06e5\u06d8\u06d7\u06ec\u06d7\u06e0\u06eb\u06e8\u06e8\u06da\u06d9\u06d7\u06db\u06ec\u06df\u06e5\u06e6\u06d8\u06d7\u06eb\u06db\u06eb\u06e7"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06e0\u06eb\u06dc\u06e6\u06df\u06e1\u06e8\u06e8\u06e4\u06e0\u06e8\u06db\u06dc\u06e2\u06e7\u06d7\u06d9\u06dc\u06d9\u06e8\u06e4\u06e2\u06df\u06e7\u06e5\u06d6\u06df\u06df\u06e8\u06e8\u06e1\u06e6\u06e7\u06d7\u06dc\u06e7\u06e5\u06e7\u06e7\u06e5\u06e1\u06dc\u06d8\u06e2\u06e4\u06df\u06e2\u06e5\u06dc\u06d8\u06df\u06d6\u06e6\u06d8\u06d9\u06e0\u06df"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06ec\u06ec\u06eb\u06d6\u06e1\u06e2\u06ec\u06e1\u06e4\u06dc\u06e5\u06e1\u06ec\u06df\u06df\u06e5\u06e6\u06dc\u06d8\u06e5\u06e2\u06dc\u06eb\u06ec\u06e5\u06e8\u06e2\u06e1\u06d8\u06e4\u06d6\u06d6\u06d8"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06ec\u06e8\u06e7\u06d7\u06d6\u06e0\u06e0\u06e7\u06e5\u06d9\u06e5\u06d7\u06d9\u06eb\u06e8\u06e8\u06e6\u06da\u06e4\u06d6\u06d6\u06d8\u06ec\u06dc\u06e7\u06db\u06d8\u06dc\u06d8\u06e1\u06e2\u06d7\u06e5\u06e6\u06e7\u06d8\u06db\u06df\u06d8\u06d8\u06df\u06e4\u06e8\u06ec\u06e5\u06df\u06d7\u06df\u06da\u06da\u06d9\u06e1\u06d8\u06d8\u06e1\u06e1\u06d8\u06e1\u06e5\u06db"

    goto :goto_0

    :sswitch_c
    invoke-interface {v1}, Lz2/wa;->OooO0OO()V

    const-string v0, "\u06d8\u06e1\u06e8\u06d8\u06d6\u06d7\u06e5\u06d8\u06d9\u06df\u06e1\u06da\u06e2\u06e5\u06d7\u06db\u06d8\u06d8\u06e8\u06db\u06eb\u06e0\u06e8\u06d7\u06e5\u06e4\u06e6\u06da\u06e4\u06d9\u06d9\u06e1\u06d8\u06d7\u06d7\u06e5\u06d8\u06e5\u06e4\u06da\u06e7\u06e8\u06df\u06e1\u06e4\u06e5\u06d8\u06d9\u06e1\u06e6\u06e6\u06e1\u06e0"

    goto :goto_0

    :sswitch_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7183731b -> :sswitch_2
        -0x2ccc64c6 -> :sswitch_1
        -0x18c2ada8 -> :sswitch_0
        0x7f9ef6 -> :sswitch_d
        0x588cd1ac -> :sswitch_c
        0x6a503593 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x65000b39 -> :sswitch_a
        -0x570cdb6e -> :sswitch_b
        0x47095b6a -> :sswitch_6
        0x52125ec8 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x73222f40 -> :sswitch_8
        -0x5b3cb19e -> :sswitch_7
        -0x1ab358d1 -> :sswitch_9
        0x585ef0f1 -> :sswitch_5
    .end sparse-switch
.end method

.method public OooO0Oo()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06d7\u06e6\u06e8\u06e4\u06e0\u06d6\u06d8\u06d6\u06df\u06df\u06dc\u06da\u06db\u06dc\u06d8\u06db\u06d6\u06d8\u06d8\u06db\u06db\u06d7\u06d7\u06e5\u06e8\u06d6\u06db\u06e5\u06d8\u06e0\u06e5\u06e0\u06e6\u06ec\u06dc\u06d8\u06e2\u06ec\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x4c

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x94

    const/16 v3, 0x24c

    const v4, 0x1c9034f

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06d9\u06e7\u06e8\u06e2\u06d7\u06ec\u06ec\u06ec\u06da\u06e6\u06e7\u06d8\u06d7\u06e1\u06e5\u06d8\u06ec\u06dc\u06e7\u06e0\u06d8\u06d8\u06da\u06d8\u06e6\u06e1\u06d7\u06e7\u06db\u06db\u06db\u06d7\u06e7\u06e7\u06e5\u06eb\u06eb\u06eb\u06db\u06e1\u06d8\u06eb\u06df\u06e0\u06d6\u06d6\u06dc\u06d8\u06e0\u06e7\u06d6"

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;->NON:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OoooOoo:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const-string v0, "\u06e6\u06e2\u06e5\u06d7\u06e7\u06d8\u06d8\u06d8\u06da\u06d6\u06d6\u06eb\u06d9\u06e4\u06df\u06d6\u06e6\u06e4\u06e2\u06e1\u06eb\u06d6\u06dc\u06e6\u06e5\u06eb\u06d7\u06df\u06e2\u06db\u06e4\u06d7\u06e4\u06e6\u06d8\u06e2\u06e5\u06e1\u06d8\u06dc\u06e6\u06e6\u06df\u06e5\u06e1"

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Ooooo0o:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;

    const-string v0, "\u06e5\u06e2\u06db\u06e0\u06e0\u06e1\u06db\u06e7\u06e7\u06e8\u06d8\u06e2\u06e7\u06e4\u06e1\u06e6\u06ec\u06e8\u06d8\u06e0\u06e0\u06ec\u06e7\u06db\u06e6\u06d8\u06d9\u06e4\u06e0\u06eb\u06e7\u06e6\u06d8\u06e0\u06da\u06e8\u06d8\u06e6\u06e8\u06d6\u06d8\u06e4\u06d9\u06db\u06da\u06e4\u06d8\u06d8\u06ec\u06d8\u06e5\u06e2\u06d9\u06da"

    goto :goto_0

    :sswitch_3
    const v2, 0x3b77f36e

    const-string v0, "\u06e6\u06d7\u06d8\u06e6\u06e0\u06e7\u06dc\u06e7\u06e6\u06d8\u06d8\u06e2\u06d7\u06d6\u06e4\u06e5\u06d8\u06dc\u06df\u06db\u06da\u06d8\u06d8\u06da\u06eb\u06e8\u06d8\u06e1\u06d9\u06e5\u06d8\u06db\u06d6\u06e4"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06d7\u06da\u06e8\u06d8\u06e6\u06e0\u06e6\u06dc\u06db\u06e6\u06d8\u06e7\u06d9\u06d9\u06dc\u06e5\u06d9\u06df\u06e6\u06e4\u06e8\u06e2\u06d9\u06dc\u06d8\u06ec\u06db\u06da\u06e4\u06e2\u06d6\u06d8"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06d9\u06df\u06d6\u06e7\u06e0\u06e6\u06e6\u06e6\u06d8\u06db\u06d7\u06d8\u06e5\u06eb\u06e7\u06e5\u06e4\u06e8\u06d8\u06df\u06e1\u06d8\u06e2\u06e2\u06d6\u06dc\u06e8\u06e5\u06e0\u06ec\u06e7\u06e2\u06e0\u06dc\u06e0\u06e0\u06e4\u06e8\u06ec\u06e4\u06dc\u06dc\u06dc\u06e4\u06e1\u06e6\u06da\u06e8"

    goto :goto_1

    :sswitch_6
    const v3, 0xb4e3b0

    const-string v0, "\u06d6\u06d7\u06e2\u06e6\u06e8\u06d6\u06d6\u06e8\u06e5\u06d8\u06e4\u06e8\u06db\u06d6\u06d9\u06df\u06da\u06e6\u06e2\u06e2\u06d8\u06e7\u06e1\u06e5\u06e4\u06d8\u06eb\u06d7\u06e4\u06df\u06db\u06d6\u06e5\u06e8\u06d8\u06e1\u06e7\u06d8\u06d8\u06e1\u06df\u06eb\u06e1\u06d6"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06db\u06e6\u06e5\u06d8\u06eb\u06e6\u06e8\u06d8\u06eb\u06d9\u06e1\u06e4\u06eb\u06d7\u06d9\u06e6\u06d8\u06dc\u06e8\u06e7\u06da\u06d6\u06e6\u06e5\u06d8\u06e2\u06e5\u06e8\u06eb\u06da\u06d8\u06d8\u06d8\u06e1\u06e7\u06d8\u06e0\u06e5\u06db\u06dc\u06e4\u06d6\u06d8\u06dc\u06eb\u06d8\u06db\u06d8\u06dc\u06d8\u06e5\u06e2\u06d8\u06d8\u06d7\u06d9\u06e4\u06e6\u06e6\u06eb"

    goto :goto_2

    :cond_0
    const-string v0, "\u06d6\u06e2\u06db\u06df\u06d6\u06e7\u06e1\u06eb\u06d8\u06d8\u06e2\u06df\u06d6\u06df\u06d6\u06d7\u06da\u06e0\u06e0\u06e0\u06d9\u06e4\u06eb\u06da\u06e6\u06d9\u06d8\u06d9\u06e8\u06e8\u06e2\u06ec\u06e2\u06eb\u06e4\u06e0\u06d6"

    goto :goto_2

    :sswitch_8
    if-eqz v1, :cond_0

    const-string v0, "\u06dc\u06e8\u06e8\u06d8\u06e5\u06db\u06da\u06e7\u06dc\u06e7\u06d8\u06e1\u06df\u06d7\u06da\u06e8\u06e7\u06dc\u06e5\u06db\u06da\u06db\u06d9\u06eb\u06dc\u06e1\u06e0\u06d7\u06e5\u06d8\u06d8\u06df\u06db\u06e7\u06e2\u06d6\u06d9\u06eb\u06e1\u06d9\u06da\u06e0\u06eb\u06db\u06da"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06db\u06e4\u06d8\u06d8\u06df\u06e0\u06e8\u06d8\u06db\u06d7\u06da\u06d7\u06e4\u06e4\u06e7\u06e7\u06e7\u06d7\u06e6\u06dc\u06d9\u06dc\u06e7\u06dc\u06e6\u06e8\u06e8\u06e1\u06d8\u06dc\u06e1\u06e7"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06e8\u06e6\u06dc\u06d8\u06e0\u06db\u06d8\u06df\u06df\u06e8\u06e5\u06eb\u06e4\u06d9\u06eb\u06e0\u06da\u06df\u06eb\u06d9\u06e7\u06df\u06d6\u06d8\u06d9\u06e1\u06da\u06e8\u06d8\u06d9\u06e1\u06e1\u06d8\u06ec\u06da\u06d9\u06d6\u06d8\u06d6\u06d8\u06e7\u06dc\u06df\u06da\u06dc\u06e2\u06ec\u06d8\u06e1\u06d6\u06e2\u06dc\u06d9\u06d7"

    goto :goto_1

    :sswitch_b
    invoke-interface {v1}, Lz2/wa;->OooO0Oo()V

    const-string v0, "\u06dc\u06d7\u06dc\u06db\u06d9\u06e8\u06d6\u06ec\u06e7\u06da\u06ec\u06eb\u06da\u06eb\u06e1\u06d9\u06d7\u06df\u06eb\u06e5\u06eb\u06d6\u06e0\u06e7\u06db\u06e0\u06d6\u06d8\u06da\u06e1\u06dc\u06d8"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06dc\u06d7\u06dc\u06db\u06d9\u06e8\u06d6\u06ec\u06e7\u06da\u06ec\u06eb\u06da\u06eb\u06e1\u06d9\u06d7\u06df\u06eb\u06e5\u06eb\u06d6\u06e0\u06e7\u06db\u06e0\u06d6\u06d8\u06da\u06e1\u06dc\u06d8"

    goto :goto_0

    :sswitch_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x785e95bf -> :sswitch_b
        -0x75761476 -> :sswitch_2
        -0x46e1ae67 -> :sswitch_0
        -0x120e2d4c -> :sswitch_1
        0x2d3cda3 -> :sswitch_d
        0x2869f4e0 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x4a3a9b6f -> :sswitch_4
        -0x3c6a7762 -> :sswitch_6
        0x33711c8a -> :sswitch_c
        0x39dabd38 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x302304e3 -> :sswitch_7
        -0x1c2ae637 -> :sswitch_8
        0x22b32e7f -> :sswitch_9
        0x4e54a6f1 -> :sswitch_5
    .end sparse-switch
.end method

.method public OooO0o(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06eb\u06dc\u06e8\u06d8\u06e8\u06e1\u06e1\u06e7\u06e8\u06eb\u06e6\u06e6\u06e0\u06dc\u06e2\u06d8\u06e1\u06e6\u06d8\u06e1\u06e6\u06ec\u06e7\u06e8\u06e1\u06e6\u06db\u06e7\u06d9\u06df\u06e5\u06e4\u06e2\u06e6\u06d8\u06e8\u06e8\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1d4

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3dd

    const/16 v2, 0xc

    const v3, 0x6e6ee97f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06d9\u06eb\u06e7\u06df\u06e2\u06d6\u06e7\u06d8\u06dc\u06d7\u06e7\u06e1\u06e6\u06e8\u06d7\u06dc\u06ec\u06dc\u06da\u06dc\u06e4\u06d9\u06db\u06e1\u06e2\u06d6\u06e1\u06e8\u06e5\u06eb\u06dc\u06d8\u06e7\u06e4\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06eb\u06eb\u06df\u06e1\u06d6\u06e8\u06e6\u06e0\u06e2\u06e6\u06e8\u06da\u06e7\u06d7\u06d6\u06ec\u06eb\u06df\u06e8\u06db\u06d9\u06e8\u06da\u06da\u06db\u06e4\u06e5\u06e2\u06df"

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    const-string v0, "\u06e7\u06d7\u06e5\u06e5\u06d9\u06ec\u06d6\u06e6\u06ec\u06da\u06e8\u06e8\u06d8\u06e4\u06e7\u06db\u06e7\u06d8\u06eb\u06e0\u06e5\u06e1\u06d8\u06e4\u06d8\u06dc\u06d8\u06d7\u06e6\u06e7\u06d8\u06da\u06d9\u06df\u06e7\u06dc\u06db\u06e2\u06e2\u06ec\u06eb\u06e4\u06e8\u06d8\u06e4\u06ec\u06da\u06ec\u06eb\u06ec\u06e1\u06da\u06d7"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x374bc304 -> :sswitch_0
        0x4eb406f6 -> :sswitch_1
        0x5693e643 -> :sswitch_2
        0x5c575683 -> :sswitch_3
    .end sparse-switch
.end method

.method public OooO0o0()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06d7\u06db\u06e8\u06e5\u06e1\u06e1\u06d7\u06d6\u06db\u06d6\u06e1\u06df\u06e2\u06d8\u06e1\u06d7\u06eb\u06e6\u06db\u06e1\u06dc\u06d8\u06ec\u06ec\u06eb\u06e8\u06df\u06e2\u06dc\u06d8\u06d9\u06dc\u06e5\u06d8\u06dc\u06e4\u06d6\u06e6\u06df\u06e1\u06e4\u06e6\u06dc\u06d8\u06eb\u06d9\u06da\u06da\u06e7\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x4b

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x145

    const/16 v3, 0x36

    const v4, 0x3d4ded7c

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06d8\u06e4\u06d8\u06d8\u06dc\u06e1\u06e4\u06db\u06ec\u06e8\u06d7\u06d8\u06d8\u06eb\u06eb\u06e6\u06d8\u06d8\u06d8\u06e2\u06e8\u06dc\u06d6\u06e5\u06e8\u06e2\u06df\u06e6\u06dc\u06d8\u06e7\u06e2\u06df\u06da\u06e6\u06e8\u06da\u06d8\u06d8\u06da\u06d8\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;->COMPLETE:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OoooOoo:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const-string v0, "\u06df\u06db\u06ec\u06d7\u06d7\u06da\u06e2\u06e5\u06e6\u06d8\u06e0\u06d7\u06e6\u06eb\u06ec\u06d7\u06e6\u06d8\u06e7\u06d8\u06d6\u06e1\u06e1\u06da\u06d8\u06d6\u06df\u06e0\u06da\u06d6\u06e5\u06d8\u06d8\u06df\u06df\u06e4\u06df\u06db\u06d9\u06e8\u06d7\u06d9\u06d9\u06df\u06ec"

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Ooooo0o:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;

    const-string v0, "\u06d9\u06e2\u06e0\u06ec\u06db\u06d9\u06d7\u06e4\u06e4\u06dc\u06dc\u06d8\u06e5\u06e5\u06d8\u06d8\u06d8\u06d9\u06db\u06e7\u06eb\u06d8\u06d8\u06e2\u06e8\u06dc\u06d8\u06d9\u06dc\u06eb\u06e1\u06dc\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    const v2, -0x1faaf318

    const-string v0, "\u06e8\u06e6\u06ec\u06da\u06e7\u06e1\u06d8\u06d6\u06e2\u06eb\u06da\u06e6\u06df\u06eb\u06d6\u06e5\u06d8\u06e4\u06df\u06e5\u06e8\u06e7\u06d8\u06d8\u06dc\u06d6\u06e2\u06db\u06e1\u06e1\u06e5\u06e6\u06e7\u06d7\u06eb\u06d6\u06e4\u06da\u06d6\u06e6\u06df\u06e5\u06d8\u06da\u06db\u06d7"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06e1\u06e6\u06e2\u06d7\u06d9\u06d7\u06d7\u06e6\u06e6\u06d9\u06e7\u06e0\u06d7\u06db\u06dc\u06d9\u06df\u06e7\u06d8\u06e6\u06d6\u06d7\u06e2\u06e1\u06ec\u06e2\u06e1\u06d6\u06d7\u06db\u06d6\u06eb\u06e4\u06ec\u06e7\u06e4\u06eb\u06e0\u06dc\u06e0\u06e8\u06e0\u06e2\u06e0\u06d6\u06e1\u06d8\u06e2\u06ec\u06d6\u06eb\u06e0\u06e8\u06d8"

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06e1\u06e5\u06dc\u06e7\u06e4\u06e8\u06e8\u06dc\u06e8\u06e6\u06d9\u06e0\u06e2\u06d9\u06da\u06dc\u06e8\u06e1\u06d8\u06d9\u06e6\u06d8\u06e7\u06d8\u06e8\u06e7\u06df\u06db\u06e0\u06e1\u06e8\u06d9\u06e2\u06d8\u06da\u06d6\u06e6\u06db\u06e1\u06eb\u06e5\u06e4\u06dc\u06db\u06e7\u06e7\u06d6\u06e8\u06d7"

    goto :goto_1

    :sswitch_6
    const v3, -0x358d0d00    # -3980480.0f

    const-string v0, "\u06d9\u06e4\u06d6\u06da\u06e6\u06e6\u06d8\u06e6\u06eb\u06d8\u06d8\u06e7\u06d8\u06e4\u06e5\u06e8\u06da\u06d6\u06e2\u06da\u06df\u06ec\u06ec\u06df\u06db\u06dc\u06df\u06e1\u06e0\u06da\u06dc\u06dc\u06d8\u06d9\u06eb\u06df\u06d8\u06eb\u06d8\u06da\u06d8\u06d8\u06d8\u06e1\u06e1\u06db\u06d8\u06e5\u06d8\u06d7\u06e8\u06e2\u06e0\u06e7\u06dc\u06d8\u06d7\u06e5\u06d6"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e8\u06dc\u06e1\u06d8\u06db\u06da\u06e8\u06d8\u06df\u06e8\u06dc\u06e8\u06d6\u06e5\u06d8\u06db\u06db\u06df\u06db\u06ec\u06e7\u06da\u06d9\u06e4\u06db\u06e0\u06e1\u06d8\u06e4\u06e2\u06d6\u06d8\u06e4\u06db\u06dc\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06d8\u06d6\u06ec\u06e2\u06e2\u06d6\u06e7\u06e1\u06e1\u06ec\u06db\u06d8\u06d8\u06e1\u06e6\u06e7\u06da\u06e6\u06e4\u06eb\u06e8\u06e0\u06e8\u06eb\u06e5\u06ec\u06e2\u06e6\u06e1\u06e5\u06d6\u06d8\u06d9\u06eb\u06e6\u06df\u06d6\u06e1\u06e0\u06e6\u06d6\u06d8\u06eb\u06e5\u06d6"

    goto :goto_2

    :sswitch_8
    if-eqz v1, :cond_0

    const-string v0, "\u06e4\u06da\u06d7\u06d9\u06df\u06d7\u06d7\u06e8\u06e5\u06e5\u06e1\u06e7\u06da\u06dc\u06df\u06d9\u06e2\u06e1\u06e5\u06e7\u06df\u06ec\u06dc\u06e8\u06d9\u06e4\u06e8\u06d8\u06e4\u06e4\u06e1\u06da\u06e1\u06e1\u06e8\u06d8\u06e5\u06d8"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06e0\u06e6\u06dc\u06ec\u06df\u06d6\u06d8\u06e8\u06e6\u06d8\u06e6\u06db\u06d7\u06e4\u06eb\u06d7\u06d7\u06e1\u06e8\u06e5\u06e6\u06ec\u06e1\u06df\u06e1\u06d9\u06d6\u06e0\u06d9\u06e2\u06d8\u06e2\u06e7\u06e8\u06d8\u06d7\u06da\u06dc\u06d8"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06ec\u06e8\u06dc\u06d8\u06d7\u06e0\u06e6\u06d8\u06d7\u06e7\u06eb\u06d7\u06e0\u06da\u06d9\u06d8\u06df\u06d7\u06e2\u06db\u06e5\u06da\u06e6\u06d8\u06ec\u06e7\u06e7\u06e6\u06d7\u06e2\u06e2\u06df\u06dc\u06d8"

    goto :goto_0

    :sswitch_b
    invoke-interface {v1}, Lz2/wa;->OooO0o0()V

    const-string v0, "\u06d8\u06e1\u06da\u06e6\u06e8\u06ec\u06e6\u06e6\u06eb\u06db\u06e5\u06df\u06e8\u06d8\u06d6\u06e7\u06e4\u06eb\u06da\u06df\u06dc\u06d8\u06e0\u06df\u06e4\u06e1\u06d6\u06d9\u06eb\u06db\u06d7\u06db\u06dc\u06d7\u06d8\u06ec\u06e8\u06d8\u06dc\u06d8\u06e4\u06e6\u06da\u06e7\u06e0\u06db\u06e4\u06d7\u06dc\u06e7\u06d7\u06d9\u06dc\u06e0\u06e6"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06d8\u06e1\u06da\u06e6\u06e8\u06ec\u06e6\u06e6\u06eb\u06db\u06e5\u06df\u06e8\u06d8\u06d6\u06e7\u06e4\u06eb\u06da\u06df\u06dc\u06d8\u06e0\u06df\u06e4\u06e1\u06d6\u06d9\u06eb\u06db\u06d7\u06db\u06dc\u06d7\u06d8\u06ec\u06e8\u06d8\u06dc\u06d8\u06e4\u06e6\u06da\u06e7\u06e0\u06db\u06e4\u06d7\u06dc\u06e7\u06d7\u06d9\u06dc\u06e0\u06e6"

    goto :goto_0

    :sswitch_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2a2a60ea -> :sswitch_2
        -0x20691c43 -> :sswitch_0
        0x84cdcad -> :sswitch_3
        0x1f38447a -> :sswitch_d
        0x2ffa2efa -> :sswitch_b
        0x6e109d55 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7ad0530a -> :sswitch_6
        -0x63339db1 -> :sswitch_c
        -0x600766d2 -> :sswitch_a
        0x34f38731 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x7f8938cc -> :sswitch_7
        -0x4b00e415 -> :sswitch_5
        0x29ba26a3 -> :sswitch_9
        0x56902959 -> :sswitch_8
    .end sparse-switch
.end method

.method public OooO0oo()Z
    .locals 4

    const-string v0, "\u06e1\u06d6\u06df\u06e4\u06d8\u06e6\u06d8\u06da\u06e6\u06df\u06e6\u06e1\u06df\u06e7\u06e5\u06d6\u06d8\u06e4\u06d9\u06e8\u06e7\u06d9\u06e7\u06e4\u06ec\u06e4\u06e1\u06e1\u06d6\u06eb\u06d7\u06e6\u06d6\u06e4\u06d8\u06d6\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x27f

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2cf

    const/16 v2, 0x2a0

    const v3, -0x4dc39497

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06da\u06eb\u06df\u06e2\u06eb\u06e8\u06d6\u06d6\u06eb\u06da\u06e4\u06e4\u06e4\u06dc\u06d9\u06df\u06d6\u06e8\u06eb\u06e0\u06d8\u06d9\u06d9\u06e1\u06e2\u06df\u06e7\u06da\u06e1\u06d8\u06eb\u06d9\u06d8\u06e0\u06e6\u06d8\u06d8\u06e7\u06e4\u06e1\u06d8\u06d6\u06eb\u06df\u06e7\u06ec\u06e5\u06e1\u06d6\u06d6"

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OoooOoO:Z

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x72c2a3ce -> :sswitch_0
        -0x542b3df4 -> :sswitch_1
    .end sparse-switch
.end method

.method public OooOO0(II)V
    .locals 4

    const-string v0, "\u06e1\u06dc\u06db\u06eb\u06e6\u06d9\u06e8\u06da\u06e6\u06d8\u06e1\u06e2\u06e7\u06eb\u06d7\u06d7\u06eb\u06da\u06e7\u06d8\u06e6\u06eb\u06d8\u06dc\u06e1\u06e6\u06df\u06da\u06da\u06e4\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3d7

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xa9

    const/16 v2, 0xe6

    const v3, -0x764b0193

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06eb\u06e5\u06e1\u06e2\u06d7\u06d9\u06e2\u06d9\u06df\u06e6\u06e6\u06d8\u06e7\u06da\u06e4\u06e6\u06e1\u06d8\u06df\u06d6\u06e1\u06eb\u06e8\u06e2\u06d6\u06d7\u06e2\u06d7\u06d7\u06e5\u06d8\u06e8\u06ec\u06e1\u06da\u06da\u06eb\u06e7\u06e1\u06e6\u06e5\u06e0\u06e2"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e1\u06d6\u06d9\u06e4\u06d6\u06d8\u06d8\u06ec\u06e6\u06d8\u06df\u06e0\u06e8\u06e2\u06e8\u06e8\u06da\u06e6\u06e6\u06d8\u06db\u06e4\u06e1\u06d8\u06e0\u06e6\u06db\u06df\u06e1\u06e6\u06d8\u06e2\u06db\u06e1\u06d8\u06db\u06eb\u06ec\u06e8\u06d7\u06e0"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e6\u06e7\u06dc\u06e0\u06df\u06eb\u06e2\u06e2\u06da\u06da\u06df\u06ec\u06e8\u06e2\u06d8\u06d8\u06e2\u06d7\u06e8\u06e2\u06e6\u06d6\u06d8\u06d7\u06e1\u06e1\u06e0\u06e2\u06e2\u06dc\u06d9\u06d6\u06db\u06d8"

    goto :goto_0

    :sswitch_3
    iput p1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Ooooo00:I

    const-string v0, "\u06d7\u06eb\u06e1\u06d8\u06da\u06e4\u06dc\u06d8\u06eb\u06e5\u06e2\u06e8\u06e8\u06e0\u06e4\u06e5\u06d8\u06d7\u06dc\u06d7\u06eb\u06e7\u06eb\u06d6\u06ec\u06d9\u06ec\u06e5\u06da\u06dc\u06da\u06db\u06d8\u06e8\u06d8\u06db\u06e0\u06e0"

    goto :goto_0

    :sswitch_4
    sput p2, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OoooooO:I

    const-string v0, "\u06ec\u06e0\u06e2\u06e0\u06ec\u06e5\u06d8\u06e2\u06ec\u06e6\u06d9\u06e4\u06e8\u06d8\u06e4\u06e2\u06ec\u06db\u06e6\u06e5\u06d9\u06e8\u06d7\u06df\u06d8\u06ec\u06da\u06df\u06d6\u06d8\u06da\u06d7\u06db\u06ec\u06ec\u06ec\u06e0\u06ec\u06d6"

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->setScrollLoad(Z)V

    const-string v0, "\u06dc\u06e8\u06e8\u06d8\u06e7\u06e8\u06e8\u06d8\u06df\u06d6\u06eb\u06d7\u06e6\u06da\u06dc\u06d8\u06d9\u06d7\u06d8\u06eb\u06e8\u06e6\u06d8\u06d7\u06e8\u06db\u06e8\u06df\u06e0\u06e4\u06dc\u06e8\u06d8"

    goto :goto_0

    :sswitch_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x47b71661 -> :sswitch_0
        -0x43c78dce -> :sswitch_4
        -0x229d415b -> :sswitch_6
        0x2b6b62b8 -> :sswitch_2
        0x4032f174 -> :sswitch_1
        0x53ee30c1 -> :sswitch_5
        0x72785c79 -> :sswitch_3
    .end sparse-switch
.end method

.method public OooOO0O()Z
    .locals 6

    const/4 v2, 0x0

    const-string v0, "\u06e8\u06db\u06d8\u06d8\u06e1\u06db\u06e6\u06e2\u06d8\u06e0\u06e7\u06ec\u06e2\u06d8\u06e7\u06e5\u06e4\u06e0\u06dc\u06d8\u06e6\u06e5\u06e6\u06d8\u06e1\u06d7\u06d6\u06d8\u06e1\u06d8\u06d9\u06eb\u06e4\u06ec\u06e4\u06d9\u06ec\u06d8\u06d7\u06d7\u06e1\u06e6\u06d8\u06d6\u06da\u06ec"

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x165

    xor-int/2addr v3, v4

    xor-int/lit16 v3, v3, 0x30d

    const/16 v4, 0xe9

    const v5, -0x156d3fc9

    xor-int/2addr v3, v4

    xor-int/2addr v3, v5

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e1\u06d8\u06d8\u06e5\u06e2\u06e8\u06d8\u06d8\u06d8\u06e8\u06d8\u06e0\u06e0\u06dc\u06d7\u06e6\u06d8\u06d8\u06e1\u06d9\u06d7\u06e0\u06d8\u06eb\u06e4\u06d9\u06e4\u06e1\u06d9\u06da\u06e8\u06ec\u06d6\u06e0\u06d8\u06e6\u06d7\u06dc\u06eb\u06e2\u06e5\u06d8\u06db\u06e2\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Ooooo0o:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;

    const-string v0, "\u06e1\u06db\u06e0\u06e5\u06d9\u06e1\u06e5\u06e1\u06d8\u06e5\u06da\u06e6\u06e8\u06d8\u06e1\u06d8\u06e5\u06d6\u06d6\u06e7\u06e4\u06e5\u06d7\u06d9\u06e2\u06ec\u06e7\u06e5\u06d8\u06dc\u06eb\u06e6\u06e1\u06eb\u06d6\u06e0\u06d6"

    goto :goto_0

    :sswitch_2
    const v3, 0x32f76d18

    const-string v0, "\u06eb\u06e4\u06e2\u06e4\u06e2\u06df\u06e6\u06d9\u06e6\u06d6\u06e5\u06e1\u06d8\u06da\u06e4\u06d6\u06d8\u06e0\u06e0\u06e8\u06e2\u06e4\u06ec\u06e8\u06d9\u06e6\u06da\u06db\u06e6\u06df\u06e8\u06d7\u06ec\u06e6\u06d8\u06d7\u06e7\u06e5\u06d8\u06e1\u06e4\u06eb\u06d6\u06e7\u06d9"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06e5\u06e2\u06d8\u06e8\u06e8\u06e0\u06d9\u06d9\u06e2\u06d7\u06d9\u06da\u06da\u06d7\u06e5\u06d8\u06e8\u06d6\u06e7\u06df\u06d9\u06e0\u06da\u06db\u06df\u06e6\u06eb\u06db\u06da\u06ec\u06e6\u06ec\u06e2\u06e7\u06e1\u06e7\u06d6\u06ec\u06df\u06eb\u06da\u06da\u06da\u06ec\u06d6\u06e6\u06ec\u06eb\u06e7\u06e0\u06e6\u06d8\u06e5\u06d7\u06d7"

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06d7\u06db\u06dc\u06db\u06e7\u06e6\u06d8\u06e4\u06e6\u06d6\u06dc\u06e6\u06e1\u06d7\u06e1\u06e7\u06eb\u06df\u06db\u06e4\u06d8\u06e6\u06d8\u06da\u06e1\u06e8\u06eb\u06ec\u06d8\u06eb\u06e1"

    goto :goto_1

    :sswitch_5
    const v4, -0x2ae6be57

    const-string v0, "\u06d6\u06d6\u06eb\u06e7\u06df\u06d7\u06eb\u06e7\u06e8\u06d8\u06d6\u06d8\u06ec\u06e5\u06df\u06db\u06e2\u06e0\u06df\u06db\u06e0\u06e1\u06e0\u06da\u06db\u06d6\u06dc\u06d8\u06d6\u06db\u06e6\u06e4\u06dc\u06e6\u06d8\u06d7\u06e0\u06dc"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06d9\u06d6\u06d6\u06da\u06e5\u06dc\u06d8\u06e0\u06dc\u06e8\u06d9\u06e7\u06e0\u06d8\u06eb\u06ec\u06e0\u06d8\u06d7\u06e0\u06e4\u06ec\u06e4\u06d9\u06e2\u06d6\u06e5\u06d8\u06e4\u06e6\u06e2\u06db\u06db\u06e5\u06d8\u06e1\u06e6\u06d7\u06da\u06d6\u06d6\u06d8\u06e4\u06ec\u06d8\u06d8\u06da\u06df\u06d8\u06e0\u06e1\u06dc\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e5\u06da\u06db\u06ec\u06eb\u06e5\u06d8\u06db\u06d7\u06e1\u06d8\u06ec\u06e1\u06db\u06d8\u06d8\u06e5\u06d8\u06e1\u06d7\u06d8\u06e8\u06e5\u06e1\u06d8\u06d7\u06db\u06ec\u06d8\u06da\u06d6\u06d8\u06dc\u06ec\u06db\u06e2\u06e4\u06da\u06db\u06e6\u06e6\u06d6\u06e6\u06d6\u06dc\u06d7\u06dc\u06d6\u06e0\u06db\u06d9\u06e2\u06d8\u06d6\u06d6\u06d8\u06e8\u06df\u06d6\u06d8"

    goto :goto_2

    :sswitch_7
    if-eqz v1, :cond_0

    const-string v0, "\u06e6\u06e1\u06e0\u06db\u06d7\u06d6\u06d8\u06e1\u06df\u06e6\u06d8\u06db\u06da\u06e0\u06d9\u06eb\u06e5\u06e2\u06e4\u06d8\u06e8\u06db\u06e8\u06d8\u06e6\u06ec\u06df\u06db\u06d8\u06d6\u06da\u06e2\u06d8\u06d6\u06e0\u06e5\u06db\u06eb\u06d9\u06e1\u06ec\u06e5\u06e6\u06eb\u06d7\u06d9\u06e8\u06d8\u06d8\u06d9\u06db\u06e5\u06d8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d7\u06d9\u06e1\u06e5\u06e1\u06d8\u06e8\u06e4\u06dc\u06d8\u06e4\u06e4\u06d7\u06eb\u06da\u06e5\u06d8\u06e0\u06d6\u06d8\u06e0\u06e8\u06d8\u06eb\u06e4\u06d8\u06d8\u06eb\u06eb\u06dc\u06d8\u06dc\u06e5\u06df\u06d6\u06d9\u06dc\u06d9\u06e6\u06e1\u06da\u06d8\u06e2\u06e5\u06d7\u06e1\u06e8\u06e8\u06e5\u06df\u06d9\u06e8\u06d6\u06e8\u06df"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e5\u06d9\u06d7\u06e2\u06e8\u06d8\u06eb\u06e1\u06d8\u06d8\u06dc\u06dc\u06e8\u06d8\u06df\u06e7\u06d8\u06d8\u06da\u06ec\u06e2\u06eb\u06ec\u06d6\u06d8\u06e8\u06e8\u06e6\u06e2\u06ec\u06e8\u06d8\u06d7\u06e2\u06e2\u06ec\u06e1\u06db\u06e4\u06ec\u06d6\u06d8\u06e0\u06e4\u06d8\u06da\u06da\u06e6\u06d8"

    goto :goto_0

    :sswitch_a
    iput-object v2, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Ooooo0o:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;

    const-string v0, "\u06e8\u06df\u06e7\u06e4\u06e6\u06ec\u06e5\u06e6\u06e6\u06d6\u06e6\u06e2\u06d6\u06eb\u06e7\u06e1\u06e4\u06e6\u06e6\u06e4\u06db\u06d6\u06d6\u06d8\u06d8\u06e8\u06d8\u06d8\u06d9\u06d8\u06e6"

    goto :goto_0

    :sswitch_b
    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->removeFooterView(Landroid/view/View;)Z

    move-result v0

    :goto_3
    return v0

    :sswitch_c
    const/4 v0, 0x0

    goto :goto_3

    :sswitch_d
    const-string v0, "\u06eb\u06e0\u06eb\u06d6\u06df\u06e7\u06e7\u06e5\u06db\u06d7\u06df\u06e4\u06d9\u06ec\u06e5\u06e0\u06df\u06df\u06e7\u06e7\u06da\u06eb\u06e8\u06d7\u06e5\u06d6\u06e2\u06d9\u06e5\u06dc\u06d8\u06e1\u06df\u06d6\u06df\u06df\u06d8\u06d8\u06e2\u06e2\u06d9\u06d6\u06d7\u06e8\u06d6\u06e4\u06e2\u06d8\u06dc\u06d8"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x7c55080e -> :sswitch_b
        -0x60e498c4 -> :sswitch_1
        -0x5abd296c -> :sswitch_c
        -0x1a267b6b -> :sswitch_a
        0x71961a4 -> :sswitch_0
        0x7c9e77c5 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x6bc2e844 -> :sswitch_9
        -0x64ab5293 -> :sswitch_d
        -0x4a3bd4f6 -> :sswitch_5
        -0x3fe4fb89 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x3c6b7c19 -> :sswitch_4
        -0xbdc85de -> :sswitch_7
        0x2df3994f -> :sswitch_6
        0x3ffd309a -> :sswitch_8
    .end sparse-switch
.end method

.method public OooOO0o(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06ec\u06e8\u06df\u06d8\u06e7\u06dc\u06da\u06d9\u06e1\u06e6\u06e8\u06da\u06d8\u06dc\u06d8\u06df\u06d8\u06d7\u06dc\u06d9\u06da\u06dc\u06d6\u06e1\u06e6\u06e5\u06e4\u06eb\u06dc\u06d6\u06eb\u06d8\u06db\u06d9\u06e7\u06e8\u06db\u06e0\u06e8\u06d8\u06db\u06d8\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x371

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x234

    const/16 v2, 0x26f

    const v3, 0x3563eae2

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06e7\u06e5\u06eb\u06da\u06e8\u06d8\u06db\u06d8\u06e5\u06d8\u06e7\u06d9\u06ec\u06df\u06e8\u06db\u06df\u06e0\u06e8\u06d8\u06df\u06da\u06dc\u06e4\u06dc\u06ec\u06da\u06e6\u06ec\u06e7\u06ec\u06ec\u06ec\u06d6\u06e6\u06d8\u06e5\u06da\u06e1\u06d9\u06db\u06da\u06d7\u06d9\u06dc\u06eb\u06e5\u06e6\u06d7\u06e5\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06e2\u06d9\u06e4\u06d7\u06e1\u06d8\u06e5\u06dc\u06e1\u06d8\u06e0\u06d7\u06db\u06ec\u06d8\u06e6\u06db\u06e8\u06eb\u06ec\u06e0\u06d9\u06d6\u06e7\u06da\u06e4\u06e8\u06dc\u06dc\u06d8\u06e2\u06e1\u06df\u06e4\u06e0\u06e1\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OooOO0O()Z

    const-string v0, "\u06d8\u06e1\u06d8\u06d8\u06d8\u06dc\u06e6\u06d8\u06ec\u06eb\u06e6\u06d6\u06d8\u06d9\u06e5\u06e8\u06da\u06e7\u06e8\u06d9\u06e7\u06d7\u06e0\u06e0\u06e0\u06e2\u06e7\u06df\u06e4\u06d8\u06e5\u06d8\u06e1\u06ec\u06e2\u06eb\u06e4\u06e1\u06e7\u06e4\u06e4\u06eb\u06db\u06d6"

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OooO0o(Landroid/view/View;)V

    const-string v0, "\u06da\u06e1\u06ec\u06e6\u06e1\u06d8\u06db\u06e2\u06d9\u06da\u06e8\u06e6\u06d8\u06e8\u06df\u06e0\u06e2\u06e4\u06e1\u06d8\u06eb\u06e2\u06e4\u06e7\u06e6\u06e7\u06ec\u06e0\u06d6\u06da\u06dc\u06d8\u06d8\u06e5\u06e5\u06d7\u06eb\u06dc\u06e0\u06e2\u06df\u06e8\u06d8\u06e7\u06ec\u06e6\u06d8"

    goto :goto_0

    :sswitch_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d79cf36 -> :sswitch_0
        -0x2660302b -> :sswitch_4
        -0x1ba2860b -> :sswitch_2
        0x5a15e939 -> :sswitch_3
        0x6199b884 -> :sswitch_1
    .end sparse-switch
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5

    const/4 v2, 0x0

    const-string v0, "\u06df\u06e0\u06e6\u06d8\u06e6\u06eb\u06ec\u06e1\u06d9\u06da\u06e5\u06e8\u06e8\u06e0\u06db\u06d8\u06d8\u06e5\u06da\u06da\u06df\u06e8\u06e0\u06e8\u06d6\u06dc\u06e0\u06d9\u06e6\u06dc\u06d7\u06db\u06db\u06e1\u06d8\u06ec\u06e8\u06d7\u06d9\u06db\u06d7\u06da\u06d9\u06d6\u06e0\u06e8\u06df\u06e2\u06e4"

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x304

    xor-int/2addr v0, v3

    xor-int/lit16 v0, v0, 0x16b

    const/16 v3, 0x3c

    const v4, 0x920bd64

    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06df\u06e4\u06e1\u06db\u06e4\u06e8\u06dc\u06e5\u06d9\u06e1\u06d8\u06d9\u06db\u06e6\u06eb\u06d9\u06e8\u06d8\u06ec\u06d8\u06e0\u06d7\u06ec\u06e8\u06d8\u06dc\u06dc\u06e5\u06db\u06e8\u06e1\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06dc\u06e1\u06d9\u06d7\u06dc\u06e2\u06e8\u06e4\u06df\u06da\u06d9\u06d9\u06da\u06e8\u06d8\u06e2\u06e7\u06e8\u06d8\u06e0\u06df\u06df\u06e2\u06e2\u06e0\u06e7\u06e7\u06ec\u06dc\u06e5\u06e2\u06db\u06df\u06e2\u06e2\u06dc\u06d9\u06dc\u06d8\u06da\u06eb\u06e5\u06e8\u06e7\u06e5\u06e5\u06e4\u06e0\u06d6\u06d9\u06d8\u06d8\u06e7\u06e7\u06d7"

    move-object v1, v0

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e6\u06e2\u06e1\u06d8\u06e1\u06ec\u06e6\u06e2\u06df\u06e8\u06e0\u06df\u06dc\u06e8\u06d9\u06e8\u06d8\u06e7\u06d6\u06db\u06eb\u06d7\u06ec\u06d8\u06d7\u06e5\u06e6\u06e6\u06d8\u06e1\u06e2\u06dc\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06d6\u06da\u06e1\u06e7\u06ec\u06dc\u06d8\u06e0\u06da\u06e1\u06d8\u06d8\u06da\u06e4\u06dc\u06d9\u06e5\u06d8\u06e5\u06e7\u06e5\u06d8\u06d7\u06d6\u06e7\u06ec\u06e0\u06d6\u06d8\u06d8\u06e8\u06d8\u06e8\u06eb\u06da\u06d6\u06e5\u06d8\u06d6\u06e2\u06e0\u06df\u06e1\u06e6\u06d8\u06e8\u06d6\u06da\u06e1\u06e6\u06d9\u06db\u06e4"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    const v1, -0x7683ab98

    const-string v0, "\u06d9\u06da\u06d9\u06d8\u06e7\u06db\u06df\u06da\u06d9\u06e2\u06df\u06e2\u06e5\u06d8\u06e8\u06e6\u06da\u06d6\u06df\u06d9\u06d8\u06dc\u06d6\u06d8\u06eb\u06e7\u06d6\u06e1\u06e4\u06d7\u06da\u06e7\u06e1\u06d8\u06db\u06d8\u06dc\u06e2\u06eb\u06e5\u06db\u06e5\u06e8\u06d8\u06d7\u06dc\u06e2\u06e2\u06e1\u06e7\u06d8\u06e6\u06e4\u06e7\u06e7\u06d8\u06e8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06e4\u06d7\u06d8\u06d8\u06db\u06d8\u06e1\u06df\u06d8\u06e6\u06e7\u06d6\u06d7\u06d9\u06e5\u06dc\u06d8\u06da\u06e4\u06d7\u06d9\u06e4\u06e2\u06e0\u06e7\u06da\u06eb\u06df\u06e5\u06d8\u06db\u06d9\u06e8"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    const-string v0, "\u06e1\u06e5\u06d9\u06e2\u06d9\u06d8\u06d9\u06d8\u06d8\u06d8\u06db\u06e1\u06d7\u06e4\u06eb\u06df\u06eb\u06e1\u06dc\u06d9\u06e7\u06d6\u06d8\u06e4\u06e7\u06d8\u06d8\u06df\u06d8\u06d6\u06d8\u06e5\u06d7\u06d9\u06e0\u06e8\u06e6\u06d8\u06db\u06d9\u06e7"

    goto :goto_1

    :sswitch_7
    const v3, 0x3ac1a54d

    const-string v0, "\u06e2\u06db\u06e1\u06e6\u06e6\u06e6\u06d8\u06d9\u06e4\u06d6\u06e1\u06dc\u06d6\u06e0\u06d9\u06e8\u06d8\u06dc\u06d6\u06ec\u06ec\u06e6\u06e2\u06eb\u06db\u06db\u06e5\u06e2\u06d9\u06eb\u06db\u06eb\u06e5\u06e5\u06ec\u06eb\u06d7\u06dc"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e1\u06d8\u06e8\u06e6\u06e5\u06db\u06da\u06dc\u06e5\u06d8\u06e2\u06e8\u06d9\u06ec\u06dc\u06e6\u06d8\u06d6\u06d8\u06e0\u06e8\u06e6\u06e6\u06d8\u06db\u06e7\u06db\u06d9\u06dc\u06dc\u06e2\u06dc\u06d6\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06d9\u06eb\u06ec\u06e5\u06e8\u06e1\u06d8\u06dc\u06e2\u06d6\u06eb\u06d8\u06e1\u06d7\u06e0\u06e1\u06e1\u06e6\u06e5\u06d8\u06d9\u06dc\u06e6\u06dc\u06d6\u06eb\u06e0\u06e0\u06eb\u06e7\u06ec\u06d8\u06d8\u06db\u06e0\u06d8\u06d8\u06e4\u06e0\u06e6\u06d6\u06d6\u06d6\u06d8\u06dc\u06d6\u06e4\u06e6\u06d7\u06e0\u06e2\u06ec\u06db"

    goto :goto_2

    :sswitch_9
    instance-of v0, p1, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;

    if-eqz v0, :cond_0

    const-string v0, "\u06eb\u06ec\u06e5\u06d8\u06d7\u06d7\u06db\u06e2\u06dc\u06d8\u06d8\u06d8\u06ec\u06e6\u06d8\u06e2\u06e6\u06d6\u06d8\u06df\u06e0\u06db\u06df\u06eb\u06e7\u06e4\u06e7\u06d8\u06d8\u06d9\u06da\u06e5\u06d8\u06e0\u06e8\u06d7\u06e4\u06dc\u06e4\u06e7\u06e6\u06e4"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06e4\u06d7\u06e0\u06db\u06e4\u06dc\u06e0\u06df\u06df\u06dc\u06e8\u06eb\u06d6\u06eb\u06e8\u06e5\u06ec\u06e8\u06da\u06df\u06eb\u06e5\u06d9\u06d9\u06eb\u06e5\u06d7\u06e0\u06d8\u06d6"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06e6\u06d7\u06e6\u06d8\u06e1\u06e6\u06d8\u06e8\u06e7\u06d9\u06e5\u06e4\u06e6\u06d9\u06da\u06db\u06d6\u06e4\u06df\u06e1\u06e5\u06d8\u06d7\u06e4\u06eb\u06dc\u06e8\u06e2\u06dc\u06d8\u06df\u06e8\u06ec\u06d7\u06e0\u06e2\u06e1\u06da\u06e2\u06df\u06e7\u06e2\u06dc\u06e4\u06d8\u06e6\u06d8\u06e2\u06e6\u06e6\u06d8"

    goto :goto_1

    :sswitch_c
    const v1, -0x6e5c74de

    const-string v0, "\u06db\u06e5\u06e0\u06db\u06e5\u06e7\u06da\u06db\u06e6\u06db\u06d9\u06e1\u06e0\u06db\u06d9\u06d8\u06dc\u06d8\u06d7\u06e1\u06da\u06d9\u06dc\u06d8\u06eb\u06e4\u06e4\u06d7\u06e2\u06d6"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_d
    const-string v0, "\u06e6\u06d6\u06e4\u06e4\u06e5\u06dc\u06d8\u06d9\u06d8\u06e4\u06eb\u06d9\u06eb\u06e0\u06e5\u06e1\u06e8\u06e8\u06e2\u06e7\u06e5\u06da\u06e5\u06db\u06eb\u06e8\u06d7\u06d6\u06e7\u06ec"

    goto :goto_3

    :sswitch_e
    const-string v0, "\u06db\u06d6\u06e6\u06dc\u06e2\u06d8\u06d8\u06dc\u06d7\u06e0\u06e0\u06e4\u06e5\u06e4\u06d8\u06e6\u06d8\u06e0\u06d8\u06d8\u06d8\u06e0\u06df\u06e1\u06d8\u06d7\u06e6\u06e2\u06e5\u06d7\u06d8\u06d6\u06e4\u06e1\u06da\u06dc\u06db\u06e0\u06db\u06d8\u06df\u06df\u06d6\u06e1\u06d6\u06dc\u06d8\u06df\u06d8\u06e7\u06d8\u06d8\u06e7\u06dc\u06d8"

    goto :goto_3

    :sswitch_f
    const v3, -0x1b80bd50

    const-string v0, "\u06df\u06e5\u06e5\u06ec\u06db\u06d8\u06d8\u06e2\u06d6\u06e1\u06eb\u06ec\u06e7\u06e2\u06d9\u06db\u06ec\u06eb\u06da\u06df\u06eb\u06ec\u06e8\u06e4\u06d8\u06d9\u06dc\u06dc\u06d8\u06e0\u06e1\u06db\u06e2\u06e6\u06da\u06df\u06ec\u06dc\u06ec\u06e4\u06db\u06dc\u06d6\u06db\u06db\u06e4\u06d8\u06e5\u06e1\u06dc\u06ec\u06e5\u06e1\u06d8\u06e7\u06d7\u06e6"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_4

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06d8\u06d8\u06d9\u06e7\u06db\u06e1\u06d8\u06dc\u06dc\u06e6\u06e2\u06db\u06e0\u06e5\u06e7\u06d7\u06e7\u06e7\u06e1\u06d7\u06eb\u06da\u06e2\u06e8\u06d9\u06ec\u06d8\u06e6\u06d8\u06dc\u06db\u06d6\u06d8\u06eb\u06da\u06e0\u06ec\u06d8\u06ec\u06eb\u06e5\u06e0\u06eb\u06eb\u06dc\u06d8"

    goto :goto_4

    :cond_1
    const-string v0, "\u06dc\u06d7\u06e6\u06d8\u06e4\u06e6\u06ec\u06ec\u06d9\u06e8\u06d8\u06df\u06dc\u06d6\u06d9\u06e6\u06db\u06db\u06dc\u06df\u06e4\u06e1\u06da\u06e7\u06d7\u06d7\u06e6\u06db\u06e5\u06d8\u06eb\u06df\u06e8\u06d8\u06e2\u06d9\u06e2\u06e7\u06e1\u06d6\u06d8\u06da\u06e2\u06d6\u06eb\u06e4\u06e7\u06d8\u06e4\u06df\u06da\u06e5\u06d7\u06d9\u06d9\u06e4\u06eb\u06db"

    goto :goto_4

    :sswitch_11
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Ooooo0o:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;

    if-nez v0, :cond_1

    const-string v0, "\u06e5\u06e0\u06da\u06db\u06df\u06dc\u06da\u06df\u06d8\u06d8\u06e7\u06e8\u06d7\u06d9\u06d7\u06df\u06dc\u06e0\u06e0\u06e6\u06d7\u06e7\u06db\u06eb\u06e2\u06e5\u06e6\u06e7\u06e7\u06e6\u06d8\u06ec\u06e1\u06eb\u06e0\u06db\u06e1\u06d8\u06e7\u06db\u06e4\u06d7\u06db\u06e2\u06db\u06da\u06e1\u06d8\u06d7\u06eb\u06da"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06d6\u06db\u06d8\u06d8\u06e0\u06e6\u06df\u06d9\u06e4\u06e5\u06d6\u06db\u06dc\u06d8\u06ec\u06df\u06dc\u06e2\u06df\u06e2\u06e1\u06d7\u06e6\u06d8\u06dc\u06eb\u06d8\u06dc\u06d6\u06e4\u06d9\u06e5\u06db\u06dc\u06e6\u06ec\u06e0\u06dc\u06d8\u06e0\u06e1\u06e1\u06d8\u06eb\u06dc\u06da\u06e7\u06e0\u06d6\u06d7\u06e2\u06d8\u06d8"

    goto :goto_3

    :sswitch_13
    const-string v0, "\u06db\u06e4\u06e8\u06d6\u06e1\u06df\u06db\u06ec\u06e7\u06eb\u06e4\u06df\u06e0\u06e7\u06e7\u06e2\u06e7\u06d7\u06d9\u06df\u06d8\u06ec\u06d6\u06db\u06d9\u06e2\u06e7\u06e5\u06e4\u06eb\u06ec\u06e6\u06eb\u06d8\u06d8O\u06df\u06e7\u06dc\u06dc\u06e2\u06d8\u06d8\u06d7\u06e4\u06d6\u06e5\u06e7\u06e6\u06d8\u06da\u06e6\u06dc"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_14
    move-object v0, p1

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;

    const-string v1, "\u06e0\u06da\u06eb\u06e0\u06e0\u06e6\u06d8\u06d7\u06e5\u06e1\u06da\u06e7\u06e2\u06ec\u06e1\u06eb\u06e0\u06db\u06d7\u06e2\u06da\u06e4\u06eb\u06e5\u06ec\u06e7\u06d8\u06ec\u06e7\u06dc\u06d6\u06d8\u06d9\u06e5\u06db\u06ec\u06e8\u06ec\u06e7\u06df\u06e7\u06db\u06da\u06e8"

    move-object v2, v0

    goto/16 :goto_0

    :sswitch_15
    iput-object v2, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Ooooo0o:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;

    const-string v0, "\u06e4\u06e5\u06dc\u06d8\u06e6\u06ec\u06df\u06db\u06d7\u06e8\u06d8\u06d6\u06da\u06e0\u06e4\u06d6\u06e4\u06e0\u06e6\u06db\u06ec\u06e2\u06e2\u06e5\u06d6\u06d8\u06eb\u06d6\u06e6\u06d8\u06e1\u06d8\u06d6\u06d8\u06e8\u06e0\u06df\u06eb\u06ec\u06ec"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_16
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OooooO0:Lz2/ua;

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;->setCallBack(Lz2/ua;)V

    const-string v0, "\u06e4\u06d9\u06e8\u06d7\u06e7\u06e8\u06d6\u06e7\u06db\u06eb\u06e7\u06e8\u06db\u06e8\u06e5\u06eb\u06dc\u06ec\u06d7\u06e1\u06ec\u06e4\u06d9\u06e8\u06e6\u06d6\u06e5\u06e6\u06d6\u06e0\u06dc\u06e1\u06eb\u06ec\u06d6\u06d8\u06ec\u06e1\u06ec\u06e8\u06dc\u06e7\u06ec\u06eb\u06d6\u06d6\u06e2\u06e5\u06d8\u06d7\u06d6\u06dc\u06d8\u06d8\u06e2\u06e2"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_17
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    const-string v0, "\u06e4\u06d8\u06dc\u06d8\u06df\u06e4\u06e8\u06d7\u06e6\u06d6\u06e6\u06db\u06db\u06e4\u06e8\u06d8\u06e5\u06d9\u06d6\u06d8\u06e2\u06e6\u06d8\u06e5\u06d6\u06d9\u06e2\u06e0\u06e2\u06e7\u06ec\u06d8\u06d8\u06d7\u06d8\u06e0\u06d7\u06e0\u06e4\u06e6\u06dc\u06e5\u06ec\u06d7\u06e2\u06da\u06e2\u06d8\u06e8\u06d6\u06e8\u06d8\u06e5\u06ec\u06dc\u06db\u06dc\u06e1\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "\u06e4\u06d9\u06e8\u06d7\u06e7\u06e8\u06d6\u06e7\u06db\u06eb\u06e7\u06e8\u06db\u06e8\u06e5\u06eb\u06dc\u06ec\u06d7\u06e1\u06ec\u06e4\u06d9\u06e8\u06e6\u06d6\u06e5\u06e6\u06d6\u06e0\u06dc\u06e1\u06eb\u06ec\u06d6\u06d8\u06ec\u06e1\u06ec\u06e8\u06dc\u06e7\u06ec\u06eb\u06d6\u06d6\u06e2\u06e5\u06d8\u06d7\u06d6\u06dc\u06d8\u06d8\u06e2\u06e2"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_19
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x724f9bf3 -> :sswitch_1
        -0x6d00ac29 -> :sswitch_19
        -0x6449bd84 -> :sswitch_14
        -0x5688fcda -> :sswitch_0
        -0x4862434e -> :sswitch_4
        0x13597a16 -> :sswitch_17
        0x378f3d0b -> :sswitch_15
        0x538333fd -> :sswitch_2
        0x62077699 -> :sswitch_c
        0x6468a309 -> :sswitch_3
        0x6da6069b -> :sswitch_16
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x61d2098b -> :sswitch_5
        -0x385b1a85 -> :sswitch_b
        -0x27bab6aa -> :sswitch_7
        0x482812a2 -> :sswitch_18
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x1aacc1ce -> :sswitch_a
        0x2e30fbe2 -> :sswitch_6
        0x4e030868 -> :sswitch_9
        0x5c2f320e -> :sswitch_8
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x1a1780ba -> :sswitch_13
        0x4495a35b -> :sswitch_18
        0x51827576 -> :sswitch_d
        0x7f7a9c42 -> :sswitch_f
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x6a8e8ed3 -> :sswitch_11
        -0x24f8001a -> :sswitch_12
        0x2c7b8489 -> :sswitch_e
        0x68228f4c -> :sswitch_10
    .end sparse-switch
.end method

.method public getFootView()Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;
    .locals 4

    const-string v0, "\u06e1\u06da\u06e0\u06db\u06eb\u06e5\u06e1\u06db\u06d8\u06d8\u06e0\u06e5\u06da\u06d7\u06db\u06dc\u06df\u06eb\u06ec\u06da\u06eb\u06d8\u06ec\u06d9\u06e8\u06e4\u06db\u06e6\u06d8\u06da\u06e6\u06e6\u06d8\u06e4\u06df\u06d6\u06e6\u06da\u06dc\u06e6\u06e2\u06db\u06d9\u06ec\u06d8\u06e7\u06d9\u06e1\u06d8\u06e6\u06e4\u06da\u06dc\u06e1\u06e6\u06d8\u06d9\u06db\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1b3

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x359

    const/16 v2, 0x385

    const v3, 0x4cda00c7    # 1.14296376E8f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06ec\u06e6\u06eb\u06e7\u06e7\u06eb\u06e5\u06ec\u06d8\u06e5\u06e0\u06e7\u06e0\u06ec\u06e6\u06ec\u06d8\u06e8\u06ec\u06d8\u06eb\u06e2\u06d8\u06e2\u06e6\u06db\u06dc\u06e6\u06eb\u06d8\u06d8\u06e4\u06e2\u06e4\u06e1\u06e1\u06e6\u06e4\u06e0\u06e7\u06e8\u06d7\u06e6\u06e0\u06d9\u06e4"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Ooooo0o:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x73693ad3 -> :sswitch_0
        -0x47f4a2c2 -> :sswitch_1
    .end sparse-switch
.end method

.method public getPageSize()I
    .locals 4

    const-string v0, "\u06e0\u06e1\u06e5\u06d8\u06e5\u06e7\u06d7\u06d7\u06d7\u06e5\u06d8\u06dc\u06d8\u06e6\u06d8\u06d7\u06d9\u06e2\u06e1\u06e8\u06d8\u06d7\u06d6\u06e5\u06d8\u06e5\u06e7\u06e1\u06d8\u06db\u06d6\u06e2\u06da\u06e1\u06eb\u06e8\u06d9\u06d9\u06e7\u06db\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x32a

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x29a

    const/16 v2, 0x92

    const v3, -0x125a6a83

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06d8\u06eb\u06df\u06e6\u06e6\u06df\u06d7\u06e5\u06db\u06e1\u06e5\u06d7\u06dc\u06d8\u06d9\u06d7\u06d7\u06eb\u06e8\u06e2\u06e0\u06db\u06dc\u06d9\u06d6\u06d8\u06eb\u06d6\u06e7\u06d8\u06d6\u06dc\u06df\u06e0\u06e4\u06da\u06d9\u06d8\u06d8\u06e5\u06e4\u06e5\u06d8\u06e2\u06e2\u06e6\u06d8\u06e2\u06e4\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Ooooo00:I

    return v0

    :sswitch_data_0
    .sparse-switch
        0x47f1b9bd -> :sswitch_1
        0x640d0221 -> :sswitch_0
    .end sparse-switch
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06dc\u06d9\u06e5\u06d8\u06d6\u06eb\u06db\u06e4\u06e1\u06e0\u06d8\u06dc\u06d6\u06e5\u06e4\u06e6\u06d8\u06d9\u06d6\u06d8\u06d6\u06e5\u06e2\u06d9\u06d7\u06e1\u06d8\u06df\u06dc\u06e1\u06e4\u06d7\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x236

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x2b2

    const/16 v3, 0x6c

    const v4, 0x16701fc9

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e6\u06df\u06dc\u06e0\u06db\u06e5\u06d9\u06db\u06e8\u06e1\u06eb\u06e8\u06e5\u06d8\u06eb\u06e7\u06e7\u06e7\u06e7\u06d9\u06e4\u06df\u06e2\u06d8\u06d9\u06d8\u06d8\u06e6\u06d8\u06e8\u06d8\u06e7\u06e6\u06e5\u06d8\u06e5\u06e5\u06e6\u06e4\u06e2\u06d8\u06e4\u06e2\u06e7\u06e7\u06e4\u06e1\u06d8\u06e4\u06d9\u06e8\u06dc\u06e8\u06d9"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d8\u06e7\u06e6\u06d8\u06ec\u06eb\u06e1\u06eb\u06e8\u06d8\u06da\u06d8\u06d6\u06d8\u06d9\u06d9\u06e6\u06d8\u06d6\u06e7\u06e5\u06d8\u06d7\u06db\u06e4\u06df\u06d9\u06e4\u06d6\u06d7\u06dc\u06d8\u06dc\u06db\u06e8\u06d8\u06dc\u06db\u06e1\u06df\u06e1\u06e1\u06e6\u06e6\u06d8\u06e1\u06df\u06e4"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e8\u06e4\u06d9\u06d9\u06d6\u06e2\u06e4\u06da\u06e8\u06d8\u06e1\u06e4\u06da\u06e4\u06e5\u06e8\u06d8\u06eb\u06d8\u06e5\u06d8\u06e5\u06da\u06d7\u06e7\u06e0\u06db\u06e2\u06e1\u06e8\u06d8\u06da\u06dc\u06e8\u06d6\u06df\u06dc\u06d8\u06d9\u06e0\u06df\u06e8\u06e4\u06e6\u06e2\u06d9\u06d7\u06ec\u06d8\u06dc\u06e0\u06e7\u06e6\u06e0\u06e8\u06d8\u06e7\u06eb\u06e1"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06d8\u06d7\u06d7\u06d6\u06e4\u06e2\u06ec\u06e0\u06e6\u06d8\u06df\u06e5\u06dc\u06dc\u06eb\u06d6\u06e7\u06eb\u06e8\u06d6\u06d8\u06df\u06e5\u06e5\u06d8\u06da\u06e4\u06d6\u06e4\u06eb\u06d8\u06d9\u06e1\u06d9\u06e6\u06e0\u06e2"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u06da\u06e8\u06d8\u06d8\u06dc\u06e4\u06da\u06eb\u06e6\u06e1\u06d8\u06e4\u06d9\u06e0\u06df\u06d8\u06d8\u06dc\u06ec\u06d6\u06d6\u06dc\u06d6\u06e2\u06dc\u06d8\u06da\u06da\u06d8\u06e8\u06d8\u06e6\u06d8\u06e2\u06e0\u06e0\u06e8\u06e6\u06e5\u06e8\u06ec\u06db\u06e5\u06e5\u06e6\u06d8"

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Oooooo:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView$OooO00o;

    const-string v0, "\u06e5\u06d9\u06e0\u06d8\u06eb\u06d8\u06d8\u06e5\u06d8\u06e1\u06e6\u06d9\u06e0\u06e4\u06e1\u06d8\u06e1\u06e7\u06d8\u06db\u06e6\u06d6\u06d8\u06db\u06eb\u06e4\u06df\u06e1\u06e5\u06e6\u06d6\u06e7\u06d8"

    goto :goto_0

    :sswitch_6
    const v2, 0x20c6d0bc

    const-string v0, "\u06d7\u06e1\u06e8\u06d8\u06d8\u06df\u06eb\u06df\u06d9\u06e5\u06d8\u06e6\u06d7\u06e0\u06d8\u06db\u06e1\u06df\u06e4\u06d6\u06d6\u06e2\u06e5\u06d8\u06e6\u06e0\u06da\u06e1\u06ec\u06dc\u06d9\u06e1\u06e4\u06e0\u06e1\u06dc\u06d8\u06e5\u06e2\u06e8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_7
    const-string v0, "\u06d7\u06e1\u06d8\u06eb\u06dc\u06d6\u06d8\u06e8\u06e1\u06e4\u06d7\u06da\u06d8\u06d8\u06e2\u06df\u06e8\u06d8\u06d6\u06e1\u06e6\u06d8\u06e2\u06d8\u06eb\u06e5\u06da\u06d9\u06d9\u06e4\u06e7\u06e4\u06d6\u06dc\u06e7\u06e4\u06df\u06e1\u06da"

    goto :goto_0

    :sswitch_8
    const-string v0, "\u06e1\u06e2\u06db\u06e6\u06d9\u06eb\u06d6\u06dc\u06dc\u06d8\u06d8\u06df\u06ec\u06e1\u06e7\u06e8\u06d8\u06e7\u06eb\u06e6\u06e5\u06e6\u06e5\u06d9\u06e2\u06e4\u06d8\u06df\u06db\u06db\u06dc\u06e1"

    goto :goto_1

    :sswitch_9
    const v3, 0x6c977582

    const-string v0, "\u06e1\u06e7\u06e1\u06e0\u06e1\u06e7\u06d8\u06da\u06eb\u06e8\u06d8\u06e5\u06d8\u06e6\u06e5\u06d6\u06da\u06d7\u06e4\u06eb\u06d9\u06d9\u06e5\u06df\u06d8\u06d9\u06e8\u06e1\u06e8\u06dc\u06eb\u06df\u06da\u06db\u06e7\u06d8\u06df\u06d7\u06e0\u06e5\u06e2\u06d9\u06d8\u06e7\u06d8\u06e1\u06df\u06db\u06d9\u06d7\u06dc\u06d8\u06e2\u06da\u06e4\u06dc\u06e6\u06e7"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06e6\u06df\u06d6\u06d8\u06e4\u06d6\u06e7\u06eb\u06e8\u06e7\u06d8\u06e7\u06db\u06e0\u06da\u06e2\u06eb\u06e5\u06da\u06df\u06dc\u06d6\u06ec\u06d6\u06e8\u06e6\u06e0\u06ec\u06d7\u06e8\u06e5\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e6\u06e5\u06e1\u06e2\u06df\u06e8\u06d8\u06e2\u06eb\u06e7\u06e1\u06e1\u06dc\u06d8\u06ec\u06d9\u06e4\u06ec\u06e2\u06e1\u06d8\u06eb\u06da\u06e1\u06d8\u06ec\u06d6\u06dc\u06d8\u06e8\u06e7\u06d6\u06d8\u06e0\u06da\u06da\u06e4\u06d8\u06e2\u06e8\u06d6\u06d7"

    goto :goto_2

    :sswitch_b
    if-eqz v1, :cond_0

    const-string v0, "\u06db\u06db\u06e8\u06d8\u06d6\u06df\u06e1\u06d8\u06dc\u06db\u06e6\u06d8\u06e6\u06d7\u06d8\u06e5\u06e2\u06d9\u06e7\u06ec\u06e1\u06d8\u06e8\u06d9\u06e6\u06d8\u06d7\u06da\u06df\u06d8\u06e0\u06da\u06e0\u06eb\u06d6\u06d8\u06dc\u06e6\u06e6\u06d8\u06e5\u06d6\u06e6"

    goto :goto_2

    :sswitch_c
    const-string v0, "\u06e7\u06d8\u06e1\u06d8\u06d9\u06d9\u06e2\u06e8\u06e5\u06d8\u06db\u06e2\u06e1\u06d9\u06d7\u06eb\u06eb\u06d7\u06d8\u06d8\u06e8\u06d8\u06e6\u06d8\u06e8\u06d6\u06db\u06e2\u06e8\u06ec\u06e5\u06dc\u06df\u06d7\u06df\u06d8\u06d8\u06eb\u06da\u06db\u06df\u06e8\u06da\u06d6\u06e1\u06dc\u06d8\u06e0\u06df\u06d8\u06d8\u06e0\u06e5"

    goto :goto_1

    :sswitch_d
    const-string v0, "\u06d8\u06e5\u06e4\u06d8\u06eb\u06dc\u06d8\u06e4\u06e2\u06dc\u06d8\u06d6\u06d8\u06e1\u06d8\u06ec\u06e2\u06e5\u06e2\u06e7\u06ec\u06eb\u06e7\u06d6\u06dc\u06d7\u06e7\u06d6\u06db\u06e5\u06e0\u06e8\u06eb\u06d6\u06e0\u06ec\u06dc\u06e2\u06e0\u06eb\u06eb\u06e1\u06e5\u06e4\u06da"

    goto :goto_1

    :sswitch_e
    const-string v0, "\u06db\u06e2\u06e7\u06e5\u06df\u06d7\u06e6\u06df\u06d8\u06dc\u06e0\u06df\u06ec\u06e7\u06d6\u06e6\u06e7\u06e7\u06ec\u06e2\u06e1\u06e6\u06d7\u06e5\u06e8\u06e1\u06e4\u06e1\u06db\u06e4\u06df\u06df\u06ec\u06e2\u06e0\u06e5\u06e7\u06da\u06e5\u06d8\u06e6\u06e1\u06e5\u06db\u06e4\u06df\u06db\u06eb\u06d9\u06dc\u06e2\u06d8\u06eb\u06eb\u06e5\u06d8"

    goto :goto_0

    :sswitch_f
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView$OooO00o;->onScroll(Landroid/widget/AbsListView;III)V

    const-string v0, "\u06d7\u06e1\u06d8\u06eb\u06dc\u06d6\u06d8\u06e8\u06e1\u06e4\u06d7\u06da\u06d8\u06d8\u06e2\u06df\u06e8\u06d8\u06d6\u06e1\u06e6\u06d8\u06e2\u06d8\u06eb\u06e5\u06da\u06d9\u06d9\u06e4\u06e7\u06e4\u06d6\u06dc\u06e7\u06e4\u06df\u06e1\u06da"

    goto :goto_0

    :sswitch_10
    const v2, 0x297ce817

    const-string v0, "\u06da\u06e5\u06da\u06e8\u06e7\u06eb\u06da\u06e0\u06e8\u06d6\u06e7\u06d9\u06e2\u06e7\u06e6\u06d8\u06d6\u06d9\u06dc\u06e7\u06df\u06d8\u06e7\u06e8\u06e5\u06e4\u06d6\u06ec\u06d7\u06e6\u06e4"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_11
    const-string v0, "\u06e2\u06e8\u06e4\u06e2\u06eb\u06eb\u06e5\u06e2\u06eb\u06db\u06e5\u06e8\u06dc\u06e7\u06e0\u06d9\u06e1\u06d9\u06ec\u06e8\u06d8\u06dc\u06e6\u06da\u06d8\u06eb\u06e0\u06e6\u06d7\u06d7\u06d9\u06d8\u06e8\u06d8\u06db\u06e2\u06db\u06d9\u06e1\u06e5\u06d8\u06e6\u06df\u06db\u06d6\u06d8\u06e7\u06d8\u06e6\u06e6\u06e4\u06df\u06df\u06df\u06d6\u06e1\u06eb"

    goto :goto_0

    :sswitch_12
    const-string v0, "\u06d6\u06e2\u06e1\u06ec\u06e8\u06da\u06d7\u06d8\u06d9\u06d6\u06e4\u06eb\u06e0\u06e2\u06e1\u06ec\u06dc\u06e5\u06dc\u06df\u06d7\u06e7\u06d9\u06d9\u06db\u06e7\u06dc\u06d8\u06e1\u06e8\u06d8\u06db\u06e1\u06d9\u06d6\u06e4\u06e1\u06d8\u06eb\u06e4\u06e8\u06e0\u06dc\u06e1\u06e7\u06e8\u06e1\u06d8\u06dc\u06d7\u06e0\u06df\u06e0\u06d6\u06d7\u06e8\u06d8"

    goto :goto_3

    :sswitch_13
    const v3, 0x7b74f035

    const-string v0, "\u06d8\u06e5\u06ec\u06d6\u06e7\u06d8\u06d8\u06d7\u06e8\u06eb\u06df\u06db\u06dc\u06ec\u06e4\u06e8\u06e4\u06e7\u06e8\u06d8\u06d9\u06e7\u06e6\u06d8\u06df\u06e6\u06dc\u06d8\u06e8\u06df\u06da\u06e6\u06d8\u06d9"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_4

    goto :goto_4

    :sswitch_14
    const-string v0, "\u06e8\u06e1\u06e6\u06e4\u06e0\u06d8\u06da\u06da\u06e7\u06da\u06da\u06d8\u06e2\u06e7\u06d6\u06d6\u06eb\u06d8\u06d8\u06e8\u06eb\u06db\u06d7\u06e6\u06eb\u06e7\u06d8\u06df\u06d6\u06e5\u06dc\u06d8\u06db\u06e5\u06e5\u06d8\u06e4\u06eb\u06d8\u06e6\u06e8\u06ec\u06e5\u06e1\u06df"

    goto :goto_3

    :cond_1
    const-string v0, "\u06d8\u06e1\u06da\u06d9\u06e4\u06df\u06dc\u06d9\u06e6\u06dc\u06e4\u06e1\u06d8\u06d8\u06d7\u06e6\u06d8\u06df\u06ec\u06e1\u06db\u06d7\u06d8\u06d8\u06e7\u06e2\u06d6\u06e5\u06d9\u06e1\u06eb\u06d7"

    goto :goto_4

    :sswitch_15
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OoooOoO:Z

    if-eqz v0, :cond_1

    const-string v0, "\u06e7\u06e5\u06e8\u06d8\u06df\u06d7\u06d7\u06eb\u06e5\u06d8\u06dc\u06e6\u06da\u06d8\u06df\u06e6\u06eb\u06da\u06dc\u06e5\u06e8\u06d8\u06e7\u06d9\u06e2\u06eb\u06ec\u06e5\u06d8\u06d6\u06e7\u06e8\u06d8\u06ec\u06d7\u06da\u06da\u06e5\u06df\u06d6\u06eb\u06e1\u06ec\u06ec\u06d8\u06d8\u06e4\u06e1\u06e5\u06d8\u06e6\u06e5\u06e4\u06eb\u06d6\u06e2\u06e4\u06d6\u06e1\u06d8"

    goto :goto_4

    :sswitch_16
    const-string v0, "\u06da\u06e8\u06da\u06e0\u06e4\u06dc\u06e6\u06d7\u06e6\u06e8\u06e4\u06e6\u06db\u06df\u06d7\u06db\u06e5\u06e6\u06ec\u06ec\u06e1\u06db\u06dc\u06eb\u06e1\u06d8\u06d8\u06e8\u06e7\u06d6"

    goto :goto_4

    :sswitch_17
    const-string v0, "\u06dc\u06e1\u06e6\u06d8\u06df\u06db\u06e0\u06df\u06e7\u06da\u06d9\u06e2\u06d8\u06d6\u06d8\u06eb\u06e5\u06e7\u06d8\u06da\u06dc\u06dc\u06d8\u06d8\u06db\u06dc\u06e2\u06d6\u06d7\u06e7\u06eb\u06dc\u06e2\u06db\u06e0\u06da\u06e7\u06dc\u06d8\u06e0\u06e8\u06da\u06da\u06e1\u06eb\u06e8\u06d8\u06db\u06df\u06db\u06d7\u06e0\u06dc\u06df\u06da\u06df"

    goto :goto_3

    :sswitch_18
    const-string v0, "\u06da\u06d7\u06e8\u06d8\u06eb\u06eb\u06eb\u06d7\u06e7\u06d7\u06e5\u06e6\u06d8\u06d8\u06e8\u06e5\u06d8\u06da\u06d9\u06d6\u06d6\u06e8\u06d7\u06d6\u06e1\u06e8\u06db\u06dc\u06e1\u06e6\u06e7\u06e6\u06d8\u06e5\u06e6\u06e1\u06d8\u06dc\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_19
    add-int v0, p2, p3

    iput v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OooooOO:I

    const-string v0, "\u06e6\u06eb\u06e1\u06d8\u06d7\u06e8\u06e8\u06e4\u06d8\u06e7\u06e0\u06eb\u06e5\u06e1\u06d6\u06d6\u06e2\u06d9\u06e8\u06d8\u06e4\u06dc\u06e1\u06d8\u06e0\u06e5\u06e5\u06da\u06dc\u06e1\u06d8\u06d6\u06d7\u06d6\u06d8\u06e4\u06e7\u06eb\u06d9\u06d7\u06ec\u06d6\u06ec\u06e2\u06ec\u06eb\u06db"

    goto/16 :goto_0

    :sswitch_1a
    iput p4, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OooooOo:I

    const-string v0, "\u06d9\u06e2\u06e1\u06d7\u06d7\u06e4\u06e8\u06e8\u06e8\u06d8\u06d8\u06e6\u06df\u06e2\u06e0\u06ec\u06e2\u06dc\u06d6\u06d7\u06e0\u06db\u06d6\u06d6\u06e7\u06d8\u06db\u06e0\u06e4\u06db\u06eb\u06e5\u06d8\u06df\u06d6\u06e5\u06db\u06dc\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_1b
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OooOOO0()V

    const-string v0, "\u06e2\u06e8\u06e4\u06e2\u06eb\u06eb\u06e5\u06e2\u06eb\u06db\u06e5\u06e8\u06dc\u06e7\u06e0\u06d9\u06e1\u06d9\u06ec\u06e8\u06d8\u06dc\u06e6\u06da\u06d8\u06eb\u06e0\u06e6\u06d7\u06d7\u06d9\u06d8\u06e8\u06d8\u06db\u06e2\u06db\u06d9\u06e1\u06e5\u06d8\u06e6\u06df\u06db\u06d6\u06d8\u06e7\u06d8\u06e6\u06e6\u06e4\u06df\u06df\u06df\u06d6\u06e1\u06eb"

    goto/16 :goto_0

    :sswitch_1c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x77ee8cac -> :sswitch_f
        -0x560c8470 -> :sswitch_2
        -0x3e9605e4 -> :sswitch_1a
        -0x265a6c4e -> :sswitch_1c
        -0xe180937 -> :sswitch_3
        -0xa1af0ed -> :sswitch_0
        -0x8191984 -> :sswitch_1
        0x3d316849 -> :sswitch_4
        0x433297f3 -> :sswitch_6
        0x469c9055 -> :sswitch_5
        0x49de8723 -> :sswitch_19
        0x4cf39c6e -> :sswitch_1b
        0x663ae046 -> :sswitch_10
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x332afdea -> :sswitch_7
        0x1f7f4604 -> :sswitch_e
        0x21f755b1 -> :sswitch_9
        0x7670a2b9 -> :sswitch_d
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x69aec8fd -> :sswitch_a
        -0x4e692a61 -> :sswitch_c
        -0x392acae9 -> :sswitch_8
        0x71a740d9 -> :sswitch_b
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x5f457068 -> :sswitch_18
        0x2bed3729 -> :sswitch_13
        0x5a80f6e9 -> :sswitch_17
        0x7e552214 -> :sswitch_11
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x69135afc -> :sswitch_16
        -0x663854c4 -> :sswitch_14
        0x3338afed -> :sswitch_12
        0x6bcbc841 -> :sswitch_15
    .end sparse-switch
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06d7\u06eb\u06da\u06e1\u06df\u06eb\u06d7\u06e8\u06da\u06d7\u06d8\u06e1\u06d6\u06e2\u06e5\u06d8\u06d8\u06e8\u06e6\u06d8\u06d8\u06d8\u06e8\u06d8\u06ec\u06e1\u06db\u06e7\u06e7\u06eb\u06db\u06dc\u06d9\u06e7\u06e5\u06d6\u06e1\u06d8\u06e6\u06da\u06d8\u06e5\u06e4\u06e6\u06da\u06e7\u06dc\u06e5\u06d8\u06db\u06e8\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x389

    xor-int/2addr v2, v3

    xor-int/lit8 v2, v2, 0x41

    const/16 v3, 0xf1

    const v4, -0x6d97b780

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06eb\u06e8\u06e4\u06e6\u06d8\u06e8\u06e0\u06db\u06ec\u06d7\u06d8\u06da\u06ec\u06ec\u06e8\u06db\u06db\u06e6\u06e0\u06e1\u06e5\u06d6\u06d6\u06d8\u06d8\u06db\u06d7\u06e1\u06e0\u06d8\u06da\u06dc\u06e1\u06e6\u06e5\u06e6\u06d8\u06e6\u06e5\u06d7\u06e0\u06e2\u06dc\u06e4\u06eb\u06e7\u06e7\u06df\u06eb\u06e8\u06e5\u06d9\u06e5\u06dc\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d7\u06df\u06dc\u06d8\u06e7\u06e5\u06e4\u06d8\u06d7\u06d8\u06d7\u06e5\u06da\u06e0\u06d8\u06d7\u06df\u06d6\u06d6\u06df\u06df\u06e8\u06d8\u06e7\u06d7\u06d7\u06d9\u06d8\u06e7\u06d7\u06e2\u06d8\u06e0\u06da\u06d6\u06e1\u06e8\u06dc\u06d8\u06e5\u06db\u06e5\u06d8\u06d9\u06df\u06df\u06e6\u06ec\u06d9\u06e6\u06db\u06d6\u06d8"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06ec\u06d9\u06d8\u06d8\u06e7\u06db\u06e6\u06d7\u06d6\u06e0\u06df\u06db\u06e2\u06e1\u06e8\u06e2\u06eb\u06e5\u06e4\u06d6\u06e4\u06e0\u06e7\u06e4\u06d7\u06e2\u06d9\u06d6\u06e6\u06d8\u06db\u06dc\u06e7\u06d8\u06dc\u06e8\u06e8\u06eb\u06e7\u06e5\u06d8\u06e4\u06d6\u06e7\u06ec\u06e1\u06df\u06d6\u06eb\u06da\u06eb\u06d6\u06e1\u06e2\u06e0\u06e8"

    goto :goto_0

    :sswitch_3
    iput p2, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Oooooo0:I

    const-string v0, "\u06e0\u06e7\u06ec\u06df\u06df\u06d8\u06e2\u06dc\u06da\u06e0\u06e0\u06e1\u06e4\u06e1\u06e7\u06e4\u06da\u06e7\u06da\u06d6\u06e4\u06dc\u06d6\u06e7\u06d8\u06e1\u06dc\u06e1\u06df\u06dc\u06e2\u06ec\u06d8\u06e5\u06d8\u06da\u06db\u06e8\u06d9\u06e0\u06e8\u06d7\u06db\u06dc\u06d8\u06e1\u06e1\u06e7\u06d8\u06da\u06df\u06d8"

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Oooooo:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView$OooO00o;

    const-string v0, "\u06e6\u06d9\u06dc\u06d8\u06e8\u06db\u06db\u06ec\u06e0\u06e6\u06d8\u06e1\u06e7\u06d6\u06d8\u06e0\u06e1\u06e1\u06d8\u06d6\u06d9\u06e6\u06e4\u06e5\u06d8\u06d9\u06e8\u06e2\u06d9\u06df\u06e8\u06d8\u06eb\u06da\u06db\u06eb\u06dc\u06e4\u06e0\u06dc\u06e8\u06e8\u06d6\u06eb\u06e0\u06e5\u06d6\u06d8\u06e0\u06d7\u06e1\u06d9\u06e0\u06ec"

    goto :goto_0

    :sswitch_5
    const v2, 0x310e4b21

    const-string v0, "\u06da\u06db\u06ec\u06da\u06e8\u06e6\u06da\u06dc\u06e2\u06e4\u06e1\u06e7\u06d8\u06eb\u06db\u06e1\u06ec\u06ec\u06eb\u06e5\u06eb\u06e2\u06e4\u06db\u06d6\u06d8\u06e8\u06d8\u06e8\u06e5\u06df\u06e8\u06d8\u06e1\u06dc\u06dc"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_6
    const-string v0, "\u06e2\u06dc\u06eb\u06d9\u06e7\u06d9\u06e8\u06e7\u06dc\u06ec\u06e8\u06dc\u06df\u06dc\u06d9\u06d6\u06e7\u06d8\u06ec\u06e0\u06d7\u06d9\u06e2\u06db\u06eb\u06e6\u06d8\u06eb\u06e2\u06d8\u06d8\u06d6\u06e5\u06e2\u06e0\u06d6\u06df"

    goto :goto_0

    :sswitch_7
    const-string v0, "\u06d9\u06dc\u06db\u06e2\u06e0\u06da\u06eb\u06e6\u06da\u06ec\u06e1\u06d8\u06e6\u06df\u06dc\u06d8\u06df\u06e2\u06dc\u06d8\u06e2\u06e8\u06e7\u06d8\u06e4\u06ec\u06d8\u06d8\u06eb\u06e4\u06db\u06eb\u06d6\u06e1\u06e8\u06eb\u06d6\u06d7\u06e1\u06e0\u06e6\u06e6\u06e6\u06df\u06db\u06e6\u06d8"

    goto :goto_1

    :sswitch_8
    const v3, 0x669e5bc3

    const-string v0, "\u06dc\u06e4\u06e4\u06e8\u06e5\u06db\u06e2\u06da\u06e6\u06e0\u06e2\u06d7\u06da\u06df\u06eb\u06e8\u06e8\u06d9\u06e1\u06ec\u06d6\u06db\u06d8\u06d9\u06d8\u06df\u06d8\u06e1"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_9
    if-eqz v1, :cond_0

    const-string v0, "\u06df\u06e6\u06df\u06db\u06e2\u06db\u06d8\u06e2\u06eb\u06e6\u06dc\u06e1\u06e7\u06dc\u06e8\u06eb\u06dc\u06d8\u06e4\u06e1\u06e4\u06d9\u06da\u06df\u06ec\u06dc\u06e6\u06d8\u06e2\u06df\u06e2\u06e7\u06ec\u06d8\u06d8\u06e4\u06d9\u06e5\u06d8\u06e8\u06ec\u06df\u06df\u06e7\u06db\u06e2\u06e8\u06e8\u06d8\u06eb\u06d9\u06e8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06eb\u06e1\u06e1\u06d8\u06e7\u06e4\u06e8\u06e2\u06dc\u06e8\u06d8\u06db\u06e6\u06da\u06e6\u06e8\u06e8\u06d8\u06df\u06e4\u06d8\u06e2\u06da\u06db\u06e5\u06eb\u06d6\u06e2\u06e2\u06e0\u06e0\u06eb\u06d7\u06d7\u06e8\u06ec\u06e6\u06db\u06da\u06e8\u06e4\u06e1\u06e7\u06e8\u06ec"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06e5\u06d6\u06df\u06da\u06ec\u06e8\u06d7\u06eb\u06e6\u06e2\u06e8\u06e5\u06d8\u06e5\u06e5\u06e5\u06d8\u06da\u06d7\u06e4\u06e5\u06e1\u06d8\u06df\u06db\u06e8\u06d8\u06d6\u06e6\u06e1\u06e0\u06e8\u06e6\u06d8\u06e6\u06d7\u06e7\u06e0\u06e2"

    goto :goto_2

    :sswitch_b
    const-string v0, "\u06d6\u06ec\u06e1\u06da\u06e4\u06d8\u06d8\u06e0\u06da\u06da\u06eb\u06eb\u06e1\u06e0\u06e1\u06e2\u06e6\u06d8\u06e1\u06e7\u06df\u06dc\u06e1\u06df\u06d7\u06e8\u06e7\u06e7\u06ec\u06e6\u06d8\u06d8\u06e4\u06d8\u06eb\u06e5\u06d7\u06ec\u06d6\u06ec\u06e8\u06d8\u06e4\u06d7\u06e2\u06df\u06d6\u06d8\u06e6\u06dc\u06e8"

    goto :goto_1

    :sswitch_c
    const-string v0, "\u06da\u06e8\u06e7\u06d8\u06e6\u06d6\u06dc\u06d8\u06eb\u06df\u06d8\u06d8\u06dc\u06e6\u06e4\u06e6\u06df\u06d9\u06eb\u06d9\u06e6\u06e1\u06e0\u06e6\u06e8\u06eb\u06e0\u06e2\u06e8\u06e7\u06d8\u06d7\u06da\u06e8\u06e5\u06e2\u06db\u06e6\u06e5\u06e8"

    goto :goto_1

    :sswitch_d
    const-string v0, "\u06eb\u06d6\u06e6\u06db\u06d6\u06d8\u06e0\u06e6\u06e5\u06d8\u06d8\u06d9\u06d6\u06dc\u06e0\u06e1\u06e0\u06e7\u06d8\u06d8\u06d9\u06ec\u06ec\u06e6\u06df\u06df\u06e6\u06eb\u06ec\u06e5\u06eb\u06d6\u06e0\u06d7\u06e5\u06d8\u06e6\u06e5\u06e0\u06ec\u06d8\u06d6\u06d8\u06d7\u06e1\u06e8\u06e8\u06eb\u06e1\u06e4\u06ec\u06df\u06e8\u06e7\u06df\u06eb\u06d8\u06e6\u06d8"

    goto :goto_0

    :sswitch_e
    invoke-interface {v1, p1, p2}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView$OooO00o;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    const-string v0, "\u06e2\u06dc\u06eb\u06d9\u06e7\u06d9\u06e8\u06e7\u06dc\u06ec\u06e8\u06dc\u06df\u06dc\u06d9\u06d6\u06e7\u06d8\u06ec\u06e0\u06d7\u06d9\u06e2\u06db\u06eb\u06e6\u06d8\u06eb\u06e2\u06d8\u06d8\u06d6\u06e5\u06e2\u06e0\u06d6\u06df"

    goto :goto_0

    :sswitch_f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x65ebc66c -> :sswitch_e
        -0x5abcf6ce -> :sswitch_0
        -0x49edfc7e -> :sswitch_3
        -0x2a91ad36 -> :sswitch_f
        0x16b4caeb -> :sswitch_2
        0x2364c3f6 -> :sswitch_1
        0x6709818b -> :sswitch_4
        0x718f5c69 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x531b3711 -> :sswitch_c
        -0x10cabecf -> :sswitch_d
        0x320b2978 -> :sswitch_8
        0x7394a723 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x5205a460 -> :sswitch_7
        -0x44dda899 -> :sswitch_b
        -0x25c45d32 -> :sswitch_a
        0x5de0ca1e -> :sswitch_9
    .end sparse-switch
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 4

    const-string v0, "\u06dc\u06d7\u06e8\u06e7\u06db\u06d6\u06db\u06ec\u06e5\u06d8\u06e8\u06df\u06e1\u06d8\u06d6\u06ec\u06e8\u06e1\u06eb\u06e4\u06eb\u06dc\u06db\u06eb\u06d9\u06eb\u06d7\u06e6\u06e5\u06ec\u06dc\u06ec\u06e0\u06eb\u06e6\u06e2\u06e0\u06e2\u06e6\u06e5\u06e4\u06df\u06e6\u06dc\u06d8\u06e5\u06df\u06d6\u06d8\u06d9\u06eb\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xc3

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x131

    const/16 v2, 0x1dc

    const v3, -0x8c38001

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06d7\u06d8\u06d8\u06eb\u06eb\u06d7\u06e1\u06e5\u06d6\u06ec\u06e2\u06e7\u06e0\u06e5\u06ec\u06dc\u06eb\u06e4\u06d8\u06ec\u06e0\u06df\u06e0\u06e4\u06da\u06e6\u06e1\u06d8\u06d9\u06d9\u06e2"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d6\u06df\u06d8\u06d8\u06df\u06e1\u06e5\u06d8\u06e0\u06e7\u06e8\u06d7\u06e0\u06dc\u06df\u06da\u06e1\u06eb\u06ec\u06d9\u06e4\u06df\u06e5\u06df\u06d6\u06df\u06d9\u06e8\u06d8\u06d8\u06e6\u06db\u06e1\u06d9\u06e2\u06e8\u06d6\u06e5"

    goto :goto_0

    :sswitch_2
    const v1, -0x29c417a4

    const-string v0, "\u06e4\u06e2\u06db\u06e1\u06e7\u06eb\u06da\u06d8\u06e5\u06df\u06d9\u06d6\u06d8\u06d8\u06d6\u06e5\u06d8\u06d6\u06e4\u06d9\u06d9\u06d8\u06d7\u06e4\u06db\u06e7\u06e8\u06d9\u06e8\u06d8\u06eb\u06eb\u06e6\u06d8\u06da\u06dc\u06e4\u06d8\u06db\u06d6\u06e0\u06da\u06e2\u06e2\u06e8\u06e5\u06e5\u06e5\u06d6\u06da\u06dc\u06e6\u06db\u06d8\u06e7\u06ec\u06da"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06e8\u06d6\u06e8\u06d8\u06e7\u06e5\u06e7\u06d8\u06da\u06e2\u06e6\u06d8\u06e1\u06e5\u06dc\u06ec\u06d7\u06e8\u06da\u06e4\u06dc\u06e0\u06eb\u06d6\u06d8\u06e1\u06e6\u06e7\u06d8\u06e0\u06d8\u06d6\u06e8\u06e8\u06e1"

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06dc\u06e1\u06e7\u06d8\u06df\u06eb\u06d6\u06d8\u06e7\u06e6\u06da\u06d8\u06d7\u06db\u06d7\u06db\u06eb\u06ec\u06d9\u06e8\u06d8\u06dc\u06dc\u06e0\u06e7\u06df\u06d8\u06e4\u06e2\u06e1\u06d8\u06e5\u06e6\u06d8"

    goto :goto_1

    :sswitch_5
    const v2, 0x1c27d8a9

    const-string v0, "\u06e7\u06e4\u06db\u06e6\u06dc\u06e7\u06d8\u06dc\u06da\u06da\u06e7\u06db\u06e8\u06d8\u06e2\u06e0\u06d6\u06e5\u06d7\u06e8\u06e0\u06eb\u06e5\u06d8\u06e8\u06d9\u06e1\u06d8\u06df\u06e2\u06e7\u06df\u06e4\u06e5\u06e7\u06d7\u06dc\u06d8\u06e1\u06dc\u06e7\u06d8\u06dc\u06d6\u06dc\u06d8\u06e6\u06e2\u06d6\u06eb\u06e6\u06e7\u06db\u06e6\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Ooooo0o:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;

    if-ne v0, p1, :cond_0

    const-string v0, "\u06db\u06e4\u06db\u06e8\u06da\u06d6\u06d8\u06e7\u06d7\u06e6\u06d7\u06e7\u06df\u06e2\u06d8\u06d8\u06d8\u06eb\u06e1\u06da\u06e0\u06e2\u06da\u06e1\u06ec\u06db\u06e0\u06d9\u06d6\u06d8\u06d9\u06db\u06e1"

    goto :goto_2

    :cond_0
    const-string v0, "\u06df\u06e8\u06e2\u06dc\u06e4\u06e6\u06d8\u06db\u06e1\u06e6\u06d8\u06df\u06df\u06d8\u06df\u06e1\u06db\u06db\u06d9\u06e1\u06d8\u06e2\u06dc\u06d8\u06d9\u06d8\u06d6\u06ec\u06e6\u06e7\u06d8\u06e2\u06e5\u06ec\u06d8\u06dc\u06db\u06e1\u06dc\u06e4\u06da\u06d6\u06e7\u06d8\u06e0\u06da\u06e8\u06d8\u06e2\u06d6\u06d7\u06e1\u06e2\u06e8"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e6\u06d8\u06d8\u06d8\u06e7\u06d7\u06da\u06d9\u06ec\u06e5\u06eb\u06e0\u06da\u06e1\u06e8\u06e8\u06e6\u06eb\u06da\u06e2\u06e4\u06db\u06e5\u06df\u06e2\u06df\u06db\u06e5\u06e5\u06e5\u06db\u06df\u06db\u06d9\u06e6\u06d8\u06e0\u06db\u06e1\u06d6\u06d9\u06dc\u06d8\u06df\u06d8\u06e2\u06db\u06e8\u06d9\u06e2\u06d7\u06e2\u06e1\u06e8\u06eb"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d9\u06d7\u06e5\u06df\u06eb\u06d8\u06eb\u06e6\u06d7\u06eb\u06e6\u06e6\u06db\u06e0\u06e1\u06eb\u06df\u06e6\u06d8\u06df\u06d6\u06e8\u06d8\u06e5\u06e2\u06d7\u06df\u06e4\u06d8\u06d8\u06db\u06da\u06dc\u06d8"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e1\u06e2\u06e5\u06e5\u06e2\u06d8\u06df\u06e1\u06df\u06e7\u06d6\u06e6\u06d8\u06e0\u06da\u06e7\u06dc\u06dc\u06d8\u06d8\u06d6\u06d9\u06e7\u06d9\u06d8\u06e2\u06e1\u06e1\u06d8\u06d8\u06ec\u06da\u06d6\u06d8\u06df\u06d8\u06e7\u06e4\u06e0"

    goto :goto_0

    :sswitch_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Ooooo0o:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;

    const-string v0, "\u06e6\u06d9\u06d8\u06e0\u06df\u06d8\u06d8\u06e7\u06d7\u06e5\u06d8\u06d6\u06d7\u06db\u06eb\u06d9\u06d6\u06e0\u06e6\u06dc\u06d8\u06da\u06ec\u06ec\u06d7\u06db\u06e6\u06d7\u06d8\u06d6\u06ec\u06dc\u06d9\u06dc\u06e0\u06db\u06d7\u06d6\u06e7\u06d8\u06d7\u06eb\u06e8\u06d8\u06e2\u06e0\u06d8\u06e5\u06e0\u06dc\u06d8\u06e0\u06ec\u06da"

    goto :goto_0

    :sswitch_b
    invoke-super {p0, p1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    move-result v0

    return v0

    :sswitch_c
    const-string v0, "\u06e6\u06d9\u06d8\u06e0\u06df\u06d8\u06d8\u06e7\u06d7\u06e5\u06d8\u06d6\u06d7\u06db\u06eb\u06d9\u06d6\u06e0\u06e6\u06dc\u06d8\u06da\u06ec\u06ec\u06d7\u06db\u06e6\u06d7\u06d8\u06d6\u06ec\u06dc\u06d9\u06dc\u06e0\u06db\u06d7\u06d6\u06e7\u06d8\u06d7\u06eb\u06e8\u06d8\u06e2\u06e0\u06d8\u06e5\u06e0\u06dc\u06d8\u06e0\u06ec\u06da"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x761d4f1c -> :sswitch_a
        -0x5e2c20dc -> :sswitch_b
        -0x2593077c -> :sswitch_0
        -0x77a5d02 -> :sswitch_1
        -0x6c32440 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xa97e27f -> :sswitch_c
        0x27ebf324 -> :sswitch_5
        0x4ce8a8f9 -> :sswitch_3
        0x53dc28f0 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x262e2338 -> :sswitch_4
        0x2f073799 -> :sswitch_8
        0x4dde77d4 -> :sswitch_7
        0x6808e4db -> :sswitch_6
    .end sparse-switch
.end method

.method public setIListViewCallBack(Lz2/ua;)V
    .locals 4

    const-string v0, "\u06da\u06e5\u06e6\u06d8\u06e0\u06da\u06dc\u06d6\u06d9\u06dc\u06e8\u06e1\u06e1\u06d8\u06d6\u06e8\u06e4\u06df\u06df\u06e7\u06df\u06e0\u06e0\u06ec\u06e7\u06e8\u06ec\u06d9\u06e2\u06d9\u06e2\u06e7\u06e6\u06ec\u06e8\u06d9\u06d9\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x38

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3dd

    const/16 v2, 0x81

    const v3, -0x54ac009f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06da\u06e7\u06e5\u06da\u06e1\u06d8\u06ec\u06d7\u06dc\u06d6\u06e0\u06d6\u06e4\u06d6\u06d7\u06d7\u06e5\u06d8\u06e8\u06e8\u06e5\u06d9\u06d6\u06e7\u06d8\u06d9\u06d7\u06df\u06e6\u06e2\u06df\u06e8\u06e6\u06e2\u06e1\u06e6\u06e6\u06d8\u06e4\u06dc\u06e1\u06d8\u06e6\u06e0\u06d8\u06d8\u06e1\u06e4\u06e6\u06da\u06df"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d7\u06d8\u06e2\u06dc\u06db\u06e4\u06e0\u06d6\u06e5\u06e2\u06d9\u06d6\u06d8\u06dc\u06eb\u06d7\u06d8\u06e2\u06e6\u06e8\u06dc\u06e1\u06e4\u06eb\u06ec\u06e6\u06e8\u06d9\u06da\u06d7\u06e5\u06da\u06e8\u06e0\u06eb\u06e8\u06d8\u06d8"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OooooO0:Lz2/ua;

    const-string v0, "\u06d7\u06df\u06d8\u06dc\u06da\u06d7\u06d9\u06eb\u06e2\u06df\u06d7\u06d7\u06d6\u06dc\u06e8\u06d8\u06e0\u06da\u06d7\u06d8\u06d7\u06e1\u06df\u06e0\u06e1\u06dc\u06e1\u06e6\u06eb\u06e2\u06d8\u06d8"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Ooooo0o:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;->setCallBack(Lz2/ua;)V

    const-string v0, "\u06dc\u06db\u06e4\u06eb\u06d7\u06e4\u06d8\u06d6\u06e8\u06e1\u06e7\u06e1\u06e0\u06da\u06d9\u06d8\u06e1\u06e0\u06e7\u06e5\u06d8\u06e6\u06e0\u06e6\u06eb\u06db\u06db\u06d8\u06da\u06e2\u06e7\u06e5\u06e6\u06d8\u06dc\u06d7\u06e5\u06d8\u06d6\u06e6\u06eb\u06e4\u06eb\u06e5"

    goto :goto_0

    :sswitch_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x64426455 -> :sswitch_2
        -0x4ec0cfff -> :sswitch_4
        -0x3bec8b1f -> :sswitch_0
        0x3ec00eee -> :sswitch_3
        0x46840fbf -> :sswitch_1
    .end sparse-switch
.end method

.method public setScrollLoad(Z)V
    .locals 4

    const-string v0, "\u06e0\u06e7\u06e5\u06e6\u06d7\u06da\u06ec\u06e4\u06db\u06e8\u06e1\u06e8\u06d8\u06d6\u06da\u06dc\u06d8\u06e0\u06e8\u06e6\u06d8\u06da\u06d7\u06eb\u06dc\u06d6\u06e8\u06d8\u06e6\u06ec\u06e2\u06d6\u06e6\u06db\u06df\u06df\u06d8\u06e5\u06dc\u06da\u06d9\u06e2\u06dc\u06d8\u06dc\u06e1\u06d8\u06d8\u06e5\u06e0\u06e2\u06e6\u06e2\u06d6\u06d8\u06d9\u06da\u06d6\u06dc\u06ec\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x19c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x12d

    const/16 v2, 0x1df

    const v3, -0x5c1fc129

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e4\u06db\u06e6\u06da\u06e8\u06dc\u06e4\u06dc\u06dc\u06d6\u06d6\u06d7\u06e5\u06e7\u06d8\u06e5\u06eb\u06e6\u06d8\u06e6\u06db\u06e2\u06e7\u06db\u06eb\u06db\u06db\u06e6\u06e2\u06e2\u06db\u06e6\u06da\u06db\u06d8\u06d7\u06d8\u06df\u06e1\u06db\u06d6\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e6\u06e2\u06e1\u06d8\u06d8\u06d6\u06e5\u06d6\u06e2\u06eb\u06da\u06db\u06e7\u06e7\u06df\u06e1\u06d8\u06e0\u06d8\u06d9\u06e6\u06e8\u06e7\u06e4\u06e2\u06e6\u06dc\u06e0\u06d7\u06e2\u06eb\u06dc\u06db\u06da\u06d6\u06d8\u06e4\u06e2\u06e0\u06da\u06e7\u06e8\u06e0\u06d8\u06d7\u06eb\u06e2\u06e2\u06dc\u06ec\u06e8"

    goto :goto_0

    :sswitch_2
    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->OoooOoO:Z

    const-string v0, "\u06e7\u06d9\u06d8\u06d9\u06e5\u06d7\u06e8\u06e0\u06e8\u06d6\u06e5\u06e8\u06d9\u06df\u06e8\u06d8\u06e6\u06e5\u06dc\u06d8\u06d6\u06e4\u06e7\u06d8\u06e2\u06d8\u06d8\u06d9\u06e6\u06d8\u06d8\u06e2\u06e6\u06d6\u06d8\u06d8\u06e4\u06dc\u06e1\u06e2\u06db\u06d7\u06e7\u06e7\u06d7\u06e8\u06ec\u06d8\u06da\u06e8\u06d8\u06e5\u06e1\u06e7\u06d8\u06e2\u06d7\u06d9\u06e2\u06e4\u06e6"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e11f09f -> :sswitch_2
        -0x45e81757 -> :sswitch_1
        -0x29057951 -> :sswitch_0
        0xa96e3fd -> :sswitch_3
    .end sparse-switch
.end method

.method public setmListViewScrollListener(Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView$OooO00o;)V
    .locals 4

    const-string v0, "\u06da\u06e4\u06e4\u06df\u06e0\u06e6\u06d8\u06d6\u06e8\u06e7\u06d8\u06e8\u06e1\u06eb\u06d8\u06d8\u06dc\u06d7\u06d9\u06eb\u06d7\u06ec\u06d6\u06df\u06d6\u06df\u06d8\u06df\u06d6\u06d8\u06e6\u06e7\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x386

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1b5

    const/16 v2, 0x235

    const v3, 0x460d8343

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06da\u06e8\u06eb\u06e8\u06df\u06ec\u06dc\u06ec\u06eb\u06e7\u06e6\u06d8\u06ec\u06d9\u06df\u06e2\u06dc\u06e1\u06db\u06e6\u06ec\u06e6\u06d8\u06dc\u06d9\u06db\u06e5\u06e7\u06e0\u06d8\u06d8\u06da\u06e8\u06dc\u06d8\u06e1\u06e7\u06e4\u06e2\u06dc\u06e4\u06e4\u06df"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06d8\u06d8\u06e2\u06d8\u06e2\u06db\u06e2\u06e8\u06e1\u06db\u06e5\u06d8\u06d6\u06df\u06e4\u06eb\u06df\u06e6\u06d8\u06db\u06e4\u06e0\u06db\u06d9\u06e0\u06e5\u06e2\u06df\u06dc\u06d8\u06e7\u06e1\u06da\u06d8\u06db\u06d8\u06d8\u06d7\u06db\u06db\u06e6\u06d6\u06e7\u06df\u06dc\u06e1\u06d8\u06d8\u06dc\u06e4\u06df\u06e8\u06e8\u06d8\u06d9\u06e1\u06e4"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView;->Oooooo:Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseListView$OooO00o;

    const-string v0, "\u06eb\u06db\u06e8\u06eb\u06d7\u06e8\u06d8\u06db\u06dc\u06e5\u06d8\u06db\u06dc\u06ec\u06e0\u06e5\u06dc\u06df\u06e0\u06df\u06da\u06dc\u06e7\u06e0\u06e0\u06e0\u06e7\u06db\u06da\u06e1\u06e8\u06e0\u06eb\u06e6\u06e8\u06e8\u06e1\u06e2\u06e8\u06df\u06d7\u06e0\u06e2\u06e1\u06e7\u06e0\u06dc\u06d8\u06db\u06e5\u06df"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3304b635 -> :sswitch_1
        0x1b9d6aba -> :sswitch_2
        0x300b56e8 -> :sswitch_3
        0x4e9d8fee -> :sswitch_0
    .end sparse-switch
.end method
