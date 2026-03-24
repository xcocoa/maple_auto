.class public Lcom/octopus/ad/internal/animation/AnimationFactory;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/octopus/ad/internal/animation/TransitionType;JLcom/octopus/ad/internal/animation/TransitionDirection;)Lcom/octopus/ad/internal/animation/Transition;
    .locals 2

    sget-object v0, Lcom/octopus/ad/internal/animation/TransitionType;->RANDOM:Lcom/octopus/ad/internal/animation/TransitionType;

    if-ne p0, v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/octopus/ad/internal/animation/TransitionType;->values()[Lcom/octopus/ad/internal/animation/TransitionType;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget-object v1, Lcom/octopus/ad/internal/animation/TransitionType;->NONE:Lcom/octopus/ad/internal/animation/TransitionType;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/octopus/ad/internal/animation/TransitionType;

    :cond_0
    sget-object v0, Lcom/octopus/ad/internal/animation/AnimationFactory$1;->$SwitchMap$com$octopus$ad$internal$animation$TransitionType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Lcom/octopus/ad/internal/animation/Reveal;

    invoke-direct {p0, p1, p2, p3}, Lcom/octopus/ad/internal/animation/Reveal;-><init>(JLcom/octopus/ad/internal/animation/TransitionDirection;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/octopus/ad/internal/animation/MoveIn;

    invoke-direct {p0, p1, p2, p3}, Lcom/octopus/ad/internal/animation/MoveIn;-><init>(JLcom/octopus/ad/internal/animation/TransitionDirection;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/octopus/ad/internal/animation/Push;

    invoke-direct {p0, p1, p2, p3}, Lcom/octopus/ad/internal/animation/Push;-><init>(JLcom/octopus/ad/internal/animation/TransitionDirection;)V

    return-object p0

    :cond_4
    new-instance p0, Lcom/octopus/ad/internal/animation/Fade;

    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/internal/animation/Fade;-><init>(J)V

    return-object p0
.end method
