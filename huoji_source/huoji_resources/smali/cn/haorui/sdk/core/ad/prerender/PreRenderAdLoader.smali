.class public Lcn/haorui/sdk/core/ad/prerender/PreRenderAdLoader;
.super Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private fixedHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;)V
    .locals 6

    const v5, 0x186a0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;F)V
    .locals 6

    const v5, 0x186a0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;I)V

    iput p5, p0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;->containerWidth:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;FF)V
    .locals 6

    const v5, 0x186a0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;I)V

    iput p5, p0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;->containerWidth:F

    iput p6, p0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;->containerHeight:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;FFZ)V
    .locals 6

    const v5, 0x186a0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;I)V

    iput p5, p0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;->containerWidth:F

    iput p6, p0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;->containerHeight:F

    iput-boolean p7, p0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;->showDetail:Z

    return-void
.end method


# virtual methods
.method public getFixedHeight()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/ad/prerender/PreRenderAdLoader;->fixedHeight:I

    return v0
.end method

.method public setFixedHeight(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/ad/prerender/PreRenderAdLoader;->fixedHeight:I

    return-void
.end method
