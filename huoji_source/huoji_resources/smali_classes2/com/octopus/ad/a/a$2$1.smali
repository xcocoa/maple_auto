.class public Lcom/octopus/ad/a/a$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/a/a$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/a/a$2;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/a/a$2;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/a/a$2$1;->a:Lcom/octopus/ad/a/a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/a/a$2$1;->a:Lcom/octopus/ad/a/a$2;

    iget-object v0, v0, Lcom/octopus/ad/a/a$2;->a:Lcom/octopus/ad/a/a;

    invoke-static {v0}, Lcom/octopus/ad/a/a;->a(Lcom/octopus/ad/a/a;)Lcom/octopus/ad/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/a/a$2$1;->a:Lcom/octopus/ad/a/a$2;

    iget-object v0, v0, Lcom/octopus/ad/a/a$2;->a:Lcom/octopus/ad/a/a;

    invoke-static {v0}, Lcom/octopus/ad/a/a;->a(Lcom/octopus/ad/a/a;)Lcom/octopus/ad/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/a/a$2$1;->a:Lcom/octopus/ad/a/a$2;

    iget-object v1, v1, Lcom/octopus/ad/a/a$2;->a:Lcom/octopus/ad/a/a;

    invoke-static {v1}, Lcom/octopus/ad/a/a;->c(Lcom/octopus/ad/a/a;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/octopus/ad/a/b;->a(J)V

    :cond_0
    return-void
.end method
