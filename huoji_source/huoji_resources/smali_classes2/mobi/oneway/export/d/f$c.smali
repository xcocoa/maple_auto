.class public Lmobi/oneway/export/d/f$c;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/oneway/export/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# instance fields
.field private c:Lmobi/oneway/export/d/f$b;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/d/f$b;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lmobi/oneway/export/d/f$c;->c:Lmobi/oneway/export/d/f$b;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lmobi/oneway/export/d/f$c;->c:Lmobi/oneway/export/d/f$b;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lmobi/oneway/export/d/b;

    invoke-interface {v0, p1}, Lmobi/oneway/export/d/f$b;->a(Lmobi/oneway/export/d/b;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lmobi/oneway/export/d/b;

    iget-object v0, p0, Lmobi/oneway/export/d/f$c;->c:Lmobi/oneway/export/d/f$b;

    invoke-virtual {p1}, Lmobi/oneway/export/d/b;->m()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lmobi/oneway/export/d/f$b;->a(Ljava/lang/Throwable;Lmobi/oneway/export/d/b;)V

    :goto_0
    return-void
.end method
