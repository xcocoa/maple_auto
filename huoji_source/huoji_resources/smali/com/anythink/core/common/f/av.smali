.class public Lcom/anythink/core/common/f/av;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/anythink/core/common/f/av;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:J

.field private D:Ljava/lang/String;

.field private E:I

.field private F:I

.field private G:D

.field private H:I

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:I

.field private L:J

.field private M:J

.field private N:J

.field private O:J

.field private P:I

.field private Q:Ljava/lang/String;

.field private R:J

.field private S:J

.field private T:J

.field private U:J

.field private V:I

.field private W:I

.field private X:I

.field private Y:I

.field private Z:Ljava/lang/String;

.field public a:I

.field private aA:Lorg/json/JSONArray;

.field private aB:I

.field private aC:I

.field private aa:J

.field private ab:J

.field private ac:D

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:I

.field private aj:Lcom/anythink/core/common/f/q;

.field private ak:I

.field private al:I

.field private am:Ljava/lang/String;

.field private an:I

.field private ao:I

.field private ap:J

.field private aq:I

.field private ar:I

.field private as:Lcom/anythink/core/api/ATAdConst$CURRENCY;

.field private at:D

.field private au:D

.field private av:D

.field private aw:D

.field private ax:[I

.field private ay:I

.field private az:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:D

.field public i:I

.field public j:D

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:D

.field public t:Ljava/lang/String;

.field public u:J

.field private v:I

.field private w:Ljava/lang/String;

.field private x:I

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/common/f/av;->b:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/anythink/core/common/f/av;->ar:I

    sget-object v1, Lcom/anythink/core/api/ATAdConst$CURRENCY;->USD:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    iput-object v1, p0, Lcom/anythink/core/common/f/av;->as:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    const/4 v1, 0x2

    iput v1, p0, Lcom/anythink/core/common/f/av;->q:I

    iput-boolean v0, p0, Lcom/anythink/core/common/f/av;->r:Z

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/anythink/core/common/f/av;->s:D

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/core/common/f/av;->ay:I

    iput v0, p0, Lcom/anythink/core/common/f/av;->az:I

    iput v0, p0, Lcom/anythink/core/common/f/av;->aC:I

    iput p1, p0, Lcom/anythink/core/common/f/av;->ao:I

    return-void
.end method

.method private J(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->X:I

    return-void
.end method

.method private K(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->ak:I

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/av;)I
    .locals 5

    invoke-static {p0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-static {p0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private a(Lcom/anythink/core/common/f/q;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/av;->aj:Lcom/anythink/core/common/f/q;

    return-void
.end method

.method private aF()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/av;->R:J

    return-wide v0
.end method

.method private aG()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->X:I

    return v0
.end method

.method private aH()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->ad:I

    return v0
.end method

.method private aI()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->aq:I

    return v0
.end method

.method private aJ()Z
    .locals 2

    iget v0, p0, Lcom/anythink/core/common/f/av;->az:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/av;->am:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/av;->J:Ljava/lang/String;

    return-object v0
.end method

.method public final A(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->m:I

    return-void
.end method

.method public final B()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/av;->S:J

    return-wide v0
.end method

.method public final B(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->n:I

    return-void
.end method

.method public final C()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/av;->T:J

    return-wide v0
.end method

.method public final C(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->o:I

    return-void
.end method

.method public final D()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->V:I

    return v0
.end method

.method public final D(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->p:I

    return-void
.end method

.method public final E()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->W:I

    return v0
.end method

.method public final E(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->q:I

    return-void
.end method

.method public final F()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->Y:I

    return v0
.end method

.method public final F(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->ay:I

    return-void
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/av;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public final G(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->az:I

    return-void
.end method

.method public final H()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/av;->aa:J

    return-wide v0
.end method

.method public final H(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->aB:I

    return-void
.end method

.method public final I()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/av;->ab:J

    return-wide v0
.end method

.method public final I(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->aC:I

    return-void
.end method

.method public final J()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/av;->ac:D

    return-wide v0
.end method

.method public final K()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->ae:I

    return v0
.end method

.method public final L()Z
    .locals 2

    iget v0, p0, Lcom/anythink/core/common/f/av;->af:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final M()Lcom/anythink/core/common/f/q;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/av;->aj:Lcom/anythink/core/common/f/q;

    return-object v0
.end method

.method public final N()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->ak:I

    return v0
.end method

.method public final O()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->al:I

    return v0
.end method

.method public final P()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/core/common/f/av;->al:I

    return-void
.end method

.method public final Q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/av;->am:Ljava/lang/String;

    return-object v0
.end method

.method public final R()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/av;->ap:J

    return-wide v0
.end method

.method public final S()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->b:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final T()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->c:I

    return v0
.end method

.method public final U()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->d:I

    return v0
.end method

.method public final V()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/av;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final W()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->a:I

    return v0
.end method

.method public final X()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->ar:I

    return v0
.end method

.method public final Y()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/av;->aj:Lcom/anythink/core/common/f/q;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/anythink/core/common/f/q;->n:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/anythink/core/common/f/av;->f:I

    return v0
.end method

.method public final Z()Z
    .locals 2

    iget v0, p0, Lcom/anythink/core/common/f/av;->v:I

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final a()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->ao:I

    return v0
.end method

.method public final a(D)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/av;->G:D

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->v:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/av;->M:J

    return-void
.end method

.method public final a(Lcom/anythink/core/api/ATAdConst$CURRENCY;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/av;->as:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    return-void
.end method

.method public final declared-synchronized a(Lcom/anythink/core/common/f/av;III)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/anythink/core/common/f/av;->Q:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/f/av;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/anythink/core/common/f/av;->G:D

    iput-wide v0, p0, Lcom/anythink/core/common/f/av;->G:D

    iget-wide v0, p1, Lcom/anythink/core/common/f/av;->j:D

    iput-wide v0, p0, Lcom/anythink/core/common/f/av;->j:D

    iput p3, p0, Lcom/anythink/core/common/f/av;->K:I

    iget-object p3, p1, Lcom/anythink/core/common/f/av;->I:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/f/av;->I:Ljava/lang/String;

    iget-object p3, p1, Lcom/anythink/core/common/f/av;->am:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/f/av;->am:Ljava/lang/String;

    const/4 p3, 0x0

    iput p3, p0, Lcom/anythink/core/common/f/av;->ah:I

    if-nez p2, :cond_0

    iget p2, p1, Lcom/anythink/core/common/f/av;->ak:I

    :cond_0
    iput p2, p0, Lcom/anythink/core/common/f/av;->ak:I

    iget-object p2, p1, Lcom/anythink/core/common/f/av;->J:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/core/common/f/av;->J:Ljava/lang/String;

    iget-object p1, p1, Lcom/anythink/core/common/f/av;->aj:Lcom/anythink/core/common/f/q;

    iput-object p1, p0, Lcom/anythink/core/common/f/av;->aj:Lcom/anythink/core/common/f/q;

    iput p4, p0, Lcom/anythink/core/common/f/av;->al:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/anythink/core/common/f/q;III)V
    .locals 2

    iput p3, p0, Lcom/anythink/core/common/f/av;->K:I

    invoke-virtual {p1}, Lcom/anythink/core/common/f/o;->getPrice()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/f/av;->G:D

    invoke-virtual {p1}, Lcom/anythink/core/common/f/o;->getSortPrice()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/f/av;->j:D

    iget-object p3, p1, Lcom/anythink/core/common/f/o;->token:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/f/av;->I:Ljava/lang/String;

    iget-object p3, p1, Lcom/anythink/core/common/f/q;->m:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/f/av;->am:Ljava/lang/String;

    const/4 p3, 0x0

    iput p3, p0, Lcom/anythink/core/common/f/av;->ah:I

    iput p2, p0, Lcom/anythink/core/common/f/av;->ak:I

    iput-object p1, p0, Lcom/anythink/core/common/f/av;->aj:Lcom/anythink/core/common/f/q;

    iput p4, p0, Lcom/anythink/core/common/f/av;->al:I

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lcom/anythink/core/common/f/av;->J:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/av;->w:Ljava/lang/String;

    return-void
.end method

.method public final a(Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/av;->aA:Lorg/json/JSONArray;

    return-void
.end method

.method public final a([I)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/av;->ax:[I

    return-void
.end method

.method public final aA()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->az:I

    return v0
.end method

.method public final aB()Z
    .locals 2

    iget v0, p0, Lcom/anythink/core/common/f/av;->v:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final aC()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/av;->aA:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final aD()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->aB:I

    return v0
.end method

.method public final aE()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->aC:I

    return v0
.end method

.method public final aa()Z
    .locals 2

    iget v0, p0, Lcom/anythink/core/common/f/av;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/anythink/core/common/f/av;->ai:I

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ab()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->an:I

    return v0
.end method

.method public final ac()Lcom/anythink/core/api/ATAdConst$CURRENCY;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/av;->as:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    return-object v0
.end method

.method public final ad()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->g:I

    return v0
.end method

.method public final ae()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/av;->h:D

    return-wide v0
.end method

.method public final af()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->i:I

    return v0
.end method

.method public final ag()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/av;->j:D

    return-wide v0
.end method

.method public final ah()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/av;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final ai()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/common/f/av;->l:Z

    return v0
.end method

.method public final aj()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/f/av;->l:Z

    return-void
.end method

.method public final ak()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->m:I

    return v0
.end method

.method public final al()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->n:I

    return v0
.end method

.method public final am()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->o:I

    return v0
.end method

.method public final an()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->p:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final ao()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->q:I

    return v0
.end method

.method public final ap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/common/f/av;->r:Z

    return v0
.end method

.method public final aq()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/f/av;->r:Z

    return-void
.end method

.method public final ar()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/av;->s:D

    return-wide v0
.end method

.method public final as()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/av;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final at()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/av;->u:J

    return-wide v0
.end method

.method public final au()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/av;->at:D

    return-wide v0
.end method

.method public final av()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/av;->au:D

    return-wide v0
.end method

.method public final aw()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/av;->av:D

    return-wide v0
.end method

.method public final ax()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/av;->aw:D

    return-wide v0
.end method

.method public final ay()[I
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/av;->ax:[I

    return-object v0
.end method

.method public final az()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->ay:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->ah:I

    return v0
.end method

.method public final b(D)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/av;->ac:D

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->x:I

    return-void
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/av;->U:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/av;->z:Ljava/lang/String;

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/core/common/f/av;->ah:I

    return-void
.end method

.method public final c(D)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/av;->h:D

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->y:I

    return-void
.end method

.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/av;->N:J

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/av;->A:Ljava/lang/String;

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lcom/anythink/core/common/f/av;

    invoke-static {p0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-static {p0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->v:I

    return v0
.end method

.method public final d(D)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/av;->j:D

    return-void
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->H:I

    return-void
.end method

.method public final d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/av;->O:J

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/av;->B:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/av;->w:Ljava/lang/String;

    return-object v0
.end method

.method public final e(D)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/av;->s:D

    return-void
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->ai:I

    return-void
.end method

.method public final e(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/av;->C:J

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/av;->Q:Ljava/lang/String;

    return-void
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->x:I

    return v0
.end method

.method public final f(D)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/av;->at:D

    return-void
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->ag:I

    return-void
.end method

.method public final f(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/av;->R:J

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/av;->D:Ljava/lang/String;

    return-void
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->y:I

    return v0
.end method

.method public final g(D)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/av;->au:D

    return-void
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->K:I

    return-void
.end method

.method public final g(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/av;->S:J

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/av;->I:Ljava/lang/String;

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/av;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final h(D)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/av;->av:D

    return-void
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->P:I

    return-void
.end method

.method public final h(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/av;->T:J

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/av;->J:Ljava/lang/String;

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/av;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final i(D)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/av;->aw:D

    return-void
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->E:I

    return-void
.end method

.method public final i(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/av;->aa:J

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/av;->Z:Ljava/lang/String;

    return-void
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->H:I

    return v0
.end method

.method public final j(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->F:I

    return-void
.end method

.method public final j(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/av;->ab:J

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/av;->e:Ljava/lang/String;

    return-void
.end method

.method public final k(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->V:I

    return-void
.end method

.method public final k(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/av;->ap:J

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/av;->k:Ljava/lang/String;

    return-void
.end method

.method public final k()Z
    .locals 2

    iget v0, p0, Lcom/anythink/core/common/f/av;->H:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/av;->M:J

    return-wide v0
.end method

.method public final l(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->W:I

    return-void
.end method

.method public final l(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/av;->u:J

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/av;->t:Ljava/lang/String;

    return-void
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->ai:I

    return v0
.end method

.method public final m(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->Y:I

    return-void
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->ag:I

    return v0
.end method

.method public final n(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->ad:I

    return-void
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/av;->U:J

    return-wide v0
.end method

.method public final o(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->ae:I

    return-void
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->K:I

    return v0
.end method

.method public final p(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->af:I

    return-void
.end method

.method public final q()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/av;->N:J

    return-wide v0
.end method

.method public final q(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->aq:I

    return-void
.end method

.method public final r()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/av;->O:J

    return-wide v0
.end method

.method public final r(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->b:I

    return-void
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->P:I

    return v0
.end method

.method public final s(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->c:I

    return-void
.end method

.method public final t()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/av;->C:J

    return-wide v0
.end method

.method public final t(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UnitGroupInfo{networkFirmId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/anythink/core/common/f/av;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", networkName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/f/av;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", adSourceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/core/common/f/av;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", bidType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/core/common/f/av;->H:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/anythink/core/common/f/av;->ao:I

    invoke-static {v1}, Lcom/anythink/core/common/o/h;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/f/av;->aj:Lcom/anythink/core/common/f/q;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", bidId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/core/common/f/av;->aj:Lcom/anythink/core/common/f/q;

    iget-object v2, v2, Lcom/anythink/core/common/f/o;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sortPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", maxOfferCacheSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/anythink/core/common/f/av;->an()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", samePriceSortIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/core/common/f/av;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/f/av;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lossSendSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/core/common/f/av;->az:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", winSendSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/core/common/f/av;->ay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/av;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public final u(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->a:I

    return-void
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/av;->D:Ljava/lang/String;

    return-object v0
.end method

.method public final v(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->ar:I

    return-void
.end method

.method public final w()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->E:I

    return v0
.end method

.method public final w(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->f:I

    return-void
.end method

.method public final x()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/av;->F:I

    return v0
.end method

.method public final x(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->an:I

    return-void
.end method

.method public final y()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/av;->G:D

    return-wide v0
.end method

.method public final y(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->g:I

    return-void
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/av;->I:Ljava/lang/String;

    return-object v0
.end method

.method public final z(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/av;->i:I

    return-void
.end method
