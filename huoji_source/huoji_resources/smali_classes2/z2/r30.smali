.class public Lz2/r30;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/t20;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/t20;"
    }
.end annotation


# instance fields
.field private OoooOoO:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/r30;->OoooOoO:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public describeTo(Lz2/n20;)V
    .locals 1

    iget-object v0, p0, Lz2/r30;->OoooOoO:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lz2/n20;->OooO0o0(Ljava/lang/Object;)Lz2/n20;

    return-void
.end method
