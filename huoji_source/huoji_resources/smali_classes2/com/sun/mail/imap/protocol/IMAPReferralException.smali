.class public Lcom/sun/mail/imap/protocol/IMAPReferralException;
.super Lcom/sun/mail/iap/ProtocolException;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x23c9a242c8a70d40L


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sun/mail/imap/protocol/IMAPReferralException;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPReferralException;->url:Ljava/lang/String;

    return-object v0
.end method
