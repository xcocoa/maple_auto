.class public Lz2/b80;
.super Lz2/w90;
.source ""


# instance fields
.field private final OooO00o:Lz2/s90;

.field private final OooO0O0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lz2/s90;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lz2/w90;-><init>()V

    iput-object p1, p0, Lz2/b80;->OooO00o:Lz2/s90;

    iput-object p2, p0, Lz2/b80;->OooO0O0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lz2/b80;->OooO00o:Lz2/s90;

    iget-object v1, p0, Lz2/b80;->OooO0O0:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lz2/s90;->OooOOOO(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
