.class public Lz2/eb0;
.super Lz2/bb0;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lz2/bb0;"
    }
.end annotation


# instance fields
.field private OooO0O0:Lz2/kb0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/kb0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/bb0;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO0OO()Lz2/kb0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/kb0<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/eb0;->OooO0O0:Lz2/kb0;

    return-object v0
.end method

.method public OooO0Oo(Lz2/kb0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/kb0<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lz2/eb0;->OooO0O0:Lz2/kb0;

    invoke-virtual {p0}, Lz2/bb0;->OooO00o()V

    return-void
.end method
