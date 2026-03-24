.class public Lz2/oOO00$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0oO000;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oOO00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/oO0oO000<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field private static final OooO00o:Lz2/oOO00$OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oOO00$OooO00o<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/oOO00$OooO00o;

    invoke-direct {v0}, Lz2/oOO00$OooO00o;-><init>()V

    sput-object v0, Lz2/oOO00$OooO00o;->OooO00o:Lz2/oOO00$OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO0O0()Lz2/oOO00$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lz2/oOO00$OooO00o<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lz2/oOO00$OooO00o;->OooO00o:Lz2/oOO00$OooO00o;

    return-object v0
.end method


# virtual methods
.method public OooO00o()V
    .locals 0

    return-void
.end method

.method public OooO0OO(Lz2/oOO00000;)Lz2/oO0o0000;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oOO00000;",
            ")",
            "Lz2/oO0o0000<",
            "TModel;TModel;>;"
        }
    .end annotation

    invoke-static {}, Lz2/oOO00;->OooO0OO()Lz2/oOO00;

    move-result-object p1

    return-object p1
.end method
