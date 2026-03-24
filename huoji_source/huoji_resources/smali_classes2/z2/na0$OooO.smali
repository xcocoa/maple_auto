.class public final Lz2/na0$OooO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/na0;->o00Oo0(Ljava/lang/Class;Landroid/content/ContentValues;J)Lz2/hb0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Ljava/lang/Class;

.field public final synthetic OoooOoo:Landroid/content/ContentValues;

.field public final synthetic Ooooo00:J

.field public final synthetic Ooooo0o:Lz2/hb0;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/content/ContentValues;JLz2/hb0;)V
    .locals 0

    iput-object p1, p0, Lz2/na0$OooO;->OoooOoO:Ljava/lang/Class;

    iput-object p2, p0, Lz2/na0$OooO;->OoooOoo:Landroid/content/ContentValues;

    iput-wide p3, p0, Lz2/na0$OooO;->Ooooo00:J

    iput-object p5, p0, Lz2/na0$OooO;->Ooooo0o:Lz2/hb0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/na0$OooO;->OoooOoO:Ljava/lang/Class;

    iget-object v2, p0, Lz2/na0$OooO;->OoooOoo:Landroid/content/ContentValues;

    iget-wide v3, p0, Lz2/na0$OooO;->Ooooo00:J

    invoke-static {v1, v2, v3, v4}, Lz2/na0;->OoooooO(Ljava/lang/Class;Landroid/content/ContentValues;J)I

    move-result v1

    iget-object v2, p0, Lz2/na0$OooO;->Ooooo0o:Lz2/hb0;

    invoke-virtual {v2}, Lz2/hb0;->OooO0OO()Lz2/nb0;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lz2/na0;->Oooo0O0()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lz2/na0$OooO$OooO00o;

    invoke-direct {v3, p0, v1}, Lz2/na0$OooO$OooO00o;-><init>(Lz2/na0$OooO;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
