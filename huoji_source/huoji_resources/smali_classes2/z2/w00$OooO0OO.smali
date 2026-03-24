.class public final Lz2/w00$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/d10;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/w00;->OooO0O0()Lz2/d10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooOooO(Lz2/j00;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Lz2/j00;->skip(J)V

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public timeout()Lz2/f10;
    .locals 1

    sget-object v0, Lz2/f10;->OooO0Oo:Lz2/f10;

    return-object v0
.end method
