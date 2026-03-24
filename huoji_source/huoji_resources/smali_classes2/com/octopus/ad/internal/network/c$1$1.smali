.class public Lcom/octopus/ad/internal/network/c$1$1;
.super Lcom/octopus/ad/internal/utilities/HTTPGet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/network/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/network/c$a;

.field public final synthetic b:Lcom/octopus/ad/internal/network/c$1;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/network/c$1;ZLcom/octopus/ad/internal/network/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/network/c$1$1;->b:Lcom/octopus/ad/internal/network/c$1;

    iput-object p3, p0, Lcom/octopus/ad/internal/network/c$1$1;->a:Lcom/octopus/ad/internal/network/c$a;

    invoke-direct {p0, p2}, Lcom/octopus/ad/internal/utilities/HTTPGet;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/network/c$1$1;->a:Lcom/octopus/ad/internal/network/c$a;

    iget-object v0, v0, Lcom/octopus/ad/internal/network/c$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public onPostExecute(Lcom/octopus/ad/internal/utilities/HTTPResponse;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/octopus/ad/internal/utilities/HTTPResponse;->getSucceeded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/octopus/ad/internal/utilities/HTTPResponse;->getErrorCode()Lcom/octopus/ad/internal/utilities/HttpErrorCode;

    move-result-object p1

    sget-object v0, Lcom/octopus/ad/internal/utilities/HttpErrorCode;->CONNECTION_FAILURE:Lcom/octopus/ad/internal/utilities/HttpErrorCode;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/network/c$1$1;->a:Lcom/octopus/ad/internal/network/c$a;

    iget v0, p1, Lcom/octopus/ad/internal/network/c$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/octopus/ad/internal/network/c$a;->b:I

    iget-object p1, p0, Lcom/octopus/ad/internal/network/c$1$1;->b:Lcom/octopus/ad/internal/network/c$1;

    iget-object p1, p1, Lcom/octopus/ad/internal/network/c$1;->b:Lcom/octopus/ad/internal/network/c;

    invoke-static {p1}, Lcom/octopus/ad/internal/network/c;->a(Lcom/octopus/ad/internal/network/c;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/octopus/ad/internal/network/c$1$1;->a:Lcom/octopus/ad/internal/network/c$a;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/octopus/ad/internal/utilities/HTTPResponse;

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/network/c$1$1;->onPostExecute(Lcom/octopus/ad/internal/utilities/HTTPResponse;)V

    return-void
.end method
