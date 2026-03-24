.class public Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;
.super Lz2/rx;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentTypeOverridingRequestBody"
.end annotation


# instance fields
.field private final contentType:Lz2/mx;

.field private final delegate:Lz2/rx;


# direct methods
.method public constructor <init>(Lz2/rx;Lz2/mx;)V
    .locals 0

    invoke-direct {p0}, Lz2/rx;-><init>()V

    iput-object p1, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lz2/rx;

    iput-object p2, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->contentType:Lz2/mx;

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

    iget-object v0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lz2/rx;

    invoke-virtual {v0}, Lz2/rx;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lz2/mx;
    .locals 1

    iget-object v0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->contentType:Lz2/mx;

    return-object v0
.end method

.method public writeTo(Lz2/k00;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lz2/rx;

    invoke-virtual {v0, p1}, Lz2/rx;->writeTo(Lz2/k00;)V

    return-void
.end method
