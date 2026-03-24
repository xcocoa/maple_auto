.class public final enum Lcom/anythink/expressad/out/t;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/anythink/expressad/out/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/anythink/expressad/out/t;

.field public static final enum b:Lcom/anythink/expressad/out/t;

.field public static final enum c:Lcom/anythink/expressad/out/t;

.field public static final enum d:Lcom/anythink/expressad/out/t;

.field private static final synthetic f:[Lcom/anythink/expressad/out/t;


# instance fields
.field private e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/anythink/expressad/out/t;

    const-string v1, "FloatBall"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/expressad/out/t;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/anythink/expressad/out/t;->a:Lcom/anythink/expressad/out/t;

    new-instance v1, Lcom/anythink/expressad/out/t;

    const-string v4, "BigView"

    const/4 v5, 0x4

    invoke-direct {v1, v4, v3, v5}, Lcom/anythink/expressad/out/t;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/anythink/expressad/out/t;->b:Lcom/anythink/expressad/out/t;

    new-instance v4, Lcom/anythink/expressad/out/t;

    const-string v6, "MediumView"

    const/4 v7, 0x2

    const/4 v8, 0x3

    invoke-direct {v4, v6, v7, v8}, Lcom/anythink/expressad/out/t;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/anythink/expressad/out/t;->c:Lcom/anythink/expressad/out/t;

    new-instance v6, Lcom/anythink/expressad/out/t;

    const-string v9, "SmallView"

    invoke-direct {v6, v9, v8, v7}, Lcom/anythink/expressad/out/t;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/anythink/expressad/out/t;->d:Lcom/anythink/expressad/out/t;

    new-array v5, v5, [Lcom/anythink/expressad/out/t;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v7

    aput-object v6, v5, v8

    sput-object v5, Lcom/anythink/expressad/out/t;->f:[Lcom/anythink/expressad/out/t;

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

    iput p3, p0, Lcom/anythink/expressad/out/t;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/anythink/expressad/out/t;
    .locals 1

    const-class v0, Lcom/anythink/expressad/out/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/anythink/expressad/out/t;

    return-object p0
.end method

.method public static values()[Lcom/anythink/expressad/out/t;
    .locals 1

    sget-object v0, Lcom/anythink/expressad/out/t;->f:[Lcom/anythink/expressad/out/t;

    invoke-virtual {v0}, [Lcom/anythink/expressad/out/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/anythink/expressad/out/t;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/out/t;->e:I

    return v0
.end method
