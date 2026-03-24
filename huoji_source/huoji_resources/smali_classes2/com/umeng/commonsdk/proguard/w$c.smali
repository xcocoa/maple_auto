.class public Lcom/umeng/commonsdk/proguard/w$c;
.super Lcom/umeng/commonsdk/proguard/bk;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/proguard/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/commonsdk/proguard/bk<",
        "Lcom/umeng/commonsdk/proguard/w;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/bk;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/umeng/commonsdk/proguard/w$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/w$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/aa;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    check-cast p2, Lcom/umeng/commonsdk/proguard/w;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/w$c;->a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/w;)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/w;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    check-cast p1, Lcom/umeng/commonsdk/proguard/bf;

    iget-object v0, p2, Lcom/umeng/commonsdk/proguard/w;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/at;->a(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/proguard/w;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/at;->a(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/proguard/w;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/at;->a(Ljava/lang/String;)V

    iget v0, p2, Lcom/umeng/commonsdk/proguard/w;->d:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/at;->a(I)V

    iget v0, p2, Lcom/umeng/commonsdk/proguard/w;->e:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/at;->a(I)V

    iget v0, p2, Lcom/umeng/commonsdk/proguard/w;->f:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/at;->a(I)V

    iget-object v0, p2, Lcom/umeng/commonsdk/proguard/w;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/at;->a(Ljava/nio/ByteBuffer;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/proguard/w;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/at;->a(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/umeng/commonsdk/proguard/w;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/at;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/w;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/proguard/bf;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/w;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p2, p2, Lcom/umeng/commonsdk/proguard/w;->j:I

    invoke-virtual {p1, p2}, Lcom/umeng/commonsdk/proguard/at;->a(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/aa;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    check-cast p2, Lcom/umeng/commonsdk/proguard/w;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/w$c;->b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/w;)V

    return-void
.end method

.method public b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/w;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    check-cast p1, Lcom/umeng/commonsdk/proguard/bf;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/at;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/proguard/w;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/w;->a(Z)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/at;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/proguard/w;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/w;->b(Z)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/at;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/proguard/w;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/w;->c(Z)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/at;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/commonsdk/proguard/w;->d:I

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/w;->d(Z)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/at;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/commonsdk/proguard/w;->e:I

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/w;->e(Z)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/at;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/commonsdk/proguard/w;->f:I

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/w;->f(Z)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/at;->A()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/proguard/w;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/w;->g(Z)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/at;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/proguard/w;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/w;->h(Z)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/at;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/proguard/w;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/w;->i(Z)V

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/bf;->b(I)Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/at;->w()I

    move-result p1

    iput p1, p2, Lcom/umeng/commonsdk/proguard/w;->j:I

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/w;->j(Z)V

    :cond_0
    return-void
.end method
