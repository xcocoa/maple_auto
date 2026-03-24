.class public Lcom/octopus/ad/internal/animation/Push;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/animation/Transition;


# static fields
.field private static final in_down_coordinates:[F

.field private static final in_left_coordinates:[F

.field private static final in_right_coordinates:[F

.field private static final in_up_coordinates:[F

.field private static final out_down_coordinates:[F

.field private static final out_left_coordinates:[F

.field private static final out_right_coordinates:[F

.field private static final out_up_coordinates:[F


# instance fields
.field private inAnimation:Landroid/view/animation/Animation;

.field private outAnimation:Landroid/view/animation/Animation;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/octopus/ad/internal/animation/Push;->in_up_coordinates:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/octopus/ad/internal/animation/Push;->in_down_coordinates:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/octopus/ad/internal/animation/Push;->in_right_coordinates:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lcom/octopus/ad/internal/animation/Push;->in_left_coordinates:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Lcom/octopus/ad/internal/animation/Push;->out_up_coordinates:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_5

    sput-object v1, Lcom/octopus/ad/internal/animation/Push;->out_down_coordinates:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_6

    sput-object v1, Lcom/octopus/ad/internal/animation/Push;->out_right_coordinates:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_7

    sput-object v0, Lcom/octopus/ad/internal/animation/Push;->out_left_coordinates:[F

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

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(JLcom/octopus/ad/internal/animation/TransitionDirection;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-direct {p0, p3}, Lcom/octopus/ad/internal/animation/Push;->getInDirection(Lcom/octopus/ad/internal/animation/TransitionDirection;)[F

    move-result-object v1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/octopus/ad/internal/animation/Push;->getAnimation([FLandroid/view/animation/Interpolator;J)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/octopus/ad/internal/animation/Push;->inAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, p3}, Lcom/octopus/ad/internal/animation/Push;->getOutDirection(Lcom/octopus/ad/internal/animation/TransitionDirection;)[F

    move-result-object p3

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/octopus/ad/internal/animation/Push;->getAnimation([FLandroid/view/animation/Interpolator;J)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/animation/Push;->outAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private getAnimation([FLandroid/view/animation/Interpolator;J)Landroid/view/animation/Animation;
    .locals 10

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v0, 0x0

    aget v2, p1, v0

    const/4 v0, 0x1

    aget v4, p1, v0

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

    invoke-virtual {v9, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v9
.end method

.method private getInDirection(Lcom/octopus/ad/internal/animation/TransitionDirection;)[F
    .locals 1

    sget-object v0, Lcom/octopus/ad/internal/animation/Push$1;->$SwitchMap$com$octopus$ad$internal$animation$TransitionDirection:[I

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

    sget-object p1, Lcom/octopus/ad/internal/animation/Push;->in_up_coordinates:[F

    return-object p1

    :cond_0
    sget-object p1, Lcom/octopus/ad/internal/animation/Push;->in_left_coordinates:[F

    return-object p1

    :cond_1
    sget-object p1, Lcom/octopus/ad/internal/animation/Push;->in_right_coordinates:[F

    return-object p1

    :cond_2
    sget-object p1, Lcom/octopus/ad/internal/animation/Push;->in_down_coordinates:[F

    return-object p1

    :cond_3
    sget-object p1, Lcom/octopus/ad/internal/animation/Push;->in_up_coordinates:[F

    return-object p1
.end method

.method private getOutDirection(Lcom/octopus/ad/internal/animation/TransitionDirection;)[F
    .locals 1

    sget-object v0, Lcom/octopus/ad/internal/animation/Push$1;->$SwitchMap$com$octopus$ad$internal$animation$TransitionDirection:[I

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

    sget-object p1, Lcom/octopus/ad/internal/animation/Push;->out_up_coordinates:[F

    return-object p1

    :cond_0
    sget-object p1, Lcom/octopus/ad/internal/animation/Push;->out_left_coordinates:[F

    return-object p1

    :cond_1
    sget-object p1, Lcom/octopus/ad/internal/animation/Push;->out_right_coordinates:[F

    return-object p1

    :cond_2
    sget-object p1, Lcom/octopus/ad/internal/animation/Push;->out_down_coordinates:[F

    return-object p1

    :cond_3
    sget-object p1, Lcom/octopus/ad/internal/animation/Push;->out_up_coordinates:[F

    return-object p1
.end method


# virtual methods
.method public getInAnimation()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/animation/Push;->inAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getOutAnimation()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/animation/Push;->outAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method
