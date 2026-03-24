.class public Lmobi/oneway/export/b/a/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lmobi/oneway/export/enums/AdType;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmobi/oneway/export/f/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lmobi/oneway/export/b/b/b;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmobi/oneway/export/b/a/a;->b:Lmobi/oneway/export/enums/AdType;

    invoke-static {p2, p1}, Lmobi/oneway/export/f/d;->a(Ljava/lang/String;Lmobi/oneway/export/enums/AdType;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lmobi/oneway/export/b/a/a;->c:Ljava/util/List;

    return-void
.end method

.method private a(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/b/a/a;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lmobi/oneway/export/b/a/a$1;->a:[I

    iget-object v1, p0, Lmobi/oneway/export/b/a/a;->b:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmobi/oneway/export/b/a/a;->a:Ljava/lang/Object;

    check-cast v0, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

    invoke-interface {v0, p1, p2}, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;->onSdkError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmobi/oneway/export/b/a/a;->a:Ljava/lang/Object;

    check-cast v0, Lmobi/oneway/export/AdListener/AdMonitor;

    invoke-interface {v0, p1, p2}, Lmobi/oneway/export/AdListener/AdMonitor;->onSdkError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lmobi/oneway/export/b/a/a;->c:Ljava/util/List;

    invoke-static {v0}, Lmobi/oneway/export/f/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lmobi/oneway/export/b/a;->a()Lmobi/oneway/export/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/oneway/export/b/a;->c()J

    move-result-wide v1

    sget-object v3, Lmobi/oneway/export/b/a/a$1;->a:[I

    iget-object v4, p0, Lmobi/oneway/export/b/a/a;->b:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Lmobi/oneway/export/b/b/g;

    iget-object v4, p0, Lmobi/oneway/export/b/a/a;->b:Lmobi/oneway/export/enums/AdType;

    invoke-direct {v3, v4, v0, v1, v2}, Lmobi/oneway/export/b/b/g;-><init>(Lmobi/oneway/export/enums/AdType;Ljava/util/List;J)V

    goto :goto_0

    :cond_1
    new-instance v3, Lmobi/oneway/export/b/b/e;

    iget-object v4, p0, Lmobi/oneway/export/b/a/a;->b:Lmobi/oneway/export/enums/AdType;

    invoke-direct {v3, v4, v0, v1, v2}, Lmobi/oneway/export/b/b/e;-><init>(Lmobi/oneway/export/enums/AdType;Ljava/util/List;J)V

    goto :goto_0

    :cond_2
    new-instance v3, Lmobi/oneway/export/b/b/f;

    iget-object v4, p0, Lmobi/oneway/export/b/a/a;->b:Lmobi/oneway/export/enums/AdType;

    invoke-direct {v3, v4, v0, v1, v2}, Lmobi/oneway/export/b/b/f;-><init>(Lmobi/oneway/export/enums/AdType;Ljava/util/List;J)V

    goto :goto_0

    :cond_3
    new-instance v3, Lmobi/oneway/export/b/b/h;

    iget-object v4, p0, Lmobi/oneway/export/b/a/a;->b:Lmobi/oneway/export/enums/AdType;

    invoke-direct {v3, v4, v0, v1, v2}, Lmobi/oneway/export/b/b/h;-><init>(Lmobi/oneway/export/enums/AdType;Ljava/util/List;J)V

    :goto_0
    iput-object v3, p0, Lmobi/oneway/export/b/a/a;->d:Lmobi/oneway/export/b/b/b;

    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lmobi/oneway/export/b/a/a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->LOAD_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobi/oneway/export/b/a/a;->b:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmobi/oneway/export/b/a/a;->a(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lmobi/oneway/export/b/a/a;->d:Lmobi/oneway/export/b/b/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmobi/oneway/export/b/b/b;->c()V

    :cond_1
    iget-object v0, p0, Lmobi/oneway/export/b/a/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/oneway/export/f/a;

    iget-object v2, p0, Lmobi/oneway/export/b/a/a;->b:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v1, v2}, Lmobi/oneway/export/f/a;->a(Lmobi/oneway/export/enums/AdType;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 3

    iput-object p2, p0, Lmobi/oneway/export/b/a/a;->a:Ljava/lang/Object;

    iget-object v0, p0, Lmobi/oneway/export/b/a/a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lmobi/oneway/export/b/a/a;->d()V

    iget-object v0, p0, Lmobi/oneway/export/b/a/a;->d:Lmobi/oneway/export/b/b/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lmobi/oneway/export/b/b/b;->a(Ljava/lang/Object;)V

    :cond_1
    iget-object p2, p0, Lmobi/oneway/export/b/a/a;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/a;

    sget-object v1, Lmobi/oneway/export/b/a/a$1;->a:[I

    iget-object v2, p0, Lmobi/oneway/export/b/a/a;->b:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmobi/oneway/export/b/a/a;->d:Lmobi/oneway/export/b/b/b;

    check-cast v1, Lmobi/oneway/export/b/b/g;

    invoke-virtual {v0, p1, v1}, Lmobi/oneway/export/f/a;->a(Landroid/app/Activity;Lmobi/oneway/export/b/b/g;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lmobi/oneway/export/b/a/a;->d:Lmobi/oneway/export/b/b/b;

    check-cast v1, Lmobi/oneway/export/b/b/e;

    invoke-virtual {v0, p1, v1}, Lmobi/oneway/export/f/a;->a(Landroid/app/Activity;Lmobi/oneway/export/b/b/e;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lmobi/oneway/export/b/a/a;->d:Lmobi/oneway/export/b/b/b;

    check-cast v1, Lmobi/oneway/export/b/b/f;

    invoke-virtual {v0, p1, v1}, Lmobi/oneway/export/f/a;->a(Landroid/app/Activity;Lmobi/oneway/export/b/b/f;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lmobi/oneway/export/b/a/a;->d:Lmobi/oneway/export/b/b/b;

    check-cast v1, Lmobi/oneway/export/b/b/h;

    invoke-virtual {v0, p1, v1}, Lmobi/oneway/export/f/a;->a(Landroid/app/Activity;Lmobi/oneway/export/b/b/h;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iget-object v0, p0, Lmobi/oneway/export/b/a/a;->c:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/oneway/export/f/a;

    iget-object v2, p0, Lmobi/oneway/export/b/a/a;->b:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v1, v2}, Lmobi/oneway/export/f/a;->b(Lmobi/oneway/export/enums/AdType;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lmobi/oneway/export/b/a/a;->b:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v1, v0, p1, p2}, Lmobi/oneway/export/f/a;->a(Lmobi/oneway/export/enums/AdType;Landroid/app/Activity;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    iput-object p1, p0, Lmobi/oneway/export/b/a/a;->a:Ljava/lang/Object;

    iget-object v0, p0, Lmobi/oneway/export/b/a/a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmobi/oneway/export/b/a/a;->d:Lmobi/oneway/export/b/b/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lmobi/oneway/export/b/b/b;->a(Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lmobi/oneway/export/b/a/a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/a;

    sget-object v1, Lmobi/oneway/export/b/a/a$1;->a:[I

    iget-object v2, p0, Lmobi/oneway/export/b/a/a;->b:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmobi/oneway/export/b/a/a;->d:Lmobi/oneway/export/b/b/b;

    check-cast v1, Lmobi/oneway/export/b/b/g;

    invoke-virtual {v0, v1}, Lmobi/oneway/export/f/a;->a(Lmobi/oneway/export/b/b/g;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lmobi/oneway/export/b/a/a;->d:Lmobi/oneway/export/b/b/b;

    check-cast v1, Lmobi/oneway/export/b/b/e;

    invoke-virtual {v0, v1}, Lmobi/oneway/export/f/a;->a(Lmobi/oneway/export/b/b/e;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lmobi/oneway/export/b/a/a;->d:Lmobi/oneway/export/b/b/b;

    check-cast v1, Lmobi/oneway/export/b/b/f;

    invoke-virtual {v0, v1}, Lmobi/oneway/export/f/a;->a(Lmobi/oneway/export/b/b/f;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lmobi/oneway/export/b/a/a;->d:Lmobi/oneway/export/b/b/b;

    check-cast v1, Lmobi/oneway/export/b/b/h;

    invoke-virtual {v0, v1}, Lmobi/oneway/export/f/a;->a(Lmobi/oneway/export/b/b/h;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public b()Z
    .locals 4

    iget-object v0, p0, Lmobi/oneway/export/b/a/a;->c:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lmobi/oneway/export/b/a/a;->d:Lmobi/oneway/export/b/b/b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lmobi/oneway/export/b/b/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmobi/oneway/export/b/a/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/oneway/export/f/a;

    iget-object v3, p0, Lmobi/oneway/export/b/a/a;->b:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v2, v3}, Lmobi/oneway/export/f/a;->b(Lmobi/oneway/export/enums/AdType;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/oneway/export/b/a/a;->a:Ljava/lang/Object;

    iget-object v1, p0, Lmobi/oneway/export/b/a/a;->d:Lmobi/oneway/export/b/b/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lmobi/oneway/export/b/b/b;->a(Ljava/lang/Object;)V

    iput-object v0, p0, Lmobi/oneway/export/b/a/a;->d:Lmobi/oneway/export/b/b/b;

    :cond_0
    iget-object v0, p0, Lmobi/oneway/export/b/a/a;->c:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/oneway/export/f/a;

    iget-object v2, p0, Lmobi/oneway/export/b/a/a;->b:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v1, v2}, Lmobi/oneway/export/f/a;->c(Lmobi/oneway/export/enums/AdType;)V

    goto :goto_0

    :cond_2
    return-void
.end method
