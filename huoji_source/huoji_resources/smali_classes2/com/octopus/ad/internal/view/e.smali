.class public Lcom/octopus/ad/internal/view/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/view/e$a;,
        Lcom/octopus/ad/internal/view/e$b;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field public final b:Lcom/octopus/ad/internal/view/AdWebView;

.field public c:Z

.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Landroid/app/Activity;

.field private o:Landroid/view/ViewGroup;

.field private p:[I

.field private q:I

.field private r:Z

.field private s:Lcom/octopus/ad/internal/view/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "default"

    const-string v1, "expanded"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/octopus/ad/internal/view/e;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/octopus/ad/internal/view/AdWebView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/e;->k:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/e;->c:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/e;->d:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/e;->h:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/e;->i:Z

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/octopus/ad/internal/view/e;->p:[I

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/e;->r:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/internal/view/e;->s:Lcom/octopus/ad/internal/view/f;

    iput-object p1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/octopus/ad/AdActivity$b;
    .locals 2

    sget-object v0, Lcom/octopus/ad/AdActivity$b;->c:Lcom/octopus/ad/AdActivity$b;

    const-string v1, "landscape"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/octopus/ad/AdActivity$b;->b:Lcom/octopus/ad/AdActivity$b;

    goto :goto_0

    :cond_0
    const-string v1, "portrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/octopus/ad/AdActivity$b;->a:Lcom/octopus/ad/AdActivity$b;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/view/e;)Lcom/octopus/ad/internal/view/f;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/view/e;->s:Lcom/octopus/ad/internal/view/f;

    return-object p0
.end method

.method private a(Lcom/octopus/ad/internal/view/AdWebView;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "sms:5555555555"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/view/e;->a(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "sms"

    invoke-direct {p0, p1, v0, v1}, Lcom/octopus/ad/internal/view/e;->a(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;Z)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "tel:5555555555"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/view/e;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "tel"

    invoke-direct {p0, p1, v0, v1}, Lcom/octopus/ad/internal/view/e;->a(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;Z)V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/view/e;->a(Landroid/content/Intent;)Z

    move-result v2

    const-string v4, "calendar"

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, v4, v1}, Lcom/octopus/ad/internal/view/e;->a(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/e;->i:Z

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "vnd.android.cursor.item/event"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/view/e;->a(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, v4, v1}, Lcom/octopus/ad/internal/view/e;->a(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/e;->i:Z

    sput-boolean v1, Lcom/octopus/ad/internal/utilities/W3CEvent;->useMIME:Z

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0xb

    if-lt v0, v2, :cond_4

    const-string v0, "storePicture"

    invoke-direct {p0, p1, v0, v1}, Lcom/octopus/ad/internal/view/e;->a(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/e;->h:Z

    :cond_4
    const-string v0, "inlineVideo"

    invoke-direct {p0, p1, v0, v1}, Lcom/octopus/ad/internal/view/e;->a(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    const-string p2, "javascript:window.mraid.util.setSupports(\'%s\', %s)"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/view/AdWebView;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1, v0}, Lcom/octopus/ad/internal/view/AdWebView;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->c()V

    :cond_2
    return-void
.end method

.method private d(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->mraidLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->store_picture_error:I

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getTopContext(Landroid/view/View;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/octopus/ad/R$string;->store_picture_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/octopus/ad/R$string;->store_picture_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/octopus/ad/R$string;->store_picture_accept:I

    new-instance v2, Lcom/octopus/ad/internal/view/e$2;

    invoke-direct {v2, p0, p1}, Lcom/octopus/ad/internal/view/e$2;-><init>(Lcom/octopus/ad/internal/view/e;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget p1, Lcom/octopus/ad/R$string;->store_picture_decline:I

    new-instance v1, Lcom/octopus/ad/internal/view/e$3;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/view/e$3;-><init>(Lcom/octopus/ad/internal/view/e;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private e()V
    .locals 8

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->getContextFromMutableContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x2

    new-array v2, v1, [I

    iget-object v3, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    const/4 v4, 0x1

    aget v5, v2, v4

    sub-int/2addr v5, v3

    aput v5, v2, v4

    iget-object v3, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5}, Landroid/webkit/WebView;->measure(II)V

    iget-object v3, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v3

    iget-object v6, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v6

    new-array v7, v1, [I

    aput v3, v7, v5

    aput v6, v7, v4

    invoke-static {v0, v7}, Lcom/octopus/ad/internal/utilities/ViewUtil;->convertFromPixelsToDP(Landroid/app/Activity;[I)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aget v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    aget v2, v7, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    aget v1, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v3, v2

    const-string v1, "javascript:window.mraid.util.setDefaultPosition(%d, %d, %d, %d)"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/view/AdWebView;->c(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->mraidLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->play_vide_no_uri:I

    :goto_1
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "video/mp4"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->c()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catch_1
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->mraidLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->unsupported_encoding:I

    goto :goto_1
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->getContextFromMutableContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->getContextFromMutableContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenSizeAsPixels(Landroid/app/Activity;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, v1

    div-float/2addr v1, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr v2, v3

    float-to-int v0, v2

    iget-object v2, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:window.mraid.util.setMaxSize("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/octopus/ad/internal/view/AdWebView;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private f(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/W3CEvent;->createFromJSON(Ljava/lang/String;)Lcom/octopus/ad/internal/utilities/W3CEvent;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getInsertIntent()Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->c()V

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->mraidLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->create_calendar_event:I

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->getContextFromMutableContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->getContextFromMutableContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenSizeAsDP(Landroid/app/Activity;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/octopus/ad/internal/view/e;->l:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/octopus/ad/internal/view/e;->m:I

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:window.mraid.util.setScreenSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/octopus/ad/internal/view/e;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/octopus/ad/internal/view/e;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/view/AdWebView;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private g(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/octopus/ad/AdActivity$b;->c:Lcom/octopus/ad/AdActivity$b;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "allow_orientation_change"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "force_orientation"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/view/e;->a(Ljava/lang/String;)Lcom/octopus/ad/AdActivity$b;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/octopus/ad/internal/view/e;->c:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->e()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_3
    iget-object p1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iget-boolean v3, p1, Lcom/octopus/ad/internal/view/AdWebView;->a:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/e;->c()Landroid/app/Activity;

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getTopContext(Landroid/view/View;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    :goto_1
    if-eqz v2, :cond_5

    invoke-static {p1}, Lcom/octopus/ad/AdActivity;->b(Landroid/app/Activity;)V

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    sget-object v3, Lcom/octopus/ad/internal/view/e$4;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_6

    if-eq v0, v3, :cond_7

    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    const/4 v1, 0x2

    :cond_7
    :goto_2
    invoke-static {p1, v1}, Lcom/octopus/ad/AdActivity;->a(Landroid/app/Activity;I)V

    :cond_8
    :goto_3
    return-void
.end method

.method private h(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "top-right"

    move-object v9, v3

    const/4 v3, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    :try_start_0
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const-string v6, "w"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const-string v6, "h"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_2
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const-string v6, "offset_x"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const-string v6, "offset_y"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v11, v4

    goto :goto_0

    :cond_4
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const-string v6, "custom_close_position"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object v9, v4

    goto :goto_0

    :cond_5
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const-string v6, "allow_offscreen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->mraidLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->number_format:I

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    iget p1, p0, Lcom/octopus/ad/internal/view/e;->l:I

    if-le v2, p1, :cond_7

    iget p1, p0, Lcom/octopus/ad/internal/view/e;->m:I

    if-le v3, p1, :cond_7

    iget-object p1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    const-string v0, "javascript:mraid.util.errorEvent(\'Resize called with resizeProperties larger than the screen.\', \'mraid.resize()\')"

    invoke-virtual {p1, v0}, Lcom/octopus/ad/internal/view/AdWebView;->c(Ljava/lang/String;)V

    return-void

    :cond_7
    sget-object p1, Lcom/octopus/ad/internal/view/e$a;->b:Lcom/octopus/ad/internal/view/e$a;

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    :try_start_1
    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/internal/view/e$a;->valueOf(Ljava/lang/String;)Lcom/octopus/ad/internal/view/e$a;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sget-object v13, Lcom/octopus/ad/internal/utilities/HaoboLog;->mraidLogTag:Ljava/lang/String;

    sget v4, Lcom/octopus/ad/R$string;->resize:I

    move v5, v2

    move v6, v3

    move v7, v1

    move v8, v11

    move v10, v12

    invoke-static/range {v4 .. v10}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IIIIILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    move-object v9, p1

    invoke-virtual/range {v4 .. v10}, Lcom/octopus/ad/internal/view/AdWebView;->resize(IIIILcom/octopus/ad/internal/view/e$a;Z)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->c()V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    const-string v1, "javascript:window.mraid.util.stateChangeEvent(\'resized\');"

    invoke-virtual {p1, v1}, Lcom/octopus/ad/internal/view/AdWebView;->c(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/e;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/e;->c:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/e;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/e;->r:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->b()V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->getContextFromMutableContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->d()V

    goto :goto_2

    :cond_2
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, p0, Lcom/octopus/ad/internal/view/e;->f:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v1, p0, Lcom/octopus/ad/internal/view/e;->e:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v1, v1, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-interface {v1}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/l;

    move-result-object v1

    sget-object v2, Lcom/octopus/ad/internal/l;->b:Lcom/octopus/ad/internal/l;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/octopus/ad/internal/view/e;->g:I

    goto :goto_1

    :cond_3
    const/16 v1, 0x11

    :goto_1
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->e()V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    const-string v1, "javascript:window.mraid.util.stateChangeEvent(\'default\');"

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/view/AdWebView;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->e()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/e;->r:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->b()V

    :cond_4
    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->getContextFromMutableContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_5

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/e;->c:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/e;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/internal/view/e;->s:Lcom/octopus/ad/internal/view/f;

    :cond_6
    :goto_2
    return-void
.end method

.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/view/e;->q:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/octopus/ad/internal/view/e;->q:I

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/e;->f()V

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/e;->g()V

    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 7

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->p:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v2, p1, :cond_0

    aget v2, v0, v5

    if-ne v2, p2, :cond_0

    aget v2, v0, v4

    if-ne v2, p3, :cond_0

    aget v2, v0, v3

    if-ne v2, p4, :cond_0

    return-void

    :cond_0
    aput p1, v0, v1

    aput p2, v0, v5

    aput p3, v0, v4

    aput p4, v0, v3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->getContextFromMutableContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v6, 0x1020002

    invoke-virtual {v2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr p2, v2

    const/4 v2, 0x4

    new-array v6, v2, [I

    aput p1, v6, v1

    aput p2, v6, v5

    aput p3, v6, v4

    aput p4, v6, v3

    invoke-static {v0, v6}, Lcom/octopus/ad/internal/utilities/ViewUtil;->convertFromPixelsToDP(Landroid/app/Activity;[I)V

    aget p1, v6, v1

    aget p2, v6, v5

    aget p3, v6, v4

    aget p4, v6, v3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "javascript:window.mraid.util.setCurrentPosition(%d, %d, %d, %d)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/view/AdWebView;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v5

    const-string p3, "javascript:window.mraid.util.sizeChangeEvent(%d, %d)"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/view/AdWebView;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/e;->n:Landroid/app/Activity;

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/e;->o:Landroid/view/ViewGroup;

    return-void
.end method

.method public a(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/e;->k:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "inline"

    goto :goto_0

    :cond_0
    const-string v0, "interstitial"

    :goto_0
    sget-object v1, Lcom/octopus/ad/internal/view/e;->a:[Ljava/lang/String;

    sget-object v2, Lcom/octopus/ad/internal/view/e$b;->b:Lcom/octopus/ad/internal/view/e$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/e;->r:Z

    iget-object v2, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iput-boolean v1, v2, Lcom/octopus/ad/internal/view/AdWebView;->a:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:window.mraid.util.setPlacementType(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/octopus/ad/internal/view/AdWebView;->c(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/octopus/ad/internal/view/e;->r:Z

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/view/e;->a(Lcom/octopus/ad/internal/view/AdWebView;)V

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/e;->g()V

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/e;->f()V

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/e;->e()V

    :cond_1
    iget-object v1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/view/AdWebView;->f()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:window.mraid.util.stateChangeEvent(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/view/AdWebView;->c(Ljava/lang/String;)V

    const-string p2, "javascript:window.mraid.util.readyEvent();"

    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/view/AdWebView;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, p0, Lcom/octopus/ad/internal/view/e;->e:I

    iget-object p1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lcom/octopus/ad/internal/view/e;->f:I

    iget-object p1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-interface {p1}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/l;

    move-result-object p1

    sget-object p2, Lcom/octopus/ad/internal/l;->b:Lcom/octopus/ad/internal/l;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput p1, p0, Lcom/octopus/ad/internal/view/e;->g:I

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/e;->k:Z

    iget-object p1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->g()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/view/e;->a(Z)V

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 10

    const-string v0, "mraid://"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v3, v0, v2

    const-string v4, "/"

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v0, v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_3

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v0, v6

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x2

    if-ge v8, v9, :cond_0

    goto :goto_1

    :cond_0
    aget-object v8, v7, v4

    invoke-static {v8}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    aget-object v8, v7, v4

    const-string v9, "undefined"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    new-instance v8, Landroid/util/Pair;

    aget-object v9, v7, v2

    aget-object v7, v7, v4

    invoke-direct {v8, v9, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "expand"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {p0, v3}, Lcom/octopus/ad/internal/view/e;->b(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_4
    sget-object p2, Lcom/octopus/ad/internal/utilities/HaoboLog;->mraidLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->no_user_interaction:I

    invoke-static {v0, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string v0, "close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/e;->a()V

    goto/16 :goto_2

    :cond_6
    const-string v0, "resize"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_4

    invoke-direct {p0, v3}, Lcom/octopus/ad/internal/view/e;->h(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_7
    const-string v0, "setOrientationProperties"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, v3}, Lcom/octopus/ad/internal/view/e;->g(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_8
    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/e;->i:Z

    if-eqz v0, :cond_9

    const-string v0, "createCalendarEvent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p2, :cond_4

    invoke-direct {p0, v3}, Lcom/octopus/ad/internal/view/e;->f(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_9
    const-string v0, "playVideo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p2, :cond_4

    invoke-direct {p0, v3}, Lcom/octopus/ad/internal/view/e;->e(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_a
    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/e;->h:Z

    if-eqz v0, :cond_b

    const-string v0, "storePicture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p2, :cond_4

    invoke-direct {p0, v3}, Lcom/octopus/ad/internal/view/e;->d(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_b
    const-string v0, "open"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p2, :cond_4

    invoke-direct {p0, v3}, Lcom/octopus/ad/internal/view/e;->c(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_c
    const-string p1, "setUseCustomClose"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0, v3}, Lcom/octopus/ad/internal/view/e;->a(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_d
    const-string p1, "enable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    :cond_e
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->mraidLogTag:Ljava/lang/String;

    sget p2, Lcom/octopus/ad/R$string;->unsupported_mraid:I

    invoke-static {p2, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/view/AdWebView;->setMRAIDUseCustomClose(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/e;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/e;->j:Z

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:window.mraid.util.setIsViewable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/view/AdWebView;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->g()Z

    move-result v0

    iget-boolean v1, p0, Lcom/octopus/ad/internal/view/e;->j:Z

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/view/e;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/octopus/ad/AdActivity$b;->c:Lcom/octopus/ad/AdActivity$b;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v11, v0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move v7, v0

    goto :goto_0

    :cond_2
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "useCustomClose"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    move v8, v0

    goto :goto_0

    :cond_3
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "url"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_4
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "allow_orientation_change"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    goto :goto_0

    :cond_5
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "force_orientation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/view/e;->a(Ljava/lang/String;)Lcom/octopus/ad/AdActivity$b;

    move-result-object v0

    move-object v11, v0

    goto/16 :goto_0

    :cond_6
    invoke-static {v4}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    :try_start_2
    new-instance p1, Lcom/octopus/ad/internal/view/f;

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-direct {p1, v0, p0}, Lcom/octopus/ad/internal/view/f;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;Lcom/octopus/ad/internal/view/e;)V

    iput-object p1, p0, Lcom/octopus/ad/internal/view/e;->s:Lcom/octopus/ad/internal/view/f;

    invoke-virtual {p1, v4}, Lcom/octopus/ad/internal/view/AdWebView;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->s:Lcom/octopus/ad/internal/view/f;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->getMRAIDImplementation()Lcom/octopus/ad/internal/view/e;

    move-result-object v0

    new-instance v2, Lcom/octopus/ad/internal/view/e$1;

    invoke-direct {v2, p0, v10, v11}, Lcom/octopus/ad/internal/view/e$1;-><init>(Lcom/octopus/ad/internal/view/e;ZLcom/octopus/ad/AdActivity$b;)V

    invoke-virtual {p1, v0, v8, v2}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(Lcom/octopus/ad/internal/view/e;ZLcom/octopus/ad/internal/view/AdWebView$b;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception initializing the redirect webview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    move-object v9, p0

    invoke-virtual/range {v5 .. v11}, Lcom/octopus/ad/internal/view/AdWebView;->a(IIZLcom/octopus/ad/internal/view/e;ZLcom/octopus/ad/AdActivity$b;)V

    :goto_1
    iget-object p1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    const-string v0, "javascript:window.mraid.util.stateChangeEvent(\'expanded\');"

    invoke-virtual {p1, v0}, Lcom/octopus/ad/internal/view/AdWebView;->c(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/e;->c:Z

    iget-object p1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->e()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/octopus/ad/internal/b;->c()V

    :cond_8
    return-void
.end method

.method public c()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->n:Landroid/app/Activity;

    return-object v0
.end method

.method public d()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/e;->o:Landroid/view/ViewGroup;

    return-object v0
.end method
