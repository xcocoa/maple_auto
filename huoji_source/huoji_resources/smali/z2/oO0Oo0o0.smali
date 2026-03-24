.class public Lz2/oO0Oo0o0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/oO0Oo0o0$OooO0O0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final OooO0O0:I = 0xfa


# instance fields
.field private final OooO00o:Lz2/o2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o2<",
            "Lz2/oO0Oo0o0$OooO0O0<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0xfa

    invoke-direct {p0, v0, v1}, Lz2/oO0Oo0o0;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/oO0Oo0o0$OooO00o;

    invoke-direct {v0, p0, p1, p2}, Lz2/oO0Oo0o0$OooO00o;-><init>(Lz2/oO0Oo0o0;J)V

    iput-object v0, p0, Lz2/oO0Oo0o0;->OooO00o:Lz2/o2;

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1

    iget-object v0, p0, Lz2/oO0Oo0o0;->OooO00o:Lz2/o2;

    invoke-virtual {v0}, Lz2/o2;->OooO0O0()V

    return-void
.end method

.method public OooO0O0(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lz2/oO0Oo0o0$OooO0O0;->OooO00o(Ljava/lang/Object;II)Lz2/oO0Oo0o0$OooO0O0;

    move-result-object p1

    iget-object p2, p0, Lz2/oO0Oo0o0;->OooO00o:Lz2/o2;

    invoke-virtual {p2, p1}, Lz2/o2;->OooOO0O(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lz2/oO0Oo0o0$OooO0O0;->OooO0OO()V

    return-object p2
.end method

.method public OooO0OO(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lz2/oO0Oo0o0$OooO0O0;->OooO00o(Ljava/lang/Object;II)Lz2/oO0Oo0o0$OooO0O0;

    move-result-object p1

    iget-object p2, p0, Lz2/oO0Oo0o0;->OooO00o:Lz2/o2;

    invoke-virtual {p2, p1, p4}, Lz2/o2;->OooOOOO(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
