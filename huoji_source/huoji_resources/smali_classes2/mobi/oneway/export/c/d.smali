.class public Lmobi/oneway/export/c/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private b:Lmobi/oneway/export/c/a;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/c/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/c/d;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p1, p0, Lmobi/oneway/export/c/d;->b:Lmobi/oneway/export/c/a;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Thread;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lmobi/oneway/export/c/d;->b:Lmobi/oneway/export/c/a;

    invoke-virtual {v0, p2}, Lmobi/oneway/export/c/a;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lmobi/oneway/export/c/d;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
