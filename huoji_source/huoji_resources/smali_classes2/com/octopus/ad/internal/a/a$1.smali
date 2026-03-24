.class public Lcom/octopus/ad/internal/a/a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/a/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/a/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/a/a$1;->a:Lcom/octopus/ad/internal/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/a/a$1;->a:Lcom/octopus/ad/internal/a/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/a/a;->a(Lcom/octopus/ad/internal/a/a;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/a/a$1;->a:Lcom/octopus/ad/internal/a/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/a/a;->b(Lcom/octopus/ad/internal/a/a;)V

    return-void
.end method
