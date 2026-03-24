.class public final Lcom/anythink/basead/ui/BaseShakeView$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseShakeView;->a(I)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/BaseShakeView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/BaseShakeView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseShakeView$9;->a:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView$9;->a:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-static {v0}, Lcom/anythink/basead/ui/BaseShakeView;->c(Lcom/anythink/basead/ui/BaseShakeView;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method
