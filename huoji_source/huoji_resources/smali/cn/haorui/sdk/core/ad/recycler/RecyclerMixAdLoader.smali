.class public Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdLoader;
.super Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdListener;)V
    .locals 6

    const v5, 0x30d40

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdListener;F)V
    .locals 6

    const v5, 0x30d40

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;I)V

    iput p5, p0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;->containerWidth:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdListener;FF)V
    .locals 6

    const v5, 0x30d40

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

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdListener;FFZ)V
    .locals 6

    const v5, 0x30d40

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
