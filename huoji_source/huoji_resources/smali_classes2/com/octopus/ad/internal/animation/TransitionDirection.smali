.class public final enum Lcom/octopus/ad/internal/animation/TransitionDirection;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/octopus/ad/internal/animation/TransitionDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/octopus/ad/internal/animation/TransitionDirection;

.field public static final enum DOWN:Lcom/octopus/ad/internal/animation/TransitionDirection;

.field public static final enum LEFT:Lcom/octopus/ad/internal/animation/TransitionDirection;

.field public static final enum RIGHT:Lcom/octopus/ad/internal/animation/TransitionDirection;

.field public static final enum UP:Lcom/octopus/ad/internal/animation/TransitionDirection;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/octopus/ad/internal/animation/TransitionDirection;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/octopus/ad/internal/animation/TransitionDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/octopus/ad/internal/animation/TransitionDirection;->UP:Lcom/octopus/ad/internal/animation/TransitionDirection;

    new-instance v1, Lcom/octopus/ad/internal/animation/TransitionDirection;

    const-string v3, "DOWN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/octopus/ad/internal/animation/TransitionDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/octopus/ad/internal/animation/TransitionDirection;->DOWN:Lcom/octopus/ad/internal/animation/TransitionDirection;

    new-instance v3, Lcom/octopus/ad/internal/animation/TransitionDirection;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/octopus/ad/internal/animation/TransitionDirection;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/octopus/ad/internal/animation/TransitionDirection;->RIGHT:Lcom/octopus/ad/internal/animation/TransitionDirection;

    new-instance v5, Lcom/octopus/ad/internal/animation/TransitionDirection;

    const-string v7, "LEFT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/octopus/ad/internal/animation/TransitionDirection;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/octopus/ad/internal/animation/TransitionDirection;->LEFT:Lcom/octopus/ad/internal/animation/TransitionDirection;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/octopus/ad/internal/animation/TransitionDirection;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/octopus/ad/internal/animation/TransitionDirection;->$VALUES:[Lcom/octopus/ad/internal/animation/TransitionDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getDirectionForInt(I)Lcom/octopus/ad/internal/animation/TransitionDirection;
    .locals 5

    invoke-static {}, Lcom/octopus/ad/internal/animation/TransitionDirection;->values()[Lcom/octopus/ad/internal/animation/TransitionDirection;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/octopus/ad/internal/animation/TransitionDirection;->UP:Lcom/octopus/ad/internal/animation/TransitionDirection;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/octopus/ad/internal/animation/TransitionDirection;
    .locals 1

    const-class v0, Lcom/octopus/ad/internal/animation/TransitionDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/octopus/ad/internal/animation/TransitionDirection;

    return-object p0
.end method

.method public static values()[Lcom/octopus/ad/internal/animation/TransitionDirection;
    .locals 1

    sget-object v0, Lcom/octopus/ad/internal/animation/TransitionDirection;->$VALUES:[Lcom/octopus/ad/internal/animation/TransitionDirection;

    invoke-virtual {v0}, [Lcom/octopus/ad/internal/animation/TransitionDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/octopus/ad/internal/animation/TransitionDirection;

    return-object v0
.end method
