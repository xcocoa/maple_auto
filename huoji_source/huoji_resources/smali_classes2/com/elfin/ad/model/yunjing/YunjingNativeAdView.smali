.class public Lcom/elfin/ad/model/yunjing/YunjingNativeAdView;
.super Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/elfin/ad/model/yunjing/YunjingNativeAdView;->OooO00o()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/elfin/ad/model/yunjing/YunjingNativeAdView;->OooO00o()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/elfin/ad/model/yunjing/YunjingNativeAdView;->OooO00o()V

    return-void
.end method

.method private OooO00o()V
    .locals 4

    const-string v0, "\u06da\u06e4\u06e6\u06d8\u06e4\u06da\u06d9\u06d8\u06e8\u06d6\u06d7\u06e1\u06d7\u06e8\u06e1\u06e1\u06d8\u06d9\u06e8\u06e7\u06e4\u06db\u06e2\u06e1\u06e4\u06ec\u06e4\u06eb\u06eb\u06e4\u06e7\u06d9\u06df\u06e8\u06df\u06e0\u06da\u06e6\u06d8\u06e4\u06e7\u06d7\u06e2\u06e1\u06e2\u06e0\u06dc\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2fa

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x16f

    const/16 v2, 0x2c1

    const v3, 0x47f7ea2a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06d8\u06d8\u06eb\u06d9\u06ec\u06dc\u06e4\u06dc\u06d8\u06d9\u06e0\u06d7\u06e7\u06e2\u06d6\u06e7\u06da\u06dc\u06d8\u06d7\u06e4\u06d8\u06e8\u06eb\u06dc\u06d8\u06e0\u06e2\u06ec\u06e6\u06e8\u06e4\u06e8\u06e1\u06e6\u06e5\u06d6\u06d8\u06d8\u06eb\u06d7\u06e2\u06ec\u06e4\u06e0\u06d6\u06e4\u06e1\u06d8\u06e2\u06e5\u06e1\u06d8\u06e2\u06e7\u06e6\u06e1\u06d7\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/elfin/ad/R$layout;->layout_yunjing_native_ad:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string v0, "\u06db\u06da\u06dc\u06d8\u06e6\u06d9\u06d9\u06e5\u06d7\u06e5\u06d8\u06d7\u06e0\u06d6\u06e7\u06df\u06df\u06e6\u06da\u06d7\u06e1\u06e5\u06e7\u06ec\u06e2\u06dc\u06d8\u06d9\u06e8\u06d6\u06d8\u06e6\u06e1\u06da"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x42c49983 -> :sswitch_1
        0x51c35008 -> :sswitch_0
        0x6ec4a88c -> :sswitch_2
    .end sparse-switch
.end method
