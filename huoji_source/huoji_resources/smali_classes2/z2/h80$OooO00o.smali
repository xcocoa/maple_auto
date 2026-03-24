.class public Lz2/h80$OooO00o;
.super Lz2/w90;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/h80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO00o"
.end annotation


# instance fields
.field private final OooO00o:Lz2/w90;

.field public final synthetic OooO0O0:Lz2/h80;


# direct methods
.method public constructor <init>(Lz2/h80;Lz2/w90;)V
    .locals 0

    iput-object p1, p0, Lz2/h80$OooO00o;->OooO0O0:Lz2/h80;

    invoke-direct {p0}, Lz2/w90;-><init>()V

    iput-object p2, p0, Lz2/h80$OooO00o;->OooO00o:Lz2/w90;

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

    :try_start_0
    iget-object v0, p0, Lz2/h80$OooO00o;->OooO00o:Lz2/w90;

    invoke-virtual {v0}, Lz2/w90;->OooO00o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lz2/h80$OooO00o;->OooO0O0:Lz2/h80;

    invoke-static {v0}, Lz2/h80;->OooO0OO(Lz2/h80;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/h80$OooO00o;->OooO0O0:Lz2/h80;

    invoke-static {v0}, Lz2/h80;->OooO0Oo(Lz2/h80;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lz2/h80$OooO00o;->OooO0O0:Lz2/h80;

    invoke-static {v1, v0}, Lz2/h80;->OooO0O0(Lz2/h80;Ljava/lang/Throwable;)V

    return-void
.end method
