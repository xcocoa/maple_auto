.class public abstract Lz2/v30;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final OoooOoO:Lz2/u30;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/u30<",
            "TD;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation
.end field

.field private final OoooOoo:Lorg/jdeferred/DeferredManager$StartPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/s40;

    invoke-direct {v0}, Lz2/s40;-><init>()V

    iput-object v0, p0, Lz2/v30;->OoooOoO:Lz2/u30;

    sget-object v0, Lorg/jdeferred/DeferredManager$StartPolicy;->DEFAULT:Lorg/jdeferred/DeferredManager$StartPolicy;

    iput-object v0, p0, Lz2/v30;->OoooOoo:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-void
.end method

.method public constructor <init>(Lorg/jdeferred/DeferredManager$StartPolicy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/s40;

    invoke-direct {v0}, Lz2/s40;-><init>()V

    iput-object v0, p0, Lz2/v30;->OoooOoO:Lz2/u30;

    iput-object p1, p0, Lz2/v30;->OoooOoo:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-void
.end method


# virtual methods
.method public OooO00o()Lz2/u30;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/u30<",
            "TD;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/v30;->OoooOoO:Lz2/u30;

    return-object v0
.end method

.method public OooO0O0()Lorg/jdeferred/DeferredManager$StartPolicy;
    .locals 1

    iget-object v0, p0, Lz2/v30;->OoooOoo:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-object v0
.end method

.method public OooO0OO(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/v30;->OoooOoO:Lz2/u30;

    invoke-interface {v0, p1}, Lz2/u30;->OooOO0O(Ljava/lang/Object;)Lz2/u30;

    return-void
.end method
