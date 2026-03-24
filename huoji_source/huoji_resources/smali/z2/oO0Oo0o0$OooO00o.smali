.class public Lz2/oO0Oo0o0$OooO00o;
.super Lz2/o2;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/oO0Oo0o0;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/o2<",
        "Lz2/oO0Oo0o0$OooO0O0<",
        "TA;>;TB;>;"
    }
.end annotation


# instance fields
.field public final synthetic OooO0o0:Lz2/oO0Oo0o0;


# direct methods
.method public constructor <init>(Lz2/oO0Oo0o0;J)V
    .locals 0

    iput-object p1, p0, Lz2/oO0Oo0o0$OooO00o;->OooO0o0:Lz2/oO0Oo0o0;

    invoke-direct {p0, p2, p3}, Lz2/o2;-><init>(J)V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooOOO(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lz2/oO0Oo0o0$OooO0O0;

    invoke-virtual {p0, p1, p2}, Lz2/oO0Oo0o0$OooO00o;->OooOOo(Lz2/oO0Oo0o0$OooO0O0;Ljava/lang/Object;)V

    return-void
.end method

.method public OooOOo(Lz2/oO0Oo0o0$OooO0O0;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lz2/oO0Oo0o0$OooO0O0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Oo0o0$OooO0O0<",
            "TA;>;TB;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lz2/oO0Oo0o0$OooO0O0;->OooO0OO()V

    return-void
.end method
