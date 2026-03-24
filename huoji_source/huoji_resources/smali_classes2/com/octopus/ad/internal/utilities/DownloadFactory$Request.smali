.class public final Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/utilities/DownloadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation


# instance fields
.field public volatile mDownloading:Z

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private volatile mPosition:J

.field private volatile mTotal:J

.field private mUrl:Ljava/lang/String;

.field public volatile mUserCancel:Z

.field public volatile mUserPause:Z


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mPath:Ljava/lang/String;

    iget-object p1, p1, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mName:Ljava/lang/String;

    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->reset()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->reset()V

    return-void
.end method

.method public static synthetic access$000(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;)J
    .locals 2

    iget-wide v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mPosition:J

    return-wide v0
.end method

.method public static synthetic access$302(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;J)J
    .locals 0

    iput-wide p1, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mPosition:J

    return-wide p1
.end method

.method public static synthetic access$314(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;J)J
    .locals 2

    iget-wide v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mPosition:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mPosition:J

    return-wide v0
.end method

.method public static synthetic access$400(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;)J
    .locals 2

    iget-wide v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mTotal:J

    return-wide v0
.end method

.method public static synthetic access$402(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;J)J
    .locals 0

    iput-wide p1, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mTotal:J

    return-wide p1
.end method


# virtual methods
.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mTotal:J

    iput-wide v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mPosition:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mUserCancel:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mUserPause:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mDownloading:Z

    return-void
.end method
