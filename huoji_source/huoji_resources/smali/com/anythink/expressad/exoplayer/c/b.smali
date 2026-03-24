.class public final Lcom/anythink/expressad/exoplayer/c/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/c/b$a;
    }
.end annotation


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:[I

.field public e:[I

.field public f:I

.field public g:I

.field public h:I

.field private final i:Landroid/media/MediaCodec$CryptoInfo;

.field private final j:Lcom/anythink/expressad/exoplayer/c/b$a;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    new-instance v2, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/anythink/expressad/exoplayer/c/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    const/16 v3, 0x18

    if-lt v0, v3, :cond_1

    new-instance v1, Lcom/anythink/expressad/exoplayer/c/b$a;

    const/4 v0, 0x0

    invoke-direct {v1, v2, v0}, Lcom/anythink/expressad/exoplayer/c/b$a;-><init>(Landroid/media/MediaCodec$CryptoInfo;B)V

    :cond_1
    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/c/b;->j:Lcom/anythink/expressad/exoplayer/c/b$a;

    return-void
.end method

.method private static b()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    return-object v0
.end method

.method private c()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/c/b;->f:I

    iput v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/c/b;->d:[I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/c/b;->e:[I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/c/b;->b:[B

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/c/b;->a:[B

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/c/b;->c:I

    iput v1, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    sget v0, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/b;->j:Lcom/anythink/expressad/exoplayer/c/b$a;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/c/b;->g:I

    iget v2, p0, Lcom/anythink/expressad/exoplayer/c/b;->h:I

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/exoplayer/c/b$a;->a(Lcom/anythink/expressad/exoplayer/c/b$a;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public final a(I[I[I[B[BIII)V
    .locals 2

    iput p1, p0, Lcom/anythink/expressad/exoplayer/c/b;->f:I

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/c/b;->d:[I

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/c/b;->e:[I

    iput-object p4, p0, Lcom/anythink/expressad/exoplayer/c/b;->b:[B

    iput-object p5, p0, Lcom/anythink/expressad/exoplayer/c/b;->a:[B

    iput p6, p0, Lcom/anythink/expressad/exoplayer/c/b;->c:I

    iput p7, p0, Lcom/anythink/expressad/exoplayer/c/b;->g:I

    iput p8, p0, Lcom/anythink/expressad/exoplayer/c/b;->h:I

    sget v0, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/c/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput p1, v1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iput-object p2, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iput-object p3, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iput-object p4, v1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iput-object p5, v1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iput p6, v1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    const/16 p1, 0x18

    if-lt v0, p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/c/b;->j:Lcom/anythink/expressad/exoplayer/c/b$a;

    invoke-static {p1, p7, p8}, Lcom/anythink/expressad/exoplayer/c/b$a;->a(Lcom/anythink/expressad/exoplayer/c/b$a;II)V

    :cond_0
    return-void
.end method
