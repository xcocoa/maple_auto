.class public Lz2/my$OooO00o;
.super Lz2/c00$OooOO0O;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/my;->OooOOoo(Lz2/py;)Lz2/c00$OooOO0O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Ooooo0o:Lz2/py;

.field public final synthetic OooooO0:Lz2/my;


# direct methods
.method public constructor <init>(Lz2/my;ZLz2/l00;Lz2/k00;Lz2/py;)V
    .locals 0

    iput-object p1, p0, Lz2/my$OooO00o;->OooooO0:Lz2/my;

    iput-object p5, p0, Lz2/my$OooO00o;->Ooooo0o:Lz2/py;

    invoke-direct {p0, p2, p3, p4}, Lz2/c00$OooOO0O;-><init>(ZLz2/l00;Lz2/k00;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/my$OooO00o;->Ooooo0o:Lz2/py;

    invoke-virtual {v0}, Lz2/py;->OooO0OO()Lz2/sy;

    move-result-object v2

    const/4 v1, 0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lz2/py;->OooOOo(ZLz2/sy;JLjava/io/IOException;)V

    return-void
.end method
