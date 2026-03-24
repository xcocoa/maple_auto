.class public final enum Lcom/octopus/ad/internal/view/e$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/view/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/octopus/ad/internal/view/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/octopus/ad/internal/view/e$a;

.field public static final enum b:Lcom/octopus/ad/internal/view/e$a;

.field public static final enum c:Lcom/octopus/ad/internal/view/e$a;

.field public static final enum d:Lcom/octopus/ad/internal/view/e$a;

.field public static final enum e:Lcom/octopus/ad/internal/view/e$a;

.field public static final enum f:Lcom/octopus/ad/internal/view/e$a;

.field public static final enum g:Lcom/octopus/ad/internal/view/e$a;

.field private static final synthetic h:[Lcom/octopus/ad/internal/view/e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/octopus/ad/internal/view/e$a;

    const-string v1, "top_left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/octopus/ad/internal/view/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/octopus/ad/internal/view/e$a;->a:Lcom/octopus/ad/internal/view/e$a;

    new-instance v1, Lcom/octopus/ad/internal/view/e$a;

    const-string v3, "top_right"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/octopus/ad/internal/view/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/octopus/ad/internal/view/e$a;->b:Lcom/octopus/ad/internal/view/e$a;

    new-instance v3, Lcom/octopus/ad/internal/view/e$a;

    const-string v5, "center"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/octopus/ad/internal/view/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/octopus/ad/internal/view/e$a;->c:Lcom/octopus/ad/internal/view/e$a;

    new-instance v5, Lcom/octopus/ad/internal/view/e$a;

    const-string v7, "bottom_left"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/octopus/ad/internal/view/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/octopus/ad/internal/view/e$a;->d:Lcom/octopus/ad/internal/view/e$a;

    new-instance v7, Lcom/octopus/ad/internal/view/e$a;

    const-string v9, "bottom_right"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/octopus/ad/internal/view/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/octopus/ad/internal/view/e$a;->e:Lcom/octopus/ad/internal/view/e$a;

    new-instance v9, Lcom/octopus/ad/internal/view/e$a;

    const-string v11, "top_center"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/octopus/ad/internal/view/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/octopus/ad/internal/view/e$a;->f:Lcom/octopus/ad/internal/view/e$a;

    new-instance v11, Lcom/octopus/ad/internal/view/e$a;

    const-string v13, "bottom_center"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/octopus/ad/internal/view/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/octopus/ad/internal/view/e$a;->g:Lcom/octopus/ad/internal/view/e$a;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/octopus/ad/internal/view/e$a;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/octopus/ad/internal/view/e$a;->h:[Lcom/octopus/ad/internal/view/e$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/octopus/ad/internal/view/e$a;
    .locals 1

    const-class v0, Lcom/octopus/ad/internal/view/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/octopus/ad/internal/view/e$a;

    return-object p0
.end method

.method public static values()[Lcom/octopus/ad/internal/view/e$a;
    .locals 1

    sget-object v0, Lcom/octopus/ad/internal/view/e$a;->h:[Lcom/octopus/ad/internal/view/e$a;

    invoke-virtual {v0}, [Lcom/octopus/ad/internal/view/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/octopus/ad/internal/view/e$a;

    return-object v0
.end method
