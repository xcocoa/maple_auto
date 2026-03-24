.class public final Lz2/nx$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/nx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# instance fields
.field private final OooO00o:Lokio/ByteString;

.field private OooO0O0:Lz2/mx;

.field private final OooO0OO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/nx$OooO0O0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lz2/nx$OooO00o;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lz2/nx;->OooO0o:Lz2/mx;

    iput-object v0, p0, Lz2/nx$OooO00o;->OooO0O0:Lz2/mx;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/nx$OooO00o;->OooO0OO:Ljava/util/List;

    invoke-static {p1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    iput-object p1, p0, Lz2/nx$OooO00o;->OooO00o:Lokio/ByteString;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;Ljava/lang/String;)Lz2/nx$OooO00o;
    .locals 0

    invoke-static {p1, p2}, Lz2/nx$OooO0O0;->OooO0Oo(Ljava/lang/String;Ljava/lang/String;)Lz2/nx$OooO0O0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/nx$OooO00o;->OooO0Oo(Lz2/nx$OooO0O0;)Lz2/nx$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0(Ljava/lang/String;Ljava/lang/String;Lz2/rx;)Lz2/nx$OooO00o;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2, p3}, Lz2/nx$OooO0O0;->OooO0o0(Ljava/lang/String;Ljava/lang/String;Lz2/rx;)Lz2/nx$OooO0O0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/nx$OooO00o;->OooO0Oo(Lz2/nx$OooO0O0;)Lz2/nx$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public OooO0OO(Lz2/jx;Lz2/rx;)Lz2/nx$OooO00o;
    .locals 0
    .param p1    # Lz2/jx;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lz2/nx$OooO0O0;->OooO0O0(Lz2/jx;Lz2/rx;)Lz2/nx$OooO0O0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/nx$OooO00o;->OooO0Oo(Lz2/nx$OooO0O0;)Lz2/nx$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public OooO0Oo(Lz2/nx$OooO0O0;)Lz2/nx$OooO00o;
    .locals 1

    const-string v0, "part == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lz2/nx$OooO00o;->OooO0OO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public OooO0o()Lz2/nx;
    .locals 4

    iget-object v0, p0, Lz2/nx$OooO00o;->OooO0OO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lz2/nx;

    iget-object v1, p0, Lz2/nx$OooO00o;->OooO00o:Lokio/ByteString;

    iget-object v2, p0, Lz2/nx$OooO00o;->OooO0O0:Lz2/mx;

    iget-object v3, p0, Lz2/nx$OooO00o;->OooO0OO:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lz2/nx;-><init>(Lokio/ByteString;Lz2/mx;Ljava/util/List;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO0o0(Lz2/rx;)Lz2/nx$OooO00o;
    .locals 0

    invoke-static {p1}, Lz2/nx$OooO0O0;->OooO0OO(Lz2/rx;)Lz2/nx$OooO0O0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/nx$OooO00o;->OooO0Oo(Lz2/nx$OooO0O0;)Lz2/nx$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public OooO0oO(Lz2/mx;)Lz2/nx$OooO00o;
    .locals 3

    const-string v0, "type == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lz2/mx;->OooO0o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lz2/nx$OooO00o;->OooO0O0:Lz2/mx;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
