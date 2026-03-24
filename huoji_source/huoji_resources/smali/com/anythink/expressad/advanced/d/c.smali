.class public Lcom/anythink/expressad/advanced/d/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/a/i;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static g:Ljava/lang/String; = "NativeAdvancedProvider"


# instance fields
.field private A:I

.field private B:Ljava/lang/Object;

.field private C:Lorg/json/JSONObject;

.field private D:Z

.field private E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field public d:Z

.field public e:Z

.field public f:Lcom/anythink/expressad/foundation/d/d;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/anythink/expressad/advanced/c/a;

.field private k:Lcom/anythink/expressad/advanced/c/b;

.field private l:Lcom/anythink/expressad/advanced/d/b;

.field private m:Lcom/anythink/expressad/out/o;

.field private n:Lcom/anythink/expressad/advanced/d/d;

.field private o:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

.field private p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

.field private q:Lcom/anythink/expressad/advanced/view/a;

.field private r:Lcom/anythink/expressad/d/c;

.field private s:Z

.field private t:I

.field private u:Z

.field private v:I

.field private w:Z

.field private x:I

.field private y:Z

.field private z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/expressad/advanced/d/c;->t:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/anythink/expressad/advanced/d/c;->u:Z

    iput v1, p0, Lcom/anythink/expressad/advanced/d/c;->v:I

    iput-boolean v1, p0, Lcom/anythink/expressad/advanced/d/c;->w:Z

    iput v1, p0, Lcom/anythink/expressad/advanced/d/c;->x:I

    iput-boolean v1, p0, Lcom/anythink/expressad/advanced/d/c;->y:Z

    iput v1, p0, Lcom/anythink/expressad/advanced/d/c;->z:I

    iput v1, p0, Lcom/anythink/expressad/advanced/d/c;->A:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/anythink/expressad/advanced/d/c;->B:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/anythink/expressad/advanced/d/c;->D:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/anythink/expressad/advanced/d/c;->I:Z

    iput-boolean v1, p0, Lcom/anythink/expressad/advanced/d/c;->d:Z

    new-instance v1, Lcom/anythink/expressad/advanced/d/c$1;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/advanced/d/c$1;-><init>(Lcom/anythink/expressad/advanced/d/c;)V

    iput-object v1, p0, Lcom/anythink/expressad/advanced/d/c;->J:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->i:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/expressad/advanced/d/c;->h:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->k:Lcom/anythink/expressad/advanced/c/b;

    if-nez p1, :cond_0

    new-instance p1, Lcom/anythink/expressad/advanced/c/b;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/anythink/expressad/advanced/d/c;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/advanced/d/c;->h:Ljava/lang/String;

    invoke-direct {p1, p2, v1, v2}, Lcom/anythink/expressad/advanced/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->k:Lcom/anythink/expressad/advanced/c/b;

    invoke-virtual {p1, p0}, Lcom/anythink/expressad/advanced/c/b;->a(Lcom/anythink/expressad/advanced/d/c;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    if-nez p1, :cond_2

    :try_start_0
    new-instance p1, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->q:Lcom/anythink/expressad/advanced/view/a;

    if-nez p1, :cond_1

    :try_start_1
    new-instance p1, Lcom/anythink/expressad/advanced/view/a;

    iget-object p2, p0, Lcom/anythink/expressad/advanced/d/c;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/expressad/advanced/d/c;->k:Lcom/anythink/expressad/advanced/c/b;

    invoke-virtual {v1}, Lcom/anythink/expressad/advanced/c/b;->b()Lcom/anythink/expressad/advanced/d/a;

    move-result-object v1

    invoke-direct {p1, p2, v1, p0}, Lcom/anythink/expressad/advanced/view/a;-><init>(Ljava/lang/String;Lcom/anythink/expressad/advanced/d/a;Lcom/anythink/expressad/advanced/d/c;)V

    iput-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->q:Lcom/anythink/expressad/advanced/view/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/anythink/expressad/advanced/d/c;->q:Lcom/anythink/expressad/advanced/view/a;

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->o:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    if-nez p1, :cond_3

    new-instance p1, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    invoke-direct {p1, p3}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->o:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    iget-object p2, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->setAdvancedNativeWebview(Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;)V

    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->o:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    iget-object p2, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p3, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    if-nez p1, :cond_6

    new-instance p1, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    iget p1, p0, Lcom/anythink/expressad/advanced/d/c;->z:I

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/anythink/expressad/advanced/d/c;->A:I

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    iget p2, p0, Lcom/anythink/expressad/advanced/d/c;->z:I

    iget p3, p0, Lcom/anythink/expressad/advanced/d/c;->A:I

    invoke-direct {p1, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_3

    :cond_5
    :goto_2
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :goto_3
    iget-object p2, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    invoke-virtual {p1, p0}, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;->setProvider(Lcom/anythink/expressad/advanced/d/c;)V

    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    iget-object p2, p0, Lcom/anythink/expressad/advanced/d/c;->o:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/expressad/advanced/d/c;->J:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_6
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->k:Lcom/anythink/expressad/advanced/c/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/advanced/c/b;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/advanced/d/c;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/advanced/d/c;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/expressad/advanced/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->k:Lcom/anythink/expressad/advanced/c/b;

    invoke-virtual {v0, p0}, Lcom/anythink/expressad/advanced/c/b;->a(Lcom/anythink/expressad/advanced/d/c;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    if-nez v0, :cond_2

    :try_start_0
    new-instance v0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->q:Lcom/anythink/expressad/advanced/view/a;

    if-nez v0, :cond_1

    :try_start_1
    new-instance v0, Lcom/anythink/expressad/advanced/view/a;

    iget-object v1, p0, Lcom/anythink/expressad/advanced/d/c;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/advanced/d/c;->k:Lcom/anythink/expressad/advanced/c/b;

    invoke-virtual {v2}, Lcom/anythink/expressad/advanced/c/b;->b()Lcom/anythink/expressad/advanced/d/a;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/anythink/expressad/advanced/view/a;-><init>(Ljava/lang/String;Lcom/anythink/expressad/advanced/d/a;Lcom/anythink/expressad/advanced/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->q:Lcom/anythink/expressad/advanced/view/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/advanced/d/c;->q:Lcom/anythink/expressad/advanced/view/a;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->o:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    const/4 v1, -0x1

    if-nez v0, :cond_3

    new-instance v0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    invoke-direct {v0, p1}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->o:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->setAdvancedNativeWebview(Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;)V

    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->o:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    if-nez p1, :cond_6

    new-instance p1, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    iget p1, p0, Lcom/anythink/expressad/advanced/d/c;->z:I

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/anythink/expressad/advanced/d/c;->A:I

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    iget v0, p0, Lcom/anythink/expressad/advanced/d/c;->z:I

    iget v1, p0, Lcom/anythink/expressad/advanced/d/c;->A:I

    invoke-direct {p1, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_3

    :cond_5
    :goto_2
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :goto_3
    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    invoke-virtual {p1, p0}, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;->setProvider(Lcom/anythink/expressad/advanced/d/c;)V

    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->o:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->J:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_6
    return-void
.end method

.method private a(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->k:Lcom/anythink/expressad/advanced/c/b;

    iget-object v1, p0, Lcom/anythink/expressad/advanced/d/c;->n:Lcom/anythink/expressad/advanced/d/d;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/advanced/c/b;->a(Lcom/anythink/expressad/advanced/d/d;)V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->k:Lcom/anythink/expressad/advanced/c/b;

    iget-object v1, p0, Lcom/anythink/expressad/advanced/d/c;->o:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/anythink/expressad/advanced/c/b;->a(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;Z)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/advanced/d/c;->D:Z

    invoke-direct {p0, p1}, Lcom/anythink/expressad/advanced/d/c;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/advanced/d/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/advanced/d/c;->I:Z

    return p0
.end method

.method public static synthetic a(Lcom/anythink/expressad/advanced/d/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/advanced/d/c;->I:Z

    return p1
.end method

.method public static synthetic b(Lcom/anythink/expressad/advanced/d/c;)Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    return-object p0
.end method

.method private b(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iput p1, p0, Lcom/anythink/expressad/advanced/d/c;->A:I

    iput p2, p0, Lcom/anythink/expressad/advanced/d/c;->z:I

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p2, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 3

    iget-boolean v0, p0, Lcom/anythink/expressad/advanced/d/c;->D:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->C:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    const-string v1, "setStyleList"

    const-string v2, ""

    invoke-static {v0, v1, v2, p1}, Lcom/anythink/expressad/advanced/js/NativeAdvancedJsUtils;->sendThirdToH5(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/anythink/expressad/advanced/d/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/advanced/d/c;->k()V

    return-void
.end method

.method private f(I)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "netstat"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    const-string v1, "onNetstatChanged"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/expressad/advanced/d/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method private g(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/anythink/expressad/advanced/d/c;->u:Z

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/anythink/expressad/advanced/d/c;->t:I

    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/anythink/expressad/advanced/d/c;->t:I

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->k:Lcom/anythink/expressad/advanced/c/b;

    invoke-virtual {p1, v2}, Lcom/anythink/expressad/advanced/c/b;->a(Z)V

    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    const-string v2, "showCloseButton"

    invoke-static {p1, v2, v1, v0}, Lcom/anythink/expressad/advanced/js/NativeAdvancedJsUtils;->sendThirdToH5(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->k:Lcom/anythink/expressad/advanced/c/b;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/anythink/expressad/advanced/c/b;->a(Z)V

    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    const-string v2, "hideCloseButton"

    invoke-static {p1, v2, v1, v0}, Lcom/anythink/expressad/advanced/js/NativeAdvancedJsUtils;->sendThirdToH5(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private h()V
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/anythink/expressad/foundation/d/c;

    iget-object v2, p0, Lcom/anythink/expressad/advanced/d/c;->j:Lcom/anythink/expressad/advanced/c/a;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/anythink/expressad/advanced/c/a;->c()Lcom/anythink/expressad/foundation/d/c;

    move-result-object v2

    aput-object v2, v1, v3

    :cond_0
    aget-object v2, v1, v3

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/anythink/expressad/advanced/d/c;->r:Lcom/anythink/expressad/d/c;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/anythink/expressad/advanced/d/c;->h:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/anythink/expressad/d/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/expressad/advanced/d/c;->r:Lcom/anythink/expressad/d/c;

    :cond_1
    new-instance v2, Lcom/anythink/expressad/advanced/d/d;

    iget-object v6, p0, Lcom/anythink/expressad/advanced/d/c;->m:Lcom/anythink/expressad/out/o;

    iget-object v4, p0, Lcom/anythink/expressad/advanced/d/c;->r:Lcom/anythink/expressad/d/c;

    invoke-virtual {v4}, Lcom/anythink/expressad/d/c;->a()D

    move-result-wide v7

    aget-object v9, v1, v3

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/anythink/expressad/advanced/d/d;-><init>(Lcom/anythink/expressad/advanced/d/c;Lcom/anythink/expressad/out/o;DLcom/anythink/expressad/foundation/d/c;)V

    iput-object v2, p0, Lcom/anythink/expressad/advanced/d/c;->n:Lcom/anythink/expressad/advanced/d/d;

    iget-boolean v2, p0, Lcom/anythink/expressad/advanced/d/c;->e:Z

    if-eqz v2, :cond_2

    return-void

    :cond_2
    iput-boolean v0, p0, Lcom/anythink/expressad/advanced/d/c;->e:Z

    iget-object v4, p0, Lcom/anythink/expressad/advanced/d/c;->o:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/anythink/expressad/advanced/d/c;->i:Ljava/lang/String;

    iget-object v7, p0, Lcom/anythink/expressad/advanced/d/c;->h:Ljava/lang/String;

    iget v8, p0, Lcom/anythink/expressad/advanced/d/c;->t:I

    new-instance v9, Lcom/anythink/expressad/advanced/d/c$2;

    invoke-direct {v9, p0, v1}, Lcom/anythink/expressad/advanced/d/c$2;-><init>(Lcom/anythink/expressad/advanced/d/c;[Lcom/anythink/expressad/foundation/d/c;)V

    invoke-static/range {v4 .. v9}, Lcom/anythink/expressad/advanced/c/c;->a(Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;ILcom/anythink/expressad/advanced/c/c$a;)Z

    :cond_3
    return-void
.end method

.method private h(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/anythink/expressad/advanced/d/c;->w:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/anythink/expressad/advanced/d/c;->v:I

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "setVolume"

    const-string v2, "mute"

    invoke-static {v0, v1, v2, p1}, Lcom/anythink/expressad/advanced/js/NativeAdvancedJsUtils;->sendThirdToH5(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/advanced/d/c;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->k:Lcom/anythink/expressad/advanced/c/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/c/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->j:Lcom/anythink/expressad/advanced/c/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/c/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private i(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/anythink/expressad/advanced/d/c;->y:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/anythink/expressad/advanced/d/c;->x:I

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->p:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "setVideoPlayMode"

    const-string v2, "autoPlay"

    invoke-static {v0, v1, v2, p1}, Lcom/anythink/expressad/advanced/js/NativeAdvancedJsUtils;->sendThirdToH5(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/advanced/d/c;->t:I

    invoke-direct {p0, v0}, Lcom/anythink/expressad/advanced/d/c;->g(I)V

    iget v0, p0, Lcom/anythink/expressad/advanced/d/c;->v:I

    invoke-direct {p0, v0}, Lcom/anythink/expressad/advanced/d/c;->h(I)V

    iget v0, p0, Lcom/anythink/expressad/advanced/d/c;->x:I

    invoke-direct {p0, v0}, Lcom/anythink/expressad/advanced/d/c;->i(I)V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->C:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/anythink/expressad/advanced/d/c;->b(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    invoke-static {}, Lcom/anythink/expressad/foundation/h/k;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/anythink/expressad/advanced/d/c;->f(I)V

    return-void
.end method

.method private k()V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/advanced/d/c;->F:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/anythink/expressad/advanced/d/c;->G:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/anythink/expressad/advanced/d/c;->H:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->o:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->getAdvancedNativeWebview()Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/y;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->k:Lcom/anythink/expressad/advanced/c/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/c/b;->d()V

    :cond_2
    invoke-direct {p0}, Lcom/anythink/expressad/advanced/d/c;->h()V

    :cond_3
    :goto_0
    return-void
.end method

.method private l()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->k:Lcom/anythink/expressad/advanced/c/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/c/b;->e()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->j:Lcom/anythink/expressad/advanced/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/advanced/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final a(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/advanced/d/c;->u:Z

    invoke-direct {p0, p1}, Lcom/anythink/expressad/advanced/d/c;->g(I)V

    return-void
.end method

.method public final a(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iput p1, p0, Lcom/anythink/expressad/advanced/d/c;->A:I

    iput p2, p0, Lcom/anythink/expressad/advanced/d/c;->z:I

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p2, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;Z)V
    .locals 6

    iget v0, p0, Lcom/anythink/expressad/advanced/d/c;->t:I

    invoke-direct {p0, v0}, Lcom/anythink/expressad/advanced/d/c;->g(I)V

    iget v0, p0, Lcom/anythink/expressad/advanced/d/c;->v:I

    invoke-direct {p0, v0}, Lcom/anythink/expressad/advanced/d/c;->h(I)V

    iget v0, p0, Lcom/anythink/expressad/advanced/d/c;->x:I

    invoke-direct {p0, v0}, Lcom/anythink/expressad/advanced/d/c;->i(I)V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->C:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/anythink/expressad/advanced/d/c;->b(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    invoke-static {}, Lcom/anythink/expressad/foundation/h/k;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/anythink/expressad/advanced/d/c;->f(I)V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/anythink/expressad/advanced/d/c;->r:Lcom/anythink/expressad/d/c;

    if-nez p2, :cond_1

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->h:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/anythink/expressad/d/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/expressad/advanced/d/c;->r:Lcom/anythink/expressad/d/c;

    :cond_1
    new-instance p2, Lcom/anythink/expressad/advanced/d/d;

    iget-object v2, p0, Lcom/anythink/expressad/advanced/d/c;->m:Lcom/anythink/expressad/out/o;

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->r:Lcom/anythink/expressad/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->a()D

    move-result-wide v3

    move-object v0, p2

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/advanced/d/d;-><init>(Lcom/anythink/expressad/advanced/d/c;Lcom/anythink/expressad/out/o;DLcom/anythink/expressad/foundation/d/c;)V

    iput-object p2, p0, Lcom/anythink/expressad/advanced/d/c;->n:Lcom/anythink/expressad/advanced/d/d;

    :cond_2
    iget-object p2, p0, Lcom/anythink/expressad/advanced/d/c;->k:Lcom/anythink/expressad/advanced/c/b;

    if-nez p2, :cond_3

    new-instance p2, Lcom/anythink/expressad/advanced/c/b;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/advanced/d/c;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/advanced/d/c;->h:Ljava/lang/String;

    invoke-direct {p2, v0, v1, v2}, Lcom/anythink/expressad/advanced/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/anythink/expressad/advanced/d/c;->k:Lcom/anythink/expressad/advanced/c/b;

    invoke-virtual {p2, p0}, Lcom/anythink/expressad/advanced/c/b;->a(Lcom/anythink/expressad/advanced/d/c;)V

    :cond_3
    iget-object p2, p0, Lcom/anythink/expressad/advanced/d/c;->k:Lcom/anythink/expressad/advanced/c/b;

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->n:Lcom/anythink/expressad/advanced/d/d;

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/advanced/c/b;->a(Lcom/anythink/expressad/advanced/d/d;)V

    iget-object p2, p0, Lcom/anythink/expressad/advanced/d/c;->k:Lcom/anythink/expressad/advanced/c/b;

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->o:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/anythink/expressad/advanced/c/b;->a(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/d;)V
    .locals 3

    iput-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->f:Lcom/anythink/expressad/foundation/d/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/advanced/d/c;->I:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/advanced/d/c;->s:Z

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->o:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->clearResStateAndRemoveClose()V

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/advanced/d/c;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/anythink/expressad/d/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->r:Lcom/anythink/expressad/d/c;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/d/c;->y()Lcom/anythink/expressad/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->r:Lcom/anythink/expressad/d/c;

    :cond_0
    new-instance v0, Lcom/anythink/expressad/advanced/d/b;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/advanced/d/b;-><init>(Lcom/anythink/expressad/advanced/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->l:Lcom/anythink/expressad/advanced/d/b;

    iget-object v1, p0, Lcom/anythink/expressad/advanced/d/c;->m:Lcom/anythink/expressad/out/o;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/advanced/d/b;->a(Lcom/anythink/expressad/out/o;)V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->j:Lcom/anythink/expressad/advanced/c/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/anythink/expressad/advanced/c/a;

    iget-object v1, p0, Lcom/anythink/expressad/advanced/d/c;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/advanced/d/c;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/anythink/expressad/advanced/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->j:Lcom/anythink/expressad/advanced/c/a;

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->l:Lcom/anythink/expressad/advanced/d/b;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/advanced/d/c;->j:Lcom/anythink/expressad/advanced/c/a;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/advanced/b/a;)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->o:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->resetLoadState()V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->j:Lcom/anythink/expressad/advanced/c/a;

    iget-object v1, p0, Lcom/anythink/expressad/advanced/d/c;->o:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;)V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->j:Lcom/anythink/expressad/advanced/c/a;

    iget-object v1, p0, Lcom/anythink/expressad/advanced/d/c;->r:Lcom/anythink/expressad/d/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/d/c;)V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->j:Lcom/anythink/expressad/advanced/c/a;

    iget v1, p0, Lcom/anythink/expressad/advanced/d/c;->z:I

    iget v2, p0, Lcom/anythink/expressad/advanced/d/c;->A:I

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/advanced/c/a;->a(II)V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->j:Lcom/anythink/expressad/advanced/c/a;

    iget v1, p0, Lcom/anythink/expressad/advanced/d/c;->t:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/advanced/c/a;->a(I)V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->j:Lcom/anythink/expressad/advanced/c/a;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/foundation/d/d;)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/out/o;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->m:Lcom/anythink/expressad/out/o;

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/advanced/d/c;->s:Z

    return v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/advanced/d/c;->s:Z

    return-void
.end method

.method public final b(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/advanced/d/c;->w:Z

    invoke-direct {p0, p1}, Lcom/anythink/expressad/advanced/d/c;->h(I)V

    return-void
.end method

.method public final c()Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    return-object v0
.end method

.method public final c(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/advanced/d/c;->y:Z

    invoke-direct {p0, p1}, Lcom/anythink/expressad/advanced/d/c;->i(I)V

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/advanced/d/c;->t:I

    return v0
.end method

.method public final d(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/anythink/expressad/advanced/d/c;->H:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/anythink/expressad/advanced/d/c;->G:Z

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/anythink/expressad/advanced/d/c;->F:Z

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/anythink/expressad/advanced/d/c;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->m:Lcom/anythink/expressad/out/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/anythink/expressad/advanced/d/c;->m:Lcom/anythink/expressad/out/o;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->l:Lcom/anythink/expressad/advanced/d/b;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/anythink/expressad/advanced/d/c;->l:Lcom/anythink/expressad/advanced/d/b;

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->n:Lcom/anythink/expressad/advanced/d/d;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/anythink/expressad/advanced/d/c;->n:Lcom/anythink/expressad/advanced/d/d;

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->j:Lcom/anythink/expressad/advanced/c/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;)V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->j:Lcom/anythink/expressad/advanced/c/a;

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/c/a;->b()V

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->k:Lcom/anythink/expressad/advanced/c/b;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/c/b;->c()V

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->o:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->destroy()V

    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->f:Lcom/anythink/expressad/foundation/d/d;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/advanced/a/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->q:Lcom/anythink/expressad/advanced/view/a;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/view/a;->a()V

    :cond_6
    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/expressad/advanced/d/c;->J:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/anythink/expressad/advanced/d/c;->E:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    :cond_7
    return-void
.end method

.method public final e(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/anythink/expressad/advanced/d/c;->H:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/anythink/expressad/advanced/d/c;->G:Z

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/anythink/expressad/advanced/d/c;->F:Z

    :goto_0
    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/c;->k:Lcom/anythink/expressad/advanced/c/b;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/anythink/expressad/advanced/c/b;->e()V

    :cond_3
    return-void
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/c;->j:Lcom/anythink/expressad/advanced/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/c/a;->c()Lcom/anythink/expressad/foundation/d/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
