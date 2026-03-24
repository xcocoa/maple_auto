.class public Lz2/u40$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/y30;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/u40;-><init>(Lorg/jdeferred/Promise;Lz2/z30;Lz2/c40;Lz2/f40;)V
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
.field public final synthetic OooO00o:Lz2/u40;


# direct methods
.method public constructor <init>(Lz2/u40;)V
    .locals 0

    iput-object p1, p0, Lz2/u40$OooO0OO;->OooO00o:Lz2/u40;

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

    iget-object v0, p0, Lz2/u40$OooO0OO;->OooO00o:Lz2/u40;

    invoke-static {v0}, Lz2/u40;->Oooo00o(Lz2/u40;)Lz2/z30;

    move-result-object v1

    invoke-interface {v1, p1}, Lz2/z30;->OooO00o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz2/s40;->OooOo0O(Ljava/lang/Object;)Lz2/u30;

    return-void
.end method
