.class public Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final body:Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

.field private final header:Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->body:Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

    new-instance p1, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

    invoke-direct {p1}, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->header:Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->generateContentDisposition(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->generateContentType(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->generateTransferEncoding(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Body may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->body:Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

    new-instance p1, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

    invoke-direct {p1}, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->header:Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

    if-eqz p3, :cond_0

    const-string p1, "Content-Disposition"

    invoke-virtual {p0, p1, p3}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->generateContentDisposition(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    :goto_0
    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->generateContentType(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->generateTransferEncoding(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Body may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->header:Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

    new-instance v1, Lcom/lidroid/xutils/http/client/multipart/MinimalField;

    invoke-direct {v1, p1, p2}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->addField(Lcom/lidroid/xutils/http/client/multipart/MinimalField;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateContentDisposition(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "; filename=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0, p1}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public generateContentType(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/lidroid/xutils/http/client/multipart/content/ContentDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/lidroid/xutils/http/client/multipart/content/ContentDescriptor;->getCharset()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/lidroid/xutils/http/client/multipart/content/ContentDescriptor;->getCharset()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public generateTransferEncoding(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V
    .locals 1

    invoke-interface {p1}, Lcom/lidroid/xutils/http/client/multipart/content/ContentDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Transfer-Encoding"

    invoke-virtual {p0, v0, p1}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBody()Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;
    .locals 1

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->body:Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

    return-object v0
.end method

.method public getHeader()Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;
    .locals 1

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->header:Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->name:Ljava/lang/String;

    return-object v0
.end method
