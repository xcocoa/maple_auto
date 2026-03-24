.class public final Lz2/z20$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/z20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/r20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/r20<",
            "-TX;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/r20;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r20<",
            "-TX;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/z20$OooO00o;->OooO00o:Lz2/r20;

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/r20;)Lz2/z20;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r20<",
            "-TX;>;)",
            "Lz2/z20<",
            "TX;>;"
        }
    .end annotation

    new-instance v0, Lz2/z20;

    iget-object v1, p0, Lz2/z20$OooO00o;->OooO00o:Lz2/r20;

    invoke-direct {v0, v1}, Lz2/z20;-><init>(Lz2/r20;)V

    invoke-virtual {v0, p1}, Lz2/z20;->OooO0o0(Lz2/r20;)Lz2/z20;

    move-result-object p1

    return-object p1
.end method
