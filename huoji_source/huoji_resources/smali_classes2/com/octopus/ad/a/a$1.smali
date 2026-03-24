.class public Lcom/octopus/ad/a/a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/a/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/octopus/ad/a/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/a/a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/a/a$1;->b:Lcom/octopus/ad/a/a;

    iput-boolean p2, p0, Lcom/octopus/ad/a/a$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/a/a$1;->b:Lcom/octopus/ad/a/a;

    invoke-static {v0}, Lcom/octopus/ad/a/a;->a(Lcom/octopus/ad/a/a;)Lcom/octopus/ad/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/octopus/ad/a/a$1;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/a/a$1;->b:Lcom/octopus/ad/a/a;

    invoke-static {v0}, Lcom/octopus/ad/a/a;->a(Lcom/octopus/ad/a/a;)Lcom/octopus/ad/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/a/b;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/a/a$1;->b:Lcom/octopus/ad/a/a;

    invoke-static {v0}, Lcom/octopus/ad/a/a;->a(Lcom/octopus/ad/a/a;)Lcom/octopus/ad/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/a/b;->a()V

    :cond_1
    :goto_0
    return-void
.end method
