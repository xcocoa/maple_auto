.class public final enum Lcom/octopus/ad/internal/view/e$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/view/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/octopus/ad/internal/view/e$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/octopus/ad/internal/view/e$b;

.field public static final enum b:Lcom/octopus/ad/internal/view/e$b;

.field private static final synthetic c:[Lcom/octopus/ad/internal/view/e$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/octopus/ad/internal/view/e$b;

    const-string v1, "STARTING_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/octopus/ad/internal/view/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/octopus/ad/internal/view/e$b;->a:Lcom/octopus/ad/internal/view/e$b;

    new-instance v1, Lcom/octopus/ad/internal/view/e$b;

    const-string v3, "STARTING_EXPANDED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/octopus/ad/internal/view/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/octopus/ad/internal/view/e$b;->b:Lcom/octopus/ad/internal/view/e$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/octopus/ad/internal/view/e$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/octopus/ad/internal/view/e$b;->c:[Lcom/octopus/ad/internal/view/e$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/octopus/ad/internal/view/e$b;
    .locals 1

    const-class v0, Lcom/octopus/ad/internal/view/e$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/octopus/ad/internal/view/e$b;

    return-object p0
.end method

.method public static values()[Lcom/octopus/ad/internal/view/e$b;
    .locals 1

    sget-object v0, Lcom/octopus/ad/internal/view/e$b;->c:[Lcom/octopus/ad/internal/view/e$b;

    invoke-virtual {v0}, [Lcom/octopus/ad/internal/view/e$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/octopus/ad/internal/view/e$b;

    return-object v0
.end method
