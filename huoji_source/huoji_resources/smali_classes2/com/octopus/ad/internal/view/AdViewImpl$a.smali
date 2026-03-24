.class public Lcom/octopus/ad/internal/view/AdViewImpl$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/view/AdViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/view/AdViewImpl$a$a;
    }
.end annotation


# instance fields
.field public a:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/octopus/ad/internal/view/AdViewImpl$a$a;->a:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    iput-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$a;->a:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$a;->b:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/octopus/ad/internal/view/AdViewImpl$a$a;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/octopus/ad/internal/view/AdViewImpl$a$a;->b:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$a;->a:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    sget-object v2, Lcom/octopus/ad/internal/view/AdViewImpl$a$a;->a:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    if-ne v1, v2, :cond_0

    iput-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$a;->a:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    :cond_0
    sget-object v1, Lcom/octopus/ad/internal/view/AdViewImpl$a$a;->c:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    if-ne p1, v1, :cond_1

    iget-object v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$a;->a:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    if-ne v2, v0, :cond_1

    iput-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$a;->a:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    :cond_1
    sget-object v0, Lcom/octopus/ad/internal/view/AdViewImpl$a$a;->d:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$a;->a:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    if-ne p1, v1, :cond_2

    iget-boolean p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$a;->b:Z

    if-eqz p1, :cond_2

    iput-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$a;->a:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$a;->b:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$a;->b:Z

    return v0
.end method

.method public b()V
    .locals 1

    sget-object v0, Lcom/octopus/ad/internal/view/AdViewImpl$a$a;->a:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    iput-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$a;->a:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    return-void
.end method

.method public c()Lcom/octopus/ad/internal/view/AdViewImpl$a$a;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$a;->a:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    return-object v0
.end method
