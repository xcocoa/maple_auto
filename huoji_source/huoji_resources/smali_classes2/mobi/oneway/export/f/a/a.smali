.class public abstract Lmobi/oneway/export/f/a/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lmobi/oneway/export/f/e;

.field public e:Lmobi/oneway/export/b/b/d;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/f/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lmobi/oneway/export/f/a;->a()I

    move-result v0

    iput v0, p0, Lmobi/oneway/export/f/a/a;->a:I

    invoke-virtual {p1}, Lmobi/oneway/export/f/a;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/f/a/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lmobi/oneway/export/f/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/f/a/a;->c:Ljava/lang/String;

    new-instance v0, Lmobi/oneway/export/f/e;

    invoke-virtual {p0}, Lmobi/oneway/export/f/a/a;->c()Lmobi/oneway/export/enums/AdType;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmobi/oneway/export/f/e;-><init>(Lmobi/oneway/export/enums/AdType;Lmobi/oneway/export/f/a;)V

    iput-object v0, p0, Lmobi/oneway/export/f/a/a;->d:Lmobi/oneway/export/f/e;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/f/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lmobi/oneway/export/b/b/d;)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/f/a/a;->e:Lmobi/oneway/export/b/b/d;

    return-void
.end method

.method public a(Lmobi/oneway/export/enums/EventType;)V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/f/a/a;->d:Lmobi/oneway/export/f/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/f/a/a;->d:Lmobi/oneway/export/f/e;

    sget-object v1, Lmobi/oneway/export/enums/EventType;->adFail:Lmobi/oneway/export/enums/EventType;

    invoke-virtual {v0, v1, p1, p2}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/f/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/f/a/a;->e:Lmobi/oneway/export/b/b/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmobi/oneway/export/f/a/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lmobi/oneway/export/b/b/d;->a(Ljava/lang/String;Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract c()Lmobi/oneway/export/enums/AdType;
.end method
