.class public Lcom/octopus/ad/internal/network/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/network/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public final synthetic c:Lcom/octopus/ad/internal/network/c;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/network/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/network/c$a;->c:Lcom/octopus/ad/internal/network/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/octopus/ad/internal/network/c$a;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/octopus/ad/internal/network/c$a;->b:I

    return-void
.end method
