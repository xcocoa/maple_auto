.class public Lz2/xv$OooO00o;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/xv;->OooOOO0(Lz2/gw;Lz2/kw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/gw;

.field public final synthetic OoooOoo:Lz2/kw;

.field public final synthetic Ooooo00:Lz2/xv;


# direct methods
.method public constructor <init>(Lz2/xv;Lz2/gw;Lz2/kw;)V
    .locals 0

    iput-object p1, p0, Lz2/xv$OooO00o;->Ooooo00:Lz2/xv;

    iput-object p2, p0, Lz2/xv$OooO00o;->OoooOoO:Lz2/gw;

    iput-object p3, p0, Lz2/xv$OooO00o;->OoooOoo:Lz2/kw;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lz2/xv$OooO00o;->OoooOoO:Lz2/gw;

    iget-object v1, p0, Lz2/xv$OooO00o;->OoooOoo:Lz2/kw;

    invoke-interface {v0, v1}, Lz2/gw;->OooO0O0(Lz2/kw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lz2/xv$OooO00o;->Ooooo00:Lz2/xv;

    invoke-virtual {v0}, Lz2/xv;->OooOo00()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lz2/xv$OooO00o;->Ooooo00:Lz2/xv;

    invoke-virtual {v1}, Lz2/xv;->OooOo00()V

    throw v0
.end method
