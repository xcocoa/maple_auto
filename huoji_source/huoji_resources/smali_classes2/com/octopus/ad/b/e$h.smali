.class public final enum Lcom/octopus/ad/b/e$h;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/octopus/ad/b/e$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/octopus/ad/b/e$h;

.field public static final enum b:Lcom/octopus/ad/b/e$h;

.field public static final enum c:Lcom/octopus/ad/b/e$h;

.field private static final synthetic e:[Lcom/octopus/ad/b/e$h;


# instance fields
.field private final d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/octopus/ad/b/e$h;

    const-string v1, "SCREEN_DIRECTION_UNKOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/octopus/ad/b/e$h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/octopus/ad/b/e$h;->a:Lcom/octopus/ad/b/e$h;

    new-instance v1, Lcom/octopus/ad/b/e$h;

    const-string v3, "PORTRAIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/octopus/ad/b/e$h;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/octopus/ad/b/e$h;->b:Lcom/octopus/ad/b/e$h;

    new-instance v3, Lcom/octopus/ad/b/e$h;

    const-string v5, "LANDSCAPE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/octopus/ad/b/e$h;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/octopus/ad/b/e$h;->c:Lcom/octopus/ad/b/e$h;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/octopus/ad/b/e$h;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/octopus/ad/b/e$h;->e:[Lcom/octopus/ad/b/e$h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/octopus/ad/b/e$h;->d:I

    return-void
.end method

.method public static a(I)Lcom/octopus/ad/b/e$h;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/octopus/ad/b/e$h;->c:Lcom/octopus/ad/b/e$h;

    return-object p0

    :cond_1
    sget-object p0, Lcom/octopus/ad/b/e$h;->b:Lcom/octopus/ad/b/e$h;

    return-object p0

    :cond_2
    sget-object p0, Lcom/octopus/ad/b/e$h;->a:Lcom/octopus/ad/b/e$h;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/octopus/ad/b/e$h;
    .locals 1

    const-class v0, Lcom/octopus/ad/b/e$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/octopus/ad/b/e$h;

    return-object p0
.end method

.method public static values()[Lcom/octopus/ad/b/e$h;
    .locals 1

    sget-object v0, Lcom/octopus/ad/b/e$h;->e:[Lcom/octopus/ad/b/e$h;

    invoke-virtual {v0}, [Lcom/octopus/ad/b/e$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/octopus/ad/b/e$h;

    return-object v0
.end method
