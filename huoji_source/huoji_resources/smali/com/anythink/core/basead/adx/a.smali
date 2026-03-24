.class public final Lcom/anythink/core/basead/adx/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/basead/adx/api/IATAdxHandler;


# static fields
.field public static a:Ljava/lang/String; = "anythink_adx_handler"


# instance fields
.field private b:Lcom/anythink/core/common/f/q;

.field private c:Lcom/anythink/core/common/f/av;

.field private d:Lcom/anythink/core/common/f/h;

.field private e:Z

.field private f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/anythink/core/common/f/q;Lcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/basead/adx/a;->b:Lcom/anythink/core/common/f/q;

    iput-object p2, p0, Lcom/anythink/core/basead/adx/a;->c:Lcom/anythink/core/common/f/av;

    iput-object p3, p0, Lcom/anythink/core/basead/adx/a;->d:Lcom/anythink/core/common/f/h;

    return-void
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/core/basead/adx/a;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anythink/core/basead/adx/a;->a:Ljava/lang/String;

    const-string v1, "destroy: has call destroy(), do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/anythink/core/basead/adx/a;->f:Z

    sget-object v0, Lcom/anythink/core/basead/adx/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "destroy, placementId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/core/basead/adx/a;->d:Lcom/anythink/core/common/f/h;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", adSourceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/core/basead/adx/a;->c:Lcom/anythink/core/common/f/av;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/basead/adx/a;->d:Lcom/anythink/core/common/f/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/basead/adx/a;->c:Lcom/anythink/core/common/f/av;

    iget-object v3, p0, Lcom/anythink/core/basead/adx/a;->d:Lcom/anythink/core/common/f/h;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/au;->ai()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;Lcom/anythink/core/common/f/av;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized notifyLose(Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;DLjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;",
            "D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/core/basead/adx/a;->e:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/anythink/core/basead/adx/a;->a:Ljava/lang/String;

    const-string p2, "notifyWin: win or loss has been sent, do anything"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/anythink/core/basead/adx/a;->e:Z

    iget-object v1, p0, Lcom/anythink/core/basead/adx/a;->b:Lcom/anythink/core/common/f/q;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/anythink/core/basead/adx/a;->c:Lcom/anythink/core/common/f/av;

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    cmpg-double v3, p2, v1

    if-gtz v3, :cond_2

    sget-object p1, Lcom/anythink/core/basead/adx/a;->a:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "notifyLose, winnerPrice: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, " <= 0, do nothing"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    sget-object v1, Lcom/anythink/core/basead/adx/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notifyLose, lossCode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", winnerPrice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ", extraMap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v1, Lcom/anythink/core/basead/adx/a$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v0, :cond_3

    const-string p1, "103"

    goto :goto_0

    :cond_3
    const-string p1, "102"

    :goto_0
    iget-object v0, p0, Lcom/anythink/core/basead/adx/a;->b:Lcom/anythink/core/common/f/q;

    iget-object v1, p0, Lcom/anythink/core/basead/adx/a;->c:Lcom/anythink/core/common/f/av;

    iget-object v2, p0, Lcom/anythink/core/basead/adx/a;->d:Lcom/anythink/core/common/f/h;

    new-instance v3, Lcom/anythink/core/common/f/y;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v1, v2}, Lcom/anythink/core/common/f/y;-><init>(ILcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/h;)V

    const-string v1, ""

    if-eqz p4, :cond_5

    const-string v2, "bidding_name"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    const-string v2, "waterfall_info"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    instance-of v2, p4, Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/anythink/core/common/d;->a()Lcom/anythink/core/common/d;

    move-result-object v2

    iget-object v4, p0, Lcom/anythink/core/basead/adx/a;->d:Lcom/anythink/core/common/f/h;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {v2, v4, p4}, Lcom/anythink/core/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v3, p2, p3, v1, p1}, Lcom/anythink/core/common/f/y;->a(DLjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, v3, p1}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/q;Lcom/anythink/core/common/f/y;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :cond_6
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized notifyWin(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/core/basead/adx/a;->e:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/anythink/core/basead/adx/a;->a:Ljava/lang/String;

    const-string v0, "notifyWin: win or loss has been sent, do anything"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/anythink/core/basead/adx/a;->e:Z

    iget-object v0, p0, Lcom/anythink/core/basead/adx/a;->b:Lcom/anythink/core/common/f/q;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/anythink/core/basead/adx/a;->c:Lcom/anythink/core/common/f/av;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/anythink/core/basead/adx/a;->a:Ljava/lang/String;

    const-string v1, "notifyWin, extraMap: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/anythink/core/basead/adx/a;->b:Lcom/anythink/core/common/f/q;

    iget-object v1, p0, Lcom/anythink/core/basead/adx/a;->c:Lcom/anythink/core/common/f/av;

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz p1, :cond_4

    const-string v4, "second_price"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_2

    move-object v2, v4

    check-cast v2, Ljava/lang/Double;

    :cond_2
    const-string v4, "bidding_name"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    const-string v4, "waterfall_info"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/anythink/core/common/d;->a()Lcom/anythink/core/common/d;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/core/basead/adx/a;->d:Lcom/anythink/core/common/f/h;

    invoke-virtual {v5}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v5

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v4, v5, p1}, Lcom/anythink/core/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-nez v2, :cond_5

    invoke-static {v1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "TopOn"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "notifyWin: fix second price to: "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", fix bidderName to TopOn"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object p1, v0, Lcom/anythink/core/common/f/q;->u:Lcom/anythink/core/common/f/bc;

    if-eqz p1, :cond_6

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5, v3}, Lcom/anythink/core/common/f/bc;->a(DLjava/lang/String;)V

    :cond_6
    invoke-static {v0, v1}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/q;Lcom/anythink/core/common/f/av;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :cond_7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
