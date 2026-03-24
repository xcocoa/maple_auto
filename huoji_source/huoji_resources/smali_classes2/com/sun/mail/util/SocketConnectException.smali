.class public Lcom/sun/mail/util/SocketConnectException;
.super Ljava/io/IOException;
.source ""


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x377b4b00af8c9187L


# instance fields
.field private cto:I

.field private host:Ljava/lang/String;

.field private port:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sun/mail/util/SocketConnectException;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/sun/mail/util/SocketConnectException;->host:Ljava/lang/String;

    iput p4, p0, Lcom/sun/mail/util/SocketConnectException;->port:I

    iput p5, p0, Lcom/sun/mail/util/SocketConnectException;->cto:I

    return-void
.end method


# virtual methods
.method public getConnectionTimeout()I
    .locals 1

    iget v0, p0, Lcom/sun/mail/util/SocketConnectException;->cto:I

    return v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/mail/util/SocketConnectException;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lcom/sun/mail/util/SocketConnectException;->port:I

    return v0
.end method
