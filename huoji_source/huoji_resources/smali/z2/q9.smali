.class public Lz2/q9;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/q9$OooO00o;,
        Lz2/q9$OooO0O0;
    }
.end annotation


# instance fields
.field private OoooOoO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/elfin/entity/ScriptLog;",
            ">;"
        }
    .end annotation
.end field

.field private OoooOoo:Landroid/view/LayoutInflater;

.field private Ooooo00:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/elfin/entity/ScriptLog;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lz2/q9;->OoooOoO:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lz2/q9;->OoooOoo:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic OooO00o(Lz2/q9;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lz2/q9;->OoooOoO:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public OooO0O0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/q9;->Ooooo00:Z

    return v0
.end method

.method public OooO0OO(Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/q9;->Ooooo00:Z

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lz2/q9;->OoooOoO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz2/q9;->OoooOoO:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    if-nez p2, :cond_0

    iget-object p2, p0, Lz2/q9;->OoooOoo:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0108

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lz2/q9$OooO0O0;

    invoke-direct {p3}, Lz2/q9$OooO0O0;-><init>()V

    const v0, 0x7f090461

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lz2/q9$OooO0O0;->OooO00o:Landroid/widget/TextView;

    const v0, 0x7f090460

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lz2/q9$OooO0O0;->OooO0O0:Landroid/widget/TextView;

    const v0, 0x7f090247

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p3, Lz2/q9$OooO0O0;->OooO0OO:Landroid/widget/CheckBox;

    const v0, 0x7f090321

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lz2/q9$OooO0O0;->OooO0Oo:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lz2/q9$OooO0O0;

    :goto_0
    iget-object v0, p0, Lz2/q9;->OoooOoO:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/entity/ScriptLog;

    iget-boolean v1, p0, Lz2/q9;->Ooooo00:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p3, Lz2/q9$OooO0O0;->OooO0OO:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, p3, Lz2/q9$OooO0O0;->OooO0Oo:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p3, Lz2/q9$OooO0O0;->OooO0OO:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, p3, Lz2/q9$OooO0O0;->OooO0Oo:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v1, p3, Lz2/q9$OooO0O0;->OooO00o:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/ScriptLog;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p3, Lz2/q9$OooO0O0;->OooO0O0:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/ScriptLog;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p3, Lz2/q9$OooO0O0;->OooO0OO:Landroid/widget/CheckBox;

    new-instance v2, Lz2/q9$OooO00o;

    invoke-direct {v2, p0, p1}, Lz2/q9$OooO00o;-><init>(Lz2/q9;I)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p3, Lz2/q9$OooO0O0;->OooO0OO:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/ScriptLog;->isSelect()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object p2
.end method
