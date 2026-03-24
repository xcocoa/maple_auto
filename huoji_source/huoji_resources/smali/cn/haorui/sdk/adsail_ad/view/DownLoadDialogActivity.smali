.class public Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity$OnDownloadClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownLoadDialog"

.field public static downloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

.field public static nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;


# instance fields
.field private app_feature:Ljava/lang/String;

.field private app_intro:Ljava/lang/String;

.field private app_name:Ljava/lang/String;

.field private app_privacy:Ljava/lang/String;

.field private app_size:Ljava/lang/String;

.field private app_ver:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private developer:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private mCancel:Landroid/widget/TextView;

.field private mDetail:Landroid/widget/TextView;

.field private mDivider:Landroid/view/View;

.field private mDownloadBtn:Landroid/widget/TextView;

.field private mIconImage:Landroid/widget/ImageView;

.field private mOwner:Landroid/widget/TextView;

.field private mPrivacy:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mVersion:Landroid/widget/TextView;

.field private mlistener:Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity$OnDownloadClickListener;

.field private packageName:Ljava/lang/String;

.field private payment_types:Ljava/lang/String;

.field private privacy_agreement:Ljava/lang/String;

.field private score:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private appInfoIsNull()Z
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->app_name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->app_feature:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->app_intro:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->app_size:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->developer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->payment_types:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initData()V
    .locals 5

    sget-object v0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    const-string v1, "DownLoadDialog"

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getAppName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->app_name:Ljava/lang/String;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getIcon()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->icon:Ljava/lang/String;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getDeveloper()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->developer:Ljava/lang/String;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getApp_intro()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->app_intro:Ljava/lang/String;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getApp_feature()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->app_feature:Ljava/lang/String;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getPayment_types()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->payment_types:Ljava/lang/String;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getApp_ver()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->app_ver:Ljava/lang/String;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getApp_size()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->app_size:Ljava/lang/String;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getApp_privacy()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->app_privacy:Ljava/lang/String;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getPrivacy_agreement()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->privacy_agreement:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownLoadDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->icon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lz2/o000;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lz2/o000;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mIconImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lz2/o000O000;->o00oO0O(Landroid/view/View;)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lz2/o000O000;->o000000(Ljava/lang/String;)Lz2/o000O000;

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->app_name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0x8

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->app_name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->app_ver:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mVersion:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7248\u672c\u53f7 \uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->app_ver:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mVersion:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->developer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mOwner:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f00\u53d1\u8005 \uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->developer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->privacy_agreement:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mPrivacy:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->appInfoIsNull()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mDetail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method private initListener()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mDetail:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mPrivacy:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mDownloadBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 1

    sget v0, Lcn/haorui/sdk/R$id;->adsail_dialog_download_imageview:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mIconImage:Landroid/widget/ImageView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_dialog_download_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mTitle:Landroid/widget/TextView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_dialog_download_version:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mVersion:Landroid/widget/TextView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_dialog_download_owner:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mOwner:Landroid/widget/TextView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_dialog_download_appdetail:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mDetail:Landroid/widget/TextView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_dialog_download_divider:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mDivider:Landroid/view/View;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_dialog_download_privacy:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mPrivacy:Landroid/widget/TextView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_dialog_download_downloadBtn:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mDownloadBtn:Landroid/widget/TextView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_dialog_download_cancel:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mCancel:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcn/haorui/sdk/R$id;->adsail_dialog_download_appdetail:I

    if-ne v0, v1, :cond_0

    new-instance p1, Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-direct {p1}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;-><init>()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->app_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_name(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->app_feature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_feature(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->app_intro:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_intro(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->app_privacy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_privacy(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->app_size:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_size(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->developer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setDeveloper(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->payment_types:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setPayment_types(Ljava/lang/String;)V

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->score:F

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setScore(F)V

    invoke-static {p0, p1}, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->startActivity(Landroid/content/Context;Lcn/haorui/sdk/core/utils/DownloadDialogBean;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcn/haorui/sdk/R$id;->adsail_dialog_download_privacy:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->privacy_agreement:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/haorui/sdk/activity/HRWebviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "EXTRA_AD_DURL_KEY"

    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcn/haorui/sdk/R$id;->adsail_dialog_download_downloadBtn:I

    if-ne v0, v1, :cond_2

    sget-object p1, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    invoke-interface {p1}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/AdSlot;->getDn_start()[Ljava/lang/String;

    move-result-object v8

    sget-object p1, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    invoke-interface {p1}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/AdSlot;->getDn_succ()[Ljava/lang/String;

    move-result-object v9

    sget-object p1, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    invoke-interface {p1}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/AdSlot;->getDn_inst_start()[Ljava/lang/String;

    move-result-object v10

    sget-object p1, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    invoke-interface {p1}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/AdSlot;->getDn_inst_succ()[Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcn/haorui/sdk/core/utils/DownloadUtils;->getInstance()Lcn/haorui/sdk/core/utils/DownloadUtils;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object p1, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    invoke-interface {p1}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object p1

    aget-object v5, p1, v2

    sget-object p1, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    invoke-interface {p1}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/AdSlot;->getAppName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->packageName:Ljava/lang/String;

    invoke-virtual/range {v3 .. v11}, Lcn/haorui/sdk/core/utils/DownloadUtils;->startDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "\u5f00\u59cb\u4e0b\u8f7d"

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/haorui/sdk/R$id;->adsail_dialog_download_cancel:I

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget p1, Lcn/haorui/sdk/R$layout;->adsail_dialog_download_landscape:I

    goto :goto_0

    :cond_0
    sget p1, Lcn/haorui/sdk/R$layout;->adsail_dialog_download:I

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->initView()V

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->initListener()V

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->initData()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    sput-object v0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->downloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    return-void
.end method

.method public setOnDownloadClickListener(Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity$OnDownloadClickListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->mlistener:Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity$OnDownloadClickListener;

    return-void
.end method
