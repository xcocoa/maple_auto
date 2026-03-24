.class public Lcn/haorui/sdk/core/ad/image/ImageAdLoader;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private recyclerAdLoader:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcn/haorui/sdk/core/ad/image/ImageAdListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcn/haorui/sdk/platform/hr/image/HRRecyclerAdListenerAdapter;

    invoke-direct {v2, p3}, Lcn/haorui/sdk/platform/hr/image/HRRecyclerAdListenerAdapter;-><init>(Lcn/haorui/sdk/core/ad/image/ImageAdListener;)V

    invoke-direct {v0, p1, p2, v1, v2}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;)V

    iput-object v0, p0, Lcn/haorui/sdk/core/ad/image/ImageAdLoader;->recyclerAdLoader:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;

    return-void
.end method


# virtual methods
.method public loadData()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/image/ImageAdLoader;->recyclerAdLoader:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->loadAd()V

    return-void
.end method
