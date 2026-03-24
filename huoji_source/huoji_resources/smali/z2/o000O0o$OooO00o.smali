.class public Lz2/o000O0o$OooO00o;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o000O0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO00o"
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/o000O0o;


# direct methods
.method private constructor <init>(Lz2/o000O0o;)V
    .locals 0

    iput-object p1, p0, Lz2/o000O0o$OooO00o;->OooO00o:Lz2/o000O0o;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/o000O0o;Lz2/o000O0o$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/o000O0o$OooO00o;-><init>(Lz2/o000O0o;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lz2/o000O0o$OooO00o;->OooO00o:Lz2/o000O0o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lz2/o000O0o;->OooO00o(Lz2/o000O0o;Z)V

    iget-object v0, p0, Lz2/o000O0o$OooO00o;->OooO00o:Lz2/o000O0o;

    invoke-static {v0}, Lz2/o000O0o;->OooO0O0(Lz2/o000O0o;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lz2/o000O0o$OooO00o;->OooO00o:Lz2/o000O0o;

    invoke-static {v0}, Lz2/o000O0o;->OooO0O0(Lz2/o000O0o;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/o000O0o$OooO00o;->OooO00o:Lz2/o000O0o;

    invoke-static {v0}, Lz2/o000O0o;->OooO0O0(Lz2/o000O0o;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lz2/o000O0o$OooO00o;->OooO00o:Lz2/o000O0o;

    invoke-static {v0}, Lz2/o000O0o;->OooO0O0(Lz2/o000O0o;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
