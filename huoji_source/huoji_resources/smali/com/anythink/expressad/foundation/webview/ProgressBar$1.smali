.class public final Lcom/anythink/expressad/foundation/webview/ProgressBar$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/foundation/webview/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/foundation/webview/ProgressBar;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/webview/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar$1;->a:Lcom/anythink/expressad/foundation/webview/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar$1;->a:Lcom/anythink/expressad/foundation/webview/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
