.class public final Lcom/anythink/expressad/activity/DomainATCommonActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/foundation/webview/BrowserView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/activity/DomainATCommonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/activity/DomainATCommonActivity;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/activity/DomainATCommonActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity$1;->a:Lcom/anythink/expressad/activity/DomainATCommonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity$1;->a:Lcom/anythink/expressad/activity/DomainATCommonActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p2}, Lcom/anythink/expressad/foundation/h/s$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity$1;->a:Lcom/anythink/expressad/activity/DomainATCommonActivity;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/anythink/expressad/foundation/h/s$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/out/p$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity$1;->a:Lcom/anythink/expressad/activity/DomainATCommonActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity$1;->a:Lcom/anythink/expressad/activity/DomainATCommonActivity;

    invoke-static {v0, p1, p2}, Lcom/anythink/expressad/activity/DomainATCommonActivity;->a(Lcom/anythink/expressad/activity/DomainATCommonActivity;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method
