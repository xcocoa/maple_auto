.class public final enum Lcom/zbar/zbar/decode/CaptureActivityHandler$State;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zbar/zbar/decode/CaptureActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zbar/zbar/decode/CaptureActivityHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

.field public static final enum DONE:Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

.field public static final enum PREVIEW:Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

.field public static final enum SUCCESS:Lcom/zbar/zbar/decode/CaptureActivityHandler$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zbar/zbar/decode/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zbar/zbar/decode/CaptureActivityHandler$State;->PREVIEW:Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    new-instance v1, Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/zbar/zbar/decode/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/zbar/zbar/decode/CaptureActivityHandler$State;->SUCCESS:Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    new-instance v3, Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    const-string v5, "DONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/zbar/zbar/decode/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/zbar/zbar/decode/CaptureActivityHandler$State;->DONE:Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/zbar/zbar/decode/CaptureActivityHandler$State;->$VALUES:[Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zbar/zbar/decode/CaptureActivityHandler$State;
    .locals 1

    const-class v0, Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    return-object p0
.end method

.method public static values()[Lcom/zbar/zbar/decode/CaptureActivityHandler$State;
    .locals 1

    sget-object v0, Lcom/zbar/zbar/decode/CaptureActivityHandler$State;->$VALUES:[Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    invoke-virtual {v0}, [Lcom/zbar/zbar/decode/CaptureActivityHandler$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    return-object v0
.end method
