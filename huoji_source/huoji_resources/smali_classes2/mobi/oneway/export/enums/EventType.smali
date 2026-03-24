.class public final enum Lmobi/oneway/export/enums/EventType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmobi/oneway/export/enums/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobi/oneway/export/enums/EventType;

.field public static final enum adFail:Lmobi/oneway/export/enums/EventType;

.field public static final enum click:Lmobi/oneway/export/enums/EventType;

.field public static final enum close:Lmobi/oneway/export/enums/EventType;

.field public static final enum end:Lmobi/oneway/export/enums/EventType;

.field public static final enum ready:Lmobi/oneway/export/enums/EventType;

.field public static final enum reward:Lmobi/oneway/export/enums/EventType;

.field public static final enum show:Lmobi/oneway/export/enums/EventType;

.field public static final enum skip:Lmobi/oneway/export/enums/EventType;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lmobi/oneway/export/enums/EventType;

    const-string v1, "ready"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/enums/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/EventType;->ready:Lmobi/oneway/export/enums/EventType;

    new-instance v1, Lmobi/oneway/export/enums/EventType;

    const-string v3, "show"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lmobi/oneway/export/enums/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmobi/oneway/export/enums/EventType;->show:Lmobi/oneway/export/enums/EventType;

    new-instance v3, Lmobi/oneway/export/enums/EventType;

    const-string v5, "end"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lmobi/oneway/export/enums/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmobi/oneway/export/enums/EventType;->end:Lmobi/oneway/export/enums/EventType;

    new-instance v5, Lmobi/oneway/export/enums/EventType;

    const-string v7, "click"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lmobi/oneway/export/enums/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lmobi/oneway/export/enums/EventType;->click:Lmobi/oneway/export/enums/EventType;

    new-instance v7, Lmobi/oneway/export/enums/EventType;

    const-string v9, "close"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lmobi/oneway/export/enums/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lmobi/oneway/export/enums/EventType;->close:Lmobi/oneway/export/enums/EventType;

    new-instance v9, Lmobi/oneway/export/enums/EventType;

    const-string v11, "adFail"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lmobi/oneway/export/enums/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lmobi/oneway/export/enums/EventType;->adFail:Lmobi/oneway/export/enums/EventType;

    new-instance v11, Lmobi/oneway/export/enums/EventType;

    const-string v13, "reward"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lmobi/oneway/export/enums/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lmobi/oneway/export/enums/EventType;->reward:Lmobi/oneway/export/enums/EventType;

    new-instance v13, Lmobi/oneway/export/enums/EventType;

    const-string v15, "skip"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lmobi/oneway/export/enums/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lmobi/oneway/export/enums/EventType;->skip:Lmobi/oneway/export/enums/EventType;

    const/16 v15, 0x8

    new-array v15, v15, [Lmobi/oneway/export/enums/EventType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lmobi/oneway/export/enums/EventType;->$VALUES:[Lmobi/oneway/export/enums/EventType;

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

.method public static valueOf(Ljava/lang/String;)Lmobi/oneway/export/enums/EventType;
    .locals 1

    const-class v0, Lmobi/oneway/export/enums/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmobi/oneway/export/enums/EventType;

    return-object p0
.end method

.method public static values()[Lmobi/oneway/export/enums/EventType;
    .locals 1

    sget-object v0, Lmobi/oneway/export/enums/EventType;->$VALUES:[Lmobi/oneway/export/enums/EventType;

    invoke-virtual {v0}, [Lmobi/oneway/export/enums/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/oneway/export/enums/EventType;

    return-object v0
.end method
