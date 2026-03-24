.class public Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;
.super Lcom/octopus/ad/internal/view/AdViewImpl;
.source ""


# static fields
.field public static final INTENT_KEY_CLOSE_BUTTON_DELAY:Ljava/lang/String; = "CLOSE_BUTTON_DELAY"

.field public static final INTENT_KEY_TIME:Ljava/lang/String; = "TIME"

.field public static INTERSTITIALADVIEW_TO_USE:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl; = null

.field public static final MAX_AGE:J = 0x41eb0L


# instance fields
.field public m:Z

.field public n:Z

.field private o:I

.field private p:I

.field private q:Z

.field private r:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/octopus/ad/internal/view/d;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/octopus/ad/AdActivity$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/internal/view/AdViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->o:I

    const/16 p2, 0x2710

    iput p2, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->p:I

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->r:Ljava/util/Queue;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->s:Lcom/octopus/ad/AdActivity$a;

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->m:Z

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->n:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/octopus/ad/internal/view/AdViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->o:I

    const/16 p2, 0x2710

    iput p2, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->p:I

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->r:Ljava/util/Queue;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->s:Lcom/octopus/ad/AdActivity$a;

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->m:Z

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->n:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->o:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->p:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->r:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->s:Lcom/octopus/ad/AdActivity$a;

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->m:Z

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->n:Z

    iput-boolean p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->j:Z

    iput-boolean p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->k:Z

    if-eqz p2, :cond_0

    const/high16 p1, -0x1000000

    :goto_0
    iput p1, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->o:I

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0x33

    invoke-static {p2, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method private a(J)Z
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->r:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/octopus/ad/internal/view/d;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/octopus/ad/internal/view/d;->a()J

    move-result-wide v3

    sub-long v3, p1, v3

    const-wide/32 v5, 0x41eb0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    invoke-interface {v2}, Lcom/octopus/ad/internal/view/d;->a()J

    move-result-wide v3

    sub-long v3, p1, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    invoke-interface {v2}, Lcom/octopus/ad/internal/view/d;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/view/d;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->r:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    return p1
.end method

.method private b(Lcom/octopus/ad/internal/view/b;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/octopus/ad/internal/view/b;->failed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    const-string v0, "Loaded an ad with an invalid displayable"

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcom/octopus/ad/internal/c;->a(I)V

    iget-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    sget-object v0, Lcom/octopus/ad/internal/l;->c:Lcom/octopus/ad/internal/l;

    invoke-virtual {p2, v0}, Lcom/octopus/ad/internal/d;->a(Lcom/octopus/ad/internal/l;)V

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :try_start_0
    check-cast p1, Landroid/app/Activity;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x0

    sub-int/2addr p2, p1

    :catch_0
    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object p1

    int-to-float p2, p2

    invoke-virtual {p1}, Lcom/octopus/ad/internal/m;->m()F

    move-result v1

    div-float/2addr p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p2, v1

    float-to-int p2, p2

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/octopus/ad/internal/m;->l()F

    move-result p1

    div-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/d;->d(I)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/d;->e(I)V

    return-void
.end method

.method public a(Lcom/octopus/ad/internal/view/b;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->b(Lcom/octopus/ad/internal/view/b;)Z

    move-result v0

    if-nez v0, :cond_0

    const p1, 0x138e6

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->onAdFailedToLoad(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->c:Lcom/octopus/ad/internal/view/b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/octopus/ad/internal/view/b;->destroy()V

    :cond_1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->m:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->n:Z

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->c:Lcom/octopus/ad/internal/view/b;

    iget-object v0, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->r:Ljava/util/Queue;

    new-instance v1, Lcom/octopus/ad/internal/view/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/octopus/ad/internal/view/c;-><init>(Lcom/octopus/ad/internal/view/b;Ljava/lang/Long;Z)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/octopus/ad/internal/view/b;->destroy()V

    :cond_3
    :goto_0
    return-void
.end method

.method public activityOnDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->m:Z

    return-void
.end method

.method public activityOnPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->n:Z

    return-void
.end method

.method public activityOnResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->n:Z

    return-void
.end method

.method public b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    sget-object v0, Lcom/octopus/ad/R$styleable;->AdView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->xmlLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->found_n_in_xml:I

    int-to-long v2, p2

    invoke-static {v1, v2, v3}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_5

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Lcom/octopus/ad/R$styleable;->AdView_adSlotId:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/octopus/ad/internal/view/AdViewImpl;->setAdSlotId(Ljava/lang/String;)V

    sget-object v3, Lcom/octopus/ad/internal/utilities/HaoboLog;->xmlLogTag:Ljava/lang/String;

    sget v4, Lcom/octopus/ad/R$string;->placement_id:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    sget v3, Lcom/octopus/ad/R$styleable;->AdView_test:I

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v3

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v3, Lcom/octopus/ad/internal/m;->b:Z

    sget-object v2, Lcom/octopus/ad/internal/utilities/HaoboLog;->xmlLogTag:Ljava/lang/String;

    sget v3, Lcom/octopus/ad/R$string;->xml_set_test:I

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v4

    iget-boolean v4, v4, Lcom/octopus/ad/internal/m;->b:Z

    :goto_1
    invoke-static {v3, v4}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    sget v3, Lcom/octopus/ad/R$styleable;->AdView_opens_native_browser:I

    if-ne v2, v3, :cond_2

    sget-object v3, Lcom/octopus/ad/internal/utilities/HaoboLog;->xmlLogTag:Ljava/lang/String;

    sget v4, Lcom/octopus/ad/R$string;->xml_set_opens_native_browser:I

    invoke-static {v4}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/view/AdViewImpl;->setOpensNativeBrowser(Z)V

    goto :goto_2

    :cond_2
    sget v3, Lcom/octopus/ad/R$styleable;->AdView_show_loading_indicator:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    sget-object v3, Lcom/octopus/ad/internal/utilities/HaoboLog;->xmlLogTag:Ljava/lang/String;

    sget v5, Lcom/octopus/ad/R$string;->show_loading_indicator_xml:I

    invoke-static {v5}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/view/AdViewImpl;->setShowLoadingIndicator(Z)V

    goto :goto_2

    :cond_3
    sget v3, Lcom/octopus/ad/R$styleable;->AdView_load_landing_page_in_background:I

    if-ne v2, v3, :cond_4

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/view/AdViewImpl;->setLoadsInBackground(Z)V

    sget-object v2, Lcom/octopus/ad/internal/utilities/HaoboLog;->xmlLogTag:Ljava/lang/String;

    sget v3, Lcom/octopus/ad/R$string;->xml_load_landing_page_in_background:I

    iget-boolean v4, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->g:Z

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/c;->a()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->INTERSTITIALADVIEW_TO_USE:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    iget-object v0, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->r:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 2

    invoke-super {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->destroy()V

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->publicFunctionsLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->destroy_int:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/c;->a()V

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->r:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->INTERSTITIALADVIEW_TO_USE:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->s:Lcom/octopus/ad/AdActivity$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/octopus/ad/AdActivity$a;->d()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->s:Lcom/octopus/ad/AdActivity$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/octopus/ad/AdActivity$a;->e()V

    :cond_0
    return-void
.end method

.method public getAdImplementation()Lcom/octopus/ad/AdActivity$a;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->s:Lcom/octopus/ad/AdActivity$a;

    return-object v0
.end method

.method public getAdQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/octopus/ad/internal/view/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->r:Ljava/util/Queue;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 2

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->publicFunctionsLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->get_bg:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->o:I

    return v0
.end method

.method public getCloseButtonDelay()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->p:I

    return v0
.end method

.method public getCreativeHeight()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCreativeWidth()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getMediaType()Lcom/octopus/ad/internal/l;
    .locals 1

    sget-object v0, Lcom/octopus/ad/internal/l;->c:Lcom/octopus/ad/internal/l;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->a(J)Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/octopus/ad/internal/network/a$a;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdParameters()Lcom/octopus/ad/internal/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/d;->a(Z)V

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->i:Lcom/octopus/ad/internal/network/a$a;

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->publicFunctionsLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->load_ad_int:I

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->isReadyToStart()Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/octopus/ad/internal/c;->a()V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/c;->b()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->loadCount:I

    iput v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->clickCount:I

    return p1

    :cond_1
    return v1
.end method

.method public onCreateLifeCycle()V
    .locals 0

    return-void
.end method

.method public onDestroyLifeCycle()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/c;->a()V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public onPauseLifeCycle()V
    .locals 0

    return-void
.end method

.method public onRestartLifeCycle()V
    .locals 0

    return-void
.end method

.method public onResumeLifeCycle()V
    .locals 0

    return-void
.end method

.method public onStartLifeCycle()V
    .locals 0

    return-void
.end method

.method public onStopLifeCycle()V
    .locals 0

    return-void
.end method

.method public setAdImplementation(Lcom/octopus/ad/AdActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->s:Lcom/octopus/ad/AdActivity$a;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->publicFunctionsLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->set_bg:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->o:I

    return-void
.end method

.method public setCloseButtonDelay(I)V
    .locals 1

    const/16 v0, 0x2710

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->p:I

    return-void
.end method

.method public setDismissOnClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->q:Z

    return-void
.end method

.method public shouldDismissOnClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->q:Z

    return v0
.end method

.method public show(Landroid/app/Activity;)I
    .locals 6

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->publicFunctionsLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->show_int:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->a(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->m:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/octopus/ad/AdActivity;->a()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "ACTIVITY_TYPE"

    const-string v5, "INTERSTITIAL"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "TIME"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget v0, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->p:I

    const-string v1, "CLOSE_BUTTON_DELAY"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sput-object p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->INTERSTITIALADVIEW_TO_USE:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    sput-object p1, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->INTERSTITIALADVIEW_TO_USE:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->adactivity_missing:I

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->r:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_1
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->empty_queue:I

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->r:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    return p1

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->r:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    return p1
.end method
