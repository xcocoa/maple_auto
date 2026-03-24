.class public Lcom/octopus/ad/utils/a/a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/utils/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/utils/a/a;->a(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/utils/a/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/utils/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/utils/a/a$1;->a:Lcom/octopus/ad/utils/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGAIDGetError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/octopus/ad/utils/a/f;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/octopus/ad/utils/a/a$1;->a:Lcom/octopus/ad/utils/a/a;

    invoke-static {p1}, Lcom/octopus/ad/utils/a/a;->a(Lcom/octopus/ad/utils/a/a;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/utils/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/utils/a/a;->a(Lcom/octopus/ad/utils/a/a;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/octopus/ad/utils/a/e;

    const-string v0, "GAID is empty"

    invoke-direct {p1, v0}, Lcom/octopus/ad/utils/a/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/octopus/ad/utils/a/a$1;->a(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/utils/a/a$1;->a:Lcom/octopus/ad/utils/a/a;

    invoke-static {v0, p1}, Lcom/octopus/ad/utils/a/a;->a(Lcom/octopus/ad/utils/a/a;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
