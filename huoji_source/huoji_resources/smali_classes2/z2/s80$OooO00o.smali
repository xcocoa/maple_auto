.class public Lz2/s80$OooO00o;
.super Lz2/w90;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/s80;->OooO00o(Lz2/w90;Lz2/s90;Ljava/lang/Object;)Lz2/w90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/s90;

.field public final synthetic OooO0O0:Lz2/w90;

.field public final synthetic OooO0OO:Lz2/s80;


# direct methods
.method public constructor <init>(Lz2/s80;Lz2/s90;Lz2/w90;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iput-object p1, p0, Lz2/s80$OooO00o;->OooO0OO:Lz2/s80;

    iput-object p2, p0, Lz2/s80$OooO00o;->OooO00o:Lz2/s90;

    iput-object p3, p0, Lz2/s80$OooO00o;->OooO0O0:Lz2/w90;

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

    iget-object v0, p0, Lz2/s80$OooO00o;->OooO0OO:Lz2/s80;

    iget-object v1, p0, Lz2/s80$OooO00o;->OooO00o:Lz2/s90;

    invoke-virtual {v0, v1}, Lz2/s80;->OooO0Oo(Lz2/s90;)V

    :try_start_0
    iget-object v0, p0, Lz2/s80$OooO00o;->OooO0O0:Lz2/w90;

    invoke-virtual {v0}, Lz2/w90;->OooO00o()V

    iget-object v0, p0, Lz2/s80$OooO00o;->OooO0OO:Lz2/s80;

    iget-object v1, p0, Lz2/s80$OooO00o;->OooO00o:Lz2/s90;

    invoke-virtual {v0, v1}, Lz2/s80;->OooO0o0(Lz2/s90;)V
    :try_end_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lz2/s80$OooO00o;->OooO0OO:Lz2/s80;

    iget-object v1, p0, Lz2/s80$OooO00o;->OooO00o:Lz2/s90;

    invoke-virtual {v0, v1}, Lz2/s80;->OooO0OO(Lz2/s90;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lz2/s80$OooO00o;->OooO0OO:Lz2/s80;

    iget-object v2, p0, Lz2/s80$OooO00o;->OooO00o:Lz2/s90;

    invoke-virtual {v1, v0, v2}, Lz2/s80;->OooO0O0(Ljava/lang/Throwable;Lz2/s90;)V

    throw v0

    :catch_0
    move-exception v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lz2/s80$OooO00o;->OooO0OO:Lz2/s80;

    iget-object v2, p0, Lz2/s80$OooO00o;->OooO00o:Lz2/s90;

    invoke-virtual {v1, v2}, Lz2/s80;->OooO0OO(Lz2/s90;)V

    throw v0
.end method
