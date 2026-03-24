.class public Lz2/Oooo000$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/Oooo000;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lcom/android/volley/Request;

.field public final synthetic OoooOoo:Lz2/Oooo000;


# direct methods
.method public constructor <init>(Lz2/Oooo000;Lcom/android/volley/Request;)V
    .locals 0

    iput-object p1, p0, Lz2/Oooo000$OooO00o;->OoooOoo:Lz2/Oooo000;

    iput-object p2, p0, Lz2/Oooo000$OooO00o;->OoooOoO:Lcom/android/volley/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lz2/Oooo000$OooO00o;->OoooOoo:Lz2/Oooo000;

    invoke-static {v0}, Lz2/Oooo000;->OooO00o(Lz2/Oooo000;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lz2/Oooo000$OooO00o;->OoooOoO:Lcom/android/volley/Request;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
