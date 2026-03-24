.class public Lcom/octopus/ad/internal/view/BannerAdViewImpl$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/BannerAdViewImpl;->a(I)V
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

    iput-object p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$3;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
