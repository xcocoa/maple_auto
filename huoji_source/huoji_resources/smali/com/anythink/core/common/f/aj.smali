.class public abstract Lcom/anythink/core/common/f/aj;
.super Lcom/anythink/core/common/f/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/common/f/l<",
        "Lcom/anythink/core/common/f/ak;",
        ">;"
    }
.end annotation


# static fields
.field public static final ag:I = 0x1

.field public static final ah:I = 0x2

.field public static final ai:I = 0x3

.field public static final aj:I = 0x4

.field public static final ak:I = 0x5

.field public static final al:I = 0x6


# instance fields
.field private a:I

.field private aA:I

.field public ac:J

.field public ad:Ljava/lang/String;

.field public ae:Ljava/lang/String;

.field public af:I

.field public am:Ljava/lang/String;

.field public an:Ljava/lang/String;

.field public ao:Lcom/anythink/core/common/f/al;

.field public ap:I

.field public aq:Ljava/lang/String;

.field public ar:J

.field public as:J

.field public at:J

.field public au:Ljava/lang/String;

.field private av:Ljava/lang/String;

.field private aw:Ljava/lang/String;

.field private ax:Ljava/lang/String;

.field private ay:Ljava/lang/String;

.field private az:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/anythink/core/common/f/l;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/common/f/aj;->au:Ljava/lang/String;

    return-void
.end method

.method private a()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/aj;->ar:J

    return-wide v0
.end method

.method private a(Lcom/anythink/core/common/f/ak;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f/ak;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->z()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "full_u,"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/anythink/core/common/f/l;->k()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/anythink/core/common/f/l;->o:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/anythink/core/common/f/l;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/anythink/core/common/f/l;->r:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/anythink/core/common/f/l;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iget-object v6, p0, Lcom/anythink/core/common/f/l;->t:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->t:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->aj()I

    move-result v6

    if-eq v6, v4, :cond_6

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->ak()I

    move-result v6

    if-lez v6, :cond_5

    goto :goto_4

    :cond_5
    const-string v2, "video_u,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->ak()I

    move-result v6

    if-eq v6, v4, :cond_9

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_8
    const/4 v2, 0x1

    :cond_9
    :goto_5
    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->z()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p0}, Lcom/anythink/core/common/f/l;->k()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->o:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->o:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v6, p0, Lcom/anythink/core/common/f/l;->r:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->r:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v6, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :cond_d
    :goto_6
    invoke-virtual {p0}, Lcom/anythink/core/common/f/l;->I()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->t:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->z()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "2"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_16

    iget v6, p0, Lcom/anythink/core/common/f/aj;->af:I

    if-eq v6, v4, :cond_13

    const/4 v7, 0x2

    if-eq v6, v7, :cond_12

    const/4 v7, 0x3

    if-eq v6, v7, :cond_f

    const/4 v7, 0x4

    if-eq v6, v7, :cond_12

    goto :goto_b

    :cond_f
    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->x()Ljava/lang/String;

    move-result-object v6

    const-string v7, "320x50"

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->o:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->o:Ljava/lang/String;

    goto :goto_9

    :cond_10
    const-string v2, "icon_u,"

    goto :goto_7

    :cond_11
    iget-object v6, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    goto :goto_8

    :cond_12
    iget-object v6, p0, Lcom/anythink/core/common/f/aj;->am:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_15

    const-string v2, "img_list,"

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :cond_13
    iget-object v6, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    :goto_8
    iget-object v6, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    :goto_9
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_14
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_a
    const/4 v2, 0x0

    :cond_15
    :goto_b
    iget-object v6, p0, Lcom/anythink/core/common/f/l;->r:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->r:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->z()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v6, "4"

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget p1, p0, Lcom/anythink/core/common/f/aj;->af:I

    if-eq v4, p1, :cond_17

    iget-object p1, p0, Lcom/anythink/core/common/f/l;->o:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/anythink/core/common/f/l;->o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object p1, p0, Lcom/anythink/core/common/f/l;->r:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/anythink/core/common/f/l;->r:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    iget-object p1, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :cond_1a
    :goto_c
    if-eqz v2, :cond_1b

    return-object v0

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v1, v5, p1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/f/aj;->au:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/aj;->ap:I

    return-void
.end method

.method private al()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/aj;->ae:Ljava/lang/String;

    return-object v0
.end method

.method private am()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/aj;->an:Ljava/lang/String;

    return-object v0
.end method

.method private an()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/aj;->a:I

    return v0
.end method

.method private ao()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/aj;->b:I

    return v0
.end method

.method private ap()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/aj;->c:I

    return v0
.end method

.method private aq()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/aj;->d:I

    return v0
.end method

.method private b()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/aj;->ap:I

    return v0
.end method

