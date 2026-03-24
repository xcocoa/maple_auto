.class public Lz2/ja$OooO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/y30;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/ja;->OoooOoo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/y30<",
        "Landroid/widget/LinearLayout;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/ja;


# direct methods
.method public constructor <init>(Lz2/ja;)V
    .locals 0

    iput-object p1, p0, Lz2/ja$OooO;->OooO00o:Lz2/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/widget/LinearLayout;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lz2/ja$OooO;->OooO00o:Lz2/ja;

    invoke-static {v1}, Lz2/ja;->Oooo0o0(Lz2/ja;)Lz2/vi;

    move-result-object v1

    invoke-interface {v1}, Lz2/vi;->OooO0Oo()V

    iget-object v1, p0, Lz2/ja$OooO;->OooO00o:Lz2/ja;

    invoke-static {v1}, Lz2/ja;->Oooo0o0(Lz2/ja;)Lz2/vi;

    move-result-object v1

    invoke-interface {v1}, Lz2/vi;->OooO0o0()Ljava/lang/String;

    iget-object v1, p0, Lz2/ja$OooO;->OooO00o:Lz2/ja;

    invoke-static {v1}, Lz2/ja;->OooOoOO(Lz2/ja;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lz2/ja$OooO;->OooO00o:Lz2/ja;

    invoke-static {p1}, Lz2/ja;->OooOoOO(Lz2/ja;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v1, p0, Lz2/ja$OooO;->OooO00o:Lz2/ja;

    invoke-static {v1}, Lz2/ja;->OooOoo0(Lz2/ja;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lz2/ja$OooO;->OooO00o:Lz2/ja;

    invoke-static {v1}, Lz2/ja;->OooOoOO(Lz2/ja;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    iget-object p1, p0, Lz2/ja$OooO;->OooO00o:Lz2/ja;

    invoke-static {p1}, Lz2/ja;->OooOoo(Lz2/ja;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iget-object p1, p0, Lz2/ja$OooO;->OooO00o:Lz2/ja;

    iget-boolean v1, p1, Lz2/ja;->o0ooOO0:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p1, Lz2/ja;->o0ooOO0:Z

    invoke-static {p1}, Lz2/ja;->Oooo0OO(Lz2/ja;)V

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    iput-boolean v0, p1, Lcom/cyjh/elfin/base/AppContext;->o0OoOo0:Z

    :goto_2
    iget-object p1, p0, Lz2/ja$OooO;->OooO00o:Lz2/ja;

    iput-boolean v0, p1, Lz2/ja;->o00oO0O:Z

    invoke-static {p1}, Lz2/ja;->OooOoO(Lz2/ja;)Lz2/ja$OooOOOO;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lz2/ja$OooO;->OooO00o:Lz2/ja;

    invoke-static {p1}, Lz2/ja;->OooOoO(Lz2/ja;)Lz2/ja$OooOOOO;

    move-result-object p1

    invoke-interface {p1}, Lz2/ja$OooOOOO;->onFinish()V

    :cond_2
    return-void
.end method

.method public bridge synthetic OooO0O0(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lz2/ja$OooO;->OooO00o(Landroid/widget/LinearLayout;)V

    return-void
.end method
