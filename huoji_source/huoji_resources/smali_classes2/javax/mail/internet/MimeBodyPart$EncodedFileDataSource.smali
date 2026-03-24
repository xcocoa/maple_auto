.class public Ljavax/mail/internet/MimeBodyPart$EncodedFileDataSource;
.super Ljavax/activation/FileDataSource;
.source ""

# interfaces
.implements Ljavax/mail/EncodingAware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/MimeBodyPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncodedFileDataSource"
.end annotation


# instance fields
.field private contentType:Ljava/lang/String;

.field private encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Ljavax/mail/internet/MimeBodyPart$EncodedFileDataSource;->contentType:Ljava/lang/String;

    iput-object p3, p0, Ljavax/mail/internet/MimeBodyPart$EncodedFileDataSource;->encoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart$EncodedFileDataSource;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0}, Ljavax/activation/FileDataSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart$EncodedFileDataSource;->encoding:Ljava/lang/String;

    return-object v0
.end method
