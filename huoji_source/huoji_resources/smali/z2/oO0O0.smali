.class public Lz2/oO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0o0000;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/oO0O0$OooO0o;,
        Lz2/oO0O0$OooO00o;,
        Lz2/oO0O0$OooO0OO;,
        Lz2/oO0O0$OooO0O0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/oO0o0000<",
        "[BTData;>;"
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/oO0O0$OooO0O0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO0O0$OooO0O0<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/oO0O0$OooO0O0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0O0$OooO0O0<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/oO0O0;->OooO00o:Lz2/oO0O0$OooO0O0;

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lz2/oO0O0;->OooO0Oo([B)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic OooO0O0(Ljava/lang/Object;IILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lz2/oO0O0;->OooO0OO([BIILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public OooO0OO([BIILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lz2/o0O0OOO0;",
            ")",
            "Lz2/oO0o0000$OooO00o<",
            "TData;>;"
        }
    .end annotation

    new-instance p2, Lz2/oO0o0000$OooO00o;

    new-instance p3, Lz2/g2;

    invoke-direct {p3, p1}, Lz2/g2;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lz2/oO0O0$OooO0OO;

    iget-object v0, p0, Lz2/oO0O0;->OooO00o:Lz2/oO0O0$OooO0O0;

    invoke-direct {p4, p1, v0}, Lz2/oO0O0$OooO0OO;-><init>([BLz2/oO0O0$OooO0O0;)V

    invoke-direct {p2, p3, p4}, Lz2/oO0o0000$OooO00o;-><init>(Lz2/o0O0O0Oo;Lz2/o0O0oo00;)V

    return-object p2
.end method

.method public OooO0Oo([B)Z
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method
