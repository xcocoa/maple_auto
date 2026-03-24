.class public final Lz2/bb;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO00o:Z

.field private static OooO0O0:Lcom/google/protobuf/ByteString;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static OooO00o(Lcom/google/protobuf/ByteString;)V
    .locals 0

    sput-object p0, Lz2/bb;->OooO0O0:Lcom/google/protobuf/ByteString;

    const/4 p0, 0x0

    sput-boolean p0, Lz2/bb;->OooO00o:Z

    return-void
.end method

.method public static OooO0O0()[B
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lz2/bb;->OooO0O0:Lcom/google/protobuf/ByteString;

    const/4 v1, 0x1

    sput-boolean v1, Lz2/bb;->OooO00o:Z

    return-object v0
.end method
