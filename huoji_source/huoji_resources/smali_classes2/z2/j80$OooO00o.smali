.class public Lz2/j80$OooO00o;
.super Lz2/w90;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/j80;->OooO0Oo(Lz2/w90;)Lz2/w90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/w90;

.field public final synthetic OooO0O0:Lz2/j80;


# direct methods
.method public constructor <init>(Lz2/j80;Lz2/w90;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iput-object p1, p0, Lz2/j80$OooO00o;->OooO0O0:Lz2/j80;

    iput-object p2, p0, Lz2/j80$OooO00o;->OooO00o:Lz2/w90;

    invoke-direct {p0}, Lz2/w90;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lz2/j80$OooO00o;->OooO0O0:Lz2/j80;

    invoke-virtual {v0}, Lz2/j80;->OooO0OO()V

    :try_start_0
    iget-object v0, p0, Lz2/j80$OooO00o;->OooO00o:Lz2/w90;

    invoke-virtual {v0}, Lz2/w90;->OooO00o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lz2/j80$OooO00o;->OooO0O0:Lz2/j80;

    invoke-virtual {v0}, Lz2/j80;->OooO0O0()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lz2/j80$OooO00o;->OooO0O0:Lz2/j80;

    invoke-virtual {v1}, Lz2/j80;->OooO0O0()V

    throw v0
.end method
