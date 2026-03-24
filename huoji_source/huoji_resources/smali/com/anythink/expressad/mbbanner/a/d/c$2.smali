.class public final Lcom/anythink/expressad/mbbanner/a/d/c$2;
.super Lcom/anythink/expressad/atsignalcommon/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/mbbanner/a/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/mbbanner/a/d/c;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/mbbanner/a/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c$2;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-direct {p0}, Lcom/anythink/expressad/atsignalcommon/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/c$2;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-static {p2}, Lcom/anythink/expressad/mbbanner/a/d/c;->l(Lcom/anythink/expressad/mbbanner/a/d/c;)Z

    invoke-static {p1}, Lcom/anythink/expressad/mbbanner/a/a/a;->a(Landroid/webkit/WebView;)V

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c$2;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-static {p1}, Lcom/anythink/expressad/mbbanner/a/d/c;->n(Lcom/anythink/expressad/mbbanner/a/d/c;)Z

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c$2;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-static {p1}, Lcom/anythink/expressad/mbbanner/a/d/c;->h(Lcom/anythink/expressad/mbbanner/a/d/c;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c$2;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-static {p1}, Lcom/anythink/expressad/mbbanner/a/d/c;->h(Lcom/anythink/expressad/mbbanner/a/d/c;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->s()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c$2;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-static {p1}, Lcom/anythink/expressad/mbbanner/a/d/c;->e(Lcom/anythink/expressad/mbbanner/a/d/c;)V

    invoke-static {}, Lcom/anythink/expressad/mbbanner/a/d/c;->b()V

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c$2;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-static {p1, p3}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(Lcom/anythink/expressad/mbbanner/a/d/c;Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/mbbanner/a/d/c;->b()V

    return-void
.end method
