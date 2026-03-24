.class public final Lz2/hz$OooOOO;
.super Lz2/yx;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/hz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooOOO"
.end annotation


# instance fields
.field public final OoooOoo:Z

.field public final Ooooo00:I

.field public final Ooooo0o:I

.field public final synthetic OooooO0:Lz2/hz;


# direct methods
.method public constructor <init>(Lz2/hz;ZII)V
    .locals 2

    iput-object p1, p0, Lz2/hz$OooOOO;->OooooO0:Lz2/hz;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p1, p1, Lz2/hz;->Ooooo0o:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s ping %08x%08x"

    invoke-direct {p0, p1, v0}, Lz2/yx;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p2, p0, Lz2/hz$OooOOO;->OoooOoo:Z

    iput p3, p0, Lz2/hz$OooOOO;->Ooooo00:I

    iput p4, p0, Lz2/hz$OooOOO;->Ooooo0o:I

    return-void
.end method


# virtual methods
.method public OooOO0o()V
    .locals 4

    iget-object v0, p0, Lz2/hz$OooOOO;->OooooO0:Lz2/hz;

    iget-boolean v1, p0, Lz2/hz$OooOOO;->OoooOoo:Z

    iget v2, p0, Lz2/hz$OooOOO;->Ooooo00:I

    iget v3, p0, Lz2/hz$OooOOO;->Ooooo0o:I

    invoke-virtual {v0, v1, v2, v3}, Lz2/hz;->o00000(ZII)V

    return-void
.end method
