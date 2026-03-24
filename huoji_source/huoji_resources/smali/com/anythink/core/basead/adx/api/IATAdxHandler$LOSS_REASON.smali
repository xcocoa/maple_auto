.class public final enum Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/basead/adx/api/IATAdxHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LOSS_REASON"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;

.field public static final enum LOSS_TO_HIGHER_BID:Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;

.field public static final enum LOSS_TO_NORMAL:Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;

    const-string v1, "LOSS_TO_HIGHER_BID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;->LOSS_TO_HIGHER_BID:Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;

    new-instance v1, Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;

    const-string v3, "LOSS_TO_NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;->LOSS_TO_NORMAL:Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;->$VALUES:[Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;

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

.method public static valueOf(Ljava/lang/String;)Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;
    .locals 1

    const-class v0, Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;

    return-object p0
.end method

.method public static values()[Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;
    .locals 1

    sget-object v0, Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;->$VALUES:[Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;

    invoke-virtual {v0}, [Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;

    return-object v0
.end method
