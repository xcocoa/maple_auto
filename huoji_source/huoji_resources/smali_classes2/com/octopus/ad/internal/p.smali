.class public Lcom/octopus/ad/internal/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/RewardItem;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/octopus/ad/internal/p;->a:Ljava/lang/String;

    iput p2, p0, Lcom/octopus/ad/internal/p;->b:I

    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/p;->b:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/p;->a:Ljava/lang/String;

    return-object v0
.end method
