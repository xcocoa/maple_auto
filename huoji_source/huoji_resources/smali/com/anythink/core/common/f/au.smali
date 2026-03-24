.class public abstract Lcom/anythink/core/common/f/au;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final N:Ljava/lang/String; = "ofm_tid_key"

.field public static final O:I = 0x1

.field public static final P:I = 0x2

.field public static final Q:I = 0x3

.field public static final R:I = 0x4

.field public static final S:I = 0x5

.field public static final T:I = 0x6

.field public static final U:I = 0x7

.field public static final V:I = 0x8

.field public static final W:I = 0xa

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field public static final Z:I = 0x2

.field public static final aa:I = 0x3

.field public static final ab:I = 0x4

.field public static final ac:I = 0x5

.field public static final ad:I = 0x8

.field public static final ae:Ljava/lang/String; = "0"

.field public static final af:Ljava/lang/String; = "1"

.field public static final ag:Ljava/lang/String; = "2"

.field public static final ah:Ljava/lang/String; = "3"

.field public static final ai:Ljava/lang/String; = "4"


# instance fields
.field private a:Ljava/lang/String;

.field public aj:Ljava/lang/String;

.field public ak:Ljava/lang/String;

.field public al:Ljava/lang/String;

.field public am:Ljava/lang/String;

.field public an:Ljava/lang/String;

.field public ao:I

.field public ap:I

.field public aq:Ljava/lang/String;

.field public ar:I

.field public as:I

.field public at:I

.field public au:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lorg/json/JSONObject;

.field private e:I

.field private f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/core/common/f/au;->au:I

    return-void
.end method

.method private a()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/au;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/au;->ao:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/au;->an:Ljava/lang/String;

    return-void
.end method

.method private b()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/au;->at:I

    return v0
.end method

.method private b(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/au;->ap:I

    return-void
.end method

.method private c()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/au;->ar:I

    return v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/au;->an:Ljava/lang/String;

    return-object v0
.end method

.method private e()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/au;->ao:I

    return v0
.end method

.method private f()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/au;->ap:I

    return v0
.end method


# virtual methods
.method public F(I)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pl_id"

    iget-object v1, p0, Lcom/anythink/core/common/f/au;->aj:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "req_id"

    iget-object v1, p0, Lcom/anythink/core/common/f/au;->ak:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/anythink/core/common/f/au;->al:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "format"

    iget-object v1, p0, Lcom/anythink/core/common/f/au;->al:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "ps_id"

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/core/common/f/au;->aj:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/b/n;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sessionid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget p1, p0, Lcom/anythink/core/common/f/au;->au:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    const-string v1, "traffic_group_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    iget p1, p0, Lcom/anythink/core/common/f/au;->at:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const-string p1, "ofm_tid"

    iget v1, p0, Lcom/anythink/core/common/f/au;->as:I

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "ofm_system"

    iget v1, p0, Lcom/anythink/core/common/f/au;->ar:I

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "is_ofm"

    iget v1, p0, Lcom/anythink/core/common/f/au;->at:I

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    const-string p1, "asid"

    iget-object v1, p0, Lcom/anythink/core/common/f/au;->am:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "wf_id"

    iget-object v1, p0, Lcom/anythink/core/common/f/au;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "cp_pl_id"

    iget-object v1, p0, Lcom/anythink/core/common/f/au;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/anythink/core/common/f/au;->d:Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    const-string v1, "p_c"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string p1, "wf2_mode"

    iget v1, p0, Lcom/anythink/core/common/f/au;->e:I

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public final J(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/au;->e:I

    return-void
.end method

.method public final K(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/au;->c:I

    return-void
.end method

.method public final L(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/au;->at:I

    return-void
.end method

.method public final M(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/au;->as:I

    return-void
.end method

.method public final N(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/au;->au:I

    return-void
.end method

.method public final Y()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/au;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final Z()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/au;->c:I

    return v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/au;->f:Ljava/lang/Object;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/au;->d:Lorg/json/JSONObject;

    return-void
.end method

.method public final aa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/au;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final ab()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/au;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final ac()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/core/common/f/au;->ar:I

    return-void
.end method

.method public final ad()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/au;->as:I

    return v0
.end method

.method public final ae()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/au;->aq:Ljava/lang/String;

    return-object v0
.end method

.method public final af()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/au;->au:I

    return v0
.end method

.method public final ag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/au;->am:Ljava/lang/String;

    return-object v0
.end method

.method public final ah()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/au;->aj:Ljava/lang/String;

    return-object v0
.end method

.method public final ai()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/au;->ak:Ljava/lang/String;

    return-object v0
.end method

.method public final aj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/au;->al:Ljava/lang/String;

    return-object v0
.end method

.method public final ak()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/common/f/au;->al:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :pswitch_1
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :pswitch_2
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :pswitch_3
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_4
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_1

    const-string v0, "none"

    return-object v0

    :pswitch_5
    const-string v0, "splash"

    return-object v0

    :pswitch_6
    const-string v0, "inter"

    return-object v0

    :pswitch_7
    const-string v0, "banner"

    return-object v0

    :pswitch_8
    const-string v0, "reward"

    return-object v0

    :pswitch_9
    const-string v0, "native"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/au;->a:Ljava/lang/String;

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/au;->b:Ljava/lang/String;

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/au;->aq:Ljava/lang/String;

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/au;->am:Ljava/lang/String;

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/au;->aj:Ljava/lang/String;

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/au;->ak:Ljava/lang/String;

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/au;->al:Ljava/lang/String;

    return-void
.end method
