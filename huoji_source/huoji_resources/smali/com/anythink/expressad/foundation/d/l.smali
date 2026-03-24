.class public final Lcom/anythink/expressad/foundation/d/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "key"

.field public static final b:Ljava/lang/String; = "time"

.field public static final c:Ljava/lang/String; = "ad_source_id"

.field public static final d:Ljava/lang/String; = "num"

.field public static final e:Ljava/lang/String; = "unit_id"

.field public static final f:Ljava/lang/String; = "fb"

.field public static final g:Ljava/lang/String; = "timeout"

.field public static final h:Ljava/lang/String; = "network_type"

.field public static final i:Ljava/lang/String; = "network_str"

.field public static final j:Ljava/lang/String; = "2000006"

.field public static final k:Ljava/lang/String; = "hb"


# instance fields
.field private l:I

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;ILjava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/anythink/expressad/foundation/d/l;->l:I

    iput-object p2, p0, Lcom/anythink/expressad/foundation/d/l;->m:Ljava/lang/String;

    iput p3, p0, Lcom/anythink/expressad/foundation/d/l;->n:I

    iput-object p4, p0, Lcom/anythink/expressad/foundation/d/l;->o:Ljava/lang/String;

    iput p5, p0, Lcom/anythink/expressad/foundation/d/l;->p:I

    iput p6, p0, Lcom/anythink/expressad/foundation/d/l;->q:I

    iput p7, p0, Lcom/anythink/expressad/foundation/d/l;->r:I

    return-void
.end method

.method private a()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/foundation/d/l;->t:I

    return v0
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/l;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/l;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ad_source_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/anythink/expressad/foundation/d/l;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&time="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/anythink/expressad/foundation/d/l;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&num="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/anythink/expressad/foundation/d/l;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&unit_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/anythink/expressad/foundation/d/l;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&key=2000006"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&fb="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/anythink/expressad/foundation/d/l;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, v1, Lcom/anythink/expressad/foundation/d/l;->t:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "&hb=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&timeout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/anythink/expressad/foundation/d/l;->q:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/foundation/d/l;->t:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/d/l;->m:Ljava/lang/String;

    return-void
.end method

.method private b()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/foundation/d/l;->l:I

    return v0
.end method

.method private b(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/foundation/d/l;->l:I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/d/l;->u:Ljava/lang/String;

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/d/l;->m:Ljava/lang/String;

    return-object v0
.end method

.method private c(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/foundation/d/l;->n:I

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/d/l;->o:Ljava/lang/String;

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/d/l;->u:Ljava/lang/String;

    return-object v0
.end method

.method private d(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/foundation/d/l;->p:I

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/d/l;->s:Ljava/lang/String;

    return-void
.end method

.method private e()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/foundation/d/l;->n:I

    return v0
.end method

.method private e(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/foundation/d/l;->q:I

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/d/l;->o:Ljava/lang/String;

    return-object v0
.end method

.method private f(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/foundation/d/l;->r:I

    return-void
.end method

.method private g()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/foundation/d/l;->p:I

    return v0
.end method

.method private h()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/foundation/d/l;->q:I

    return v0
.end method

.method private i()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/foundation/d/l;->r:I

    return v0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/d/l;->s:Ljava/lang/String;

    return-object v0
.end method
