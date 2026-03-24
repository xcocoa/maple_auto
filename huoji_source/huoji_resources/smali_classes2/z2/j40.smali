.class public Lz2/j40;
.super Lz2/s40;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/j40$OooO0o;,
        Lz2/j40$OooO;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Lz2/s40<",
        "TD;TF;TP;>;"
    }
.end annotation


# static fields
.field private static final OooOO0O:Lz2/j40$OooO;

.field private static final OooOO0o:I = 0x1

.field private static final OooOOO:I = 0x3

.field private static final OooOOO0:I = 0x2

.field private static final OooOOOO:I = 0x4


# instance fields
.field public final OooO:Lorg/slf4j/Logger;

.field private final OooOO0:Lorg/jdeferred/android/AndroidExecutionScope;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/j40$OooO;

    invoke-direct {v0}, Lz2/j40$OooO;-><init>()V

    sput-object v0, Lz2/j40;->OooOO0O:Lz2/j40$OooO;

    return-void
.end method

.method public constructor <init>(Lorg/jdeferred/Promise;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;)V"
        }
    .end annotation

    sget-object v0, Lorg/jdeferred/android/AndroidExecutionScope;->UI:Lorg/jdeferred/android/AndroidExecutionScope;

    invoke-direct {p0, p1, v0}, Lz2/j40;-><init>(Lorg/jdeferred/Promise;Lorg/jdeferred/android/AndroidExecutionScope;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdeferred/Promise;Lorg/jdeferred/android/AndroidExecutionScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;",
            "Lorg/jdeferred/android/AndroidExecutionScope;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/s40;-><init>()V

    const-class v0, Lz2/j40;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lz2/j40;->OooO:Lorg/slf4j/Logger;

    iput-object p2, p0, Lz2/j40;->OooOO0:Lorg/jdeferred/android/AndroidExecutionScope;

    new-instance p2, Lz2/j40$OooO0OO;

    invoke-direct {p2, p0}, Lz2/j40$OooO0OO;-><init>(Lz2/j40;)V

    invoke-interface {p1, p2}, Lorg/jdeferred/Promise;->OooOOO(Lz2/y30;)Lorg/jdeferred/Promise;

    move-result-object p1

    new-instance p2, Lz2/j40$OooO0O0;

    invoke-direct {p2, p0}, Lz2/j40$OooO0O0;-><init>(Lz2/j40;)V

    invoke-interface {p1, p2}, Lorg/jdeferred/Promise;->OooO00o(Lz2/e40;)Lorg/jdeferred/Promise;

    move-result-object p1

    new-instance p2, Lz2/j40$OooO00o;

    invoke-direct {p2, p0}, Lz2/j40$OooO00o;-><init>(Lz2/j40;)V

    invoke-interface {p1, p2}, Lorg/jdeferred/Promise;->OooOO0(Lz2/b40;)Lorg/jdeferred/Promise;

    return-void
.end method


# virtual methods
.method public OooOo(Lz2/t30;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/t30<",
            "TD;TF;>;",
            "Lorg/jdeferred/Promise$State;",
            "TD;TF;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/j40;->Oooo000(Ljava/lang/Object;)Lorg/jdeferred/android/AndroidExecutionScope;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/android/AndroidExecutionScope;->UI:Lorg/jdeferred/android/AndroidExecutionScope;

    if-ne v0, v1, :cond_0

    const/4 v3, 0x4

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v8}, Lz2/j40;->Oooo00O(ILjava/lang/Object;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lz2/q40;->OooOo(Lz2/t30;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public OooOoOO(Lz2/y30;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/y30<",
            "TD;>;TD;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/j40;->Oooo000(Ljava/lang/Object;)Lorg/jdeferred/android/AndroidExecutionScope;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/android/AndroidExecutionScope;->UI:Lorg/jdeferred/android/AndroidExecutionScope;

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    sget-object v5, Lorg/jdeferred/Promise$State;->RESOLVED:Lorg/jdeferred/Promise$State;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lz2/j40;->Oooo00O(ILjava/lang/Object;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lz2/q40;->OooOoOO(Lz2/y30;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public OooOoo(Lz2/b40;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/b40<",
            "TF;>;TF;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/j40;->Oooo000(Ljava/lang/Object;)Lorg/jdeferred/android/AndroidExecutionScope;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/android/AndroidExecutionScope;->UI:Lorg/jdeferred/android/AndroidExecutionScope;

    if-ne v0, v1, :cond_0

    const/4 v3, 0x3

    sget-object v5, Lorg/jdeferred/Promise$State;->REJECTED:Lorg/jdeferred/Promise$State;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v8}, Lz2/j40;->Oooo00O(ILjava/lang/Object;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lz2/q40;->OooOoo(Lz2/b40;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public OooOooo(Lz2/e40;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/e40<",
            "TP;>;TP;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/j40;->Oooo000(Ljava/lang/Object;)Lorg/jdeferred/android/AndroidExecutionScope;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/android/AndroidExecutionScope;->UI:Lorg/jdeferred/android/AndroidExecutionScope;

    if-ne v0, v1, :cond_0

    const/4 v3, 0x2

    sget-object v5, Lorg/jdeferred/Promise$State;->PENDING:Lorg/jdeferred/Promise$State;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lz2/j40;->Oooo00O(ILjava/lang/Object;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lz2/q40;->OooOooo(Lz2/e40;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public Oooo000(Ljava/lang/Object;)Lorg/jdeferred/android/AndroidExecutionScope;
    .locals 1

    instance-of v0, p1, Lz2/l40;

    if-eqz v0, :cond_0

    check-cast p1, Lz2/l40;

    invoke-interface {p1}, Lz2/l40;->OooO00o()Lorg/jdeferred/android/AndroidExecutionScope;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lz2/j40;->OooOO0:Lorg/jdeferred/android/AndroidExecutionScope;

    :cond_1
    return-object p1
.end method

.method public Oooo00O(ILjava/lang/Object;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Callback:",
            "Ljava/lang/Object;",
            ">(ITCallback;",
            "Lorg/jdeferred/Promise$State;",
            "TD;TF;TP;)V"
        }
    .end annotation

    sget-object v0, Lz2/j40;->OooOO0O:Lz2/j40$OooO;

    new-instance v8, Lz2/j40$OooO0o;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lz2/j40$OooO0o;-><init>(Lz2/u30;Ljava/lang/Object;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
