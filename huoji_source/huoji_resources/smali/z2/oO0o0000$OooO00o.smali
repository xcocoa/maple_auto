.class public Lz2/oO0o0000$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oO0o0000;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lz2/o0O0O0Oo;

.field public final OooO0O0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/o0O0O0Oo;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0OO:Lz2/o0O0oo00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0O0oo00<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/o0O0O0Oo;Ljava/util/List;Lz2/o0O0oo00;)V
    .locals 0
    .param p1    # Lz2/o0O0O0Oo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lz2/o0O0oo00;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0O0Oo;",
            "Ljava/util/List<",
            "Lz2/o0O0O0Oo;",
            ">;",
            "Lz2/o0O0oo00<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o0O0O0Oo;

    iput-object p1, p0, Lz2/oO0o0000$OooO00o;->OooO00o:Lz2/o0O0O0Oo;

    invoke-static {p2}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lz2/oO0o0000$OooO00o;->OooO0O0:Ljava/util/List;

    invoke-static {p3}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o0O0oo00;

    iput-object p1, p0, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    return-void
.end method

.method public constructor <init>(Lz2/o0O0O0Oo;Lz2/o0O0oo00;)V
    .locals 1
    .param p1    # Lz2/o0O0O0Oo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0oo00;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0O0Oo;",
            "Lz2/o0O0oo00<",
            "TData;>;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lz2/oO0o0000$OooO00o;-><init>(Lz2/o0O0O0Oo;Ljava/util/List;Lz2/o0O0oo00;)V

    return-void
.end method
