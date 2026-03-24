.class public Lz2/w40$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/y30;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/w40;-><init>(Lorg/jdeferred/Promise;Lz2/a40;Lz2/d40;Lz2/g40;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/y30<",
        "TD;>;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/a40;

.field public final synthetic OooO0O0:Lz2/w40;


# direct methods
.method public constructor <init>(Lz2/w40;Lz2/a40;)V
    .locals 0

    iput-object p1, p0, Lz2/w40$OooO0OO;->OooO0O0:Lz2/w40;

    iput-object p2, p0, Lz2/w40$OooO0OO;->OooO00o:Lz2/a40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO0O0(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/w40$OooO0OO;->OooO00o:Lz2/a40;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/w40$OooO0OO;->OooO0O0:Lz2/w40;

    invoke-interface {v0, p1}, Lz2/a40;->OooO00o(Ljava/lang/Object;)Lorg/jdeferred/Promise;

    move-result-object p1

    invoke-virtual {v1, p1}, Lz2/w40;->Oooo000(Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/w40$OooO0OO;->OooO0O0:Lz2/w40;

    invoke-virtual {v0, p1}, Lz2/s40;->OooOo0O(Ljava/lang/Object;)Lz2/u30;

    :goto_0
    return-void
.end method
