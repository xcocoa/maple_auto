.class public final enum Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/utilities/HaoboLogListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LOG_LEVEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;

.field public static final enum D:Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;

.field public static final enum E:Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;

.field public static final enum I:Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;

.field public static final enum V:Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;

.field public static final enum W:Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;

    const-string v1, "V"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;->V:Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;

    new-instance v1, Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;

    const-string v3, "D"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;->D:Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;

    new-instance v3, Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;

    const-string v5, "I"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;->I:Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;

    new-instance v5, Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;

    const-string v7, "W"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;->W:Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;

    new-instance v7, Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;

    const-string v9, "E"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;->E:Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;->$VALUES:[Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;

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

.method public static valueOf(Ljava/lang/String;)Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;
    .locals 1

    const-class v0, Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;

    return-object p0
.end method

.method public static values()[Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;
    .locals 1

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;->$VALUES:[Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;

    invoke-virtual {v0}, [Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/octopus/ad/internal/utilities/HaoboLogListener$LOG_LEVEL;

    return-object v0
.end method
