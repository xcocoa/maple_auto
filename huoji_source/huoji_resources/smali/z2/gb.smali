.class public Lz2/gb;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/gb$OooO0O0;,
        Lz2/gb$OooO0OO;
    }
.end annotation


# static fields
.field private static final Ooooo0o:I = 0x4

.field private static final OooooO0:I = 0x1


# instance fields
.field private OoooOoO:Landroid/view/LayoutInflater;

.field private OoooOoo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Ooooo00:Lz2/gb$OooO0O0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/gb;->OoooOoo:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lz2/gb;->OoooOoO:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lz2/gb;->OoooOoo:Ljava/util/List;

    return-void
.end method

.method public static synthetic OooO00o(Lz2/gb;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lz2/gb;->OoooOoo:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/gb;)Lz2/gb$OooO0O0;
    .locals 0

    iget-object p0, p0, Lz2/gb;->Ooooo00:Lz2/gb$OooO0O0;

    return-object p0
.end method


# virtual methods
.method public OooO0OO(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz2/gb;->OoooOoo:Ljava/util/List;

    return-void
.end method

.method public OooO0Oo(Lz2/gb$OooO0O0;)V
    .locals 0

    iput-object p1, p0, Lz2/gb;->Ooooo00:Lz2/gb$OooO0O0;

    return-void
.end method

.method public getCount()I
    .locals 3

    iget-object v0, p0, Lz2/gb;->OoooOoo:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lz2/gb;->OoooOoo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz2/gb;->OoooOoo:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lz2/gb;->OoooOoo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lz2/gb;->OoooOoO:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$layout;->grid_view_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lz2/gb$OooO0OO;

    invoke-direct {p3, p0}, Lz2/gb$OooO0OO;-><init>(Lz2/gb;)V

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_iv_grid_item:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lz2/gb$OooO0OO;->OooO00o:Landroid/widget/ImageView;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_img_delete_select:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lz2/gb$OooO0OO;->OooO0O0:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lz2/gb$OooO0OO;

    :goto_0
    iget-object v1, p3, Lz2/gb$OooO0OO;->OooO00o:Landroid/widget/ImageView;

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$mipmap;->img_add_img_select:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p3, Lz2/gb$OooO0OO;->OooO0O0:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lz2/gb;->OoooOoo:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lz2/gb;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_1

    invoke-static {}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->OooOOo0()Lcom/cyjh/feedback/lib/utils/ImageLoader;

    move-result-object v1

    iget-object v3, p0, Lz2/gb;->OoooOoo:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p3, Lz2/gb$OooO0OO;->OooO00o:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v4}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->OooOo00(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v1, p3, Lz2/gb$OooO0OO;->OooO0O0:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lz2/gb;->OoooOoo:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->OooOOo0()Lcom/cyjh/feedback/lib/utils/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lz2/gb;->OoooOoo:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p3, Lz2/gb$OooO0OO;->OooO00o:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->OooOo00(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v1, p3, Lz2/gb$OooO0OO;->OooO0O0:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object p3, p3, Lz2/gb$OooO0OO;->OooO0O0:Landroid/widget/ImageView;

    new-instance v0, Lz2/gb$OooO00o;

    invoke-direct {v0, p0, p1}, Lz2/gb$OooO00o;-><init>(Lz2/gb;I)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
