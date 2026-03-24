.class public final Lcom/anythink/expressad/advanced/c/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/String; = "NativeAdvancedLoadManager"

.field private static final j:I = 0x1

.field private static final k:I = 0x2

.field private static final l:I = 0x3

.field private static final m:I = 0x4

.field private static final n:I = 0x5


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Landroid/os/Handler;

.field private D:Ljava/lang/Runnable;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Lcom/anythink/expressad/advanced/b/a;

.field private f:Landroid/content/Context;

.field private g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

.field private h:Lcom/anythink/expressad/d/c;

.field private i:Lcom/anythink/expressad/foundation/d/c;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Z

.field private volatile v:Z

.field private w:Lcom/anythink/expressad/videocommon/d/c;

.field private x:Lcom/anythink/expressad/videocommon/b/i$d;

.field private y:Lcom/anythink/expressad/videocommon/b/i$d;

.field private z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->B:Ljava/lang/String;

    new-instance v0, Lcom/anythink/expressad/advanced/c/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/anythink/expressad/advanced/c/a$1;-><init>(Lcom/anythink/expressad/advanced/c/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->C:Landroid/os/Handler;

    new-instance v0, Lcom/anythink/expressad/advanced/c/a$3;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/advanced/c/a$3;-><init>(Lcom/anythink/expressad/advanced/c/a;)V

    iput-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->D:Ljava/lang/Runnable;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->f:Landroid/content/Context;

    iput-object p1, p0, Lcom/anythink/expressad/advanced/c/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/expressad/advanced/c/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/advanced/c/a;)Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    return-object p0
.end method

