.class public Lcom/octopus/ad/internal/view/BannerAdViewImpl$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/utils/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/BannerAdViewImpl;->a(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/BannerAdViewImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$2;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$2;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x2

    invoke-virtual/range {v0 .. v9}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
