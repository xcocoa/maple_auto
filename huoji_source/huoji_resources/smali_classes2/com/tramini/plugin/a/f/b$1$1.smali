.class public final Lcom/tramini/plugin/a/f/b$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/f/b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tramini/plugin/a/f/b$1;


# direct methods
.method public constructor <init>(Lcom/tramini/plugin/a/f/b$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tramini/plugin/a/f/b$1$1;->a:Lcom/tramini/plugin/a/f/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tramini/plugin/a/f/b$1$1;->a:Lcom/tramini/plugin/a/f/b$1;

    iget-object v0, v0, Lcom/tramini/plugin/a/f/b$1;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/tramini/plugin/a/f/b$1$1$1;

    invoke-direct {v1, p0}, Lcom/tramini/plugin/a/f/b$1$1$1;-><init>(Lcom/tramini/plugin/a/f/b$1$1;)V

    const-string v2, "(function() { return (document.getElementsByTagName(\'html\')[0].innerHTML); })();"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method
