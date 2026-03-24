.class public Lz2/sx$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/sx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation


# instance fields
.field public OooO:Lz2/sx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public OooO00o:Lz2/qx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public OooO0O0:Lokhttp3/Protocol;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public OooO0OO:I

.field public OooO0Oo:Ljava/lang/String;

.field public OooO0o:Lz2/jx$OooO00o;

.field public OooO0o0:Lz2/ix;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public OooO0oO:Lz2/tx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public OooO0oo:Lz2/sx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public OooOO0:Lz2/sx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public OooOO0O:J

.field public OooOO0o:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lz2/sx$OooO00o;->OooO0OO:I

    new-instance v0, Lz2/jx$OooO00o;

    invoke-direct {v0}, Lz2/jx$OooO00o;-><init>()V

    iput-object v0, p0, Lz2/sx$OooO00o;->OooO0o:Lz2/jx$OooO00o;

    return-void
.end method

.method public constructor <init>(Lz2/sx;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lz2/sx$OooO00o;->OooO0OO:I

    iget-object v0, p1, Lz2/sx;->OoooOoO:Lz2/qx;

    iput-object v0, p0, Lz2/sx$OooO00o;->OooO00o:Lz2/qx;

    iget-object v0, p1, Lz2/sx;->OoooOoo:Lokhttp3/Protocol;

    iput-object v0, p0, Lz2/sx$OooO00o;->OooO0O0:Lokhttp3/Protocol;

    iget v0, p1, Lz2/sx;->Ooooo00:I

    iput v0, p0, Lz2/sx$OooO00o;->OooO0OO:I

    iget-object v0, p1, Lz2/sx;->Ooooo0o:Ljava/lang/String;

    iput-object v0, p0, Lz2/sx$OooO00o;->OooO0Oo:Ljava/lang/String;

    iget-object v0, p1, Lz2/sx;->OooooO0:Lz2/ix;

    iput-object v0, p0, Lz2/sx$OooO00o;->OooO0o0:Lz2/ix;

    iget-object v0, p1, Lz2/sx;->OooooOO:Lz2/jx;

    invoke-virtual {v0}, Lz2/jx;->OooO()Lz2/jx$OooO00o;

    move-result-object v0

    iput-object v0, p0, Lz2/sx$OooO00o;->OooO0o:Lz2/jx$OooO00o;

    iget-object v0, p1, Lz2/sx;->OooooOo:Lz2/tx;

    iput-object v0, p0, Lz2/sx$OooO00o;->OooO0oO:Lz2/tx;

    iget-object v0, p1, Lz2/sx;->Oooooo0:Lz2/sx;

    iput-object v0, p0, Lz2/sx$OooO00o;->OooO0oo:Lz2/sx;

    iget-object v0, p1, Lz2/sx;->Oooooo:Lz2/sx;

    iput-object v0, p0, Lz2/sx$OooO00o;->OooO:Lz2/sx;

    iget-object v0, p1, Lz2/sx;->OoooooO:Lz2/sx;

    iput-object v0, p0, Lz2/sx$OooO00o;->OooOO0:Lz2/sx;

    iget-wide v0, p1, Lz2/sx;->Ooooooo:J

    iput-wide v0, p0, Lz2/sx$OooO00o;->OooOO0O:J

    iget-wide v0, p1, Lz2/sx;->o0OoOo0:J

    iput-wide v0, p0, Lz2/sx$OooO00o;->OooOO0o:J

    return-void
.end method

.method private OooO0o(Ljava/lang/String;Lz2/sx;)V
    .locals 1

    iget-object v0, p2, Lz2/sx;->OooooOo:Lz2/tx;

    if-nez v0, :cond_3

    iget-object v0, p2, Lz2/sx;->Oooooo0:Lz2/sx;

    if-nez v0, :cond_2

    iget-object v0, p2, Lz2/sx;->Oooooo:Lz2/sx;

    if-nez v0, :cond_1

    iget-object p2, p2, Lz2/sx;->OoooooO:Lz2/sx;

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private OooO0o0(Lz2/sx;)V
    .locals 1

    iget-object p1, p1, Lz2/sx;->OooooOo:Lz2/tx;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public OooO(Ljava/lang/String;Ljava/lang/String;)Lz2/sx$OooO00o;
    .locals 1

    iget-object v0, p0, Lz2/sx$OooO00o;->OooO0o:Lz2/jx$OooO00o;

    invoke-virtual {v0, p1, p2}, Lz2/jx$OooO00o;->OooOO0O(Ljava/lang/String;Ljava/lang/String;)Lz2/jx$OooO00o;

    return-object p0
.end method

.method public OooO00o(Ljava/lang/String;Ljava/lang/String;)Lz2/sx$OooO00o;
    .locals 1

    iget-object v0, p0, Lz2/sx$OooO00o;->OooO0o:Lz2/jx$OooO00o;

    invoke-virtual {v0, p1, p2}, Lz2/jx$OooO00o;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)Lz2/jx$OooO00o;

    return-object p0
