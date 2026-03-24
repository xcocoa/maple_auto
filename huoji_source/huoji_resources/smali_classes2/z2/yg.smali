.class public Lz2/yg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/mi;


# instance fields
.field private OooO00o:Landroid/content/Context;

.field private OooO0O0:Lz2/xg;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/xg;

    invoke-direct {v0}, Lz2/xg;-><init>()V

    iput-object v0, p0, Lz2/yg;->OooO0O0:Lz2/xg;

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/r3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r3<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "success"

    invoke-interface {p1, v0}, Lz2/r3;->OooO00o(Ljava/lang/Object;)V

    return-void
.end method

.method public OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 0

    return-void
.end method

.method public OooO0OO()Lz2/ni;
    .locals 1

    iget-object v0, p0, Lz2/yg;->OooO0O0:Lz2/xg;

    return-object v0
.end method

.method public OooO0Oo(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lz2/yg;->OooO00o:Landroid/content/Context;

    return-void
.end method

.method public OooO0o0(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lz2/yg;->OooO00o:Landroid/content/Context;

    return-object v0
.end method
