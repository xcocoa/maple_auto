.class public Lz2/p9;
.super Lz2/OooOOO0;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/OooOOO0<",
        "Lcom/cyjh/http/bean/NotifyMsgBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/OooOOO0;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO0oO(Lz2/OooOOOO;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/cyjh/http/bean/NotifyMsgBean;

    invoke-virtual {p0, p1, p2, p3}, Lz2/p9;->OooOo0o(Lz2/OooOOOO;ILcom/cyjh/http/bean/NotifyMsgBean;)V

    return-void
.end method

.method public OooOo0o(Lz2/OooOOOO;ILcom/cyjh/http/bean/NotifyMsgBean;)V
    .locals 5

    if-eqz p3, :cond_1

    const p2, 0x7f090303

    invoke-virtual {p1, p2}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0902d6

    invoke-virtual {p1, v1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f090305

    iget-object v3, p3, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lz2/OooOOOO;->OooOoo0(ILjava/lang/CharSequence;)Lz2/OooOOOO;

    const v2, 0x7f090304

    iget-object v3, p3, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeTime:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lz2/OooOOOO;->OooOoo0(ILjava/lang/CharSequence;)Lz2/OooOOOO;

    iget-object v2, p3, Lcom/cyjh/http/bean/NotifyMsgBean;->DescriptionType:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    iget-object p3, p3, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeDescription:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lz2/OooOOOO;->OooOoo0(ILjava/lang/CharSequence;)Lz2/OooOOOO;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p3, Lcom/cyjh/http/bean/NotifyMsgBean;->DescriptionType:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lz2/OooOOO0;->OooO0O0:Landroid/content/Context;

    iget-object p2, p3, Lcom/cyjh/http/bean/NotifyMsgBean;->NoticeDescription:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lz2/m4;->OooO(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_1
    :goto_0
    return-void
.end method
