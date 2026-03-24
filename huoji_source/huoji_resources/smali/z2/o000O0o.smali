.class public Lz2/o000O0o;
.super Landroid/app/Dialog;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/o000O0o$OooO00o;
    }
.end annotation


# instance fields
.field private OoooOoO:Ljava/lang/String;

.field private OoooOoo:Landroid/webkit/WebViewClient;

.field private Ooooo00:Landroid/webkit/WebView;

.field private Ooooo0o:Landroid/widget/LinearLayout;

.field private OooooO0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebViewClient;)V
    .locals 1

    const v0, 0x1030006

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lz2/o000O0o;->OoooOoO:Ljava/lang/String;

    iput-object p3, p0, Lz2/o000O0o;->OoooOoo:Landroid/webkit/WebViewClient;

    return-void
.end method

.method public static synthetic OooO00o(Lz2/o000O0o;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/o000O0o;->OooO0oO(Z)V

    return-void
.end method

.method public static synthetic OooO0O0(Lz2/o000O0o;)Landroid/webkit/WebViewClient;
    .locals 0

    iget-object p0, p0, Lz2/o000O0o;->OoooOoo:Landroid/webkit/WebViewClient;

    return-object p0
.end method

.method private OooO0o(Landroid/widget/RelativeLayout;)V
    .locals 3

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lz2/o000O0o;->Ooooo00:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lz2/o000O0o;->Ooooo00:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lz2/o000O0o;->OoooOoo:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/WebViewClient;

    invoke-direct {v0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object v0, p0, Lz2/o000O0o;->OoooOoo:Landroid/webkit/WebViewClient;

    :cond_0
    iget-object v0, p0, Lz2/o000O0o;->Ooooo00:Landroid/webkit/WebView;

    new-instance v1, Lz2/o000O0o$OooO00o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lz2/o000O0o$OooO00o;-><init>(Lz2/o000O0o;Lz2/o000O0o$OooO00o;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lz2/o000O0o;->Ooooo00:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lz2/o000O0o;->Ooooo00:Landroid/webkit/WebView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private OooO0o0(Landroid/widget/RelativeLayout;)V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lz2/o000O0o;->Ooooo0o:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v0, v2}, Lz2/o00O000;->OooOOO(Landroid/content/Context;F)I

    move-result v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lz2/o000O0o;->Ooooo0o:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lz2/o000O0o;->OooooO0:Ljava/lang/String;

    const/4 v2, -0x2

    if-eqz v1, :cond_0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v0, v4}, Lz2/o00O000;->OooOOO(Landroid/content/Context;F)I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0x10

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lz2/o000O0o;->OooooO0:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lz2/o000O0o;->Ooooo0o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lz2/o000O0o;->Ooooo0o:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private OooO0oO(Z)V
    .locals 1

    iget-object v0, p0, Lz2/o000O0o;->Ooooo0o:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public OooO0OO()V
    .locals 2

    iget-object v0, p0, Lz2/o000O0o;->Ooooo00:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/o000O0o;->OoooOoO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public OooO0Oo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/o000O0o;->OooooO0:Ljava/lang/String;

    return-void
.end method

.method public dismiss()V
    .locals 0

    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-direct {p0, p1}, Lz2/o000O0o;->OooO0o(Landroid/widget/RelativeLayout;)V

    invoke-direct {p0, p1}, Lz2/o000O0o;->OooO0o0(Landroid/widget/RelativeLayout;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v1}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
