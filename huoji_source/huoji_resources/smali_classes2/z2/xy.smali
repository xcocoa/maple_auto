.class public final Lz2/xy;
.super Lz2/tx;
.source ""


# instance fields
.field private final OoooOoO:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final OoooOoo:J

.field private final Ooooo00:Lz2/l00;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLz2/l00;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lz2/tx;-><init>()V

    iput-object p1, p0, Lz2/xy;->OoooOoO:Ljava/lang/String;

    iput-wide p2, p0, Lz2/xy;->OoooOoo:J

    iput-object p4, p0, Lz2/xy;->Ooooo00:Lz2/l00;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-wide v0, p0, Lz2/xy;->OoooOoo:J

    return-wide v0
.end method

.method public contentType()Lz2/mx;
    .locals 1

    iget-object v0, p0, Lz2/xy;->OoooOoO:Ljava/lang/String;

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

    iget-object v0, p0, Lz2/xy;->Ooooo00:Lz2/l00;

    return-object v0
.end method
