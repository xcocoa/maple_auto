.class public Lz2/c7$OooO$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/ce$OooO0OO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/c7$OooO;->OooO0O0([Ljava/lang/String;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private OooO00o:J

.field public final synthetic OooO0O0:Lz2/c7$OooO;


# direct methods
.method public constructor <init>(Lz2/c7$OooO;)V
    .locals 2

    iput-object p1, p0, Lz2/c7$OooO$OooO00o;->OooO0O0:Lz2/c7$OooO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lz2/c7$OooO$OooO00o;->OooO00o:J

    return-void
.end method


# virtual methods
.method public OooO00o(JJI)V
    .locals 1

    iget-wide p1, p0, Lz2/c7$OooO$OooO00o;->OooO00o:J

    int-to-long p3, p5

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    iput-wide p3, p0, Lz2/c7$OooO$OooO00o;->OooO00o:J

    iget-object p1, p0, Lz2/c7$OooO$OooO00o;->OooO0O0:Lz2/c7$OooO;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Integer;

    const/4 p3, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    invoke-static {p1, p2}, Lz2/c7$OooO;->OooO00o(Lz2/c7$OooO;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public OooO0O0(Ljava/lang/Exception;)V
    .locals 0

    iget-object p1, p0, Lz2/c7$OooO$OooO00o;->OooO0O0:Lz2/c7$OooO;

    iget-object p1, p1, Lz2/c7$OooO;->OooO00o:Lz2/c7;

    invoke-static {p1}, Lz2/c7;->OooO0O0(Lz2/c7;)V

    return-void
.end method

.method public OooO0OO(Ljava/io/File;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lz2/c7$OooO$OooO00o;->OooO00o:J

    iget-object v0, p0, Lz2/c7$OooO$OooO00o;->OooO0O0:Lz2/c7$OooO;

    iget-object v0, v0, Lz2/c7$OooO;->OooO00o:Lz2/c7;

    invoke-static {v0, p1}, Lz2/c7;->OooO00o(Lz2/c7;Ljava/io/File;)V

    return-void
.end method
