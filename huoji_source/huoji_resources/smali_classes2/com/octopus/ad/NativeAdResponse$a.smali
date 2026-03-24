.class public final enum Lcom/octopus/ad/NativeAdResponse$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/NativeAdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/octopus/ad/NativeAdResponse$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/octopus/ad/NativeAdResponse$a;

.field private static final synthetic b:[Lcom/octopus/ad/NativeAdResponse$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/octopus/ad/NativeAdResponse$a;

    const-string v1, "OCTOPUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/octopus/ad/NativeAdResponse$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/octopus/ad/NativeAdResponse$a;->a:Lcom/octopus/ad/NativeAdResponse$a;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/octopus/ad/NativeAdResponse$a;

    aput-object v0, v1, v2

    sput-object v1, Lcom/octopus/ad/NativeAdResponse$a;->b:[Lcom/octopus/ad/NativeAdResponse$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/octopus/ad/NativeAdResponse$a;
    .locals 1

    const-class v0, Lcom/octopus/ad/NativeAdResponse$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/octopus/ad/NativeAdResponse$a;

    return-object p0
.end method

.method public static values()[Lcom/octopus/ad/NativeAdResponse$a;
    .locals 1

    sget-object v0, Lcom/octopus/ad/NativeAdResponse$a;->b:[Lcom/octopus/ad/NativeAdResponse$a;

    invoke-virtual {v0}, [Lcom/octopus/ad/NativeAdResponse$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/octopus/ad/NativeAdResponse$a;

    return-object v0
.end method
