.class public Lcom/anythink/core/d/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/h/k;


# static fields
.field private static final a:Ljava/lang/String; = "g"


# instance fields
.field private final b:Lcom/anythink/core/d/h;

.field private final c:Lcom/anythink/core/common/f/am;

.field private final d:Lcom/anythink/core/d/h$b;

.field private final e:Lcom/anythink/core/d/f;

.field private f:Lcom/anythink/core/common/m/a;

.field private g:[Z

.field private h:Lcom/anythink/core/common/m/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/anythink/core/d/h;Lcom/anythink/core/common/f/am;Lcom/anythink/core/d/h$b;Lcom/anythink/core/d/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/d/g;->b:Lcom/anythink/core/d/h;

    iput-object p2, p0, Lcom/anythink/core/d/g;->c:Lcom/anythink/core/common/f/am;

    iput-object p3, p0, Lcom/anythink/core/d/g;->d:Lcom/anythink/core/d/h$b;

    iput-object p4, p0, Lcom/anythink/core/d/g;->e:Lcom/anythink/core/d/f;

    return-void
.end method

.method public constructor <init>(Lcom/anythink/core/d/h;Lcom/anythink/core/common/f/am;Lcom/anythink/core/d/h$b;Lcom/anythink/core/d/f;Lcom/anythink/core/common/m/a;Lcom/anythink/core/common/m/b;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/d/g;->b:Lcom/anythink/core/d/h;

    iput-object p2, p0, Lcom/anythink/core/d/g;->c:Lcom/anythink/core/common/f/am;

    iput-object p3, p0, Lcom/anythink/core/d/g;->d:Lcom/anythink/core/d/h$b;

    iput-object p5, p0, Lcom/anythink/core/d/g;->f:Lcom/anythink/core/common/m/a;

    iput-object p7, p0, Lcom/anythink/core/d/g;->g:[Z

    iput-object p6, p0, Lcom/anythink/core/d/g;->h:Lcom/anythink/core/common/m/b;

    iput-object p4, p0, Lcom/anythink/core/d/g;->e:Lcom/anythink/core/d/f;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/d/g;->f:Lcom/anythink/core/common/m/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/core/d/g;->h:Lcom/anythink/core/common/m/b;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onLoadCanceled(I)V
    .locals 3

    invoke-direct {p0}, Lcom/anythink/core/d/g;->a()V

    iget-object p1, p0, Lcom/anythink/core/d/g;->d:Lcom/anythink/core/d/h$b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/d/g;->e:Lcom/anythink/core/d/f;

    if-nez v0, :cond_1

    const-string v0, "9999"

    const-string v1, ""

    const-string v2, "by canceled"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/core/d/h$b;->a(Lcom/anythink/core/api/AdError;)V

    return-void

    :cond_1
    invoke-interface {p1, v0}, Lcom/anythink/core/d/h$b;->a(Lcom/anythink/core/d/f;)V

    return-void
.end method

.method public onLoadError(ILjava/lang/String;Lcom/anythink/core/api/AdError;)V
    .locals 3

    invoke-direct {p0}, Lcom/anythink/core/d/g;->a()V

    iget-object p1, p0, Lcom/anythink/core/d/g;->c:Lcom/anythink/core/common/f/am;

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/anythink/core/api/AdError;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "9991"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "10004"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "10003"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "10001"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/anythink/core/d/g;->c:Lcom/anythink/core/common/f/am;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/am;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/anythink/core/d/g;->c:Lcom/anythink/core/common/f/am;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/am;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/anythink/core/d/g;->c:Lcom/anythink/core/common/f/am;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/am;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "code: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "msg: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/anythink/core/api/AdError;->getPlatformMSG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", key -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "anythink_placement_strategy_update_check"

    invoke-static {p2, v2, p1, v0, v1}, Lcom/anythink/core/common/o/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/n;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Please check these params in your code (AppId: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/core/d/g;->c:Lcom/anythink/core/common/f/am;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/am;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", AppKey: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/anythink/core/d/g;->c:Lcom/anythink/core/common/f/am;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/am;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", PlacementId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/anythink/core/d/g;->c:Lcom/anythink/core/common/f/am;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/am;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "anythink"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/anythink/core/d/g;->e:Lcom/anythink/core/d/f;

    if-nez p1, :cond_2

    iget-object p2, p0, Lcom/anythink/core/d/g;->d:Lcom/anythink/core/d/h$b;

    if-eqz p2, :cond_2

    invoke-interface {p2, p3}, Lcom/anythink/core/d/h$b;->a(Lcom/anythink/core/api/AdError;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/anythink/core/d/g;->d:Lcom/anythink/core/d/h$b;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Lcom/anythink/core/d/h$b;->a(Lcom/anythink/core/d/f;)V

    :cond_3
    return-void
.end method

.method public onLoadFinish(ILjava/lang/Object;)V
    .locals 6

    invoke-direct {p0}, Lcom/anythink/core/d/g;->a()V

    iget-object v0, p0, Lcom/anythink/core/d/g;->b:Lcom/anythink/core/d/h;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/anythink/core/d/g;->c:Lcom/anythink/core/common/f/am;

    iget-object v3, p0, Lcom/anythink/core/d/g;->d:Lcom/anythink/core/d/h$b;

    iget-object v4, p0, Lcom/anythink/core/d/g;->g:[Z

    iget-object v5, p0, Lcom/anythink/core/d/g;->e:Lcom/anythink/core/d/f;

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/core/d/h;->a(Ljava/lang/Object;Lcom/anythink/core/common/f/am;Lcom/anythink/core/d/h$b;[ZLcom/anythink/core/d/f;)V

    :cond_0
    return-void
.end method

.method public onLoadStart(I)V
    .locals 0

    return-void
.end method
