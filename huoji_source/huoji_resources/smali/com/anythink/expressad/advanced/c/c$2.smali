.class public final Lcom/anythink/expressad/advanced/c/c$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/advanced/c/c;->a(Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;ILcom/anythink/expressad/advanced/c/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/advanced/c/c$2;->a:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    iput-object p2, p0, Lcom/anythink/expressad/advanced/c/c$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/c$2;->a:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/c$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
