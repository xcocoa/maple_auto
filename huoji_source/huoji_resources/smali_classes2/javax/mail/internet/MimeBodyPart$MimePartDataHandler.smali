.class public Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;
.super Ljavax/activation/DataHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/MimeBodyPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MimePartDataHandler"
.end annotation


# instance fields
.field public part:Ljavax/mail/internet/MimePart;


# direct methods
.method public constructor <init>(Ljavax/mail/internet/MimePart;)V
    .locals 1

    new-instance v0, Ljavax/mail/internet/MimePartDataSource;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimePartDataSource;-><init>(Ljavax/mail/internet/MimePart;)V

    invoke-direct {p0, v0}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    iput-object p1, p0, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;->part:Ljavax/mail/internet/MimePart;

    return-void
.end method


# virtual methods
.method public getContentStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;->part:Ljavax/mail/internet/MimePart;

    instance-of v1, v0, Ljavax/mail/internet/MimeBodyPart;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeBodyPart;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljavax/mail/internet/MimeMessage;

    if-eqz v1, :cond_1

    check-cast v0, Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPart()Ljavax/mail/internet/MimePart;
    .locals 1

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;->part:Ljavax/mail/internet/MimePart;

    return-object v0
.end method
