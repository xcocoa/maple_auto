.class public Lz2/f60$OooO00o$OooO0O0;
.super Lz2/w90;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/f60$OooO00o;->OooO0oO(Lz2/s90;Lz2/i60;Ljava/lang/Object;)Lz2/w90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/i60;

.field public final synthetic OooO0O0:Lz2/s90;

.field public final synthetic OooO0OO:Ljava/lang/Object;

.field public final synthetic OooO0Oo:Lz2/f60$OooO00o;


# direct methods
.method public constructor <init>(Lz2/f60$OooO00o;Lz2/i60;Lz2/s90;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iput-object p1, p0, Lz2/f60$OooO00o$OooO0O0;->OooO0Oo:Lz2/f60$OooO00o;

    iput-object p2, p0, Lz2/f60$OooO00o$OooO0O0;->OooO00o:Lz2/i60;

    iput-object p3, p0, Lz2/f60$OooO00o$OooO0O0;->OooO0O0:Lz2/s90;

    iput-object p4, p0, Lz2/f60$OooO00o$OooO0O0;->OooO0OO:Ljava/lang/Object;

    invoke-direct {p0}, Lz2/w90;-><init>()V

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

    iget-object v0, p0, Lz2/f60$OooO00o$OooO0O0;->OooO00o:Lz2/i60;

    invoke-virtual {v0}, Lz2/i60;->OooOO0()[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lz2/f60$OooO00o$OooO0O0;->OooO0Oo:Lz2/f60$OooO00o;

    invoke-static {v1}, Lz2/f60$OooO00o;->OooO0O0(Lz2/f60$OooO00o;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lz2/g50;->OooO0o0([Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lz2/f60$OooO00o$OooO0O0;->OooO0O0:Lz2/s90;

    iget-object v2, p0, Lz2/f60$OooO00o$OooO0O0;->OooO0OO:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lz2/s90;->OooOOOO(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
