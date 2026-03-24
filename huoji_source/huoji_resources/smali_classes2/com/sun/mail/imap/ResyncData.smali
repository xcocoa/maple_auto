.class public Lcom/sun/mail/imap/ResyncData;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CONDSTORE:Lcom/sun/mail/imap/ResyncData;


# instance fields
.field private modseq:J

.field private uids:[Lcom/sun/mail/imap/protocol/UIDSet;

.field private uidvalidity:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sun/mail/imap/ResyncData;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/sun/mail/imap/ResyncData;-><init>(JJ)V

    sput-object v0, Lcom/sun/mail/imap/ResyncData;->CONDSTORE:Lcom/sun/mail/imap/ResyncData;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sun/mail/imap/ResyncData;->uidvalidity:J

    iput-wide v0, p0, Lcom/sun/mail/imap/ResyncData;->modseq:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/ResyncData;->uids:[Lcom/sun/mail/imap/protocol/UIDSet;

    iput-wide p1, p0, Lcom/sun/mail/imap/ResyncData;->uidvalidity:J

    iput-wide p3, p0, Lcom/sun/mail/imap/ResyncData;->modseq:J

    iput-object v0, p0, Lcom/sun/mail/imap/ResyncData;->uids:[Lcom/sun/mail/imap/protocol/UIDSet;

    return-void
.end method

.method public constructor <init>(JJJJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sun/mail/imap/ResyncData;->uidvalidity:J

    iput-wide v0, p0, Lcom/sun/mail/imap/ResyncData;->modseq:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/ResyncData;->uids:[Lcom/sun/mail/imap/protocol/UIDSet;

    iput-wide p1, p0, Lcom/sun/mail/imap/ResyncData;->uidvalidity:J

    iput-wide p3, p0, Lcom/sun/mail/imap/ResyncData;->modseq:J

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/sun/mail/imap/protocol/UIDSet;

    new-instance p2, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {p2, p5, p6, p7, p8}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>(JJ)V

    const/4 p3, 0x0

    aput-object p2, p1, p3

    iput-object p1, p0, Lcom/sun/mail/imap/ResyncData;->uids:[Lcom/sun/mail/imap/protocol/UIDSet;

    return-void
.end method

.method public constructor <init>(JJ[J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sun/mail/imap/ResyncData;->uidvalidity:J

    iput-wide v0, p0, Lcom/sun/mail/imap/ResyncData;->modseq:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/ResyncData;->uids:[Lcom/sun/mail/imap/protocol/UIDSet;

    iput-wide p1, p0, Lcom/sun/mail/imap/ResyncData;->uidvalidity:J

    iput-wide p3, p0, Lcom/sun/mail/imap/ResyncData;->modseq:J

    invoke-static {p5}, Lcom/sun/mail/imap/protocol/UIDSet;->createUIDSets([J)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/imap/ResyncData;->uids:[Lcom/sun/mail/imap/protocol/UIDSet;

    return-void
.end method


# virtual methods
.method public getModSeq()J
    .locals 2

    iget-wide v0, p0, Lcom/sun/mail/imap/ResyncData;->modseq:J

    return-wide v0
.end method

.method public getUIDSet()[Lcom/sun/mail/imap/protocol/UIDSet;
    .locals 1

    iget-object v0, p0, Lcom/sun/mail/imap/ResyncData;->uids:[Lcom/sun/mail/imap/protocol/UIDSet;

    return-object v0
.end method

.method public getUIDValidity()J
    .locals 2

    iget-wide v0, p0, Lcom/sun/mail/imap/ResyncData;->uidvalidity:J

    return-wide v0
.end method
