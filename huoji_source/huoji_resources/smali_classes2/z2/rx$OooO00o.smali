.class public Lz2/rx$OooO00o;
.super Lz2/rx;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/rx;->create(Lz2/mx;Lokio/ByteString;)Lz2/rx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/mx;

.field public final synthetic OooO0O0:Lokio/ByteString;


# direct methods
.method public constructor <init>(Lz2/mx;Lokio/ByteString;)V
    .locals 0

    iput-object p1, p0, Lz2/rx$OooO00o;->OooO00o:Lz2/mx;

    iput-object p2, p0, Lz2/rx$OooO00o;->OooO0O0:Lokio/ByteString;

    invoke-direct {p0}, Lz2/rx;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/rx$OooO00o;->OooO0O0:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lz2/mx;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/rx$OooO00o;->OooO00o:Lz2/mx;

    return-object v0
.end method

.method public writeTo(Lz2/k00;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/rx$OooO00o;->OooO0O0:Lokio/ByteString;

    invoke-interface {p1, v0}, Lz2/k00;->OoooO0(Lokio/ByteString;)Lz2/k00;

    return-void
.end method
