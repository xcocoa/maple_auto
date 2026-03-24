.class public final enum Lcom/octopus/ad/b/e$g;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/octopus/ad/b/e$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/octopus/ad/b/e$g;

.field public static final enum b:Lcom/octopus/ad/b/e$g;

.field public static final enum c:Lcom/octopus/ad/b/e$g;

.field private static final synthetic e:[Lcom/octopus/ad/b/e$g;


# instance fields
.field private final d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/octopus/ad/b/e$g;

    const-string v1, "REQ_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/octopus/ad/b/e$g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/octopus/ad/b/e$g;->a:Lcom/octopus/ad/b/e$g;

    new-instance v1, Lcom/octopus/ad/b/e$g;

    const-string v3, "REQ_AD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/octopus/ad/b/e$g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/octopus/ad/b/e$g;->b:Lcom/octopus/ad/b/e$g;

    new-instance v3, Lcom/octopus/ad/b/e$g;

    const-string v5, "REQ_WIFI_PRELOAD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/octopus/ad/b/e$g;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/octopus/ad/b/e$g;->c:Lcom/octopus/ad/b/e$g;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/octopus/ad/b/e$g;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/octopus/ad/b/e$g;->e:[Lcom/octopus/ad/b/e$g;

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

    iput p3, p0, Lcom/octopus/ad/b/e$g;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/octopus/ad/b/e$g;
    .locals 1

    const-class v0, Lcom/octopus/ad/b/e$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/octopus/ad/b/e$g;

    return-object p0
.end method

.method public static values()[Lcom/octopus/ad/b/e$g;
    .locals 1

    sget-object v0, Lcom/octopus/ad/b/e$g;->e:[Lcom/octopus/ad/b/e$g;

    invoke-virtual {v0}, [Lcom/octopus/ad/b/e$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/octopus/ad/b/e$g;

    return-object v0
.end method
