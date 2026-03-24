.class public Lcom/octopus/ad/internal/animation/MoveIn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/animation/Transition;


# static fields
.field private static final down_coordinates:[F

.field private static final left_coordinates:[F

.field private static final right_coordinates:[F

.field private static final up_coordinates:[F


# instance fields
.field private inAnimation:Landroid/view/animation/Animation;

.field private outAnimation:Landroid/view/animation/Animation;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/octopus/ad/internal/animation/MoveIn;->up_coordinates:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/octopus/ad/internal/animation/MoveIn;->down_coordinates:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/octopus/ad/internal/animation/MoveIn;->right_coordinates:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/octopus/ad/internal/animation/MoveIn;->left_coordinates:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(JLcom/octopus/ad/internal/animation/TransitionDirection;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {p0, p3}, Lcom/octopus/ad/internal/animation/MoveIn;->getDirection(Lcom/octopus/ad/internal/animation/TransitionDirection;)[F

    move-result-object v1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/octopus/ad/internal/animation/MoveIn;->setInAnimation([FLandroid/view/animation/Interpolator;J)V

    invoke-direct {p0, p3}, Lcom/octopus/ad/internal/animation/MoveIn;->getDirection(Lcom/octopus/ad/internal/animation/TransitionDirection;)[F

    move-result-object p3

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/octopus/ad/internal/animation/MoveIn;->setOutAnimation([FLandroid/view/animation/Interpolator;J)V

    return-void
.end method

.method private getDirection(Lcom/octopus/ad/internal/animation/TransitionDirection;)[F
    .locals 1

    sget-object v0, Lcom/octopus/ad/internal/animation/MoveIn$1;->$SwitchMap$com$octopus$ad$internal$animation$TransitionDirection:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/octopus/ad/internal/animation/MoveIn;->up_coordinates:[F

    return-object p1

    :cond_0
    sget-object p1, Lcom/octopus/ad/internal/animation/MoveIn;->left_coordinates:[F

    return-object p1

    :cond_1
    sget-object p1, Lcom/octopus/ad/internal/animation/MoveIn;->right_coordinates:[F

    return-object p1

    :cond_2
    sget-object p1, Lcom/octopus/ad/internal/animation/MoveIn;->down_coordinates:[F

    return-object p1

    :cond_3
    sget-object p1, Lcom/octopus/ad/internal/animation/MoveIn;->up_coordinates:[F

    return-object p1
.end method

.method private setInAnimation([FLandroid/view/animation/Interpolator;J)V
    .locals 11

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v0, 0x0

    aget v2, p1, v0

    const/4 v10, 0x1

    aget v4, p1, v10

    const/4 v0, 0x2

    aget v6, p1, v0

    const/4 v0, 0x3

    aget v8, p1, v0

    const/4 v1, 0x2

    const/4 v3, 0x2

    const/4 v5, 0x2

    const/4 v7, 0x2

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v9, p0, Lcom/octopus/ad/internal/animation/MoveIn;->inAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v9, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/animation/MoveIn;->inAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v10}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object p1, p0, Lcom/octopus/ad/internal/animation/MoveIn;->inAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method private setOutAnimation([FLandroid/view/animation/Interpolator;J)V
    .locals 9

    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object p1, p0, Lcom/octopus/ad/internal/animation/MoveIn;->outAnimation:Landroid/view/animation/Animation;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object p1, p0, Lcom/octopus/ad/internal/animation/MoveIn;->outAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Lcom/octopus/ad/internal/animation/MoveIn;->outAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public getInAnimation()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/animation/MoveIn;->inAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getOutAnimation()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/animation/MoveIn;->outAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method
