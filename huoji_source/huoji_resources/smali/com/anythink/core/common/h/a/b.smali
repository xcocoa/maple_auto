.class public final Lcom/anythink/core/common/h/a/b;
.super Lcom/anythink/core/common/h/a/c;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:I

.field private final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/anythink/core/common/h/a/c;-><init>()V

    const-class v0, Lcom/anythink/core/common/h/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/h/a/b;->k:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/core/common/h/a/b;->c:I

    iput-boolean v0, p0, Lcom/anythink/core/common/h/a/b;->b:Z

    iput-object p1, p0, Lcom/anythink/core/common/h/a/b;->a:Ljava/lang/String;

    const/16 p1, 0x3e8

    if-ne p2, p1, :cond_0

    iput v0, p0, Lcom/anythink/core/common/h/a/b;->c:I

    return-void

    :cond_0
    const/16 p1, 0x3e9

    if-ne p2, p1, :cond_1

    const/4 p1, 0x2

    iput p1, p0, Lcom/anythink/core/common/h/a/b;->c:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/h/a/b;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final e()[B
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/h/a/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/h/a/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/core/common/h/a/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/common/h/a/b;->b:Z

    return v0
.end method
