.class public Lz2/ha;
.super Lz2/i3;
.source ""

# interfaces
.implements Lz2/gd;


# instance fields
.field private OoooOoO:Landroid/widget/TextView;

.field private OoooOoo:Landroid/widget/TextView;

.field private Ooooo00:Landroid/webkit/WebView;

.field private Ooooo0o:Landroid/widget/LinearLayout;

.field private OooooO0:Lz2/vc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/i3;-><init>()V

    return-void
.end method

.method private OooOo(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090305

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lz2/ha;->OoooOoO:Landroid/widget/TextView;

    const v0, 0x7f090304

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lz2/ha;->OoooOoo:Landroid/widget/TextView;

    const v0, 0x7f0902e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lz2/ha;->Ooooo00:Landroid/webkit/WebView;

    const v0, 0x7f090323

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lz2/ha;->Ooooo0o:Landroid/widget/LinearLayout;

    return-void
.end method

.method private OooOo0o(Lcom/cyjh/http/bean/response/NoticeBean;)V
    .locals 8

    iget-object v0, p0, Lz2/ha;->OoooOoO:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/cyjh/http/bean/response/NoticeBean;->NoticeTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lz2/ha;->OoooOoo:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/cyjh/http/bean/response/NoticeBean;->NoticeTime:J

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1, v2, v3}, Lz2/ae;->Oooo0(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lz2/ha;->Ooooo00:Landroid/webkit/WebView;

    iget-object v4, p1, Lcom/cyjh/http/bean/response/NoticeBean;->NoticeContent:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "text/html"

    const-string v6, "utf-8"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lz2/ha;->Ooooo00:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object p1, p0, Lz2/ha;->Ooooo00:Landroid/webkit/WebView;

    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public static OooOoO0(J)Lz2/ha;
    .locals 3

    new-instance v0, Lz2/ha;

    invoke-direct {v0}, Lz2/ha;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-class v2, Lz2/ha;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public OooO0OO(Lcom/cyjh/http/bean/response/NoticeBean;)V
    .locals 1

    invoke-direct {p0, p1}, Lz2/ha;->OooOo0o(Lcom/cyjh/http/bean/response/NoticeBean;)V

    iget-object p1, p0, Lz2/ha;->Ooooo0o:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public OooOo00()I
    .locals 1

    const v0, 0x7f0c00f1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lz2/i3;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lz2/ha;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance p1, Lz2/vc;

    invoke-direct {p1, p0}, Lz2/vc;-><init>(Lz2/gd;)V

    iput-object p1, p0, Lz2/ha;->OooooO0:Lz2/vc;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Lz2/vc;->OooO0OO(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lz2/ha;->OooooO0:Lz2/vc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/vc;->OooO0o()V

    :cond_0
    return-void
.end method

.method public onFail()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const-class v0, Lz2/ha;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/bh;->OooO0OO(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-class v0, Lz2/ha;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/bh;->OooO0Oo(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lz2/ha;->OooOo(Landroid/view/View;)V

    return-void
.end method
