.class public final Lcom/anythink/basead/mraid/d$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/mraid/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/basead/mraid/MraidWebView;Lcom/anythink/basead/mraid/d$a;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/m;

.field public final synthetic b:Lcom/anythink/core/common/f/l;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/anythink/basead/mraid/d$a;

.field public final synthetic f:Lcom/anythink/basead/mraid/MraidWebView;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;ILjava/lang/String;Lcom/anythink/basead/mraid/d$a;Lcom/anythink/basead/mraid/MraidWebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/mraid/d$1;->a:Lcom/anythink/core/common/f/m;

    iput-object p2, p0, Lcom/anythink/basead/mraid/d$1;->b:Lcom/anythink/core/common/f/l;

    iput p3, p0, Lcom/anythink/basead/mraid/d$1;->c:I

    iput-object p4, p0, Lcom/anythink/basead/mraid/d$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/basead/mraid/d$1;->e:Lcom/anythink/basead/mraid/d$a;

    iput-object p6, p0, Lcom/anythink/basead/mraid/d$1;->f:Lcom/anythink/basead/mraid/MraidWebView;

    iput-object p7, p0, Lcom/anythink/basead/mraid/d$1;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/mraid/d$1;->a:Lcom/anythink/core/common/f/m;

    iget-object v1, p0, Lcom/anythink/basead/mraid/d$1;->b:Lcom/anythink/core/common/f/l;

    iget v2, p0, Lcom/anythink/basead/mraid/d$1;->c:I

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/n/e;->b(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;I)V

    sget-object v0, Lcom/anythink/basead/mraid/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/basead/mraid/d$1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", start load mraid webview"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/anythink/basead/mraid/a;

    invoke-direct {v0}, Lcom/anythink/basead/mraid/a;-><init>()V

    new-instance v1, Lcom/anythink/basead/mraid/e;

    iget-object v2, p0, Lcom/anythink/basead/mraid/d$1;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/anythink/basead/mraid/e;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/anythink/basead/mraid/d$1$1;

    invoke-direct {v2, p0}, Lcom/anythink/basead/mraid/d$1$1;-><init>(Lcom/anythink/basead/mraid/d$1;)V

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/atsignalcommon/base/b;->a(Lcom/anythink/expressad/atsignalcommon/windvane/e;)V

    iget-object v2, p0, Lcom/anythink/basead/mraid/d$1;->f:Lcom/anythink/basead/mraid/MraidWebView;

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/anythink/basead/mraid/d$1;->f:Lcom/anythink/basead/mraid/MraidWebView;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/anythink/basead/mraid/d$1;->f:Lcom/anythink/basead/mraid/MraidWebView;

    iget-object v1, p0, Lcom/anythink/basead/mraid/d$1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