.method private a(J)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->C:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/foundation/d/c;I)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/advanced/c/a;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/advanced/c/a;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/advanced/c/a;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->getAdvancedNativeWebview()Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/anythink/expressad/advanced/js/NativeAdvancedJSBridgeImpl;

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/advanced/c/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/advanced/c/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/expressad/advanced/js/NativeAdvancedJSBridgeImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/advanced/js/NativeAdvancedJSBridgeImpl;->setCampaignList(Ljava/util/List;)V

    iget v1, p0, Lcom/anythink/expressad/advanced/c/a;->o:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/advanced/js/NativeAdvancedJSBridgeImpl;->setAllowSkip(I)V

    iget v1, p0, Lcom/anythink/expressad/advanced/c/a;->p:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/advanced/js/NativeAdvancedJSBridgeImpl;->setCountdownS(I)V

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->setAdvancedNativeJSBridgeImpl(Lcom/anythink/expressad/advanced/js/NativeAdvancedJSBridgeImpl;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->getAdvancedNativeWebview()Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "webview is null"

    invoke-direct {p0, p1, p3}, Lcom/anythink/expressad/advanced/c/a;->b(Ljava/lang/String;I)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "webview is destroyed"

    invoke-direct {p0, p1, p3}, Lcom/anythink/expressad/advanced/c/a;->b(Ljava/lang/String;I)V

    return-void

    :cond_1
    new-instance v1, Lcom/anythink/expressad/advanced/c/a$9;

    invoke-direct {v1, p0, p2, p3}, Lcom/anythink/expressad/advanced/c/a$9;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;I)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/anythink/expressad/atsignalcommon/windvane/e;)V

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/anythink/expressad/advanced/c/a;->C:Landroid/os/Handler;

    if-eqz p2, :cond_3

    new-instance p3, Lcom/anythink/expressad/advanced/c/a$10;

    invoke-direct {p3, p0, v0, p1}, Lcom/anythink/expressad/advanced/c/a$10;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    const-string p1, "webview has destory"

    invoke-direct {p0, p1, p3}, Lcom/anythink/expressad/advanced/c/a;->b(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method private a(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 6

    iput-object p1, p0, Lcom/anythink/expressad/advanced/c/a;->i:Lcom/anythink/expressad/foundation/d/c;

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    invoke-static {v0, p1}, Lcom/anythink/expressad/advanced/c/c;->a(Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/foundation/d/c;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->clearResState()V

    :cond_1
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "start download zip: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/anythink/expressad/advanced/c/a$8;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/advanced/c/a$8;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/advanced/c/a;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-virtual {v0, v2, v3}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    :cond_2
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "start download HTML: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v2, Lcom/anythink/expressad/advanced/c/a$7;

    invoke-direct {v2, p0, p1}, Lcom/anythink/expressad/advanced/c/a$7;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-virtual {v0, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    :cond_3
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "start download Video: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/anythink/expressad/advanced/c/a$2;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/advanced/c/a$2;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->w:Lcom/anythink/expressad/videocommon/d/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/advanced/c/a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/expressad/advanced/c/a;->w:Lcom/anythink/expressad/videocommon/d/c;

    const/16 v5, 0x12a

    invoke-virtual {v2, v3, v0, v5, v4}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;Ljava/util/List;ILcom/anythink/expressad/videocommon/d/c;)Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/expressad/advanced/c/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result v3

    invoke-virtual {v0, v5, v2, v3}, Lcom/anythink/expressad/videocommon/b/e;->a(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/videocommon/b/e;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->setVideoReady(Z)V

    invoke-direct {p0, p1, v1}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start download image: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/anythink/expressad/advanced/c/a$6;

    invoke-direct {v2, p0, p1}, Lcom/anythink/expressad/advanced/c/a$6;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    :cond_6
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start download EndCard: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/anythink/expressad/advanced/c/a$5;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/advanced/c/a$5;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->y:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/advanced/c/a;->y:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    :cond_7
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start download gitUrl: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->y()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/anythink/expressad/advanced/c/a$4;

    invoke-direct {v2, p0, p1}, Lcom/anythink/expressad/advanced/c/a$4;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    :cond_8
    return-void
.end method

.method private a(Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    invoke-static {v0, p1}, Lcom/anythink/expressad/advanced/c/c;->a(Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/expressad/advanced/c/a;->v:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/advanced/c/a;->i()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/advanced/c/a;->v:Z

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->e:Lcom/anythink/expressad/advanced/b/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/advanced/b/a;->a(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/advanced/c/a;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->getAdvancedNativeWebview()Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/anythink/expressad/advanced/js/NativeAdvancedJSBridgeImpl;

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/advanced/c/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/advanced/c/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/expressad/advanced/js/NativeAdvancedJSBridgeImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/advanced/js/NativeAdvancedJSBridgeImpl;->setCampaignList(Ljava/util/List;)V

    iget v1, p0, Lcom/anythink/expressad/advanced/c/a;->o:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/advanced/js/NativeAdvancedJSBridgeImpl;->setAllowSkip(I)V

    iget v1, p0, Lcom/anythink/expressad/advanced/c/a;->p:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/advanced/js/NativeAdvancedJSBridgeImpl;->setCountdownS(I)V

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->setAdvancedNativeJSBridgeImpl(Lcom/anythink/expressad/advanced/js/NativeAdvancedJSBridgeImpl;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->getAdvancedNativeWebview()Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "webview is null"

    invoke-direct {p0, p1, p3}, Lcom/anythink/expressad/advanced/c/a;->b(Ljava/lang/String;I)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "webview is destroyed"

    invoke-direct {p0, p1, p3}, Lcom/anythink/expressad/advanced/c/a;->b(Ljava/lang/String;I)V

    return-void

    :cond_1
    new-instance v1, Lcom/anythink/expressad/advanced/c/a$9;

    invoke-direct {v1, p0, p2, p3}, Lcom/anythink/expressad/advanced/c/a$9;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;I)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/anythink/expressad/atsignalcommon/windvane/e;)V

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/anythink/expressad/advanced/c/a;->C:Landroid/os/Handler;

    if-eqz p2, :cond_3

    new-instance p3, Lcom/anythink/expressad/advanced/c/a$10;

    invoke-direct {p3, p0, v0, p1}, Lcom/anythink/expressad/advanced/c/a$10;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    const-string p1, "webview has destory"

    invoke-direct {p0, p1, p3}, Lcom/anythink/expressad/advanced/c/a;->b(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/advanced/c/a;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/advanced/c/a;->t:I

    return p0
.end method

.method private b(Lcom/anythink/expressad/foundation/d/d;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/foundation/d/d;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    iget-object v2, p0, Lcom/anythink/expressad/advanced/c/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/d;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/advanced/c/a;->z:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->O()I

    move-result p1

    const/16 v2, 0x63

    if-eq p1, v2, :cond_6

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_0
    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/advanced/c/a;->f:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v1, p1}, Lcom/anythink/expressad/foundation/d/c;->i(I)V

    :cond_2
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->ae()I

    move-result p1

    if-eq p1, v2, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/advanced/c/a;->f:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "onload: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->bb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has been installed."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_4
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_2
    return-object v0
.end method

.method private b(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/advanced/c/a;->p:I

    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->isH5Ready()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/advanced/c/a;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/advanced/c/a;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private b(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->clearResState()V

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start download zip: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/anythink/expressad/advanced/c/a$8;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/advanced/c/a$8;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/advanced/c/a;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    :cond_1
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start download HTML: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/advanced/c/a$7;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/advanced/c/a$7;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    :cond_2
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start download Video: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/anythink/expressad/advanced/c/a$2;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/advanced/c/a$2;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->w:Lcom/anythink/expressad/videocommon/d/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/advanced/c/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/advanced/c/a;->w:Lcom/anythink/expressad/videocommon/d/c;

    const/16 v4, 0x12a

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;Ljava/util/List;ILcom/anythink/expressad/videocommon/d/c;)Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/anythink/expressad/videocommon/b/e;->a(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/videocommon/b/e;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->setVideoReady(Z)V

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start download image: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/anythink/expressad/advanced/c/a$6;

    invoke-direct {v2, p0, p1}, Lcom/anythink/expressad/advanced/c/a$6;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    :cond_5
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start download EndCard: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/anythink/expressad/advanced/c/a$5;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/advanced/c/a$5;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->y:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/advanced/c/a;->y:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    :cond_6
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start download gitUrl: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->y()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/anythink/expressad/advanced/c/a$4;

    invoke-direct {v2, p0, p1}, Lcom/anythink/expressad/advanced/c/a$4;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    :cond_7
    return-void
.end method

.method private b(Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->isH5Ready()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/advanced/c/a;->v:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/advanced/c/a;->i()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/advanced/c/a;->v:Z

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->e:Lcom/anythink/expressad/advanced/b/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/advanced/b/a;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/anythink/expressad/advanced/c/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/advanced/c/a;->s:Ljava/lang/String;

    return-object p0
.end method

.method private c(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->y()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/anythink/expressad/advanced/c/a$4;

    invoke-direct {v2, p0, p1}, Lcom/anythink/expressad/advanced/c/a$4;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    return-void
.end method

.method private c(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/advanced/c/a;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic d(Lcom/anythink/expressad/advanced/c/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/advanced/c/a;->C:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/expressad/advanced/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 2

    new-instance v0, Lcom/anythink/expressad/advanced/c/a$5;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/advanced/c/a$5;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->y:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->y:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-virtual {v0, p1, v1}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    return-void
.end method

.method private e()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/advanced/c/a;->p:I

    return v0
.end method

.method private e(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/anythink/expressad/advanced/c/a$6;

    invoke-direct {v2, p0, p1}, Lcom/anythink/expressad/advanced/c/a$6;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    return-void
.end method

.method private f()V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/anythink/expressad/advanced/c/a;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/advanced/c/a;->A:I

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->h:Lcom/anythink/expressad/d/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/expressad/d/c;->t()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/advanced/c/a;->A:I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onload \u7b97\u51fa \u4e0b\u6b21\u7684offset\u662f:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/anythink/expressad/advanced/c/a;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private f(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/advanced/c/a$7;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/advanced/c/a$7;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static g()V
    .locals 0

    return-void
.end method

.method private g(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 2

    new-instance v0, Lcom/anythink/expressad/advanced/c/a$8;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/advanced/c/a$8;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-virtual {v0, p1, v1}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    return-void
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/advanced/c/a;->A:I

    return-void
.end method

.method private h(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 5

    new-instance v0, Lcom/anythink/expressad/advanced/c/a$2;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/advanced/c/a$2;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->w:Lcom/anythink/expressad/videocommon/d/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/advanced/c/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/advanced/c/a;->w:Lcom/anythink/expressad/videocommon/d/c;

    const/16 v4, 0x12a

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;Ljava/util/List;ILcom/anythink/expressad/videocommon/d/c;)Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/anythink/expressad/videocommon/b/e;->a(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/videocommon/b/e;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->setVideoReady(Z)V

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/foundation/d/c;I)V

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->C:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static j()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->B:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->i:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->i:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->i:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->i:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/advanced/c/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/videocommon/b/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/b/c;->k()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/b/c;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download success locally,use local video url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, ""

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/advanced/c/a;->o:I

    return-void
.end method

.method public final a(II)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/advanced/c/a;->r:I

    iput p2, p0, Lcom/anythink/expressad/advanced/c/a;->q:I

    return-void
.end method

.method public final a(Lcom/anythink/expressad/advanced/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/advanced/c/a;->e:Lcom/anythink/expressad/advanced/b/a;

    return-void
.end method

.method public final a(Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    return-void
.end method

.method public final a(Lcom/anythink/expressad/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/advanced/c/a;->h:Lcom/anythink/expressad/d/c;

    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/d;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    iget-object v3, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/foundation/d/c;

    iget-object v5, p0, Lcom/anythink/expressad/advanced/c/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/d;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/advanced/c/a;->z:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/d/c;->O()I

    move-result p1

    const/16 v5, 0x63

    if-eq p1, v5, :cond_6

    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/d/c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_0
    invoke-static {v4}, Lcom/anythink/expressad/foundation/h/t;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/advanced/c/a;->f:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v4, p1}, Lcom/anythink/expressad/foundation/d/c;->i(I)V

    :cond_2
    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/d/c;->ae()I

    move-result p1

    if-eq p1, v2, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/advanced/c/a;->f:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v5, "onload: "

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/anythink/expressad/out/j;->bb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has been installed."

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/anythink/expressad/foundation/h/t;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_4
    :goto_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_2
    if-eqz v3, :cond_14

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_14

    :try_start_0
    iget p1, p0, Lcom/anythink/expressad/advanced/c/a;->A:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/anythink/expressad/advanced/c/a;->A:I

    iget-object v4, p0, Lcom/anythink/expressad/advanced/c/a;->h:Lcom/anythink/expressad/d/c;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/anythink/expressad/d/c;->t()I

    move-result v4

    if-le p1, v4, :cond_8

    :cond_7
    iput v1, p0, Lcom/anythink/expressad/advanced/c/a;->A:I

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "onload \u7b97\u51fa \u4e0b\u6b21\u7684offset\u662f:"

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/anythink/expressad/advanced/c/a;->A:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "onload load\u6210\u529f size:"

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<MBTPLMARK>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p1, v1}, Lcom/anythink/expressad/foundation/d/c;->a(Z)V

    invoke-virtual {p1, v2}, Lcom/anythink/expressad/foundation/d/c;->b(Z)V

    goto :goto_5

    :cond_a
    :goto_4
    invoke-virtual {p1, v2}, Lcom/anythink/expressad/foundation/d/c;->a(Z)V

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/foundation/d/c;->b(Z)V

    :goto_5
    iput-object p1, p0, Lcom/anythink/expressad/advanced/c/a;->i:Lcom/anythink/expressad/foundation/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    invoke-static {v1, p1}, Lcom/anythink/expressad/advanced/c/c;->a(Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0, p1, v0}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/foundation/d/c;I)V

    return-void

    :cond_b
    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->clearResState()V

    :cond_c
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "start download zip: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/anythink/expressad/advanced/c/a$8;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/advanced/c/a$8;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    iput-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/expressad/advanced/c/a;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-virtual {v1, v3, v4}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    :cond_d
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "start download HTML: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v1

    new-instance v3, Lcom/anythink/expressad/advanced/c/a$7;

    invoke-direct {v3, p0, p1}, Lcom/anythink/expressad/advanced/c/a$7;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-virtual {v1, v3}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    :cond_e
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "start download Video: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/anythink/expressad/advanced/c/a$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/advanced/c/a$2;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    iput-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->w:Lcom/anythink/expressad/videocommon/d/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/expressad/advanced/c/a;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/expressad/advanced/c/a;->w:Lcom/anythink/expressad/videocommon/d/c;

    const/16 v6, 0x12a

    invoke-virtual {v3, v4, v1, v6, v5}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;Ljava/util/List;ILcom/anythink/expressad/videocommon/d/c;)Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/expressad/advanced/c/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result v4

    invoke-virtual {v1, v6, v3, v4}, Lcom/anythink/expressad/videocommon/b/e;->a(ILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/videocommon/b/e;->d(Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->g:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->setVideoReady(Z)V

    invoke-direct {p0, p1, v0}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_10
    :goto_6
    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start download image: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/anythink/expressad/advanced/c/a$6;

    invoke-direct {v2, p0, p1}, Lcom/anythink/expressad/advanced/c/a$6;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    :cond_11
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start download EndCard: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/anythink/expressad/advanced/c/a$5;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/advanced/c/a$5;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->y:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/advanced/c/a;->y:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    :cond_12
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start download gitUrl: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->y()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/anythink/expressad/advanced/c/a$4;

    invoke-direct {v2, p0, p1}, Lcom/anythink/expressad/advanced/c/a$4;-><init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    :cond_13
    return-void

    :cond_14
    const-string p1, "invalid  campaign"

    invoke-direct {p0, p1, v0}, Lcom/anythink/expressad/advanced/c/a;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->e:Lcom/anythink/expressad/advanced/b/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->e:Lcom/anythink/expressad/advanced/b/a;

    :cond_0
    iget v0, p0, Lcom/anythink/expressad/advanced/c/a;->t:I

    const-string v2, "LoadManager release"

    invoke-direct {p0, v2, v0}, Lcom/anythink/expressad/advanced/c/a;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->w:Lcom/anythink/expressad/videocommon/d/c;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->w:Lcom/anythink/expressad/videocommon/d/c;

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/anythink/expressad/advanced/c/a;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    :cond_2
    return-void
.end method

.method public final c()Lcom/anythink/expressad/foundation/d/c;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a;->i:Lcom/anythink/expressad/foundation/d/c;

    return-object v0
.end method