.method private c()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/aj;->ac:J

    return-wide v0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/aj;->ad:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final F(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/aj;->e:Ljava/lang/String;

    return-void
.end method

.method public final G(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/aj;->av:Ljava/lang/String;

    return-void
.end method

.method public final H(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/aj;->aw:Ljava/lang/String;

    return-void
.end method

.method public final I(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/aj;->ax:Ljava/lang/String;

    return-void
.end method

.method public final J(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/aj;->ay:Ljava/lang/String;

    return-void
.end method

.method public final K(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/aj;->ad:Ljava/lang/String;

    return-void
.end method

.method public final L(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/aj;->ae:Ljava/lang/String;

    return-void
.end method

.method public final M(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/aj;->am:Ljava/lang/String;

    return-void
.end method

.method public final N(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/aj;->an:Ljava/lang/String;

    return-void
.end method

.method public final O(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/aj;->aq:Ljava/lang/String;

    return-void
.end method

.method public final Y()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/core/common/f/aj;->at:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final Z()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/aj;->at:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 2

    iput-wide p1, p0, Lcom/anythink/core/common/f/aj;->ar:J

    iget-wide v0, p0, Lcom/anythink/core/common/f/aj;->as:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/anythink/core/common/f/aj;->at:J

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/al;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/aj;->ao:Lcom/anythink/core/common/f/al;

    return-void
.end method

.method public final a(ZZ)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    iget p1, p0, Lcom/anythink/core/common/f/aj;->a:I

    if-ne p1, v1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    iget p1, p0, Lcom/anythink/core/common/f/aj;->b:I

    if-ne p1, v1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    if-eqz p2, :cond_5

    iget p1, p0, Lcom/anythink/core/common/f/aj;->c:I

    if-ne p1, v1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    iget p1, p0, Lcom/anythink/core/common/f/aj;->d:I

    if-ne p1, v1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public final aa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/aj;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final ab()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/aj;->av:Ljava/lang/String;

    return-object v0
.end method

.method public final ac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/aj;->aw:Ljava/lang/String;

    return-object v0
.end method

.method public final ad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/aj;->ax:Ljava/lang/String;

    return-object v0
.end method

.method public final ae()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/aj;->ay:Ljava/lang/String;

    return-object v0
.end method

.method public final af()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/aj;->az:I

    return v0
.end method

.method public final ag()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/aj;->aA:I

    return v0
.end method

.method public final ah()Lcom/anythink/core/common/f/al;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/aj;->ao:Lcom/anythink/core/common/f/al;

    return-object v0
.end method

.method public final ai()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/aj;->af:I

    return v0
.end method

.method public final aj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/aj;->am:Ljava/lang/String;

    return-object v0
.end method

.method public final ak()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/aj;->aq:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic b(Lcom/anythink/core/common/f/n;)Ljava/util/List;
    .locals 8

    check-cast p1, Lcom/anythink/core/common/f/ak;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->z()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "full_u,"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/anythink/core/common/f/l;->k()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/anythink/core/common/f/l;->o:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/anythink/core/common/f/l;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/anythink/core/common/f/l;->r:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/anythink/core/common/f/l;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iget-object v6, p0, Lcom/anythink/core/common/f/l;->t:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->t:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->aj()I

    move-result v6

    if-eq v6, v4, :cond_6

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->ak()I

    move-result v6

    if-lez v6, :cond_5

    goto :goto_4

    :cond_5
    const-string v2, "video_u,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->ak()I

    move-result v6

    if-eq v6, v4, :cond_9

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_8
    const/4 v2, 0x1

    :cond_9
    :goto_5
    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->z()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p0}, Lcom/anythink/core/common/f/l;->k()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->o:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->o:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v6, p0, Lcom/anythink/core/common/f/l;->r:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->r:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v6, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :cond_d
    :goto_6
    invoke-virtual {p0}, Lcom/anythink/core/common/f/l;->I()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->t:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->z()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "2"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_16

    iget v6, p0, Lcom/anythink/core/common/f/aj;->af:I

    if-eq v6, v4, :cond_13

    const/4 v7, 0x2

    if-eq v6, v7, :cond_12

    const/4 v7, 0x3

    if-eq v6, v7, :cond_f

    const/4 v7, 0x4

    if-eq v6, v7, :cond_12

    goto :goto_b

    :cond_f
    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->x()Ljava/lang/String;

    move-result-object v6

    const-string v7, "320x50"

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->o:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->o:Ljava/lang/String;

    goto :goto_9

    :cond_10
    const-string v2, "icon_u,"

    goto :goto_7

    :cond_11
    iget-object v6, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    goto :goto_8

    :cond_12
    iget-object v6, p0, Lcom/anythink/core/common/f/aj;->am:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_15

    const-string v2, "img_list,"

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :cond_13
    iget-object v6, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    :goto_8
    iget-object v6, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    :goto_9
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_14
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_a
    const/4 v2, 0x0

    :cond_15
    :goto_b
    iget-object v6, p0, Lcom/anythink/core/common/f/l;->r:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16

    iget-object v6, p0, Lcom/anythink/core/common/f/l;->r:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->z()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v6, "4"

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget p1, p0, Lcom/anythink/core/common/f/aj;->af:I

    if-eq v4, p1, :cond_17

    iget-object p1, p0, Lcom/anythink/core/common/f/l;->o:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/anythink/core/common/f/l;->o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object p1, p0, Lcom/anythink/core/common/f/l;->r:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/anythink/core/common/f/l;->r:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    iget-object p1, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :cond_1a
    :goto_c
    if-eqz v2, :cond_1b

    return-object v0

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v1, v5, p1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/f/aj;->au:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/aj;->as:J

    return-void
.end method

.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/aj;->at:J

    return-void
.end method

.method public final d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/aj;->ac:J

    return-void
.end method

.method public final o(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/aj;->az:I

    return-void
.end method

.method public final p(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/aj;->aA:I

    return-void
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/aj;->au:Ljava/lang/String;

    return-object v0
.end method

.method public final q(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/aj;->af:I

    return-void
.end method

.method public final r(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/aj;->a:I

    return-void
.end method

.method public final s(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/aj;->b:I

    return-void
.end method

.method public final t(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/aj;->c:I

    return-void
.end method

.method public final u(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/aj;->d:I

    return-void
.end method
