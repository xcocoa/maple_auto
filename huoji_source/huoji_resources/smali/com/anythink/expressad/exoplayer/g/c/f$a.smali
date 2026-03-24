.class public final Lcom/anythink/expressad/exoplayer/g/c/f$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/g/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/anythink/expressad/exoplayer/g/c/f$a;->a:I

    iput-wide p2, p0, Lcom/anythink/expressad/exoplayer/g/c/f$a;->b:J

    return-void
.end method

.method public synthetic constructor <init>(IJB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/g/c/f$a;-><init>(IJ)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Parcel;)Lcom/anythink/expressad/exoplayer/g/c/f$a;
    .locals 4

    new-instance v0, Lcom/anythink/expressad/exoplayer/g/c/f$a;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/g/c/f$a;-><init>(IJ)V

    return-object v0
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/g/c/f$a;Landroid/os/Parcel;)V
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/exoplayer/g/c/f$a;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/g/c/f$a;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method private static b(Landroid/os/Parcel;)Lcom/anythink/expressad/exoplayer/g/c/f$a;
    .locals 4

    new-instance v0, Lcom/anythink/expressad/exoplayer/g/c/f$a;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/g/c/f$a;-><init>(IJ)V

    return-object v0
.end method

.method private c(Landroid/os/Parcel;)V
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/exoplayer/g/c/f$a;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/g/c/f$a;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
