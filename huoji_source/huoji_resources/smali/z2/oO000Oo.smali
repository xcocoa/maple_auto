.class public abstract Lz2/oO000Oo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lz2/oO00OOOo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final OooO0O0:I = 0x14


# instance fields
.field private final OooO00o:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    invoke-static {v0}, Lz2/t2;->OooO0o(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lz2/oO000Oo;->OooO00o:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public abstract OooO00o()Lz2/oO00OOOo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public OooO0O0()Lz2/oO00OOOo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/oO000Oo;->OooO00o:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/oO00OOOo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lz2/oO000Oo;->OooO00o()Lz2/oO00OOOo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public OooO0OO(Lz2/oO00OOOo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/oO000Oo;->OooO00o:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lz2/oO000Oo;->OooO00o:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
