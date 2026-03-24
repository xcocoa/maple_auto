.class public Lz2/fb;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/fb$OooO0O0;,
        Lz2/fb$OooO0OO;
    }
.end annotation


# instance fields
.field private OoooOoO:Landroid/content/Context;

.field private OoooOoo:Landroid/view/LayoutInflater;

.field private Ooooo00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Ooooo0o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private OooooO0:Lz2/fb$OooO0O0;


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

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lz2/fb;->Ooooo0o:Ljava/util/Set;

    iput-object p1, p0, Lz2/fb;->OoooOoO:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lz2/fb;->OoooOoo:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lz2/fb;->Ooooo00:Ljava/util/List;

    return-void
.end method

.method public static synthetic OooO00o(Lz2/fb;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lz2/fb;->OoooOoO:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/fb;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lz2/fb;->Ooooo0o:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic OooO0OO(Lz2/fb;)Lz2/fb$OooO0O0;
    .locals 0

    iget-object p0, p0, Lz2/fb;->OooooO0:Lz2/fb$OooO0O0;

    return-object p0
.end method


# virtual methods
.method public OooO0Oo()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/fb;->Ooooo0o:Ljava/util/Set;

    return-object v0
.end method

.method public OooO0o0(Lz2/fb$OooO0O0;)V
    .locals 0

    iput-object p1, p0, Lz2/fb;->OooooO0:Lz2/fb$OooO0O0;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lz2/fb;->Ooooo00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz2/fb;->Ooooo00:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance p2, Lz2/fb$OooO0OO;

    invoke-direct {p2, p0}, Lz2/fb$OooO0OO;-><init>(Lz2/fb;)V

    iget-object v1, p0, Lz2/fb;->OoooOoo:Landroid/view/LayoutInflater;

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$layout;->image_adapter_item:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_img_select_grid_item:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p2, Lz2/fb$OooO0OO;->OooO0O0:Landroid/widget/ImageButton;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_img_grid_item:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lz2/fb$OooO0OO;->OooO00o:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lz2/fb$OooO0OO;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    :goto_0
    iget-object v1, p2, Lz2/fb$OooO0OO;->OooO00o:Landroid/widget/ImageView;

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$mipmap;->pictures_no:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lz2/fb;->Ooooo00:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;->FILO:Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->OooOOo(Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;I)Lcom/cyjh/feedback/lib/utils/ImageLoader;

    move-result-object v1

    iget-object v2, p2, Lz2/fb$OooO0OO;->OooO00o:Landroid/widget/ImageView;

    invoke-virtual {v1, p1, v2}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->OooOo00(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v1, p2, Lz2/fb$OooO0OO;->OooO00o:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p2, Lz2/fb$OooO0OO;->OooO0O0:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lz2/fb;->Ooooo0o:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lz2/fb$OooO0OO;->OooO00o:Landroid/widget/ImageView;

    const-string v2, "#77000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p2, Lz2/fb$OooO0OO;->OooO0O0:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    iget-object v0, p2, Lz2/fb$OooO0OO;->OooO00o:Landroid/widget/ImageView;

    new-instance v1, Lz2/fb$OooO00o;

    invoke-direct {v1, p0, p1, p2}, Lz2/fb$OooO00o;-><init>(Lz2/fb;Ljava/lang/String;Lz2/fb$OooO0OO;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method
