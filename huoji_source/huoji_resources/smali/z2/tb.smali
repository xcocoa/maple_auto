.class public Lz2/tb;
.super Lz2/ib;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final o0OoOo0:I = 0x110

.field private static final ooOO:Ljava/lang/String; = ","


# instance fields
.field private OoooOoo:Landroid/widget/GridView;

.field private Ooooo00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/nb;",
            ">;"
        }
    .end annotation
.end field

.field private Ooooo0o:Lz2/fb;

.field private OooooO0:Landroid/widget/Button;

.field private OooooOO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private OooooOo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Oooooo:I

.field private Oooooo0:Ljava/io/File;

.field private OoooooO:Landroid/app/ProgressDialog;

.field private Ooooooo:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lz2/ib;-><init>()V

    new-instance v0, Lz2/tb$OooO00o;

    invoke-direct {v0, p0}, Lz2/tb$OooO00o;-><init>(Lz2/tb;)V

    iput-object v0, p0, Lz2/tb;->Ooooooo:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic OooOo(Lz2/tb;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lz2/tb;->Oooo000(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic OooOo0(Lz2/tb;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lz2/tb;->OoooooO:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public static synthetic OooOo0O(Lz2/tb;Lz2/nb;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/tb;->OooOooo(Lz2/nb;)V

    return-void
.end method

.method public static synthetic OooOo0o(Lz2/tb;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lz2/tb;->OooooO0:Landroid/widget/Button;

    return-object p0
.end method

.method public static synthetic OooOoO(Lz2/tb;I)I
    .locals 0

    iput p1, p0, Lz2/tb;->Oooooo:I

    return p1
.end method

.method public static synthetic OooOoO0(Lz2/tb;)I
    .locals 0

    iget p0, p0, Lz2/tb;->Oooooo:I

    return p0
.end method

.method public static synthetic OooOoOO(Lz2/tb;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lz2/tb;->Oooooo0:Ljava/io/File;

    return-object p1
.end method

.method public static synthetic OooOoo(Lz2/tb;Lz2/nb;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/tb;->Oooo00O(Lz2/nb;)V

    return-void
.end method

.method public static synthetic OooOoo0(Lz2/tb;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lz2/tb;->Ooooo00:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic OooOooO(Lz2/tb;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lz2/tb;->Ooooooo:Landroid/os/Handler;

    return-object p0
.end method

.method private OooOooo(Lz2/nb;)V
    .locals 2

    invoke-virtual {p1}, Lz2/nb;->OooO0OO()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->no_everything_picture:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object p1, p0, Lz2/tb;->Oooooo0:Ljava/io/File;

    const/4 v0, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->no_everything_picture:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    iget-object p1, p0, Lz2/tb;->OooooOo:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->no_everything_picture:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    new-instance p1, Lz2/fb;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lz2/tb;->OooooOo:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lz2/fb;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lz2/tb;->Ooooo0o:Lz2/fb;

    iget-object v0, p0, Lz2/tb;->OoooOoo:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lz2/tb;->Ooooo0o:Lz2/fb;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lz2/tb;->Oooo0()V

    return-void
.end method

.method private Oooo0()V
    .locals 2

    iget-object v0, p0, Lz2/tb;->Ooooo0o:Lz2/fb;

    new-instance v1, Lz2/tb$OooO0O0;

    invoke-direct {v1, p0}, Lz2/tb$OooO0O0;-><init>(Lz2/tb;)V

    invoke-virtual {v0, v1}, Lz2/fb;->OooO0o0(Lz2/fb$OooO0O0;)V

    return-void
.end method

.method private Oooo000(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private Oooo00O(Lz2/nb;)V
    .locals 11

    iget-object v0, p0, Lz2/tb;->OooooOo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lz2/nb;->OooO0OO()Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Lz2/tb$OooO0o;

    invoke-direct {v5, p0}, Lz2/tb$OooO0o;-><init>(Lz2/tb;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    iget-object v8, p0, Lz2/tb;->OooooOo:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private Oooo00o()V
    .locals 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->no_sdk:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->loading_somethings:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lz2/tb;->OoooooO:Landroid/app/ProgressDialog;

    new-instance v0, Lz2/tb$OooO0OO;

    invoke-direct {v0, p0}, Lz2/tb$OooO0OO;-><init>(Lz2/tb;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private Oooo0O0(Landroid/view/View;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/tb;->OooooOO:Ljava/util/ArrayList;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->grid_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lz2/tb;->OoooOoo:Landroid/widget/GridView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/tb;->OooooOo:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/tb;->Ooooo00:Ljava/util/List;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_sure:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lz2/tb;->OooooO0:Landroid/widget/Button;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->btn_sure:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lz2/tb;->OooooOO:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lz2/tb;->OooooO0:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static Oooo0OO()Lz2/tb;
    .locals 1

    new-instance v0, Lz2/tb;

    invoke-direct {v0}, Lz2/tb;-><init>()V

    return-object v0
.end method


# virtual methods
.method public OooOo00()I
    .locals 1

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$layout;->fragment_select_image:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_sure:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lz2/tb;->Ooooo0o:Lz2/fb;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lz2/fb;->OooO0Oo()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-gtz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->please_choose_photo:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    iget-object p1, p0, Lz2/tb;->Ooooo0o:Lz2/fb;

    invoke-virtual {p1}, Lz2/fb;->OooO0Oo()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lz2/tb;->OooooOO:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lz2/tb;->OooooOO:Ljava/util/ArrayList;

    const-string v2, "image"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "bundle"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const-class v0, Lz2/tb;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/bh;->OooO0OO(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-class v0, Lz2/tb;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/bh;->OooO0Oo(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lz2/tb;->Oooo0O0(Landroid/view/View;)V

    invoke-direct {p0}, Lz2/tb;->Oooo00o()V

    return-void
.end method
