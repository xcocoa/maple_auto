.class public Lz2/o000O0Oo$OooO0OO;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o000O0Oo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/o000O0Oo;


# direct methods
.method private constructor <init>(Lz2/o000O0Oo;)V
    .locals 0

    iput-object p1, p0, Lz2/o000O0Oo$OooO0OO;->OooO00o:Lz2/o000O0Oo;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/o000O0Oo;Lz2/o000O0Oo$OooO0OO;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/o000O0Oo$OooO0OO;-><init>(Lz2/o000O0Oo;)V

    return-void
.end method

.method private OooO00o(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "twitter://callback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/o000O0Oo$OooO0OO;->OooO00o:Lz2/o000O0Oo;

    const-string v3, "oauth_verifier"

    invoke-static {v0, p1, v3}, Lz2/o000O0Oo;->OooOOo(Lz2/o000O0Oo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lz2/o000O0Oo$OooO0OO;->OooO00o:Lz2/o000O0Oo;

    invoke-static {v0}, Lz2/o000O0Oo;->OooOOo0(Lz2/o000O0Oo;)V

    new-instance v0, Lz2/o000O0Oo$OooO00o;

    iget-object v3, p0, Lz2/o000O0Oo$OooO0OO;->OooO00o:Lz2/o000O0Oo;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lz2/o000O0Oo$OooO00o;-><init>(Lz2/o000O0Oo;Lz2/o000O0Oo$OooO00o;)V

    new-array v3, v2, [Ljava/lang/String;

    aput-object p1, v3, v1

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2

    :cond_0
    const-string v0, "twitter://cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lz2/o000O0Oo$OooO0OO;->OooO00o:Lz2/o000O0Oo;

    invoke-static {p1}, Lz2/o000O0Oo;->OooOo0o(Lz2/o000O0Oo;)V

    return v2

    :cond_1
    return v1
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "finished"

    invoke-static {v0, p2}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lz2/o000O0Oo$OooO0OO;->OooO00o:Lz2/o000O0Oo;

    invoke-static {p1}, Lz2/o000O0Oo;->OooOo0O(Lz2/o000O0Oo;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "started"

    invoke-static {v0, p2}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lz2/o000O0Oo$OooO0OO;->OooO00o(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lz2/o000O0Oo$OooO0OO;->OooO00o:Lz2/o000O0Oo;

    invoke-static {p1}, Lz2/o000O0Oo;->OooOo0o(Lz2/o000O0Oo;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p2}, Lz2/o000O0Oo$OooO0OO;->OooO00o(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
