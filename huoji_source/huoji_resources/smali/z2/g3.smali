.class public final Lz2/g3;
.super Ljavax/mail/Authenticator;
.source ""


# instance fields
.field public OooO:Ljava/lang/String;

.field private OooO00o:Ljava/lang/String;

.field private OooO0O0:Ljava/lang/String;

.field public OooO0OO:[Ljava/lang/String;

.field public OooO0Oo:Ljava/lang/String;

.field private OooO0o:Ljava/lang/String;

.field private OooO0o0:Ljava/lang/String;

.field public OooO0oO:Ljava/lang/String;

.field public OooO0oo:Ljava/lang/String;

.field private OooOO0:Z

.field private OooOO0O:Z

.field public OooOO0o:Ljavax/mail/Multipart;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V

    const-string v0, "smtp.qq.com"

    iput-object v0, p0, Lz2/g3;->OooO0oO:Ljava/lang/String;

    const-string v0, "465"

    iput-object v0, p0, Lz2/g3;->OooO0o0:Ljava/lang/String;

    iput-object v0, p0, Lz2/g3;->OooO0o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lz2/g3;->OooO00o:Ljava/lang/String;

    iput-object v0, p0, Lz2/g3;->OooO0O0:Ljava/lang/String;

    iput-object v0, p0, Lz2/g3;->OooO0Oo:Ljava/lang/String;

    iput-object v0, p0, Lz2/g3;->OooO0oo:Ljava/lang/String;

    iput-object v0, p0, Lz2/g3;->OooO:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/g3;->OooOO0O:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/g3;->OooOO0:Z

    new-instance v0, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    iput-object v0, p0, Lz2/g3;->OooOO0o:Ljavax/mail/Multipart;

    invoke-static {}, Ljavax/activation/CommandMap;->getDefaultCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    check-cast v0, Ljavax/activation/MailcapCommandMap;

    const-string v1, "text/html;; x-java-content-handler=com.sun.mail.handlers.text_html"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    const-string v1, "text/xml;; x-java-content-handler=com.sun.mail.handlers.text_xml"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    const-string v1, "text/plain;; x-java-content-handler=com.sun.mail.handlers.text_plain"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    const-string v1, "multipart/*;; x-java-content-handler=com.sun.mail.handlers.multipart_mixed"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    const-string v1, "message/rfc822;; x-java-content-handler=com.sun.mail.handlers.message_rfc822"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    invoke-static {v0}, Ljavax/activation/CommandMap;->setDefaultCommandMap(Ljavax/activation/CommandMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lz2/g3;-><init>()V

    iput-object p1, p0, Lz2/g3;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, Lz2/g3;->OooO0O0:Ljava/lang/String;

    return-void
.end method

.method private OooO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/g3;->OooO:Ljava/lang/String;

    return-object v0
.end method

.method private OooO00o(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    new-instance v1, Ljavax/activation/FileDataSource;

    invoke-direct {v1, p1}, Ljavax/activation/FileDataSource;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljavax/activation/DataHandler;

    invoke-direct {v2, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-interface {v0, v2}, Ljavax/mail/Part;->setDataHandler(Ljavax/activation/DataHandler;)V

    invoke-interface {v0, p1}, Ljavax/mail/Part;->setFileName(Ljava/lang/String;)V

    iget-object p1, p0, Lz2/g3;->OooOO0o:Ljavax/mail/Multipart;

    invoke-virtual {p1, v0}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    return-void
.end method

.method private OooO0O0(Ljavax/mail/Multipart;)V
    .locals 0

    iput-object p1, p0, Lz2/g3;->OooOO0o:Ljavax/mail/Multipart;

    return-void
.end method

.method private OooO0OO(Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/g3;->OooOO0:Z

    return-void
.end method

.method private OooO0Oo([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/g3;->OooO0OO:[Ljava/lang/String;

    return-void
.end method

.method private OooO0o()Ljava/util/Properties;
    .locals 3

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iget-object v1, p0, Lz2/g3;->OooO0oO:Ljava/lang/String;

    const-string v2, "mail.smtp.host"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lz2/g3;->OooOO0O:Z

    const-string v2, "true"

    if-eqz v1, :cond_0

    const-string v1, "mail.debug"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-boolean v1, p0, Lz2/g3;->OooOO0:Z

    if-eqz v1, :cond_1

    const-string v1, "mail.smtp.auth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lz2/g3;->OooO0o0:Ljava/lang/String;

    const-string v2, "mail.smtp.port"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lz2/g3;->OooO0o:Ljava/lang/String;

    const-string v2, "mail.smtp.socketFactory.port"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mail.smtp.socketFactory.class"

    const-string v2, "javax.net.ssl.SSLSocketFactory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mail.smtp.socketFactory.fallback"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private OooO0oO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/g3;->OooO:Ljava/lang/String;

    return-void
.end method

.method private OooO0oo(Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/g3;->OooOO0O:Z

    return-void
.end method

.method private OooOO0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/g3;->OooO00o:Ljava/lang/String;

    return-void
.end method

.method private OooOO0O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/g3;->OooO00o:Ljava/lang/String;

    return-object v0
.end method

.method private OooOO0o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/g3;->OooO0O0:Ljava/lang/String;

    return-void
.end method

.method private OooOOO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/g3;->OooO0Oo:Ljava/lang/String;

    return-void
.end method

.method private OooOOO0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/g3;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method private OooOOOO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/g3;->OooO0o0:Ljava/lang/String;

    return-void
.end method

.method private OooOOOo()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/g3;->OooO0OO:[Ljava/lang/String;

    return-object v0
.end method

.method private OooOOo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/g3;->OooO0o:Ljava/lang/String;

    return-void
.end method

.method private OooOOo0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/g3;->OooO0Oo:Ljava/lang/String;

    return-object v0
.end method

.method private OooOOoo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/g3;->OooO0o0:Ljava/lang/String;

    return-object v0
.end method

.method private OooOo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/g3;->OooO0oo:Ljava/lang/String;

    return-object v0
.end method

.method private OooOo0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/g3;->OooO0o:Ljava/lang/String;

    return-object v0
.end method

.method private OooOo00(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/g3;->OooO0oO:Ljava/lang/String;

    return-void
.end method

.method private OooOo0O(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/g3;->OooO0oo:Ljava/lang/String;

    return-void
.end method

.method private OooOo0o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/g3;->OooO0oO:Ljava/lang/String;

    return-object v0
.end method

.method private OooOoO()Z
    .locals 1

    iget-boolean v0, p0, Lz2/g3;->OooOO0O:Z

    return v0
.end method

.method private OooOoO0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/g3;->OooOO0:Z

    return v0
.end method

.method private OooOoOO()Ljavax/mail/Multipart;
    .locals 1

    iget-object v0, p0, Lz2/g3;->OooOO0o:Ljavax/mail/Multipart;

    return-object v0
.end method


# virtual methods
.method public final OooO0o0()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iget-object v1, p0, Lz2/g3;->OooO0oO:Ljava/lang/String;

    const-string v2, "mail.smtp.host"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lz2/g3;->OooOO0O:Z

    const-string v2, "true"

    if-eqz v1, :cond_0

    const-string v1, "mail.debug"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-boolean v1, p0, Lz2/g3;->OooOO0:Z

    if-eqz v1, :cond_1

    const-string v1, "mail.smtp.auth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lz2/g3;->OooO0o0:Ljava/lang/String;

    const-string v2, "mail.smtp.port"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lz2/g3;->OooO0o:Ljava/lang/String;

    const-string v2, "mail.smtp.socketFactory.port"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mail.smtp.socketFactory.class"

    const-string v2, "javax.net.ssl.SSLSocketFactory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mail.smtp.socketFactory.fallback"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lz2/g3;->OooO00o:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lz2/g3;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lz2/g3;->OooO0OO:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lz2/g3;->OooO0Oo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lz2/g3;->OooO0oo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lz2/g3;->OooO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0, p0}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v0

    new-instance v1, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v1, v0}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    new-instance v0, Ljavax/mail/internet/InternetAddress;

    iget-object v2, p0, Lz2/g3;->OooO0Oo:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/mail/internet/MimeMessage;->setFrom(Ljavax/mail/Address;)V

    iget-object v0, p0, Lz2/g3;->OooO0OO:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljavax/mail/internet/InternetAddress;

    :goto_0
    iget-object v2, p0, Lz2/g3;->OooO0OO:[Ljava/lang/String;

    array-length v2, v2

    if-ge v3, v2, :cond_2

    new-instance v2, Ljavax/mail/internet/InternetAddress;

    iget-object v4, p0, Lz2/g3;->OooO0OO:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-direct {v2, v4}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v1, v2, v0}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    iget-object v0, p0, Lz2/g3;->OooO0oo:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/mail/internet/MimeMessage;->setSentDate(Ljava/util/Date;)V

    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    iget-object v2, p0, Lz2/g3;->OooO:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljavax/mail/Part;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lz2/g3;->OooOO0o:Ljavax/mail/Multipart;

    invoke-virtual {v2, v0}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    const-string v0, "X-Priority"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lz2/g3;->OooOO0o:Ljavax/mail/Multipart;

    invoke-virtual {v1, v0}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    invoke-static {v1}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V

    const/4 v0, 0x1

    return v0

    :cond_3
    return v3
.end method

.method public final getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
    .locals 3

    new-instance v0, Ljavax/mail/PasswordAuthentication;

    iget-object v1, p0, Lz2/g3;->OooO00o:Ljava/lang/String;

    iget-object v2, p0, Lz2/g3;->OooO0O0:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
