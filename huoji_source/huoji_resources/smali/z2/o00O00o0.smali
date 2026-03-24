.class public Lz2/o00O00o0;
.super Landroid/webkit/WebViewClient;
.source ""


# static fields
.field private static final OooO:Ljava/lang/String; = "double_tap_toast_count"

.field private static OooO0oO:Ljava/lang/String; = null

.field private static final OooO0oo:Ljava/lang/String; = "WebViewSettings"


# instance fields
.field private OooO00o:Ljava/lang/Object;

.field private OooO0O0:Landroid/webkit/WebView;

.field private OooO0OO:Ljava/lang/String;

.field private OooO0Oo:Z

.field private OooO0o:I

.field private OooO0o0:Z


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Object;ZZI)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lz2/o00O00o0;->OooO0O0:Landroid/webkit/WebView;

    iput-object p2, p0, Lz2/o00O00o0;->OooO0OO:Ljava/lang/String;

    iput-object p3, p0, Lz2/o00O00o0;->OooO00o:Ljava/lang/Object;

    iput-boolean p4, p0, Lz2/o00O00o0;->OooO0Oo:Z

    iput-boolean p5, p0, Lz2/o00O00o0;->OooO0o0:Z

    iput p6, p0, Lz2/o00O00o0;->OooO0o:I

    return-void
.end method

.method private OooO()V
    .locals 9

    iget-object v0, p0, Lz2/o00O00o0;->OooO0O0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lz2/o00O00o0;->OooO0oO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz2/o00O00o0;->OooO0OO:Ljava/lang/String;

    const-string v2, "@src"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lz2/o00O00o0;->OooO0o:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@color"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lz2/o00O00o0;->OooO0O0:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v3, p0, Lz2/o00O00o0;->OooO0O0:Landroid/webkit/WebView;

    const/4 v4, 0x0

    const-string v6, "text/html"

    const-string v7, "utf-8"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lz2/o00O00o0;->OooO0O0:Landroid/webkit/WebView;

    iget v1, p0, Lz2/o00O00o0;->OooO0o:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method public static synthetic OooO00o(Lz2/o00O00o0;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lz2/o00O00o0;->OooO0O0:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/o00O00o0;)V
    .locals 0

    invoke-direct {p0}, Lz2/o00O00o0;->OooO()V

    return-void
.end method

.method private OooO0OO()V
    .locals 4

    iget-object v0, p0, Lz2/o00O00o0;->OooO0O0:Landroid/webkit/WebView;

    new-instance v1, Lz2/o00O00o0$OooO00o;

    invoke-direct {v1, p0}, Lz2/o00O00o0$OooO00o;-><init>(Lz2/o00O00o0;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    iget-object v0, p0, Lz2/o00O00o0;->OooO0O0:Landroid/webkit/WebView;

    const-string v1, "<html></html>"

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lz2/o00O00o0;->OooO0O0:Landroid/webkit/WebView;

    iget v1, p0, Lz2/o00O00o0;->OooO0o:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method private static OooO0Oo(Landroid/webkit/WebView;)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 p0, 0x1

    new-array v6, p0, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object v0, v6, v1

    new-array v7, p0, [Ljava/lang/Object;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p0, v7, v1

    const-string v3, "setDisplayZoomControls"

    invoke-static/range {v2 .. v7}, Lz2/o00O000;->OooOooO(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static OooO0o(Landroid/content/Context;)V
    .locals 3

    const-string v0, "WebViewSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "double_tap_toast_count"

    const/4 v2, 0x1

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private OooO0o0(Landroid/webkit/WebView;)V
    .locals 3

    iget-object v0, p0, Lz2/o00O00o0;->OooO00o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v1, p0, Lz2/o00O00o0;->OooO00o:Ljava/lang/Object;

    iget-object v2, p0, Lz2/o00O00o0;->OooO0OO:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lz2/o00O000o;->OooOOOO(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private static OooO0oO(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/o00O00o0;->OooO0oO:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v0, "com/androidquery/util/web_image.html"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lz2/o00O000;->OooooO0(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lz2/o00O00o0;->OooO0oO:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lz2/o00O000;->OooOO0O(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    sget-object p0, Lz2/o00O00o0;->OooO0oO:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public OooO0oo()V
    .locals 3

    iget-object v0, p0, Lz2/o00O00o0;->OooO0OO:Ljava/lang/String;

    iget-object v1, p0, Lz2/o00O00o0;->OooO0O0:Landroid/webkit/WebView;

    const v2, 0x40ff0001

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz2/o00O00o0;->OooO0O0:Landroid/webkit/WebView;

    iget-object v1, p0, Lz2/o00O00o0;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lz2/o00O00o0;->OooO0O0:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lz2/o00O00o0;->OooO0O0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lz2/o00O00o0;->OooO0o(Landroid/content/Context;)V

    iget-object v0, p0, Lz2/o00O00o0;->OooO0O0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-boolean v1, p0, Lz2/o00O00o0;->OooO0Oo:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-boolean v1, p0, Lz2/o00O00o0;->OooO0Oo:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-boolean v1, p0, Lz2/o00O00o0;->OooO0o0:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lz2/o00O00o0;->OooO0O0:Landroid/webkit/WebView;

    invoke-static {v1}, Lz2/o00O00o0;->OooO0Oo(Landroid/webkit/WebView;)V

    :cond_2
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lz2/o00O00o0;->OooO0O0:Landroid/webkit/WebView;

    iget v1, p0, Lz2/o00O00o0;->OooO0o:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lz2/o00O00o0;->OooO00o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lz2/o00O00o0;->OooO0OO:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lz2/o00O000o;->OooOOOO(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_3
    iget-object v0, p0, Lz2/o00O00o0;->OooO0O0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    if-lez v0, :cond_4

    invoke-direct {p0}, Lz2/o00O00o0;->OooO()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lz2/o00O00o0;->OooO0OO()V

    :goto_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/o00O00o0;->OooO0o0(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/o00O00o0;->OooO0o0(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 0

    return-void
.end method
