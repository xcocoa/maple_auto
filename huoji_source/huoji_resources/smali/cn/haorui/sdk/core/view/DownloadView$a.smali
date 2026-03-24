.class public Lcn/haorui/sdk/core/view/DownloadView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/view/DownloadView;->handleDownloadView(Landroid/view/View;Lcn/haorui/sdk/core/ad/BaseAdSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/ad/BaseAdSlot;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/view/DownloadView;Lcn/haorui/sdk/core/ad/BaseAdSlot;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lcn/haorui/sdk/core/view/DownloadView$a;->a:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    iput-object p3, p0, Lcn/haorui/sdk/core/view/DownloadView$a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    new-instance p1, Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-direct {p1}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;-><init>()V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/DownloadView$a;->a:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_name(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/DownloadView$a;->a:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_feature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_feature(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/DownloadView$a;->a:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_intro()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_intro(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/DownloadView$a;->a:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_privacy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_privacy(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/DownloadView$a;->a:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_size()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_size(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/DownloadView$a;->a:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDeveloper()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setDeveloper(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/DownloadView$a;->a:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPayment_types()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setPayment_types(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/DownloadView$a;->a:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_permission()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_permission(Ljava/util/List;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/DownloadView$a;->a:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_permission_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_permission_url(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/DownloadView$a;->a:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_intor_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_intor_url(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/DownloadView$a;->a:Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPrivacy_agreement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_private_agreement(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/DownloadView$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->startActivity(Landroid/content/Context;Lcn/haorui/sdk/core/utils/DownloadDialogBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
