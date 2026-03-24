.class public Lcom/octopus/ad/utils/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:Lcom/octopus/ad/utils/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OnLineStateClass"

    iput-object v0, p0, Lcom/octopus/ad/utils/f;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/octopus/ad/utils/f;->b:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/octopus/ad/utils/f;->c:Z

    iput-boolean v0, p0, Lcom/octopus/ad/utils/f;->d:Z

    iput-boolean v0, p0, Lcom/octopus/ad/utils/f;->e:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/utils/f;->g:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/octopus/ad/utils/f;->h:J

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/utils/f;J)J
    .locals 0

    iput-wide p1, p0, Lcom/octopus/ad/utils/f;->h:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/octopus/ad/utils/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/utils/f;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/octopus/ad/utils/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/utils/f;->f:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/utils/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/utils/f;->c:Z

    return p1
.end method

.method public static synthetic b(Lcom/octopus/ad/utils/f;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/utils/f;->g:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic b(Lcom/octopus/ad/utils/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/utils/f;->d:Z

    return p1
.end method

.method public static synthetic c(Lcom/octopus/ad/utils/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/utils/f;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/octopus/ad/utils/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/utils/f;->e:Z

    return p1
.end method

.method public static synthetic d(Lcom/octopus/ad/utils/f;)I
    .locals 2

    iget v0, p0, Lcom/octopus/ad/utils/f;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/octopus/ad/utils/f;->b:I

    return v0
.end method

.method public static synthetic e(Lcom/octopus/ad/utils/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/utils/f;->c:Z

    return p0
.end method

.method public static synthetic f(Lcom/octopus/ad/utils/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/utils/f;->e:Z

    return p0
.end method

.method public static synthetic g(Lcom/octopus/ad/utils/f;)Lcom/octopus/ad/utils/d;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/utils/f;->i:Lcom/octopus/ad/utils/d;

    return-object p0
.end method

.method public static synthetic h(Lcom/octopus/ad/utils/f;)I
    .locals 2

    iget v0, p0, Lcom/octopus/ad/utils/f;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/octopus/ad/utils/f;->b:I

    return v0
.end method

.method public static synthetic i(Lcom/octopus/ad/utils/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/utils/f;->d:Z

    return p0
.end method

.method public static synthetic j(Lcom/octopus/ad/utils/f;)J
    .locals 2

    iget-wide v0, p0, Lcom/octopus/ad/utils/f;->h:J

    return-wide v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/octopus/ad/utils/f;->h:J

    new-instance v0, Lcom/octopus/ad/utils/f$1;

    invoke-direct {v0, p0}, Lcom/octopus/ad/utils/f$1;-><init>(Lcom/octopus/ad/utils/f;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public a(Lcom/octopus/ad/utils/d;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/utils/f;->i:Lcom/octopus/ad/utils/d;

    return-void
.end method
