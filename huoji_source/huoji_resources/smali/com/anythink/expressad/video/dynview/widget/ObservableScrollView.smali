.class public Lcom/anythink/expressad/video/dynview/widget/ObservableScrollView;
.super Landroid/widget/HorizontalScrollView;
.source ""


# instance fields
.field private a:Lcom/anythink/expressad/video/dynview/widget/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/ObservableScrollView;->a:Lcom/anythink/expressad/video/dynview/widget/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/ObservableScrollView;->a:Lcom/anythink/expressad/video/dynview/widget/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/ObservableScrollView;->a:Lcom/anythink/expressad/video/dynview/widget/a;

    return-void
.end method


# virtual methods
.method public fling(I)V
    .locals 0

    div-int/lit8 p1, p1, 0x4

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->fling(I)V

    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    return-void
.end method
