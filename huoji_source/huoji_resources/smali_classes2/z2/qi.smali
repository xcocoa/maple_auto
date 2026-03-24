.class public final synthetic Lz2/qi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/y30;


# instance fields
.field public final synthetic OooO00o:Lz2/ui;

.field public final synthetic OooO0O0:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lz2/ui;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/qi;->OooO00o:Lz2/ui;

    iput-object p2, p0, Lz2/qi;->OooO0O0:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final OooO0O0(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lz2/qi;->OooO00o:Lz2/ui;

    iget-object v1, p0, Lz2/qi;->OooO0O0:Ljava/util/concurrent/CountDownLatch;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lz2/ui;->OooOO0(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    return-void
.end method
