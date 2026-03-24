.class public final Lz2/e2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O0O0Oo;


# static fields
.field private static final OooO0OO:Lz2/e2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/e2;

    invoke-direct {v0}, Lz2/e2;-><init>()V

    sput-object v0, Lz2/e2;->OooO0OO:Lz2/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO0OO()Lz2/e2;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lz2/e2;->OooO0OO:Lz2/e2;

    return-object v0
.end method


# virtual methods
.method public OooO00o(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptySignature"

    return-object v0
.end method
