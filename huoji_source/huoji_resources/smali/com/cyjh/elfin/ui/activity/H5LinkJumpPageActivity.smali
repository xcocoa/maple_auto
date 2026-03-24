.class public Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$OooO0O0;
    }
.end annotation


# instance fields
.field private OooooO0:Landroid/widget/LinearLayout;

.field private OooooOO:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private OooO0oO(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    const-string v0, "\u06d9\u06e1\u06e6\u06db\u06e4\u06e6\u06e1\u06e5\u06e1\u06e7\u06dc\u06d8\u06d8\u06df\u06d6\u06df\u06e2\u06ec\u06ec\u06e6\u06db\u06e6\u06e1\u06e1\u06eb\u06e2\u06dc\u06e4\u06d9\u06e8\u06df\u06dc\u06ec\u06e1\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xcb

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x119

    const/16 v3, 0x264

    const v4, -0x10b01403

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06dc\u06df\u06e0\u06e6\u06e8\u06e6\u06d6\u06d9\u06e0\u06df\u06d7\u06d9\u06da\u06d9\u06e7\u06e1\u06d8\u06d7\u06e0\u06dc\u06d8\u06e6\u06d8\u06d9\u06df\u06e7\u06d7\u06ec\u06e1\u06dc\u06d8\u06e8\u06da\u06e6\u06e2\u06da\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06e4\u06e0\u06df\u06d8\u06d8\u06d8\u06e7\u06d6\u06d9\u06e2\u06d6\u06df\u06e0\u06d8\u06d9\u06e0\u06d6\u06e1\u06d9\u06df\u06eb\u06e2\u06e1\u06d8\u06e8\u06ec\u06e2\u06d7\u06e5\u06ec"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->OooooOO:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v0, "\u06dc\u06e0\u06ec\u06e4\u06d7\u06d6\u06d8\u06e6\u06e6\u06e1\u06d8\u06da\u06e5\u06d8\u06d8\u06e7\u06e1\u06dc\u06d8\u06d9\u06d9\u06d6\u06d8\u06d8\u06e7\u06e4\u06d9\u06e6\u06e8\u06d8\u06da\u06d8\u06d6\u06e1\u06dc\u06e6\u06e1\u06e1\u06d8\u06d6\u06d6\u06e8\u06e5\u06e1\u06da\u06e4\u06e5\u06ec"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->OooooOO:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "\u06e7\u06e8\u06e8\u06d8\u06e4\u06d7\u06e0\u06e7\u06eb\u06e6\u06d8\u06dc\u06e4\u06d6\u06d8\u06dc\u06e2\u06ec\u06d7\u06eb\u06e1\u06d7\u06eb\u06e8\u06d8\u06d7\u06dc\u06dc\u06d6\u06e1\u06e5\u06dc\u06ec\u06e0\u06d6\u06d7\u06e5\u06e2\u06da\u06e4\u06dc\u06e5\u06e5\u06d8\u06e6\u06da\u06e1"

    goto :goto_0

    :sswitch_4
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v0, "\u06d8\u06db\u06e6\u06d8\u06db\u06e0\u06e8\u06d8\u06e2\u06e2\u06e4\u06d6\u06e7\u06dc\u06e5\u06e1\u06df\u06e1\u06e0\u06d7\u06da\u06e0\u06e5\u06ec\u06eb\u06e6\u06d8\u06e2\u06e1\u06e5\u06d8\u06e2\u06db\u06db"

    goto :goto_0

    :sswitch_5
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const-string v0, "\u06d6\u06ec\u06eb\u06e1\u06d7\u06e5\u06ec\u06db\u06db\u06ec\u06db\u06e6\u06e5\u06db\u06d8\u06d8\u06e4\u06e5\u06d8\u06d8\u06d7\u06da\u06e6\u06d8\u06d7\u06dc\u06e6\u06e2\u06df\u06d6\u06d8\u06e6\u06e5\u06e2\u06e5\u06e2\u06df\u06da\u06e8\u06db\u06eb\u06d8\u06e1\u06d8\u06d7\u06d9\u06d7\u06da\u06d6\u06db\u06ec\u06e1\u06e1\u06d8\u06d6\u06e6\u06e6\u06da\u06e4\u06e2"

    goto :goto_0

    :sswitch_6
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    const-string v0, "\u06da\u06d9\u06e6\u06d8\u06d9\u06e0\u06d9\u06e5\u06dc\u06eb\u06dc\u06ec\u06e1\u06d7\u06d9\u06eb\u06e8\u06d7\u06d6\u06db\u06df\u06da\u06e0\u06e5\u06d6\u06e4\u06d9\u06e0\u06ec\u06e4\u06db"

    goto :goto_0

    :sswitch_7
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    const-string v0, "\u06e6\u06df\u06e2\u06d8\u06e1\u06e5\u06db\u06e1\u06e8\u06d8\u06e5\u06db\u06e2\u06d7\u06e5\u06eb\u06e6\u06db\u06eb\u06d7\u06db\u06dc\u06d8\u06db\u06db\u06e7\u06e8\u06da\u06e2\u06da\u06eb\u06d6\u06e0\u06d7\u06d8\u06e8\u06e5\u06d6\u06e2\u06e2\u06e1\u06e6\u06e8\u06d8"

    goto :goto_0

    :sswitch_8
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const-string v0, "\u06e0\u06d8\u06e0\u06d9\u06e1\u06d6\u06e6\u06d6\u06e8\u06df\u06e7\u06dc\u06d9\u06e5\u06e6\u06d8\u06e6\u06e5\u06e2\u06eb\u06d8\u06e7\u06ec\u06db\u06da\u06d7\u06e8\u06e4\u06dc\u06db\u06d7\u06d6\u06e6\u06e6\u06e6\u06eb\u06e1\u06db\u06ec\u06d8\u06d8\u06ec\u06e8\u06d9\u06db\u06dc\u06e0\u06e0\u06e1\u06d8\u06d7\u06e5\u06e1\u06e2\u06e0\u06e8\u06d8"

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->OooooOO:Landroid/webkit/WebView;

    new-instance v2, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$OooO00o;

    invoke-direct {v2, p0}, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$OooO00o;-><init>(Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string v0, "\u06db\u06e0\u06e8\u06d8\u06e7\u06df\u06e4\u06e7\u06df\u06df\u06e1\u06e1\u06d8\u06e0\u06e6\u06e5\u06d8\u06eb\u06e1\u06e7\u06d8\u06e6\u06e2\u06e1\u06d8\u06e5\u06e6\u06e7\u06d8\u06e7\u06df\u06e1\u06d7\u06df\u06eb\u06e7\u06df\u06db\u06eb\u06e8"

    goto :goto_0

    :sswitch_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x740b0253 -> :sswitch_5
        -0x724242b0 -> :sswitch_6
        -0x1c20b3fa -> :sswitch_8
        0x13857b0 -> :sswitch_0
        0x59646f2 -> :sswitch_a
        0xffb9d44 -> :sswitch_2
        0x15e0200d -> :sswitch_1
        0x18e99fb7 -> :sswitch_9
        0x1af1dea4 -> :sswitch_7
        0x32de6288 -> :sswitch_4
        0x51e61d00 -> :sswitch_3
    .end sparse-switch
.end method

.method private OooO0oo(Ljava/lang/String;)V
    .locals 8

    const/4 v7, -0x1

    const/4 v3, 0x0

    const-string v0, "\u06e5\u06e5\u06e5\u06df\u06d6\u06e4\u06eb\u06e5\u06e8\u06e7\u06e4\u06e4\u06e5\u06ec\u06d8\u06d8\u06e5\u06d8\u06e0\u06df\u06e1\u06dc\u06df\u06e2\u06df\u06e4\u06e8\u06dc\u06e8\u06e0\u06df\u06e0\u06e0\u06e0\u06e6\u06d6\u06e1\u06d8\u06e5\u06d8\u06dc"

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v5, 0x12f

    xor-int/2addr v0, v5

    xor-int/lit16 v0, v0, 0x337

    const/16 v5, 0x347

    const v6, -0x7205e600

    xor-int/2addr v0, v5

    xor-int/2addr v0, v6

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06df\u06e7\u06eb\u06dc\u06e1\u06d8\u06e5\u06eb\u06dc\u06e4\u06e0\u06e1\u06d7\u06e4\u06e8\u06d8\u06e6\u06e6\u06d6\u06e4\u06d9\u06e4\u06e8\u06e6\u06e5\u06d8\u06d6\u06e4\u06e2\u06e7\u06d7\u06e1\u06ec\u06df\u06d6\u06d8\u06eb\u06eb\u06dc\u06e6\u06e5\u06da\u06e0\u06dc\u06d7\u06da\u06e4\u06eb\u06eb\u06e4\u06d8\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e8\u06d9\u06e5\u06d8\u06df\u06e0\u06e7\u06e4\u06e0\u06eb\u06e4\u06d9\u06e6\u06d8\u06d9\u06e8\u06d8\u06e8\u06ec\u06db\u06e5\u06db\u06d8\u06d8\u06d9\u06d6\u06e1\u06d8\u06eb\u06e7\u06e2\u06e1\u06e6\u06e6\u06d8\u06e8\u06e7\u06eb\u06df\u06da\u06e6\u06d8\u06e0\u06eb\u06e6\u06e8\u06e6\u06d8\u06d8\u06d6\u06d9\u06e0\u06e7\u06e6\u06dc"

    move-object v1, v0

    goto :goto_0

    :sswitch_2
    const v0, 0x7f09043c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const-string v1, "\u06e5\u06d6\u06dc\u06d8\u06d8\u06e1\u06dc\u06da\u06e8\u06d8\u06e0\u06df\u06dc\u06d8\u06e1\u06df\u06e1\u06d8\u06df\u06d7\u06df\u06e6\u06e1\u06e6\u06d8\u06e4\u06db\u06e1\u06d8\u06d7\u06e1\u06e6\u06dc\u06e8\u06d8"

    move-object v4, v0

    goto :goto_0

    :sswitch_3
    invoke-virtual {v4, p1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    const-string v0, "\u06e7\u06d8\u06d6\u06e8\u06ec\u06e8\u06d8\u06e6\u06e6\u06dc\u06d8\u06ec\u06d7\u06e0\u06eb\u06df\u06ec\u06eb\u06dc\u06e8\u06e8\u06df\u06d6\u06d8\u06d8\u06ec\u06d8\u06d8\u06d6\u06e2\u06e8\u06da\u06e2\u06e6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0801c9

    invoke-virtual {v4, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    const-string v0, "\u06e6\u06ec\u06e1\u06dc\u06e2\u06e1\u06d8\u06e1\u06db\u06e5\u06d9\u06e0\u06e8\u06d8\u06da\u06d8\u06e6\u06e4\u06e6\u06e8\u06d8\u06d9\u06e8\u06d6\u06df\u06db\u06d6\u06df\u06da\u06dc\u06d8\u06d7\u06e5\u06e7\u06d8\u06d6\u06d9\u06e8\u06d8\u06e1\u06db\u06e5\u06d8\u06e4\u06eb\u06e2\u06df\u06e0\u06d6"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const-string v0, "\u06e0\u06d7\u06eb\u06eb\u06d7\u06e8\u06d8\u06df\u06e8\u06e8\u06d8\u06ec\u06e8\u06e7\u06d8\u06eb\u06df\u06e6\u06e1\u06e5\u06dc\u06d8\u06e5\u06db\u06e0\u06eb\u06d7\u06eb\u06eb\u06d6\u06e0\u06e4\u06d6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityTvRight(I)V

    const-string v0, "\u06e8\u06e2\u06ec\u06df\u06d6\u06e8\u06e6\u06db\u06d8\u06db\u06da\u06ec\u06e1\u06e1\u06e2\u06dc\u06e0\u06d6\u06d8\u06e6\u06d6\u06e5\u06dc\u06e8\u06d6\u06d8\u06eb\u06d9\u06e7\u06d8\u06da\u06dc\u06d8\u06e6\u06d8\u06e1\u06d8\u06e0\u06d6\u06db"

    move-object v1, v0

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$OooO0O0;

    invoke-direct {v0, p0, v3}, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$OooO0O0;-><init>(Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity$OooO00o;)V

    invoke-virtual {v4, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;)V

    const-string v0, "\u06e2\u06e1\u06e8\u06d8\u06e4\u06df\u06e1\u06e2\u06d8\u06df\u06e0\u06e4\u06eb\u06db\u06d7\u06e0\u06e8\u06e5\u06e1\u06da\u06dc\u06d8\u06e4\u06d7\u06db\u06e0\u06df\u06ec\u06e4\u06e7\u06d8\u06d8\u06e7\u06d8\u06da\u06e7\u06ec\u06eb\u06d8\u06eb\u06db\u06e5\u06d6\u06db\u06d8\u06e7\u06d8\u06ec\u06dc\u06e1\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_8
    const v0, 0x7f090362

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->OooooO0:Landroid/widget/LinearLayout;

    const-string v0, "\u06dc\u06e0\u06e8\u06ec\u06eb\u06e1\u06d8\u06e5\u06e0\u06e8\u06df\u06eb\u06da\u06e4\u06db\u06d8\u06d8\u06e7\u06d8\u06dc\u06d8\u06e7\u06e7\u06e6\u06d8\u06e5\u06da\u06e1\u06d8\u06ec\u06d9\u06eb\u06d6\u06e6\u06e5\u06d8\u06d6\u06d7\u06da\u06d7\u06e8\u06dc\u06db\u06e5\u06d7\u06e7\u06da\u06e2"

    move-object v1, v0

    goto :goto_0

    :sswitch_9
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->OooooOO:Landroid/webkit/WebView;

    const-string v0, "\u06ec\u06db\u06e8\u06d8\u06da\u06ec\u06e2\u06df\u06e7\u06e0\u06e5\u06dc\u06dc\u06da\u06e8\u06e5\u06d8\u06d6\u06e1\u06d9\u06d9\u06ec\u06da\u06df\u06e4\u06e7\u06e7\u06d9\u06d6\u06d8\u06e7\u06e0\u06dc\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_a
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-string v0, "\u06e4\u06eb\u06e7\u06dc\u06e4\u06e8\u06d8\u06e2\u06e2\u06da\u06e6\u06dc\u06dc\u06d8\u06e6\u06d9\u06dc\u06e5\u06e5\u06e2\u06d8\u06dc\u06d8\u06d8\u06e0\u06d8\u06e4\u06e6\u06da\u06d9\u06ec\u06ec\u06db\u06dc\u06e8\u06d8\u06e8\u06eb\u06df\u06e1\u06e2\u06e0\u06e6\u06e1\u06d8\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->OooooO0:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->OooooOO:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "\u06e8\u06eb\u06e4\u06e4\u06d9\u06e1\u06d6\u06e2\u06ec\u06e6\u06e2\u06ec\u06d8\u06e5\u06e5\u06e4\u06df\u06e8\u06d8\u06da\u06d8\u06e6\u06e0\u06e4\u06e1\u06e8\u06e7\u06e8\u06e5\u06e0\u06eb\u06dc\u06e6\u06e2\u06e8\u06e4\u06d8\u06df\u06e4\u06d8\u06df\u06d9\u06d6\u06da\u06e4\u06db\u06e0\u06e6\u06e7\u06dc\u06d6\u06d8\u06e7\u06da\u06e4"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7be8ab2b -> :sswitch_4
        -0x6b712683 -> :sswitch_6
        -0x62881934 -> :sswitch_a
        -0x5d0938c9 -> :sswitch_8
        -0x503f9419 -> :sswitch_0
        -0x4a6bfe35 -> :sswitch_c
        -0x3fcae93a -> :sswitch_b
        -0x2c6d4ed2 -> :sswitch_2
        0x80232c -> :sswitch_5
        0x340743c1 -> :sswitch_3
        0x5c7e09e8 -> :sswitch_1
        0x715cd116 -> :sswitch_7
        0x782b3a47 -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x0

    const-string v0, "\u06e1\u06e6\u06e1\u06dc\u06eb\u06d7\u06db\u06e0\u06e1\u06d8\u06e5\u06d8\u06e5\u06d8\u06e6\u06ec\u06e5\u06d8\u06e7\u06e2\u06d8\u06d8\u06da\u06e7\u06d6\u06d8\u06d8\u06e4\u06e8\u06d8\u06eb\u06e1\u06d6\u06d6\u06e4\u06d8\u06d8\u06d7\u06df\u06d6\u06dc\u06d8\u06d8\u06e6\u06e8\u06d8\u06da\u06e1\u06ec"

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v5, 0x267

    xor-int/2addr v2, v5

    xor-int/lit16 v2, v2, 0xb2

    const/16 v5, 0x3cc

    const v6, -0x48682edb

    xor-int/2addr v2, v5

    xor-int/2addr v2, v6

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06e5\u06dc\u06d8\u06e0\u06e7\u06d9\u06dc\u06e1\u06d7\u06e0\u06e1\u06e7\u06e5\u06eb\u06d7\u06e1\u06e4\u06d8\u06d8\u06d9\u06e0\u06d6\u06d8\u06d6\u06d8\u06e6\u06d8\u06df\u06dc\u06db\u06d8\u06e7\u06e5\u06d7\u06da\u06d6\u06d9\u06e5\u06e4"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d7\u06d8\u06d8\u06e8\u06e5\u06df\u06eb\u06e2\u06e4\u06d7\u06e1\u06e8\u06d8\u06dc\u06e1\u06e5\u06d6\u06d6\u06db\u06dc\u06ec\u06e6\u06e0\u06e4\u06e2\u06db\u06ec\u06e4\u06d9\u06d8\u06dc\u06e0\u06da\u06e2\u06e0\u06eb\u06df"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "\u06e4\u06d6\u06dc\u06ec\u06ec\u06dc\u06e8\u06d9\u06e7\u06e0\u06e2\u06dc\u06da\u06ec\u06d6\u06e0\u06d8\u06e1\u06d8\u06db\u06e2\u06db\u06d6\u06e6\u06e6\u06d8\u06d6\u06e0\u06e6\u06d8\u06e1\u06d8\u06e4\u06dc\u06d7\u06e4\u06d8\u06d9\u06e4\u06e2\u06dc\u06db\u06dc\u06e6\u06e0\u06dc\u06df\u06d6\u06d8\u06e1\u06e5\u06e0\u06e0\u06e8\u06d9\u06e7\u06df\u06df"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const-string v0, "\u06e5\u06df\u06e5\u06db\u06db\u06e4\u06d7\u06e2\u06e4\u06e6\u06db\u06d8\u06df\u06e8\u06db\u06ec\u06e8\u06dc\u06db\u06e0\u06da\u06df\u06da\u06df\u06e2\u06e5\u06d8\u06dc\u06d6\u06d8\u06d8\u06e6\u06e1\u06d8\u06d8\u06e1\u06d8\u06e1\u06d9\u06d7\u06e6\u06d8\u06d6\u06e6\u06ec\u06eb\u06e1\u06e7\u06d6\u06df\u06e8\u06d8"

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v0, "\u06db\u06db\u06e0\u06ec\u06d6\u06e7\u06e5\u06e5\u06e4\u06ec\u06e8\u06ec\u06d8\u06e6\u06e1\u06d8\u06e7\u06e6\u06e1\u06e4\u06e8\u06e4\u06eb\u06e7\u06d7\u06e5\u06e7\u06ec\u06e7\u06d9\u06ec\u06eb\u06e2\u06d8\u06d8\u06e0\u06df\u06e5\u06ec\u06d6\u06e7\u06df\u06d8\u06e2\u06e1\u06db\u06d9\u06e7\u06e1\u06e5\u06d8"

    move-object v4, v2

    goto :goto_0

    :sswitch_5
    const-class v0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "\u06d8\u06db\u06dc\u06d8\u06da\u06e5\u06da\u06e0\u06d6\u06e6\u06df\u06e0\u06da\u06d8\u06e2\u06dc\u06d8\u06d8\u06e0\u06e1\u06dc\u06d6\u06e1\u06d8\u06da\u06da\u06d6\u06d8\u06d8\u06d7\u06e2\u06d8\u06e2\u06e6\u06d8"

    move-object v3, v2

    goto :goto_0

    :sswitch_6
    const-class v0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u06d9\u06df\u06e5\u06e7\u06e5\u06e8\u06d8\u06df\u06df\u06e6\u06d8\u06ec\u06d7\u06e8\u06e7\u06ec\u06e4\u06e0\u06e6\u06d7\u06e1\u06dc\u06ec\u06ec\u06e1\u06dc\u06d8\u06dc\u06e8\u06df\u06e1\u06e4\u06e1\u06d8\u06d9\u06df\u06da\u06e5\u06ec\u06e8\u06dc\u06ec\u06ec\u06da\u06db\u06df"

    goto :goto_0

    :sswitch_7
    invoke-direct {p0, v3}, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->OooO0oo(Ljava/lang/String;)V

    const-string v0, "\u06d8\u06e1\u06e8\u06d8\u06d9\u06e0\u06eb\u06d7\u06df\u06e8\u06ec\u06df\u06e1\u06dc\u06eb\u06e8\u06e2\u06e4\u06e5\u06e6\u06eb\u06e6\u06e0\u06ec\u06e2\u06db\u06e7\u06ec\u06da\u06db\u06df\u06d8\u06da\u06ec\u06e1\u06eb"

    goto :goto_0

    :sswitch_8
    invoke-direct {p0, v1}, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->OooO0oO(Ljava/lang/String;)V

    const-string v0, "\u06e2\u06eb\u06e1\u06d8\u06e2\u06df\u06e8\u06dc\u06df\u06e7\u06e5\u06e8\u06dc\u06d8\u06db\u06dc\u06ec\u06e2\u06e5\u06e7\u06d8\u06d7\u06df\u06eb\u06e7\u06e5\u06e2\u06e4\u06df\u06e7\u06da\u06eb\u06ec\u06db\u06e1\u06d8\u06e1\u06ec\u06eb"

    goto :goto_0

    :sswitch_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6eef199e -> :sswitch_4
        -0x371eecf7 -> :sswitch_2
        0x2214c74c -> :sswitch_5
        0x31576959 -> :sswitch_9
        0x354c6c5a -> :sswitch_3
        0x3810f7c2 -> :sswitch_8
        0x451c09bf -> :sswitch_1
        0x46318f16 -> :sswitch_7
        0x56425de2 -> :sswitch_0
        0x6a36e3ae -> :sswitch_6
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "\u06e7\u06e2\u06d8\u06d8\u06e8\u06e0\u06e6\u06d8\u06ec\u06e5\u06e6\u06d8\u06df\u06e8\u06e2\u06ec\u06db\u06da\u06da\u06dc\u06e2\u06e5\u06df\u06e5\u06d8\u06e0\u06da\u06e8\u06e4\u06e1\u06d6\u06dc\u06e4\u06e8\u06d8\u06e4\u06e0\u06e8\u06d8\u06db\u06d6\u06e7\u06d7\u06eb\u06da\u06e7\u06e5\u06df\u06d9\u06ec\u06e7\u06df\u06e2\u06ec"

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x3e3

    xor-int/2addr v3, v4

    xor-int/lit16 v3, v3, 0x380

    const/16 v4, 0xde

    const v5, -0x6442e25c

    xor-int/2addr v3, v4

    xor-int/2addr v3, v5

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06d6\u06d8\u06e1\u06da\u06eb\u06e5\u06e7\u06e2\u06d8\u06d9\u06eb\u06e2\u06dc\u06d9\u06eb\u06e5\u06da\u06da\u06d9\u06db\u06df\u06e4\u06df\u06d8\u06eb\u06eb\u06e6\u06e0\u06e5\u06e8\u06d8\u06e1\u06d8\u06dc\u06d9\u06eb\u06d8\u06e4\u06dc\u06d8\u06ec\u06db\u06e8\u06db\u06ec\u06d8\u06e4\u06ec\u06e7"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onDestroy()V

    const-string v0, "\u06db\u06e5\u06d6\u06df\u06e2\u06e8\u06d8\u06e0\u06da\u06d8\u06d8\u06df\u06d7\u06e8\u06e2\u06d8\u06e7\u06d8\u06e0\u06e8\u06e6\u06e0\u06e7\u06d9\u06df\u06e2\u06d6\u06eb\u06dc\u06ec\u06da\u06d7\u06e2\u06da\u06ec\u06d6\u06d8\u06d9\u06d7\u06d9\u06e7\u06db\u06d7\u06d7\u06db"

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->OooooOO:Landroid/webkit/WebView;

    const-string v0, "\u06e7\u06e4\u06d8\u06dc\u06e1\u06d8\u06e5\u06e5\u06eb\u06e2\u06df\u06e8\u06d8\u06d8\u06d9\u06d9\u06e4\u06e0\u06da\u06ec\u06e1\u06e5\u06e8\u06e1\u06e1\u06d9\u06ec\u06d7\u06e8\u06d8"

    goto :goto_0

    :sswitch_3
    const v3, -0x2dae30b

    const-string v0, "\u06d7\u06e2\u06e5\u06d8\u06eb\u06d6\u06e5\u06e7\u06eb\u06d6\u06e0\u06e1\u06dc\u06d8\u06d6\u06ec\u06ec\u06dc\u06df\u06e6\u06e8\u06e0\u06e8\u06e7\u06e4\u06e0\u06d8\u06ec\u06e8\u06e8\u06d8\u06dc\u06e4\u06da\u06e7\u06e5\u06e0\u06e4\u06d6\u06d9\u06e6\u06e2\u06e4"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06d7\u06df\u06dc\u06ec\u06dc\u06eb\u06e8\u06d6\u06d6\u06d8\u06db\u06e0\u06e6\u06d7\u06e4\u06e1\u06d8\u06e4\u06db\u06db\u06e4\u06e8\u06e6\u06df\u06e4\u06e0\u06dc\u06e4\u06e1\u06d8\u06df\u06ec\u06d8\u06dc\u06e0\u06e6\u06d8\u06e0\u06e4\u06e7\u06e4\u06d7\u06e4\u06d9\u06ec\u06d8\u06e1\u06e7\u06dc\u06d8\u06e1\u06d6\u06df\u06d6\u06eb\u06e2\u06d8\u06d6\u06e0"

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06e6\u06e5\u06e8\u06d8\u06e2\u06d9\u06ec\u06e1\u06d8\u06e0\u06e0\u06e6\u06e1\u06d8\u06e6\u06e7\u06e1\u06e0\u06e1\u06e0\u06eb\u06e1\u06d6\u06d8\u06e5\u06e5\u06d8\u06d8\u06e1\u06df\u06dc\u06df\u06e1\u06e6\u06dc\u06d8\u06d8\u06e6\u06df\u06dc\u06e5\u06e2\u06e0\u06e1\u06e1\u06e6\u06e0\u06e4\u06d7\u06e1\u06e6\u06d7\u06e1\u06d6\u06e8\u06e8\u06d9\u06e2"

    goto :goto_1

    :sswitch_6
    const v4, -0x3cf204f0

    const-string v0, "\u06d8\u06e5\u06dc\u06d8\u06db\u06e4\u06e8\u06d8\u06e4\u06e6\u06e6\u06d8\u06d9\u06d6\u06eb\u06dc\u06d6\u06e0\u06ec\u06eb\u06e4\u06d7\u06d9\u06e6\u06d8\u06d8\u06d8\u06e4\u06db\u06eb\u06d7\u06d6\u06e6\u06e8\u06d8\u06e5\u06d9\u06e6\u06d8\u06d6\u06d6\u06e6\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    if-eqz v1, :cond_0

    const-string v0, "\u06d9\u06dc\u06da\u06d6\u06d9\u06ec\u06ec\u06e0\u06ec\u06da\u06da\u06df\u06e4\u06e0\u06e5\u06d8\u06e7\u06e5\u06d6\u06db\u06e6\u06dc\u06d8\u06e6\u06db\u06dc\u06e1\u06e0\u06d6\u06d8\u06da\u06dc\u06db"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e1\u06e1\u06e0\u06d6\u06e1\u06d9\u06d8\u06e5\u06e4\u06e1\u06e6\u06da\u06d7\u06dc\u06e8\u06e8\u06e5\u06e4\u06d7\u06e4\u06e5\u06e4\u06d7\u06ec\u06e8\u06ec\u06d6\u06eb\u06db\u06eb\u06e1\u06ec\u06d9\u06dc\u06e4\u06e5\u06d8\u06d8\u06e2\u06eb\u06db\u06d7\u06d7\u06e7\u06d7\u06dc\u06df\u06e2\u06d9\u06eb\u06d6\u06e7\u06da\u06e1\u06d8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06da\u06e8\u06e1\u06e8\u06ec\u06e8\u06ec\u06e1\u06e7\u06e0\u06e5\u06d9\u06e4\u06dc\u06dc\u06e5\u06e1\u06d9\u06d7\u06e2\u06e1\u06d8\u06ec\u06e5\u06e8\u06e1\u06e6\u06ec\u06e0\u06e5\u06e8\u06dc\u06db\u06e4\u06e2\u06db\u06da"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06e2\u06df\u06e8\u06ec\u06e0\u06d7\u06e8\u06e4\u06e0\u06e1\u06df\u06ec\u06e1\u06e6\u06e8\u06d8\u06e0\u06e1\u06e8\u06e1\u06e1\u06df\u06dc\u06e4\u06e2\u06e8\u06df\u06dc\u06d7\u06eb\u06e1\u06d7\u06d7\u06e6\u06d8\u06da\u06e2\u06db"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06eb\u06d8\u06d6\u06e2\u06e0\u06e1\u06e2\u06df\u06d8\u06da\u06dc\u06e1\u06e1\u06df\u06e4\u06e5\u06e1\u06d8\u06e4\u06e6\u06e4\u06e6\u06ec\u06e2\u06d7\u06df\u06e1\u06e2\u06d7\u06d6\u06db\u06e0\u06ec\u06e8\u06e4\u06ec\u06e5\u06da\u06e1\u06e4\u06e7\u06e0"

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->OooooO0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const-string v0, "\u06db\u06e1\u06db\u06e5\u06d7\u06d9\u06dc\u06e5\u06e1\u06e2\u06e4\u06e6\u06e6\u06da\u06da\u06e8\u06d8\u06d7\u06e5\u06df\u06e6\u06d7\u06d6\u06e4\u06d7\u06e6\u06d7\u06eb\u06d9\u06d6\u06e4\u06dc\u06e5\u06da\u06e8\u06e4\u06db\u06dc\u06d6\u06e8\u06eb\u06db\u06df\u06db\u06e8\u06e1\u06d8\u06eb\u06e0\u06e4\u06dc\u06ec\u06e5"

    goto :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->OooooOO:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    const-string v0, "\u06dc\u06e1\u06e7\u06d8\u06d8\u06e1\u06da\u06db\u06d9\u06e2\u06e5\u06e7\u06e6\u06d7\u06d7\u06e7\u06df\u06da\u06e8\u06d8\u06e2\u06e5\u06e5\u06e1\u06e1\u06e7\u06d7\u06e6\u06e2\u06d6\u06db\u06d8\u06d8\u06ec\u06e5\u06d6\u06e4\u06e4\u06da\u06e0\u06e4\u06db\u06e8\u06d9\u06e2\u06d9\u06df\u06dc\u06d8\u06d7\u06e2\u06ec\u06e1\u06e1\u06e1\u06e4\u06dc"

    goto :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->OooooOO:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const-string v0, "\u06d7\u06d9\u06e5\u06d8\u06d6\u06d7\u06e5\u06ec\u06e1\u06d6\u06ec\u06e5\u06d9\u06dc\u06e8\u06dc\u06d8\u06e0\u06db\u06d6\u06d8\u06d8\u06e7\u06eb\u06d6\u06dc\u06e2\u06df\u06ec\u06d6\u06e5\u06e6\u06eb\u06d9\u06e6\u06db\u06df\u06dc\u06ec"

    goto :goto_0

    :sswitch_e
    iput-object v2, p0, Lcom/cyjh/elfin/ui/activity/H5LinkJumpPageActivity;->OooooOO:Landroid/webkit/WebView;

    const-string v0, "\u06dc\u06e2\u06e5\u06e8\u06db\u06e5\u06e4\u06ec\u06e1\u06d8\u06df\u06e6\u06dc\u06d8\u06d7\u06e1\u06d8\u06e0\u06ec\u06e5\u06d8\u06e7\u06d6\u06e7\u06e2\u06dc\u06d6\u06e7\u06e6\u06d8\u06d6\u06dc\u06e5\u06d9\u06da\u06eb\u06e2\u06e4"

    goto :goto_0

    :sswitch_f
    const-string v0, "\u06dc\u06e2\u06e5\u06e8\u06db\u06e5\u06e4\u06ec\u06e1\u06d8\u06df\u06e6\u06dc\u06d8\u06d7\u06e1\u06d8\u06e0\u06ec\u06e5\u06d8\u06e7\u06d6\u06e7\u06e2\u06dc\u06d6\u06e7\u06e6\u06d8\u06d6\u06dc\u06e5\u06d9\u06da\u06eb\u06e2\u06e4"

    goto :goto_0

    :sswitch_10
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x77043f04 -> :sswitch_c
        -0x6c5c88ed -> :sswitch_10
        -0x63a11af1 -> :sswitch_3
        -0x5e3ffd51 -> :sswitch_1
        -0x443f0834 -> :sswitch_e
        -0x23319b97 -> :sswitch_b
        0xb3c26d2 -> :sswitch_2
        0x5515303b -> :sswitch_0
        0x6a300cb4 -> :sswitch_d
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7054c4cf -> :sswitch_f
        -0x24b9c265 -> :sswitch_4
        -0xccb829 -> :sswitch_6
        0xa38150c -> :sswitch_a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x7db03088 -> :sswitch_5
        -0x3679fe17 -> :sswitch_9
        -0x6098b2a -> :sswitch_7
        0xb2813d8 -> :sswitch_8
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    const-string v0, "\u06e8\u06e4\u06e0\u06e0\u06dc\u06dc\u06d7\u06d6\u06e2\u06e1\u06d8\u06da\u06e0\u06e8\u06e8\u06e2\u06df\u06e4\u06eb\u06e2\u06dc\u06e5\u06dc\u06e7\u06d8\u06db\u06d8\u06db\u06e6\u06e1\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3d2

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x34

    const/16 v2, 0x3a

    const v3, -0x1b278fae

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06db\u06e8\u06d8\u06e0\u06db\u06e1\u06d8\u06db\u06dc\u06d7\u06db\u06da\u06e6\u06d8\u06e0\u06df\u06e8\u06ec\u06dc\u06e7\u06e7\u06e2\u06dc\u06e7\u06e8\u06e1\u06d8\u06ec\u06da\u06dc\u06d8\u06df\u06d6\u06e0\u06e8\u06d6\u06e6\u06d8\u06e5\u06db\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const-string v0, "\u06ec\u06ec\u06ec\u06d7\u06e2\u06dc\u06e1\u06d9\u06d6\u06d8\u06db\u06d7\u06e4\u06dc\u06db\u06e0\u06df\u06eb\u06e6\u06d8\u06e4\u06d9\u06d8\u06df\u06db\u06e8\u06d8\u06e7\u06e0\u06eb\u06e7\u06df\u06e1"

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    const-string v0, "\u06e8\u06e1\u06e7\u06e2\u06dc\u06e7\u06db\u06eb\u06ec\u06e0\u06e1\u06e2\u06eb\u06d9\u06eb\u06d6\u06eb\u06e5\u06e7\u06df\u06d6\u06d6\u06e2\u06db\u06e2\u06df\u06d8\u06e7\u06d8\u06e7\u06db\u06e8\u06d8\u06d9\u06e7\u06e8\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7dfac862 -> :sswitch_2
        -0x5f7e64ed -> :sswitch_0
        -0x4827df41 -> :sswitch_1
        0x7e3f6f88 -> :sswitch_3
    .end sparse-switch
.end method

.method public onResume()V
    .locals 4

    const-string v0, "\u06d8\u06e7\u06e0\u06ec\u06d7\u06dc\u06e4\u06e4\u06e8\u06d8\u06e7\u06dc\u06e1\u06d7\u06d7\u06e6\u06d8\u06e8\u06db\u06e1\u06d8\u06db\u06ec\u06da\u06d6\u06e4\u06e5\u06d8\u06e0\u06d9\u06da\u06ec\u06db\u06e6\u06d8\u06e1\u06e4\u06e8\u06d8\u06d8\u06d8\u06ec\u06e0\u06da\u06da\u06d6\u06e1\u06dc\u06e4\u06e1\u06e5\u06dc\u06e1\u06d8\u06d8\u06dc\u06ec\u06d6\u06d8\u06e4\u06d6\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x17b

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x218

    const/16 v2, 0x107

    const v3, -0x2e78b754

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06ec\u06e5\u06e2\u06db\u06da\u06df\u06db\u06e6\u06ec\u06d9\u06e2\u06e8\u06d7\u06ec\u06ec\u06d8\u06e8\u06d6\u06e0\u06e1\u06da\u06d9\u06d7\u06eb\u06d6\u06e2\u06ec\u06e0\u06d6\u06d9\u06e2\u06d7\u06da\u06eb\u06db\u06d8\u06e7\u06e1\u06da\u06e1\u06db\u06e8\u06e1\u06dc\u06d8\u06d7\u06e6\u06dc\u06d8\u06d8\u06e7\u06e6\u06da\u06e7\u06db"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "\u06d6\u06e4\u06d6\u06e7\u06dc\u06d9\u06d9\u06e5\u06e4\u06d6\u06d6\u06dc\u06e2\u06e1\u06ec\u06e5\u06df\u06e6\u06d8\u06d9\u06d6\u06d6\u06d8\u06e5\u06d6\u06e6\u06d8\u06df\u06d8\u06e5\u06d8\u06d8\u06df\u06e8\u06d8\u06e4\u06d6\u06d8\u06e0\u06dc\u06eb\u06e2\u06db\u06e0\u06e1\u06eb\u06e1\u06d8\u06d6\u06eb\u06d9\u06e1\u06e0\u06d9\u06e5\u06e6\u06e5\u06d8\u06eb\u06d7\u06da"

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    const-string v0, "\u06e8\u06e1\u06e8\u06d7\u06db\u06e6\u06da\u06e5\u06d8\u06d7\u06e7\u06e2\u06d9\u06d6\u06ec\u06df\u06e8\u06d7\u06e4\u06e4\u06e6\u06d8\u06d7\u06e5\u06e8\u06dc\u06da\u06e6\u06eb\u06d9\u06ec\u06e1\u06e2\u06d6\u06e5\u06e6\u06db\u06db\u06d7\u06e6\u06d8\u06e5\u06e5\u06e5\u06d8\u06da\u06d7\u06e5\u06d6\u06df"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0xc5fbbcb -> :sswitch_2
        0xfa1c722 -> :sswitch_0
        0x37fcfb2c -> :sswitch_3
        0x3e74a365 -> :sswitch_1
    .end sparse-switch
.end method
