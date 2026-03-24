.class public Lz2/xa;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static OooO00o(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_2

    instance-of v0, p1, Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 v0, 0x11

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ParentView must be a RelativeLayout or LinearLayout!!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public static OooO0O0(Landroid/content/Context;Landroid/view/View;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1

    new-instance v0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;-><init>(Landroid/content/Context;)V

    const p0, 0x7f0801e7

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->setErrorImg(I)V

    const p0, 0x7f10019c

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->setErrorTips(I)V

    const p0, 0x7f09049a

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {v0, p1}, Lz2/xa;->OooO00o(Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method public static OooO0OO(Landroid/content/Context;Landroid/view/View;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1

    new-instance v0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;-><init>(Landroid/content/Context;)V

    const p0, 0x7f0801e5

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->setErrorImg(I)V

    const p0, 0x7f10019d

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->setErrorTips(I)V

    const p0, 0x7f09049a

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {v0, p1}, Lz2/xa;->OooO00o(Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method public static OooO0Oo(Landroid/content/Context;Landroid/view/View;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 0

    new-instance p2, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;

    invoke-direct {p2, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x8

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p2, p1}, Lz2/xa;->OooO00o(Landroid/view/View;Landroid/view/View;)V

    return-object p2
.end method

.method public static OooO0o(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0c010b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0, p1}, Lz2/xa;->OooO00o(Landroid/view/View;Landroid/view/View;)V

    return-object p0
.end method

.method public static OooO0o0(Landroid/content/Context;Landroid/view/View;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1

    new-instance v0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;-><init>(Landroid/content/Context;)V

    const p0, 0x7f09049a

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0, p1}, Lz2/xa;->OooO00o(Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method public static OooO0oO(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;-><init>(Landroid/content/Context;)V

    const p0, 0x7f080154

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->setErrorImg(I)V

    const p0, 0x7f1001eb

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->setErrorTips(I)V

    const p0, 0x7f09049a

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {v0, p1}, Lz2/xa;->OooO00o(Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method private static OooO0oo(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0c010a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
