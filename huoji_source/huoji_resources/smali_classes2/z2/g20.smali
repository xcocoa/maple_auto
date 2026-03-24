.class public Lz2/g20;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/f20;


# instance fields
.field public final OooO00o:Ljava/lang/Throwable;

.field public final OooO0O0:Z

.field private OooO0OO:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/g20;->OooO00o:Ljava/lang/Throwable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz2/g20;->OooO0O0:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/g20;->OooO00o:Ljava/lang/Throwable;

    iput-boolean p2, p0, Lz2/g20;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public OooO00o()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz2/g20;->OooO0OO:Ljava/lang/Object;

    return-object v0
.end method

.method public OooO0O0(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lz2/g20;->OooO0OO:Ljava/lang/Object;

    return-void
.end method

.method public OooO0OO()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lz2/g20;->OooO00o:Ljava/lang/Throwable;

    return-object v0
.end method

.method public OooO0Oo()Z
    .locals 1

    iget-boolean v0, p0, Lz2/g20;->OooO0O0:Z

    return v0
.end method
