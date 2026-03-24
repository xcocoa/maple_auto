.class public Lz2/t80$OooO0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/t80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation


# instance fields
.field private OooO00o:Z

.field private OooO0O0:J

.field private OooO0OO:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/t80$OooO0O0;->OooO00o:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lz2/t80$OooO0O0;->OooO0O0:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lz2/t80$OooO0O0;->OooO0OO:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public OooO00o()Lz2/t80;
    .locals 1

    new-instance v0, Lz2/t80;

    invoke-direct {v0, p0}, Lz2/t80;-><init>(Lz2/t80$OooO0O0;)V

    return-object v0
.end method

.method public OooO0O0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/t80$OooO0O0;->OooO00o:Z

    return v0
.end method

.method public OooO0OO()Ljava/util/concurrent/TimeUnit;
    .locals 1

    iget-object v0, p0, Lz2/t80$OooO0O0;->OooO0OO:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public OooO0Oo()J
    .locals 2

    iget-wide v0, p0, Lz2/t80$OooO0O0;->OooO0O0:J

    return-wide v0
.end method

.method public OooO0o(JLjava/util/concurrent/TimeUnit;)Lz2/t80$OooO0O0;
    .locals 0

    iput-wide p1, p0, Lz2/t80$OooO0O0;->OooO0O0:J

    iput-object p3, p0, Lz2/t80$OooO0O0;->OooO0OO:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public OooO0o0(Z)Lz2/t80$OooO0O0;
    .locals 0

    iput-boolean p1, p0, Lz2/t80$OooO0O0;->OooO00o:Z

    return-object p0
.end method