.end method

.method public OooO0O0(Lz2/tx;)Lz2/sx$OooO00o;
    .locals 0
    .param p1    # Lz2/tx;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lz2/sx$OooO00o;->OooO0oO:Lz2/tx;

    return-object p0
.end method

.method public OooO0OO()Lz2/sx;
    .locals 3

    iget-object v0, p0, Lz2/sx$OooO00o;->OooO00o:Lz2/qx;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lz2/sx$OooO00o;->OooO0O0:Lokhttp3/Protocol;

    if-eqz v0, :cond_2

    iget v0, p0, Lz2/sx$OooO00o;->OooO0OO:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lz2/sx$OooO00o;->OooO0Oo:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lz2/sx;

    invoke-direct {v0, p0}, Lz2/sx;-><init>(Lz2/sx$OooO00o;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lz2/sx$OooO00o;->OooO0OO:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO0Oo(Lz2/sx;)Lz2/sx$OooO00o;
    .locals 1
    .param p1    # Lz2/sx;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lz2/sx$OooO00o;->OooO0o(Ljava/lang/String;Lz2/sx;)V

    :cond_0
    iput-object p1, p0, Lz2/sx$OooO00o;->OooO:Lz2/sx;

    return-object p0
.end method

.method public OooO0oO(I)Lz2/sx$OooO00o;
    .locals 0

    iput p1, p0, Lz2/sx$OooO00o;->OooO0OO:I

    return-object p0
.end method

.method public OooO0oo(Lz2/ix;)Lz2/sx$OooO00o;
    .locals 0
    .param p1    # Lz2/ix;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lz2/sx$OooO00o;->OooO0o0:Lz2/ix;

    return-object p0
.end method

.method public OooOO0(Lz2/jx;)Lz2/sx$OooO00o;
    .locals 0

    invoke-virtual {p1}, Lz2/jx;->OooO()Lz2/jx$OooO00o;

    move-result-object p1

    iput-object p1, p0, Lz2/sx$OooO00o;->OooO0o:Lz2/jx$OooO00o;

    return-object p0
.end method

.method public OooOO0O(Ljava/lang/String;)Lz2/sx$OooO00o;
    .locals 0

    iput-object p1, p0, Lz2/sx$OooO00o;->OooO0Oo:Ljava/lang/String;

    return-object p0
.end method

.method public OooOO0o(Lz2/sx;)Lz2/sx$OooO00o;
    .locals 1
    .param p1    # Lz2/sx;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lz2/sx$OooO00o;->OooO0o(Ljava/lang/String;Lz2/sx;)V

    :cond_0
    iput-object p1, p0, Lz2/sx$OooO00o;->OooO0oo:Lz2/sx;

    return-object p0
.end method

.method public OooOOO(Lokhttp3/Protocol;)Lz2/sx$OooO00o;
    .locals 0

    iput-object p1, p0, Lz2/sx$OooO00o;->OooO0O0:Lokhttp3/Protocol;

    return-object p0
.end method

.method public OooOOO0(Lz2/sx;)Lz2/sx$OooO00o;
    .locals 0
    .param p1    # Lz2/sx;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lz2/sx$OooO00o;->OooO0o0(Lz2/sx;)V

    :cond_0
    iput-object p1, p0, Lz2/sx$OooO00o;->OooOO0:Lz2/sx;

    return-object p0
.end method

.method public OooOOOO(J)Lz2/sx$OooO00o;
    .locals 0

    iput-wide p1, p0, Lz2/sx$OooO00o;->OooOO0o:J

    return-object p0
.end method

.method public OooOOOo(Ljava/lang/String;)Lz2/sx$OooO00o;
    .locals 1

    iget-object v0, p0, Lz2/sx$OooO00o;->OooO0o:Lz2/jx$OooO00o;

    invoke-virtual {v0, p1}, Lz2/jx$OooO00o;->OooOO0(Ljava/lang/String;)Lz2/jx$OooO00o;

    return-object p0
.end method

.method public OooOOo(J)Lz2/sx$OooO00o;
    .locals 0

    iput-wide p1, p0, Lz2/sx$OooO00o;->OooOO0O:J

    return-object p0
.end method

.method public OooOOo0(Lz2/qx;)Lz2/sx$OooO00o;
    .locals 0

    iput-object p1, p0, Lz2/sx$OooO00o;->OooO00o:Lz2/qx;

    return-object p0
.end method
