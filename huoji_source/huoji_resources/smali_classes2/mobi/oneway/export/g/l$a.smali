.class public final enum Lmobi/oneway/export/g/l$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/oneway/export/g/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmobi/oneway/export/g/l$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lmobi/oneway/export/g/l$a;

.field public static final enum b:Lmobi/oneway/export/g/l$a;

.field private static final synthetic c:[Lmobi/oneway/export/g/l$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lmobi/oneway/export/g/l$a;

    const-string v1, "lat"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/g/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/g/l$a;->a:Lmobi/oneway/export/g/l$a;

    new-instance v1, Lmobi/oneway/export/g/l$a;

    const-string v3, "lon"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lmobi/oneway/export/g/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmobi/oneway/export/g/l$a;->b:Lmobi/oneway/export/g/l$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lmobi/oneway/export/g/l$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lmobi/oneway/export/g/l$a;->c:[Lmobi/oneway/export/g/l$a;

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

.method public static valueOf(Ljava/lang/String;)Lmobi/oneway/export/g/l$a;
    .locals 1

    const-class v0, Lmobi/oneway/export/g/l$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmobi/oneway/export/g/l$a;

    return-object p0
.end method

.method public static values()[Lmobi/oneway/export/g/l$a;
    .locals 1

    sget-object v0, Lmobi/oneway/export/g/l$a;->c:[Lmobi/oneway/export/g/l$a;

    invoke-virtual {v0}, [Lmobi/oneway/export/g/l$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/oneway/export/g/l$a;

    return-object v0
.end method
