.class public Lmobi/oneway/export/b/a/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lmobi/oneway/export/enums/AdType;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmobi/oneway/export/enums/AdType;->splash:Lmobi/oneway/export/enums/AdType;

    iput-object v0, p0, Lmobi/oneway/export/b/a/c;->a:Lmobi/oneway/export/enums/AdType;

    iput-object p1, p0, Lmobi/oneway/export/b/a/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/OWSplashAdListener;J)V
    .locals 9

    iget-object v0, p0, Lmobi/oneway/export/b/a/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lmobi/oneway/export/b/a/c;->a:Lmobi/oneway/export/enums/AdType;

    invoke-static {v0, v1}, Lmobi/oneway/export/f/d;->a(Ljava/lang/String;Lmobi/oneway/export/enums/AdType;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    sget-object p1, Lmobi/oneway/export/enums/OnewaySdkError;->INITIALIZE_FAILED:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lmobi/oneway/export/b/a/c;->a:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " is empty"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lmobi/oneway/export/AdListener/OWSplashAdListener;->onAdError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/oneway/export/f/a;

    invoke-virtual {v2}, Lmobi/oneway/export/f/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v6, Lmobi/oneway/export/b/b/i;

    iget-object v3, p0, Lmobi/oneway/export/b/a/c;->a:Lmobi/oneway/export/enums/AdType;

    invoke-direct {v6, v3, v2, p4, p5}, Lmobi/oneway/export/b/b/i;-><init>(Lmobi/oneway/export/enums/AdType;Ljava/util/List;J)V

    invoke-virtual {v6, p3}, Lmobi/oneway/export/b/b/b;->a(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lmobi/oneway/export/b/b/b;->c()V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lmobi/oneway/export/f/a;

    move-object v4, p1

    move-object v5, p2

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lmobi/oneway/export/f/a;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lmobi/oneway/export/b/b/i;J)V

    :cond_2
    return-void
.end method
