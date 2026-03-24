.class public Lz2/o000oOoO$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/o000oOoO;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Landroid/os/Handler;

.field public final synthetic OooO0O0:Lz2/o000oOoO;


# direct methods
.method public constructor <init>(Lz2/o000oOoO;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lz2/o000oOoO$OooO00o;->OooO0O0:Lz2/o000oOoO;

    iput-object p2, p0, Lz2/o000oOoO$OooO00o;->OooO00o:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lz2/o000oOoO$OooO00o;->OooO00o:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
