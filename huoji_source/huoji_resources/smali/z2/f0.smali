.class public Lz2/f0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/d0<",
        "TZ;TZ;>;"
    }
.end annotation


# static fields
.field private static final OooO00o:Lz2/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/f0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/f0;

    invoke-direct {v0}, Lz2/f0;-><init>()V

    sput-object v0, Lz2/f0;->OooO00o:Lz2/f0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO0O0()Lz2/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lz2/d0<",
            "TZ;TZ;>;"
        }
    .end annotation

    sget-object v0, Lz2/f0;->OooO00o:Lz2/f0;

    return-object v0
.end method


# virtual methods
.method public OooO00o(Lz2/oO0Ooooo;Lz2/o0O0OOO0;)Lz2/oO0Ooooo;
    .locals 0
    .param p1    # Lz2/oO0Ooooo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Ooooo<",
            "TZ;>;",
            "Lz2/o0O0OOO0;",
            ")",
            "Lz2/oO0Ooooo<",
            "TZ;>;"
        }
    .end annotation

    return-object p1
.end method
