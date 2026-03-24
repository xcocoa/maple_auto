.class public Lz2/rw$OooO0o$OooO00o;
.super Lz2/p00;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/rw$OooO0o;-><init>(Lz2/fy$OooOO0;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/fy$OooOO0;

.field public final synthetic OoooOoo:Lz2/rw$OooO0o;


# direct methods
.method public constructor <init>(Lz2/rw$OooO0o;Lz2/e10;Lz2/fy$OooOO0;)V
    .locals 0

    iput-object p1, p0, Lz2/rw$OooO0o$OooO00o;->OoooOoo:Lz2/rw$OooO0o;

    iput-object p3, p0, Lz2/rw$OooO0o$OooO00o;->OoooOoO:Lz2/fy$OooOO0;

    invoke-direct {p0, p2}, Lz2/p00;-><init>(Lz2/e10;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/rw$OooO0o$OooO00o;->OoooOoO:Lz2/fy$OooOO0;

    invoke-virtual {v0}, Lz2/fy$OooOO0;->close()V

    invoke-super {p0}, Lz2/p00;->close()V

    return-void
.end method
