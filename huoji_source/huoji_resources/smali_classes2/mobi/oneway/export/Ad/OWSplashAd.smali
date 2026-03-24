.class public Lmobi/oneway/export/Ad/OWSplashAd;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lmobi/oneway/export/b/a/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmobi/oneway/export/b/a/c;

    invoke-direct {v0, p1}, Lmobi/oneway/export/b/a/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/oneway/export/Ad/OWSplashAd;->a:Lmobi/oneway/export/b/a/c;

    return-void
.end method

.method public static synthetic a(Lmobi/oneway/export/Ad/OWSplashAd;)Lmobi/oneway/export/b/a/c;
    .locals 0

    iget-object p0, p0, Lmobi/oneway/export/Ad/OWSplashAd;->a:Lmobi/oneway/export/b/a/c;

    return-object p0
.end method


# virtual methods
.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/OWSplashAdListener;)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lmobi/oneway/export/Ad/OWSplashAd;->show(Landroid/app/Activity;Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/OWSplashAdListener;J)V

    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/OWSplashAdListener;J)V
    .locals 8

    invoke-static {}, Lmobi/oneway/export/Ad/OnewaySdk;->checkSdkConfigured()V

    new-instance v7, Lmobi/oneway/export/Ad/OWSplashAd$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lmobi/oneway/export/Ad/OWSplashAd$1;-><init>(Lmobi/oneway/export/Ad/OWSplashAd;Landroid/app/Activity;Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/OWSplashAdListener;J)V

    invoke-static {}, Lmobi/oneway/export/e/b;->a()Lmobi/oneway/export/e/b;

    move-result-object p1

    invoke-virtual {p1, v7}, Lmobi/oneway/export/e/b;->a(Ljava/lang/Runnable;)V

    new-instance p1, Lmobi/oneway/export/e/d;

    new-instance p2, Lmobi/oneway/export/Ad/OWSplashAd$2;

    invoke-direct {p2, p0, p3, v7}, Lmobi/oneway/export/Ad/OWSplashAd$2;-><init>(Lmobi/oneway/export/Ad/OWSplashAd;Lmobi/oneway/export/AdListener/OWSplashAdListener;Ljava/lang/Runnable;)V

    invoke-direct {p1, p2, p4, p5}, Lmobi/oneway/export/e/d;-><init>(Lmobi/oneway/export/e/d$a;J)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
