.class public final Lcom/anythink/core/common/f/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/c;->a:Ljava/lang/String;

    iput p2, p0, Lcom/anythink/core/common/f/c;->b:I

    iput p3, p0, Lcom/anythink/core/common/f/c;->c:I

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/c;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/c;->c:I

    return v0
.end method
