.class public Lcn/haorui/sdk/activity/HRDownloadDetailActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/activity/HRDownloadDetailActivity$MyAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdsailDownloadDetailActivity"


# instance fields
.field private app_feature:Landroid/widget/TextView;

.field private app_feature_ll:Landroid/widget/LinearLayout;

.field private app_intor_url:Ljava/lang/String;

.field private app_intro:Landroid/widget/TextView;

.field private app_intro_ll:Landroid/widget/LinearLayout;

.field private app_name:Landroid/widget/TextView;

.field private app_name_ll:Landroid/widget/LinearLayout;

.field private app_permiss_ll:Landroid/widget/LinearLayout;

.field private app_permiss_tv:Landroid/widget/TextView;

.field private app_permission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/domain/HRAdInfo$PermissionBean;",
            ">;"
        }
    .end annotation
.end field

.field private app_permission_url:Ljava/lang/String;

.field private app_privacy:Ljava/lang/String;

.field private app_size:Landroid/widget/TextView;

.field private app_size_ll:Landroid/widget/LinearLayout;

.field private app_ver:Landroid/widget/TextView;

.field private app_ver_ll:Landroid/widget/LinearLayout;

.field private developer:Landroid/widget/TextView;

.field private developer_ll:Landroid/widget/LinearLayout;

.field private downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

.field private mBack:Landroid/widget/ImageView;

.field private mListView:Lcn/haorui/sdk/adsail_ad/view/ListViewForScrollView;

.field private mlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/utils/PrivacyBean;",
            ">;"
        }
    .end annotation
.end field

.field private payment_types:Landroid/widget/TextView;

.field private payment_types_ll:Landroid/widget/LinearLayout;

.field private private_agreement_ll:Landroid/widget/LinearLayout;

.field private private_agreement_tv:Landroid/widget/TextView;

.field private score:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->mlist:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/activity/HRDownloadDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_intor_url:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/activity/HRDownloadDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_permission_url:Ljava/lang/String;

    return-object p0
.end method

.method private initData()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "download_bean"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_name_ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_intro()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_intro:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_intro()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_intor_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_intor_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_intor_url:Ljava/lang/String;

    iget-object v2, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_intro:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_intro:Landroid/widget/TextView;

    new-instance v2, Lcn/haorui/sdk/activity/HRDownloadDetailActivity$2;

    invoke-direct {v2, p0}, Lcn/haorui/sdk/activity/HRDownloadDetailActivity$2;-><init>(Lcn/haorui/sdk/activity/HRDownloadDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_intro_ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_permission()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_permission()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_permission:Ljava/util/List;

    invoke-direct {p0}, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->initPrivacy()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_permission_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_permiss_ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_permission_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_permission_url:Ljava/lang/String;

    iget-object v3, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_permiss_tv:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_permiss_tv:Landroid/widget/TextView;

    new-instance v3, Lcn/haorui/sdk/activity/HRDownloadDetailActivity$3;

    invoke-direct {v3, p0}, Lcn/haorui/sdk/activity/HRDownloadDetailActivity$3;-><init>(Lcn/haorui/sdk/activity/HRDownloadDetailActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_feature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_feature:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_feature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_feature_ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getPayment_types()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->payment_types:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getPayment_types()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->payment_types_ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_ver()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_ver:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_ver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_ver_ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_5
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_size()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_size:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_size()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_size_ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_6
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getDeveloper()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->developer:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getDeveloper()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->developer_ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_7
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_permission()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_permission()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_permission:Ljava/util/List;

    invoke-direct {p0}, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->initPrivacy()V

    goto :goto_8

    :cond_a
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_permission_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_permiss_ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_permission_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_permission_url:Ljava/lang/String;

    iget-object v1, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_permiss_tv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_permiss_tv:Landroid/widget/TextView;

    new-instance v1, Lcn/haorui/sdk/activity/HRDownloadDetailActivity$4;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/activity/HRDownloadDetailActivity$4;-><init>(Lcn/haorui/sdk/activity/HRDownloadDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    :goto_8
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_private_agreement()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->private_agreement_ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_private_agreement()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->private_agreement_tv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->private_agreement_tv:Landroid/widget/TextView;

    new-instance v2, Lcn/haorui/sdk/activity/HRDownloadDetailActivity$5;

    invoke-direct {v2, p0, v0}, Lcn/haorui/sdk/activity/HRDownloadDetailActivity$5;-><init>(Lcn/haorui/sdk/activity/HRDownloadDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    return-void
.end method

.method private initPrivacy()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_permission()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->mlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcn/haorui/sdk/activity/HRDownloadDetailActivity$MyAdapter;

    invoke-direct {v1, p0, v0}, Lcn/haorui/sdk/activity/HRDownloadDetailActivity$MyAdapter;-><init>(Lcn/haorui/sdk/activity/HRDownloadDetailActivity;Ljava/util/List;)V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->mListView:Lcn/haorui/sdk/adsail_ad/view/ListViewForScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    sget v0, Lcn/haorui/sdk/R$id;->adsail_ic_back:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->mBack:Landroid/widget/ImageView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_listView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/view/ListViewForScrollView;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->mListView:Lcn/haorui/sdk/adsail_ad/view/ListViewForScrollView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_app_name:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_name:Landroid/widget/TextView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_app_name_ll:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_name_ll:Landroid/widget/LinearLayout;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_app_intro:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_intro:Landroid/widget/TextView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_app_intro_ll:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_intro_ll:Landroid/widget/LinearLayout;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_app_feature:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_feature:Landroid/widget/TextView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_app_feature_ll:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_feature_ll:Landroid/widget/LinearLayout;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_payment_types:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->payment_types:Landroid/widget/TextView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_payment_types_ll:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->payment_types_ll:Landroid/widget/LinearLayout;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_app_ver:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_ver:Landroid/widget/TextView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_app_ver_ll:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_ver_ll:Landroid/widget/LinearLayout;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_app_size:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_size:Landroid/widget/TextView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_app_size_ll:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_size_ll:Landroid/widget/LinearLayout;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_developer:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->developer:Landroid/widget/TextView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_developer_ll:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->developer_ll:Landroid/widget/LinearLayout;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_app_Permiss_ll:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_permiss_ll:Landroid/widget/LinearLayout;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_app_permiss_tv:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->app_permiss_tv:Landroid/widget/TextView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_app_private_agrement_ll:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->private_agreement_ll:Landroid/widget/LinearLayout;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_app_private_agrement_tv:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->private_agreement_tv:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->mBack:Landroid/widget/ImageView;

    new-instance v1, Lcn/haorui/sdk/activity/HRDownloadDetailActivity$1;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/activity/HRDownloadDetailActivity$1;-><init>(Lcn/haorui/sdk/activity/HRDownloadDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Lcn/haorui/sdk/core/utils/DownloadDialogBean;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "download_bean"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcn/haorui/sdk/R$layout;->adsail_activity_download_detail:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->initView()V

    invoke-direct {p0}, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->initData()V

    return-void
.end method
