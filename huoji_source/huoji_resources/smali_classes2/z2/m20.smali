.class public abstract Lz2/m20;
.super Lz2/w20;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lz2/w20<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final Ooooo00:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lz2/w20;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lz2/m20;->Ooooo00:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Description must be non null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final describeTo(Lz2/n20;)V
    .locals 1

    iget-object v0, p0, Lz2/m20;->Ooooo00:Ljava/lang/String;

    invoke-interface {p1, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    return-void
.end method
