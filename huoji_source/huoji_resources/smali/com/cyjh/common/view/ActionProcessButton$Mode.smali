.class public final enum Lcom/cyjh/common/view/ActionProcessButton$Mode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/common/view/ActionProcessButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyjh/common/view/ActionProcessButton$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cyjh/common/view/ActionProcessButton$Mode;

.field public static final enum ENDLESS:Lcom/cyjh/common/view/ActionProcessButton$Mode;

.field public static final enum PROGRESS:Lcom/cyjh/common/view/ActionProcessButton$Mode;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/cyjh/common/view/ActionProcessButton$Mode;

    const-string v1, "PROGRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cyjh/common/view/ActionProcessButton$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/common/view/ActionProcessButton$Mode;->PROGRESS:Lcom/cyjh/common/view/ActionProcessButton$Mode;

    new-instance v1, Lcom/cyjh/common/view/ActionProcessButton$Mode;

    const-string v3, "ENDLESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cyjh/common/view/ActionProcessButton$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cyjh/common/view/ActionProcessButton$Mode;->ENDLESS:Lcom/cyjh/common/view/ActionProcessButton$Mode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/cyjh/common/view/ActionProcessButton$Mode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/cyjh/common/view/ActionProcessButton$Mode;->$VALUES:[Lcom/cyjh/common/view/ActionProcessButton$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/cyjh/common/view/ActionProcessButton$Mode;
    .locals 1

    const-class v0, Lcom/cyjh/common/view/ActionProcessButton$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyjh/common/view/ActionProcessButton$Mode;

    return-object p0
.end method

.method public static values()[Lcom/cyjh/common/view/ActionProcessButton$Mode;
    .locals 1

    sget-object v0, Lcom/cyjh/common/view/ActionProcessButton$Mode;->$VALUES:[Lcom/cyjh/common/view/ActionProcessButton$Mode;

    invoke-virtual {v0}, [Lcom/cyjh/common/view/ActionProcessButton$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyjh/common/view/ActionProcessButton$Mode;

    return-object v0
.end method
