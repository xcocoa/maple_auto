.class public Lz2/oOO00;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0o0000;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/oOO00$OooO00o;,
        Lz2/oOO00$OooO0O0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/oO0o0000<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field private static final OooO00o:Lz2/oOO00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oOO00<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/oOO00;

    invoke-direct {v0}, Lz2/oOO00;-><init>()V

    sput-object v0, Lz2/oOO00;->OooO00o:Lz2/oOO00;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO0OO()Lz2/oOO00;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lz2/oOO00<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lz2/oOO00;->OooO00o:Lz2/oOO00;

    return-object v0
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public OooO0O0(Ljava/lang/Object;IILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lz2/o0O0OOO0;",
            ")",
            "Lz2/oO0o0000$OooO00o<",
            "TModel;>;"
        }
    .end annotation

    new-instance p2, Lz2/oO0o0000$OooO00o;

    new-instance p3, Lz2/g2;

    invoke-direct {p3, p1}, Lz2/g2;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lz2/oOO00$OooO0O0;

    invoke-direct {p4, p1}, Lz2/oOO00$OooO0O0;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p3, p4}, Lz2/oO0o0000$OooO00o;-><init>(Lz2/o0O0O0Oo;Lz2/o0O0oo00;)V

    return-object p2
.end method
