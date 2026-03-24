.class public abstract Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lz2/wa;


# instance fields
.field public OoooOoO:Lz2/ua;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setCallBack(Lz2/ua;)V
    .locals 4

    const-string v0, "\u06dc\u06e6\u06e2\u06e5\u06d7\u06e0\u06da\u06e8\u06e4\u06d8\u06e2\u06dc\u06e0\u06e8\u06d6\u06d8\u06e1\u06d9\u06d6\u06e2\u06dc\u06d6\u06d6\u06ec\u06d8\u06db\u06ec\u06ebO\u06e5\u06d7\u06e8\u06e5\u06db\u06eb\u06e1\u06e8\u06e7\u06e5\u06ec\u06ec\u06d7\u06e2\u06d6\u06da\u06e4\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2f5

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x257

    const/16 v2, 0x3bf

    const v3, 0x24708cab

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06e5\u06e0\u06dc\u06e7\u06d7\u06e8\u06d6\u06df\u06df\u06d6\u06db\u06e4\u06d7\u06db\u06e5\u06e7\u06df\u06dc\u06e6\u06d6\u06d8\u06e5\u06e2\u06e4\u06e7\u06e1\u06df\u06df\u06d9\u06e1\u06e6\u06ec\u06e1\u06dc\u06e6\u06e4\u06eb\u06e6\u06e6\u06e2\u06e2\u06e2\u06df\u06e1\u06d8\u06e7\u06e6\u06e0\u06db\u06d6\u06d9\u06e6\u06e5\u06e2"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06d6\u06e0\u06e0\u06e1\u06e5\u06df\u06da\u06e6\u06e5\u06e5\u06e2\u06e2\u06eb\u06d8\u06ec\u06e6\u06e2\u06e8\u06d8\u06e2\u06dc\u06d9\u06e0\u06db\u06d6\u06e5\u06da\u06dc\u06d8\u06e8\u06e7\u06e2\u06e0\u06e7\u06e7"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;->OoooOoO:Lz2/ua;

    const-string v0, "\u06d9\u06da\u06e6\u06da\u06dc\u06e7\u06d8\u06db\u06df\u06df\u06df\u06e1\u06e7\u06d8\u06d6\u06df\u06d9\u06db\u06ec\u06df\u06db\u06e4\u06da\u06e4\u06d9\u06e8\u06e4\u06e1\u06e7\u06d8\u06df\u06d7\u06e6\u06e5\u06eb\u06d8\u06e5\u06d7\u06d6\u06d8\u06ec\u06da\u06d8\u06d8\u06d6\u06dc\u06ec"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6bd43c8c -> :sswitch_2
        -0x5662b94e -> :sswitch_0
        -0x2adf076 -> :sswitch_3
        0x5819a679 -> :sswitch_1
    .end sparse-switch
.end method
