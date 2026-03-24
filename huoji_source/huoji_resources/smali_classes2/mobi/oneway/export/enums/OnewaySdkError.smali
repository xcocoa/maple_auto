.class public final enum Lmobi/oneway/export/enums/OnewaySdkError;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmobi/oneway/export/enums/OnewaySdkError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum AD_BLOCKER_DETECTED:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum CAMPAIGN_NO_FILL:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum DEVICE_ID_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum FILE_IO_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum INITIALIZE_FAILED:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum INIT_SANITY_CHECK_FAIL:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum INTERNAL_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum INVALID_ARGUMENT:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum LOAD_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum NOT_CONFIGURED:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum NOT_INITIALIZED:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum SHOW_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

.field public static final enum VIDEO_PLAYER_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v1, "NOT_CONFIGURED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->NOT_CONFIGURED:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v1, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v3, "NOT_INITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmobi/oneway/export/enums/OnewaySdkError;->NOT_INITIALIZED:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v3, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v5, "INITIALIZE_FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmobi/oneway/export/enums/OnewaySdkError;->INITIALIZE_FAILED:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v5, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v7, "INVALID_ARGUMENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lmobi/oneway/export/enums/OnewaySdkError;->INVALID_ARGUMENT:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v7, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v9, "VIDEO_PLAYER_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lmobi/oneway/export/enums/OnewaySdkError;->VIDEO_PLAYER_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v9, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v11, "INIT_SANITY_CHECK_FAIL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lmobi/oneway/export/enums/OnewaySdkError;->INIT_SANITY_CHECK_FAIL:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v11, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v13, "AD_BLOCKER_DETECTED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lmobi/oneway/export/enums/OnewaySdkError;->AD_BLOCKER_DETECTED:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v13, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v15, "FILE_IO_ERROR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lmobi/oneway/export/enums/OnewaySdkError;->FILE_IO_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v15, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v14, "DEVICE_ID_ERROR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lmobi/oneway/export/enums/OnewaySdkError;->DEVICE_ID_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v14, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v12, "SHOW_ERROR"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lmobi/oneway/export/enums/OnewaySdkError;->SHOW_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v12, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v10, "INTERNAL_ERROR"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lmobi/oneway/export/enums/OnewaySdkError;->INTERNAL_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v10, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v8, "CAMPAIGN_NO_FILL"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lmobi/oneway/export/enums/OnewaySdkError;->CAMPAIGN_NO_FILL:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v8, Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v6, "LOAD_ERROR"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lmobi/oneway/export/enums/OnewaySdkError;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lmobi/oneway/export/enums/OnewaySdkError;->LOAD_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    const/16 v6, 0xd

    new-array v6, v6, [Lmobi/oneway/export/enums/OnewaySdkError;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    sput-object v6, Lmobi/oneway/export/enums/OnewaySdkError;->$VALUES:[Lmobi/oneway/export/enums/OnewaySdkError;

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

.method public static valueOf(Ljava/lang/String;)Lmobi/oneway/export/enums/OnewaySdkError;
    .locals 1

    const-class v0, Lmobi/oneway/export/enums/OnewaySdkError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmobi/oneway/export/enums/OnewaySdkError;

    return-object p0
.end method

.method public static values()[Lmobi/oneway/export/enums/OnewaySdkError;
    .locals 1

    sget-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->$VALUES:[Lmobi/oneway/export/enums/OnewaySdkError;

    invoke-virtual {v0}, [Lmobi/oneway/export/enums/OnewaySdkError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/oneway/export/enums/OnewaySdkError;

    return-object v0
.end method
