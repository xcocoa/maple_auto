.class public Lcom/octopus/ad/internal/nativead/b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/network/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/nativead/b;->a(Lcom/octopus/ad/internal/network/ServerResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/nativead/c;

.field public final synthetic b:Lcom/octopus/ad/internal/network/ServerResponse;

.field public final synthetic c:Lcom/octopus/ad/internal/nativead/b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/nativead/b;Lcom/octopus/ad/internal/nativead/c;Lcom/octopus/ad/internal/network/ServerResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/b$1;->c:Lcom/octopus/ad/internal/nativead/b;

    iput-object p2, p0, Lcom/octopus/ad/internal/nativead/b$1;->a:Lcom/octopus/ad/internal/nativead/c;

    iput-object p3, p0, Lcom/octopus/ad/internal/nativead/b$1;->b:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/octopus/ad/internal/l;
    .locals 1

    sget-object v0, Lcom/octopus/ad/internal/l;->e:Lcom/octopus/ad/internal/l;

    return-object v0
.end method

.method public b()Lcom/octopus/ad/internal/view/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/octopus/ad/NativeAdResponse;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/b$1;->a:Lcom/octopus/ad/internal/nativead/c;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/b$1;->b:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse;->getPrice()I

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/b$1;->b:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse;->getTagId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/b$1;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/nativead/c;->destroy()V

    return-void
.end method
