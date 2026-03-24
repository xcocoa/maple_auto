.class public Lz2/rx$OooO0O0;
.super Lz2/rx;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/rx;->create(Lz2/mx;[BII)Lz2/rx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/mx;

.field public final synthetic OooO0O0:I

.field public final synthetic OooO0OO:[B

.field public final synthetic OooO0Oo:I


# direct methods
.method public constructor <init>(Lz2/mx;I[BI)V
    .locals 0

    iput-object p1, p0, Lz2/rx$OooO0O0;->OooO00o:Lz2/mx;

    iput p2, p0, Lz2/rx$OooO0O0;->OooO0O0:I

    iput-object p3, p0, Lz2/rx$OooO0O0;->OooO0OO:[B

    iput p4, p0, Lz2/rx$OooO0O0;->OooO0Oo:I

    invoke-direct {p0}, Lz2/rx;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget v0, p0, Lz2/rx$OooO0O0;->OooO0O0:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lz2/mx;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/rx$OooO0O0;->OooO00o:Lz2/mx;

    return-object v0
.end method

.method public writeTo(Lz2/k00;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/rx$OooO0O0;->OooO0OO:[B

    iget v1, p0, Lz2/rx$OooO0O0;->OooO0Oo:I

    iget v2, p0, Lz2/rx$OooO0O0;->OooO0O0:I

    invoke-interface {p1, v0, v1, v2}, Lz2/k00;->OooOoo0([BII)Lz2/k00;

    return-void
.end method
