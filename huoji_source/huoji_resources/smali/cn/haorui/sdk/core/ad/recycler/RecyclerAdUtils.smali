.class public Lcn/haorui/sdk/core/ad/recycler/RecyclerAdUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static adSailAdContainerTagRecycler:Ljava/lang/String; = "adsail_ad_container_tag_recycler"

.field private static shellClasses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/ViewGroup;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdUtils;->shellClasses:Ljava/util/ArrayList;

    const-class v1, Lcn/haorui/sdk/core/view/TouchAdContainer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findTaggedContainer(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 4

    sget v0, Lcn/haorui/sdk/R$id;->adsail_ad_container_tag_recycler:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdUtils;->adSailAdContainerTagRecycler:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdUtils;->findTaggedContainer(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInfo(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/lang/Class;)[Landroid/view/ViewGroup;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {p0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdUtils;->findTaggedContainer(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_0

    aput-object p0, v0, v1

    sget p2, Lcn/haorui/sdk/R$id;->adsail_ad_container_tag_recycler:I

    sget-object v2, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdUtils;->adSailAdContainerTagRecycler:Ljava/lang/String;

    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    :cond_0
    aput-object v2, v0, v1

    sget p0, Lcn/haorui/sdk/R$id;->adsail_ad_container_class_recycler:I

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move-object p0, v2

    :cond_1
    :goto_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aput-object p0, v0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_3
    :goto_1
    aget-object p0, v0, v3

    if-nez p0, :cond_4

    invoke-static {v2}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdUtils;->removeShells(Landroid/view/ViewGroup;)V

    :cond_4
    :goto_2
    aget-object p0, v0, v1

    sget p2, Lcn/haorui/sdk/R$id;->adsail_ad_container_class_recycler:I

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-object v0
.end method

.method private static isShellInstance(Ljava/lang/Object;)Z
    .locals 2

    sget-object v0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdUtils;->shellClasses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static removeShells(Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v0, 0x0

    move-object v1, p0

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdUtils;->isShellInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, p0, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method public static stripShells(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 2

    invoke-static {p0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdUtils;->findTaggedContainer(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Lcn/haorui/sdk/R$id;->adsail_ad_container_tag_recycler:I

    sget-object v1, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdUtils;->adSailAdContainerTagRecycler:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdUtils;->removeShells(Landroid/view/ViewGroup;)V

    return-object p0
.end method
