.class public Lcom/sun/mail/smtp/SMTPSenderFailedException;
.super Ljavax/mail/SendFailedException;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x72403d150b9bc13L


# instance fields
.field public addr:Ljavax/mail/internet/InternetAddress;

.field public cmd:Ljava/lang/String;

.field public rc:I


# direct methods
.method public constructor <init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p4}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPSenderFailedException;->addr:Ljavax/mail/internet/InternetAddress;

    iput-object p2, p0, Lcom/sun/mail/smtp/SMTPSenderFailedException;->cmd:Ljava/lang/String;

    iput p3, p0, Lcom/sun/mail/smtp/SMTPSenderFailedException;->rc:I

    return-void
.end method


# virtual methods
.method public getAddress()Ljavax/mail/internet/InternetAddress;
    .locals 1

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPSenderFailedException;->addr:Ljavax/mail/internet/InternetAddress;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPSenderFailedException;->cmd:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnCode()I
    .locals 1

    iget v0, p0, Lcom/sun/mail/smtp/SMTPSenderFailedException;->rc:I

    return v0
.end method
