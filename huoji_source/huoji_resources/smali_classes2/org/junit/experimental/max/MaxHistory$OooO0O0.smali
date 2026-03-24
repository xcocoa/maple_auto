.class public final Lorg/junit/experimental/max/MaxHistory$OooO0O0;
.super Lz2/g90;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/experimental/max/MaxHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO0O0"
.end annotation


# instance fields
.field private OooO00o:J

.field private OooO0O0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/junit/runner/Description;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic OooO0OO:Lorg/junit/experimental/max/MaxHistory;


# direct methods
.method private constructor <init>(Lorg/junit/experimental/max/MaxHistory;)V
    .locals 2

    iput-object p1, p0, Lorg/junit/experimental/max/MaxHistory$OooO0O0;->OooO0OO:Lorg/junit/experimental/max/MaxHistory;

    invoke-direct {p0}, Lz2/g90;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/junit/experimental/max/MaxHistory$OooO0O0;->OooO00o:J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/junit/experimental/max/MaxHistory$OooO0O0;->OooO0O0:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/junit/experimental/max/MaxHistory;Lorg/junit/experimental/max/MaxHistory$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/junit/experimental/max/MaxHistory$OooO0O0;-><init>(Lorg/junit/experimental/max/MaxHistory;)V

    return-void
.end method


# virtual methods
.method public OooO0O0(Lorg/junit/runner/notification/Failure;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory$OooO0O0;->OooO0OO:Lorg/junit/experimental/max/MaxHistory;

    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getDescription()Lorg/junit/runner/Description;

    move-result-object p1

    iget-wide v1, p0, Lorg/junit/experimental/max/MaxHistory$OooO0O0;->OooO00o:J

    invoke-virtual {v0, p1, v1, v2}, Lorg/junit/experimental/max/MaxHistory;->putTestFailureTimestamp(Lorg/junit/runner/Description;J)V

    return-void
.end method

.method public OooO0OO(Lorg/junit/runner/Description;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lorg/junit/experimental/max/MaxHistory$OooO0O0;->OooO0O0:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lorg/junit/experimental/max/MaxHistory$OooO0O0;->OooO0OO:Lorg/junit/experimental/max/MaxHistory;

    sub-long/2addr v0, v2

    invoke-virtual {v4, p1, v0, v1}, Lorg/junit/experimental/max/MaxHistory;->putTestDuration(Lorg/junit/runner/Description;J)V

    return-void
.end method

.method public OooO0o0(Lorg/junit/runner/Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lorg/junit/experimental/max/MaxHistory$OooO0O0;->OooO0OO:Lorg/junit/experimental/max/MaxHistory;

    invoke-static {p1}, Lorg/junit/experimental/max/MaxHistory;->access$000(Lorg/junit/experimental/max/MaxHistory;)V

    return-void
.end method

.method public OooO0oO(Lorg/junit/runner/Description;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory$OooO0O0;->OooO0O0:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
