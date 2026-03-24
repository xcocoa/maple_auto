.class public final enum Lcom/octopus/ad/internal/i;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/octopus/ad/internal/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/octopus/ad/internal/i;

.field public static final enum b:Lcom/octopus/ad/internal/i;

.field private static final synthetic c:[Lcom/octopus/ad/internal/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/octopus/ad/internal/i;

    const-string v1, "VIDEO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/octopus/ad/internal/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/octopus/ad/internal/i;->a:Lcom/octopus/ad/internal/i;

    new-instance v1, Lcom/octopus/ad/internal/i;

    const-string v3, "HTML"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/octopus/ad/internal/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/octopus/ad/internal/i;->b:Lcom/octopus/ad/internal/i;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/octopus/ad/internal/i;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/octopus/ad/internal/i;->c:[Lcom/octopus/ad/internal/i;

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

.method public static valueOf(Ljava/lang/String;)Lcom/octopus/ad/internal/i;
    .locals 1

    const-class v0, Lcom/octopus/ad/internal/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/octopus/ad/internal/i;

    return-object p0
.end method

.method public static values()[Lcom/octopus/ad/internal/i;
    .locals 1

    sget-object v0, Lcom/octopus/ad/internal/i;->c:[Lcom/octopus/ad/internal/i;

    invoke-virtual {v0}, [Lcom/octopus/ad/internal/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/octopus/ad/internal/i;

    return-object v0
.end method
