.class public final enum Lcn/haorui/sdk/core/ad/AdType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/haorui/sdk/core/ad/AdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/haorui/sdk/core/ad/AdType;

.field public static final enum BANNER:Lcn/haorui/sdk/core/ad/AdType;

.field public static final enum DRAW:Lcn/haorui/sdk/core/ad/AdType;

.field public static final enum FEED:Lcn/haorui/sdk/core/ad/AdType;

.field public static final enum FEED_MIX:Lcn/haorui/sdk/core/ad/AdType;

.field public static final enum FEED_PRE_RENDER:Lcn/haorui/sdk/core/ad/AdType;

.field public static final enum FULL_SCREEN_VIDEO:Lcn/haorui/sdk/core/ad/AdType;

.field public static final enum INTERSTITIAL:Lcn/haorui/sdk/core/ad/AdType;

.field public static final enum PASTER:Lcn/haorui/sdk/core/ad/AdType;

.field public static final enum REWARD:Lcn/haorui/sdk/core/ad/AdType;

.field public static final enum SPLASH:Lcn/haorui/sdk/core/ad/AdType;


# instance fields
.field private value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcn/haorui/sdk/core/ad/AdType;

    const-string v1, "FEED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/haorui/sdk/core/ad/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/haorui/sdk/core/ad/AdType;->FEED:Lcn/haorui/sdk/core/ad/AdType;

    new-instance v1, Lcn/haorui/sdk/core/ad/AdType;

    const-string v4, "FEED_PRE_RENDER"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcn/haorui/sdk/core/ad/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/haorui/sdk/core/ad/AdType;->FEED_PRE_RENDER:Lcn/haorui/sdk/core/ad/AdType;

    new-instance v4, Lcn/haorui/sdk/core/ad/AdType;

    const-string v6, "FEED_MIX"

    const/16 v7, 0xa

    invoke-direct {v4, v6, v5, v7}, Lcn/haorui/sdk/core/ad/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcn/haorui/sdk/core/ad/AdType;->FEED_MIX:Lcn/haorui/sdk/core/ad/AdType;

    new-instance v6, Lcn/haorui/sdk/core/ad/AdType;

    const-string v8, "BANNER"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v9}, Lcn/haorui/sdk/core/ad/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcn/haorui/sdk/core/ad/AdType;->BANNER:Lcn/haorui/sdk/core/ad/AdType;

    new-instance v8, Lcn/haorui/sdk/core/ad/AdType;

    const-string v10, "SPLASH"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11, v11}, Lcn/haorui/sdk/core/ad/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcn/haorui/sdk/core/ad/AdType;->SPLASH:Lcn/haorui/sdk/core/ad/AdType;

    new-instance v10, Lcn/haorui/sdk/core/ad/AdType;

    const-string v12, "INTERSTITIAL"

    const/4 v13, 0x5

    invoke-direct {v10, v12, v13, v13}, Lcn/haorui/sdk/core/ad/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcn/haorui/sdk/core/ad/AdType;->INTERSTITIAL:Lcn/haorui/sdk/core/ad/AdType;

    new-instance v12, Lcn/haorui/sdk/core/ad/AdType;

    const-string v14, "PASTER"

    const/4 v15, 0x6

    invoke-direct {v12, v14, v15, v15}, Lcn/haorui/sdk/core/ad/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcn/haorui/sdk/core/ad/AdType;->PASTER:Lcn/haorui/sdk/core/ad/AdType;

    new-instance v14, Lcn/haorui/sdk/core/ad/AdType;

    const-string v15, "REWARD"

    const/4 v13, 0x7

    invoke-direct {v14, v15, v13, v13}, Lcn/haorui/sdk/core/ad/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcn/haorui/sdk/core/ad/AdType;->REWARD:Lcn/haorui/sdk/core/ad/AdType;

    new-instance v15, Lcn/haorui/sdk/core/ad/AdType;

    const-string v13, "DRAW"

    const/16 v11, 0x8

    invoke-direct {v15, v13, v11, v11}, Lcn/haorui/sdk/core/ad/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcn/haorui/sdk/core/ad/AdType;->DRAW:Lcn/haorui/sdk/core/ad/AdType;

    new-instance v13, Lcn/haorui/sdk/core/ad/AdType;

    const-string v11, "FULL_SCREEN_VIDEO"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v9}, Lcn/haorui/sdk/core/ad/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcn/haorui/sdk/core/ad/AdType;->FULL_SCREEN_VIDEO:Lcn/haorui/sdk/core/ad/AdType;

    new-array v7, v7, [Lcn/haorui/sdk/core/ad/AdType;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v5

    const/4 v0, 0x3

    aput-object v6, v7, v0

    const/4 v0, 0x4

    aput-object v8, v7, v0

    const/4 v0, 0x5

    aput-object v10, v7, v0

    const/4 v0, 0x6

    aput-object v12, v7, v0

    const/4 v0, 0x7

    aput-object v14, v7, v0

    const/16 v0, 0x8

    aput-object v15, v7, v0

    aput-object v13, v7, v9

    sput-object v7, Lcn/haorui/sdk/core/ad/AdType;->$VALUES:[Lcn/haorui/sdk/core/ad/AdType;

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

    iput p3, p0, Lcn/haorui/sdk/core/ad/AdType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/AdType;
    .locals 1

    const-class v0, Lcn/haorui/sdk/core/ad/AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/haorui/sdk/core/ad/AdType;

    return-object p0
.end method

.method public static values()[Lcn/haorui/sdk/core/ad/AdType;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/ad/AdType;->$VALUES:[Lcn/haorui/sdk/core/ad/AdType;

    invoke-virtual {v0}, [Lcn/haorui/sdk/core/ad/AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/haorui/sdk/core/ad/AdType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/ad/AdType;->value:I

    return v0
.end method
