.class public final Lz2/fy$OooOO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/fy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooOO0"
.end annotation


# instance fields
.field private final OoooOoO:Ljava/lang/String;

.field private final OoooOoo:J

.field private final Ooooo00:[Lz2/e10;

.field private final Ooooo0o:[J

.field public final synthetic OooooO0:Lz2/fy;


# direct methods
.method public constructor <init>(Lz2/fy;Ljava/lang/String;J[Lz2/e10;[J)V
    .locals 0

    iput-object p1, p0, Lz2/fy$OooOO0;->OooooO0:Lz2/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz2/fy$OooOO0;->OoooOoO:Ljava/lang/String;

    iput-wide p3, p0, Lz2/fy$OooOO0;->OoooOoo:J

    iput-object p5, p0, Lz2/fy$OooOO0;->Ooooo00:[Lz2/e10;

    iput-object p6, p0, Lz2/fy$OooOO0;->Ooooo0o:[J

    return-void
.end method

.method public static synthetic OooOO0(Lz2/fy$OooOO0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz2/fy$OooOO0;->OoooOoO:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public OooooOo()Lz2/fy$OooO0o;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/fy$OooOO0;->OooooO0:Lz2/fy;

    iget-object v1, p0, Lz2/fy$OooOO0;->OoooOoO:Ljava/lang/String;

    iget-wide v2, p0, Lz2/fy$OooOO0;->OoooOoo:J

    invoke-virtual {v0, v1, v2, v3}, Lz2/fy;->Ooooooo(Ljava/lang/String;J)Lz2/fy$OooO0o;

    move-result-object v0

    return-object v0
.end method

.method public Oooooo(I)Lz2/e10;
    .locals 1

    iget-object v0, p0, Lz2/fy$OooOO0;->Ooooo00:[Lz2/e10;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public Oooooo0(I)J
    .locals 3

    iget-object v0, p0, Lz2/fy$OooOO0;->Ooooo0o:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public OoooooO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/fy$OooOO0;->OoooOoO:Ljava/lang/String;

    return-object v0
.end method

.method public close()V
    .locals 4

    iget-object v0, p0, Lz2/fy$OooOO0;->Ooooo00:[Lz2/e10;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
