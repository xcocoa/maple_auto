.class public Lz2/f60$OooO00o$OooO00o$OooO00o;
.super Lz2/w90;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/f60$OooO00o$OooO00o;->Oooo(Lz2/s90;)Lz2/w90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/w90;

.field public final synthetic OooO0O0:Lz2/f60$OooO00o$OooO00o;


# direct methods
.method public constructor <init>(Lz2/f60$OooO00o$OooO00o;Lz2/w90;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iput-object p1, p0, Lz2/f60$OooO00o$OooO00o$OooO00o;->OooO0O0:Lz2/f60$OooO00o$OooO00o;

    iput-object p2, p0, Lz2/f60$OooO00o$OooO00o$OooO00o;->OooO00o:Lz2/w90;

    invoke-direct {p0}, Lz2/w90;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lz2/f60$OooO00o$OooO00o$OooO00o;->OooO00o:Lz2/w90;

    invoke-virtual {v0}, Lz2/w90;->OooO00o()V

    iget-object v0, p0, Lz2/f60$OooO00o$OooO00o$OooO00o;->OooO0O0:Lz2/f60$OooO00o$OooO00o;

    iget-object v0, v0, Lz2/f60$OooO00o$OooO00o;->OooO0oo:Lz2/f60$OooO00o;

    invoke-virtual {v0}, Lz2/f60$OooO00o;->OooO0o()V
    :try_end_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lz2/f60$OooO00o$OooO00o$OooO00o;->OooO0O0:Lz2/f60$OooO00o$OooO00o;

    iget-object v2, v1, Lz2/f60$OooO00o$OooO00o;->OooO0oo:Lz2/f60$OooO00o;

    iget-object v1, v1, Lz2/f60$OooO00o$OooO00o;->OooO0oO:Lz2/i60;

    invoke-static {v2}, Lz2/f60$OooO00o;->OooO0O0(Lz2/f60$OooO00o;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lz2/i60;->OooO0oO(Z)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lz2/f60$OooO00o;->OooO(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lz2/f60$OooO00o$OooO00o$OooO00o;->OooO0O0:Lz2/f60$OooO00o$OooO00o;

    iget-object v1, v1, Lz2/f60$OooO00o$OooO00o;->OooO0oo:Lz2/f60$OooO00o;

    invoke-virtual {v1, v0}, Lz2/f60$OooO00o;->OooO0o0(Lorg/junit/internal/AssumptionViolatedException;)V

    :goto_0
    return-void
.end method
