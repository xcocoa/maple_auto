.class public final enum Lcom/anythink/core/common/o/q$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/o/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/anythink/core/common/o/q$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/anythink/core/common/o/q$a;

.field public static final enum b:Lcom/anythink/core/common/o/q$a;

.field public static final enum c:Lcom/anythink/core/common/o/q$a;

.field private static final synthetic d:[Lcom/anythink/core/common/o/q$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/anythink/core/common/o/q$a;

    const-string v1, "ENABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/common/o/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anythink/core/common/o/q$a;->a:Lcom/anythink/core/common/o/q$a;

    new-instance v1, Lcom/anythink/core/common/o/q$a;

    const-string v3, "DISABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/anythink/core/common/o/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/anythink/core/common/o/q$a;->b:Lcom/anythink/core/common/o/q$a;

    new-instance v3, Lcom/anythink/core/common/o/q$a;

    const-string v5, "NOT_INSTALLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/anythink/core/common/o/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/anythink/core/common/o/q$a;->c:Lcom/anythink/core/common/o/q$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/anythink/core/common/o/q$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/anythink/core/common/o/q$a;->d:[Lcom/anythink/core/common/o/q$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/anythink/core/common/o/q$a;
    .locals 1

    const-class v0, Lcom/anythink/core/common/o/q$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/anythink/core/common/o/q$a;

    return-object p0
.end method

.method public static values()[Lcom/anythink/core/common/o/q$a;
    .locals 1

    sget-object v0, Lcom/anythink/core/common/o/q$a;->d:[Lcom/anythink/core/common/o/q$a;

    invoke-virtual {v0}, [Lcom/anythink/core/common/o/q$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/anythink/core/common/o/q$a;

    return-object v0
.end method
