.class public Lcom/octopus/ad/internal/h;
.super Lcom/octopus/ad/internal/utilities/HTTPGet;
.source ""


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/utilities/HTTPGet;-><init>(Z)V

    iput-object p1, p0, Lcom/octopus/ad/internal/h;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public onPostExecute(Lcom/octopus/ad/internal/utilities/HTTPResponse;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/octopus/ad/internal/utilities/HTTPResponse;->getSucceeded()Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/octopus/ad/internal/utilities/HTTPResponse;

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/h;->onPostExecute(Lcom/octopus/ad/internal/utilities/HTTPResponse;)V

    return-void
.end method
