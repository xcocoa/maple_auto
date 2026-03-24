.class public Lz2/ja$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/nh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/ja;->Oooo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/nh<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/ja;


# direct methods
.method public constructor <init>(Lz2/ja;)V
    .locals 0

    iput-object p1, p0, Lz2/ja$OooO00o;->OooO00o:Lz2/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/ja$OooO00o;->OooO00o:Lz2/ja;

    invoke-static {v0}, Lz2/ja;->Oooo00o(Lz2/ja;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lz2/ja$OooO00o;->OooO00o:Lz2/ja;

    const v2, 0x7f100041

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lz2/ja$OooO00o;->OooO00o:Lz2/ja;

    invoke-static {p1}, Lz2/ja;->Oooo00o(Lz2/ja;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic OooO0O0(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lz2/ja$OooO00o;->OooO0o(Ljava/lang/String;)V

    return-void
.end method

.method public OooO0OO()V
    .locals 1

    iget-object v0, p0, Lz2/ja$OooO00o;->OooO00o:Lz2/ja;

    invoke-static {v0}, Lz2/ja;->Oooo0(Lz2/ja;)V

    return-void
.end method

.method public OooO0Oo(I)V
    .locals 0

    return-void
.end method

.method public OooO0o(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url onAdUrlLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XJL_AD_TAG1"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/ja$OooO00o;->OooO00o:Lz2/ja;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lz2/ja$OooO00o;->OooO00o:Lz2/ja;

    invoke-static {v1}, Lz2/ja;->Oooo000(Lz2/ja;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lz2/m4;->OooO00o(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object p1, p0, Lz2/ja$OooO00o;->OooO00o:Lz2/ja;

    invoke-static {p1}, Lz2/ja;->Oooo00O(Lz2/ja;)V

    iget-object p1, p0, Lz2/ja$OooO00o;->OooO00o:Lz2/ja;

    invoke-static {p1}, Lz2/ja;->OooOoO0(Lz2/ja;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lz2/ja$OooO00o;->OooO00o:Lz2/ja;

    invoke-static {p1}, Lz2/ja;->Oooo000(Lz2/ja;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lz2/ja$OooO00o;->OooO00o:Lz2/ja;

    invoke-static {p1}, Lz2/ja;->Oooo00o(Lz2/ja;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lz2/ja$OooO00o;->OooO00o:Lz2/ja;

    invoke-static {p1}, Lz2/ja;->OooOooo(Lz2/ja;)Landroid/widget/RelativeLayout;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/ja$OooO00o;->OooO00o:Lz2/ja;

    invoke-static {p1}, Lz2/ja;->OooOooo(Lz2/ja;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public OooO0o0(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAdClose()V
    .locals 0

    return-void
.end method
