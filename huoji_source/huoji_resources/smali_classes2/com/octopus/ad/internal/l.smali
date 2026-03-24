.class public final enum Lcom/octopus/ad/internal/l;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/octopus/ad/internal/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/octopus/ad/internal/l;

.field public static final enum b:Lcom/octopus/ad/internal/l;

.field public static final enum c:Lcom/octopus/ad/internal/l;

.field public static final enum d:Lcom/octopus/ad/internal/l;

.field public static final enum e:Lcom/octopus/ad/internal/l;

.field public static final enum f:Lcom/octopus/ad/internal/l;

.field private static final synthetic g:[Lcom/octopus/ad/internal/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/octopus/ad/internal/l;

    const-string v1, "SPLASH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/octopus/ad/internal/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/octopus/ad/internal/l;->a:Lcom/octopus/ad/internal/l;

    new-instance v1, Lcom/octopus/ad/internal/l;

    const-string v3, "BANNER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/octopus/ad/internal/l;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/octopus/ad/internal/l;->b:Lcom/octopus/ad/internal/l;

    new-instance v3, Lcom/octopus/ad/internal/l;

    const-string v5, "INTERSTITIAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/octopus/ad/internal/l;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/octopus/ad/internal/l;->c:Lcom/octopus/ad/internal/l;

    new-instance v5, Lcom/octopus/ad/internal/l;

    const-string v7, "REWARDVIDEO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/octopus/ad/internal/l;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/octopus/ad/internal/l;->d:Lcom/octopus/ad/internal/l;

    new-instance v7, Lcom/octopus/ad/internal/l;

    const-string v9, "NATIVE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/octopus/ad/internal/l;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/octopus/ad/internal/l;->e:Lcom/octopus/ad/internal/l;

    new-instance v9, Lcom/octopus/ad/internal/l;

    const-string v11, "PREFETCH"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/octopus/ad/internal/l;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/octopus/ad/internal/l;->f:Lcom/octopus/ad/internal/l;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/octopus/ad/internal/l;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/octopus/ad/internal/l;->g:[Lcom/octopus/ad/internal/l;

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

.method public static valueOf(Ljava/lang/String;)Lcom/octopus/ad/internal/l;
    .locals 1

    const-class v0, Lcom/octopus/ad/internal/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/octopus/ad/internal/l;

    return-object p0
.end method

.method public static values()[Lcom/octopus/ad/internal/l;
    .locals 1

    sget-object v0, Lcom/octopus/ad/internal/l;->g:[Lcom/octopus/ad/internal/l;

    invoke-virtual {v0}, [Lcom/octopus/ad/internal/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/octopus/ad/internal/l;

    return-object v0
.end method
