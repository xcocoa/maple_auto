.class public final Lz2/ru;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO00o:Ljava/lang/reflect/Type;

.field private final OooO0O0:Lio/reactivex/Scheduler;

.field private final OooO0OO:Z

.field private final OooO0Oo:Z

.field private final OooO0o:Z

.field private final OooO0o0:Z

.field private final OooO0oO:Z

.field private final OooO0oo:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Lio/reactivex/Scheduler;ZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/ru;->OooO00o:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lz2/ru;->OooO0O0:Lio/reactivex/Scheduler;

    iput-boolean p3, p0, Lz2/ru;->OooO0OO:Z

    iput-boolean p4, p0, Lz2/ru;->OooO0Oo:Z

    iput-boolean p5, p0, Lz2/ru;->OooO0o0:Z

    iput-boolean p6, p0, Lz2/ru;->OooO0o:Z

    iput-boolean p7, p0, Lz2/ru;->OooO0oO:Z

    iput-boolean p8, p0, Lz2/ru;->OooO0oo:Z

    return-void
.end method


# virtual methods
.method public adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lz2/ou;

    invoke-direct {v0, p1}, Lz2/ou;-><init>(Lretrofit2/Call;)V

    iget-boolean p1, p0, Lz2/ru;->OooO0OO:Z

    if-eqz p1, :cond_0

    new-instance p1, Lz2/qu;

    invoke-direct {p1, v0}, Lz2/qu;-><init>(Lio/reactivex/Observable;)V

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lz2/ru;->OooO0Oo:Z

    if-eqz p1, :cond_1

    new-instance p1, Lz2/nu;

    invoke-direct {p1, v0}, Lz2/nu;-><init>(Lio/reactivex/Observable;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lz2/ru;->OooO0O0:Lio/reactivex/Scheduler;

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    :cond_2
    iget-boolean p1, p0, Lz2/ru;->OooO0o0:Z

    if-eqz p1, :cond_3

    sget-object p1, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1

    :cond_3
    iget-boolean p1, p0, Lz2/ru;->OooO0o:Z

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lio/reactivex/Observable;->singleOrError()Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    :cond_4
    iget-boolean p1, p0, Lz2/ru;->OooO0oO:Z

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lio/reactivex/Observable;->singleElement()Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1

    :cond_5
    iget-boolean p1, p0, Lz2/ru;->OooO0oo:Z

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lio/reactivex/Observable;->ignoreElements()Lio/reactivex/Completable;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lz2/ru;->OooO00o:Ljava/lang/reflect/Type;

    return-object v0
.end method
