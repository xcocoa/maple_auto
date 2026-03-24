.class public Lz2/v80$OooO00o;
.super Lz2/u90;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/v80;->OooO0O0(Lz2/u90;[Ljava/lang/Class;)Lz2/b90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO0O0:Lz2/u90;

.field public final synthetic OooO0OO:Lz2/v80;


# direct methods
.method public constructor <init>(Lz2/v80;Lz2/u90;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iput-object p1, p0, Lz2/v80$OooO00o;->OooO0OO:Lz2/v80;

    iput-object p2, p0, Lz2/v80$OooO00o;->OooO0O0:Lz2/u90;

    invoke-direct {p0}, Lz2/u90;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO0OO(Ljava/lang/Class;)Lz2/b90;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/b90;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lz2/v80$OooO00o;->OooO0OO:Lz2/v80;

    iget-object v1, p0, Lz2/v80$OooO00o;->OooO0O0:Lz2/u90;

    invoke-virtual {v0, v1, p1}, Lz2/v80;->OooO00o(Lz2/u90;Ljava/lang/Class;)Lz2/b90;

    move-result-object p1

    return-object p1
.end method
