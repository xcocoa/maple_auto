.class public final Lz2/oOO0OO0O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O0o000;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/o0O0o000<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final OooO0OO:Lz2/o0O0o000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0O0o000<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/oOO0OO0O;

    invoke-direct {v0}, Lz2/oOO0OO0O;-><init>()V

    sput-object v0, Lz2/oOO0OO0O;->OooO0OO:Lz2/o0O0o000;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO0OO()Lz2/oOO0OO0O;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lz2/oOO0OO0O<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lz2/oOO0OO0O;->OooO0OO:Lz2/o0O0o000;

    check-cast v0, Lz2/oOO0OO0O;

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

.method public OooO0O0(Landroid/content/Context;Lz2/oO0Ooooo;II)Lz2/oO0Ooooo;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/oO0Ooooo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lz2/oO0Ooooo<",
            "TT;>;II)",
            "Lz2/oO0Ooooo<",
            "TT;>;"
        }
    .end annotation

    return-object p2
.end method
