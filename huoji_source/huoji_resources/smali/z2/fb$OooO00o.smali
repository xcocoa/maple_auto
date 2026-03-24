.class public Lz2/fb$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/fb;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Ljava/lang/String;

.field public final synthetic OoooOoo:Lz2/fb$OooO0OO;

.field public final synthetic Ooooo00:Lz2/fb;


# direct methods
.method public constructor <init>(Lz2/fb;Ljava/lang/String;Lz2/fb$OooO0OO;)V
    .locals 0

    iput-object p1, p0, Lz2/fb$OooO00o;->Ooooo00:Lz2/fb;

    iput-object p2, p0, Lz2/fb$OooO00o;->OoooOoO:Ljava/lang/String;

    iput-object p3, p0, Lz2/fb$OooO00o;->OoooOoo:Lz2/fb$OooO0OO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lz2/fb$OooO00o;->OoooOoO:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    const-wide/16 v2, 0x800

    sub-long/2addr v0, v2

    const/4 p1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    iget-object v0, p0, Lz2/fb$OooO00o;->Ooooo00:Lz2/fb;

    if-lez v4, :cond_0

    invoke-static {v0}, Lz2/fb;->OooO00o(Lz2/fb;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lz2/fb$OooO00o;->Ooooo00:Lz2/fb;

    invoke-static {v1}, Lz2/fb;->OooO00o(Lz2/fb;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->img_content_too_large:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-static {v0}, Lz2/fb;->OooO0O0(Lz2/fb;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lz2/fb$OooO00o;->OoooOoO:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lz2/fb$OooO00o;->Ooooo00:Lz2/fb;

    invoke-static {p1}, Lz2/fb;->OooO0O0(Lz2/fb;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lz2/fb$OooO00o;->OoooOoO:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lz2/fb$OooO00o;->OoooOoo:Lz2/fb$OooO0OO;

    iget-object p1, p1, Lz2/fb$OooO0OO;->OooO00o:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lz2/fb$OooO00o;->OoooOoo:Lz2/fb$OooO0OO;

    iget-object p1, p1, Lz2/fb$OooO0OO;->OooO0O0:Landroid/widget/ImageButton;

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lz2/fb$OooO00o;->Ooooo00:Lz2/fb;

    invoke-static {v0}, Lz2/fb;->OooO0O0(Lz2/fb;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lz2/fb$OooO00o;->Ooooo00:Lz2/fb;

    invoke-static {v0}, Lz2/fb;->OooO00o(Lz2/fb;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lz2/fb$OooO00o;->Ooooo00:Lz2/fb;

    invoke-static {v1}, Lz2/fb;->OooO00o(Lz2/fb;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->img_count_more:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lz2/fb$OooO00o;->Ooooo00:Lz2/fb;

    invoke-static {p1}, Lz2/fb;->OooO0O0(Lz2/fb;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lz2/fb$OooO00o;->OoooOoO:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lz2/fb$OooO00o;->OoooOoo:Lz2/fb$OooO0OO;

    iget-object p1, p1, Lz2/fb$OooO0OO;->OooO00o:Landroid/widget/ImageView;

    const-string v0, "#77000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p1, p0, Lz2/fb$OooO00o;->OoooOoo:Lz2/fb$OooO0OO;

    iget-object p1, p1, Lz2/fb$OooO0OO;->OooO0O0:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lz2/fb$OooO00o;->Ooooo00:Lz2/fb;

    invoke-static {p1}, Lz2/fb;->OooO0OO(Lz2/fb;)Lz2/fb$OooO0O0;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lz2/fb$OooO00o;->Ooooo00:Lz2/fb;

    invoke-static {p1}, Lz2/fb;->OooO0OO(Lz2/fb;)Lz2/fb$OooO0O0;

    move-result-object p1

    iget-object v0, p0, Lz2/fb$OooO00o;->Ooooo00:Lz2/fb;

    invoke-static {v0}, Lz2/fb;->OooO0O0(Lz2/fb;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lz2/fb$OooO0O0;->OooO00o(I)V

    :cond_3
    return-void
.end method
