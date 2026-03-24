.class public final Lz2/ry$OooO00o;
.super Lz2/n00;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# instance fields
.field public OoooOoo:J


# direct methods
.method public constructor <init>(Lz2/d10;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/n00;-><init>(Lz2/d10;)V

    return-void
.end method


# virtual methods
.method public OooOooO(Lz2/j00;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lz2/n00;->OooOooO(Lz2/j00;J)V

    iget-wide v0, p0, Lz2/ry$OooO00o;->OoooOoo:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lz2/ry$OooO00o;->OoooOoo:J

    return-void
.end method
