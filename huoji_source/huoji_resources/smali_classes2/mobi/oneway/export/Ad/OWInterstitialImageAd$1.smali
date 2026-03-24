.class public Lmobi/oneway/export/Ad/OWInterstitialImageAd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/export/Ad/OWInterstitialImageAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;

.field public final synthetic d:Lmobi/oneway/export/Ad/OWInterstitialImageAd;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/Ad/OWInterstitialImageAd;Ljava/lang/String;Landroid/app/Activity;Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/Ad/OWInterstitialImageAd$1;->d:Lmobi/oneway/export/Ad/OWInterstitialImageAd;

    iput-object p2, p0, Lmobi/oneway/export/Ad/OWInterstitialImageAd$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lmobi/oneway/export/Ad/OWInterstitialImageAd$1;->b:Landroid/app/Activity;

    iput-object p4, p0, Lmobi/oneway/export/Ad/OWInterstitialImageAd$1;->c:Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWInterstitialImageAd$1;->d:Lmobi/oneway/export/Ad/OWInterstitialImageAd;

    new-instance v1, Lmobi/oneway/export/b/a/a;

    invoke-static {v0}, Lmobi/oneway/export/Ad/OWInterstitialImageAd;->a(Lmobi/oneway/export/Ad/OWInterstitialImageAd;)Lmobi/oneway/export/enums/AdType;

    move-result-object v2

    iget-object v3, p0, Lmobi/oneway/export/Ad/OWInterstitialImageAd$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lmobi/oneway/export/b/a/a;-><init>(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lmobi/oneway/export/Ad/OWInterstitialImageAd;->a(Lmobi/oneway/export/Ad/OWInterstitialImageAd;Lmobi/oneway/export/b/a/a;)Lmobi/oneway/export/b/a/a;

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWInterstitialImageAd$1;->d:Lmobi/oneway/export/Ad/OWInterstitialImageAd;

    invoke-static {v0}, Lmobi/oneway/export/Ad/OWInterstitialImageAd;->b(Lmobi/oneway/export/Ad/OWInterstitialImageAd;)Lmobi/oneway/export/b/a/a;

    move-result-object v0

    iget-object v1, p0, Lmobi/oneway/export/Ad/OWInterstitialImageAd$1;->b:Landroid/app/Activity;

    iget-object v2, p0, Lmobi/oneway/export/Ad/OWInterstitialImageAd$1;->c:Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/b/a/a;->a(Landroid/app/Activity;Ljava/lang/Object;)V

    return-void
.end method
