.class public final Lcom/anythink/basead/ui/b/g;
.super Lcom/anythink/basead/ui/b/b;
.source ""


# instance fields
.field public i:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

.field private j:J

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/anythink/basead/ui/b/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/basead/ui/b/g;->k:Z

    iput-boolean v0, p0, Lcom/anythink/basead/ui/b/g;->l:Z

    return-void
.end method

.method private a(I)V
    .locals 13

    iget-object v0, p0, Lcom/anythink/basead/ui/b/b;->b:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/anythink/basead/ui/b/g;->k:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/b/g;->i:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x5

    if-eq p1, v0, :cond_6

    const/4 v0, 0x6

    if-eq p1, v0, :cond_5

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/b/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->ad()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/anythink/basead/ui/b/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->ag()J

    move-result-wide v0

    iget-object v2, p0, Lcom/anythink/basead/ui/b/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/n;->ah()J

    move-result-wide v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/anythink/basead/ui/b/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->ac()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_6
    iget-object v0, p0, Lcom/anythink/basead/ui/b/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->ab()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/anythink/basead/ui/b/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->ae()J

    move-result-wide v0

    iget-object v2, p0, Lcom/anythink/basead/ui/b/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/n;->af()J

    move-result-wide v2

    :goto_0
    iget-wide v4, p0, Lcom/anythink/basead/ui/b/g;->j:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_9

    add-long v8, v0, v2

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    cmp-long v12, v4, v8

    if-gez v12, :cond_9

    add-long v0, v2, v10

    cmp-long v8, v0, v4

    if-ltz v8, :cond_8

    sub-long v2, v4, v10

    goto :goto_1

    :cond_8
    sub-long/2addr v4, v2

    sub-long v0, v4, v10

    :cond_9
    move-wide v6, v0

    :goto_1
    move-wide v8, v2

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/anythink/basead/ui/b/g;->a(IJJ)V

    return-void
.end method

.method private a(IJJ)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    return-void

    :cond_0
    cmp-long v2, p4, v0

    if-gez v2, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v8, Lcom/anythink/basead/ui/b/g$1;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/anythink/basead/ui/b/g$1;-><init>(Lcom/anythink/basead/ui/b/g;IJJ)V

    invoke-virtual {v0, v8}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/b/g;->i:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/b/g;->i:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->release()V

    :cond_0
    return-void
.end method

.method public final a(ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/16 p2, 0x66

    const/4 v0, 0x1

    if-eq p1, p2, :cond_3

    const/16 p2, 0x67

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/anythink/basead/ui/b/b;->b:Lcom/anythink/core/common/f/l;

    iget-object p2, p0, Lcom/anythink/basead/ui/b/b;->c:Lcom/anythink/core/common/f/m;

    invoke-static {p1, p2}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/anythink/basead/ui/b/g;->l:Z

    if-nez p1, :cond_2

    const/4 p1, 0x6

    :goto_0
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/b/g;->a(I)V

    return-void

    :cond_0
    const/4 p1, 0x5

    goto :goto_0

    :pswitch_1
    iput-boolean v0, p0, Lcom/anythink/basead/ui/b/g;->k:Z

    :pswitch_2
    invoke-virtual {p0}, Lcom/anythink/basead/ui/b/g;->a()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/b/b;->b:Lcom/anythink/core/common/f/l;

    iget-object p2, p0, Lcom/anythink/basead/ui/b/b;->c:Lcom/anythink/core/common/f/m;

    invoke-static {p1, p2}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/b/g;->a(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iput-boolean v0, p0, Lcom/anythink/basead/ui/b/g;->l:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/basead/ui/b/g;->j:J

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/view/View;ILcom/anythink/basead/ui/b/b$a;)V
    .locals 0

    invoke-super/range {p0 .. p8}, Lcom/anythink/basead/ui/b/b;->a(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/view/View;ILcom/anythink/basead/ui/b/b$a;)V

    iget p1, p0, Lcom/anythink/basead/ui/b/b;->e:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    new-instance p1, Lcom/anythink/basead/ui/specialnote/ScreenSpecialNoteView;

    iget-object p2, p0, Lcom/anythink/basead/ui/b/b;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/anythink/basead/ui/specialnote/ScreenSpecialNoteView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/anythink/basead/ui/specialnote/SimpleSpecialNoteView;

    iget-object p2, p0, Lcom/anythink/basead/ui/b/b;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/anythink/basead/ui/specialnote/SimpleSpecialNoteView;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object p1, p0, Lcom/anythink/basead/ui/b/g;->i:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

    iget-object p1, p0, Lcom/anythink/basead/ui/b/b;->c:Lcom/anythink/core/common/f/m;

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/anythink/core/common/f/m;->j:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "4"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/ui/b/b;->c:Lcom/anythink/core/common/f/m;

    iget-object p1, p1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->t()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/anythink/basead/ui/b/g;->j:J

    :cond_1
    return-void
.end method
