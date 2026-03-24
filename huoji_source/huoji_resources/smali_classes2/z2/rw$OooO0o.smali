.class public Lz2/rw$OooO0o;
.super Lz2/tx;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/rw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0o"
.end annotation


# instance fields
.field public final OoooOoO:Lz2/fy$OooOO0;

.field private final OoooOoo:Lz2/l00;

.field private final Ooooo00:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final Ooooo0o:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/fy$OooOO0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lz2/tx;-><init>()V

    iput-object p1, p0, Lz2/rw$OooO0o;->OoooOoO:Lz2/fy$OooOO0;

    iput-object p2, p0, Lz2/rw$OooO0o;->Ooooo00:Ljava/lang/String;

    iput-object p3, p0, Lz2/rw$OooO0o;->Ooooo0o:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lz2/fy$OooOO0;->Oooooo(I)Lz2/e10;

    move-result-object p2

    new-instance p3, Lz2/rw$OooO0o$OooO00o;

    invoke-direct {p3, p0, p2, p1}, Lz2/rw$OooO0o$OooO00o;-><init>(Lz2/rw$OooO0o;Lz2/e10;Lz2/fy$OooOO0;)V

    invoke-static {p3}, Lz2/w00;->OooO0Oo(Lz2/e10;)Lz2/l00;

    move-result-object p1

    iput-object p1, p0, Lz2/rw$OooO0o;->OoooOoo:Lz2/l00;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 3

    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lz2/rw$OooO0o;->Ooooo0o:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public contentType()Lz2/mx;
    .locals 1

    iget-object v0, p0, Lz2/rw$OooO0o;->Ooooo00:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lz2/mx;->OooO0Oo(Ljava/lang/String;)Lz2/mx;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public source()Lz2/l00;
    .locals 1

    iget-object v0, p0, Lz2/rw$OooO0o;->OoooOoo:Lz2/l00;

    return-object v0
.end method
