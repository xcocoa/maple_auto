.class public Lz2/o000O00O$OooO0O0;
.super Landroid/webkit/WebViewClient;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o000O00O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/o000O00O;


# direct methods
.method private constructor <init>(Lz2/o000O00O;)V
    .locals 0

    iput-object p1, p0, Lz2/o000O00O$OooO0O0;->OoooOoO:Lz2/o000O00O;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/o000O00O;Lz2/o000O00O$OooO0O0;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/o000O00O$OooO0O0;-><init>(Lz2/o000O00O;)V

    return-void
.end method

.method private OooO00o(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "https://www.facebook.com/connect/login_success.html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lz2/o000O00O;->OooOOO0(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "error_reason"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "error"

    invoke-static {v3, v0}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/o000O00O$OooO0O0;->OoooOoO:Lz2/o000O00O;

    invoke-static {v0, p1}, Lz2/o000O00O;->OooOOO(Lz2/o000O00O;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lz2/o000O00O;->OooOOOo(Lz2/o000O00O;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lz2/o000O00O$OooO0O0;->OoooOoO:Lz2/o000O00O;

    invoke-static {p1}, Lz2/o000O00O;->OooOOo0(Lz2/o000O00O;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lz2/o000O00O$OooO0O0;->OoooOoO:Lz2/o000O00O;

    invoke-static {p1}, Lz2/o000O00O;->OooOOo(Lz2/o000O00O;)V

    iget-object p1, p0, Lz2/o000O00O$OooO0O0;->OoooOoO:Lz2/o000O00O;

    invoke-static {p1}, Lz2/o000O00O;->OooOOo0(Lz2/o000O00O;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lz2/o000O00O$OooO0O0;->OoooOoO:Lz2/o000O00O;

    invoke-static {v3}, Lz2/o000O00O;->OooOOoo(Lz2/o000O00O;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lz2/o000O00O;->OooOo00(Lz2/o000O00O;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lz2/o000O00O$OooO0O0;->OoooOoO:Lz2/o000O00O;

    invoke-static {p1, v2}, Lz2/o000O00O;->OooOo0(Lz2/o000O00O;Z)V

    iget-object p1, p0, Lz2/o000O00O$OooO0O0;->OoooOoO:Lz2/o000O00O;

    invoke-static {p1}, Lz2/o000O00O;->OooOOo0(Lz2/o000O00O;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz2/o000O00O;->OooOoO(Ljava/lang/String;)V

    iget-object p1, p0, Lz2/o000O00O$OooO0O0;->OoooOoO:Lz2/o000O00O;

    invoke-static {p1}, Lz2/o000O00O;->OooOo0O(Lz2/o000O00O;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz2/o000Oo0;->OooOO0O(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lz2/o000O00O$OooO0O0;->OoooOoO:Lz2/o000O00O;

    invoke-static {p1}, Lz2/o000O00O;->OooOo0o(Lz2/o000O00O;)V

    :goto_0
    return v1

    :cond_2
    const-string v0, "fbconnect:cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "cancelled"

    invoke-static {p1}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    iget-object p1, p0, Lz2/o000O00O$OooO0O0;->OoooOoO:Lz2/o000O00O;

    invoke-static {p1}, Lz2/o000O00O;->OooOo0o(Lz2/o000O00O;)V

    return v1

    :cond_3
    return v2
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lz2/o000O00O$OooO0O0;->OoooOoO:Lz2/o000O00O;

    invoke-static {p1}, Lz2/o000O00O;->OooOo0o(Lz2/o000O00O;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lz2/o000O00O$OooO0O0;->OoooOoO:Lz2/o000O00O;

    invoke-static {p1}, Lz2/o000O00O;->OooOOOO(Lz2/o000O00O;)V

    const-string p1, "finished"

    invoke-static {p1, p2}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "started"

    invoke-static {v0, p2}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lz2/o000O00O$OooO0O0;->OooO00o(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lz2/o000O00O$OooO0O0;->OoooOoO:Lz2/o000O00O;

    invoke-static {p1}, Lz2/o000O00O;->OooOo0o(Lz2/o000O00O;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "return url: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lz2/o000O00O$OooO0O0;->OooO00o(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
