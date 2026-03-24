.class public Lmobi/oneway/export/Ad/OWInteractiveAd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/export/Ad/OWInteractiveAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInteractiveAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

.field public final synthetic d:Lmobi/oneway/export/Ad/OWInteractiveAd;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/Ad/OWInteractiveAd;Ljava/lang/String;Landroid/app/Activity;Lmobi/oneway/export/AdListener/OWInteractiveAdListener;)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/Ad/OWInteractiveAd$1;->d:Lmobi/oneway/export/Ad/OWInteractiveAd;

    iput-object p2, p0, Lmobi/oneway/export/Ad/OWInteractiveAd$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lmobi/oneway/export/Ad/OWInteractiveAd$1;->b:Landroid/app/Activity;

    iput-object p4, p0, Lmobi/oneway/export/Ad/OWInteractiveAd$1;->c:Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWInteractiveAd$1;->d:Lmobi/oneway/export/Ad/OWInteractiveAd;

    new-instance v1, Lmobi/oneway/export/b/a/a;

    invoke-static {v0}, Lmobi/oneway/export/Ad/OWInteractiveAd;->a(Lmobi/oneway/export/Ad/OWInteractiveAd;)Lmobi/oneway/export/enums/AdType;

    move-result-object v2

    iget-object v3, p0, Lmobi/oneway/export/Ad/OWInteractiveAd$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lmobi/oneway/export/b/a/a;-><init>(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lmobi/oneway/export/Ad/OWInteractiveAd;->a(Lmobi/oneway/export/Ad/OWInteractiveAd;Lmobi/oneway/export/b/a/a;)Lmobi/oneway/export/b/a/a;

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWInteractiveAd$1;->d:Lmobi/oneway/export/Ad/OWInteractiveAd;

    invoke-static {v0}, Lmobi/oneway/export/Ad/OWInteractiveAd;->b(Lmobi/oneway/export/Ad/OWInteractiveAd;)Lmobi/oneway/export/b/a/a;

    move-result-object v0

    iget-object v1, p0, Lmobi/oneway/export/Ad/OWInteractiveAd$1;->b:Landroid/app/Activity;

    iget-object v2, p0, Lmobi/oneway/export/Ad/OWInteractiveAd$1;->c:Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/b/a/a;->a(Landroid/app/Activity;Ljava/lang/Object;)V

    return-void
.end method
