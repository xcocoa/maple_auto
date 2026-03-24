.class public Lz2/ooo0Oo0$OooO0O0$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/v2$OooO0o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ooo0Oo0$OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/v2$OooO0o<",
        "Lz2/o<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/ooo0Oo0$OooO0O0;


# direct methods
.method public constructor <init>(Lz2/ooo0Oo0$OooO0O0;)V
    .locals 0

    iput-object p1, p0, Lz2/ooo0Oo0$OooO0O0$OooO00o;->OooO00o:Lz2/ooo0Oo0$OooO0O0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz2/ooo0Oo0$OooO0O0$OooO00o;->OooO0O0()Lz2/o;

    move-result-object v0

    return-object v0
.end method

.method public OooO0O0()Lz2/o;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/o<",
            "*>;"
        }
    .end annotation

    new-instance v7, Lz2/o;

    iget-object v0, p0, Lz2/ooo0Oo0$OooO0O0$OooO00o;->OooO00o:Lz2/ooo0Oo0$OooO0O0;

    iget-object v1, v0, Lz2/ooo0Oo0$OooO0O0;->OooO00o:Lz2/oO0;

    iget-object v2, v0, Lz2/ooo0Oo0$OooO0O0;->OooO0O0:Lz2/oO0;

    iget-object v3, v0, Lz2/ooo0Oo0$OooO0O0;->OooO0OO:Lz2/oO0;

    iget-object v4, v0, Lz2/ooo0Oo0$OooO0O0;->OooO0Oo:Lz2/oO0;

    iget-object v5, v0, Lz2/ooo0Oo0$OooO0O0;->OooO0o0:Lz2/oO00000;

    iget-object v6, v0, Lz2/ooo0Oo0$OooO0O0;->OooO0o:Landroidx/core/util/Pools$Pool;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lz2/o;-><init>(Lz2/oO0;Lz2/oO0;Lz2/oO0;Lz2/oO0;Lz2/oO00000;Landroidx/core/util/Pools$Pool;)V

    return-object v7
.end method
