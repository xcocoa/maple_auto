.class public final enum Lcom/octopus/ad/a/c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/octopus/ad/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/octopus/ad/a/c;

.field public static final enum b:Lcom/octopus/ad/a/c;

.field public static final enum c:Lcom/octopus/ad/a/c;

.field private static final synthetic d:[Lcom/octopus/ad/a/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/octopus/ad/a/c;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/octopus/ad/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/octopus/ad/a/c;->a:Lcom/octopus/ad/a/c;

    new-instance v1, Lcom/octopus/ad/a/c;

    const-string v3, "PAUSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/octopus/ad/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/octopus/ad/a/c;->b:Lcom/octopus/ad/a/c;

    new-instance v3, Lcom/octopus/ad/a/c;

    const-string v5, "FINISH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/octopus/ad/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/octopus/ad/a/c;->c:Lcom/octopus/ad/a/c;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/octopus/ad/a/c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/octopus/ad/a/c;->d:[Lcom/octopus/ad/a/c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/octopus/ad/a/c;
    .locals 1

    const-class v0, Lcom/octopus/ad/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/octopus/ad/a/c;

    return-object p0
.end method

.method public static values()[Lcom/octopus/ad/a/c;
    .locals 1

    sget-object v0, Lcom/octopus/ad/a/c;->d:[Lcom/octopus/ad/a/c;

    invoke-virtual {v0}, [Lcom/octopus/ad/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/octopus/ad/a/c;

    return-object v0
.end method
