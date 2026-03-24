.class public Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooO0oo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Landroid/view/View;

.field public final OoooOoo:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0O0;->OoooOoo:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0O0;->OoooOoO:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v2, 0x0

    const-string v0, "\u06e2\u06e2\u06db\u06d7\u06e0\u06d8\u06d8\u06e0\u06e7\u06dc\u06e2\u06e5\u06da\u06e7\u06d9\u06eb\u06e2\u06e4\u06e5\u06df\u06da\u06e1\u06d8\u06e6\u06db\u06e2\u06d7\u06db\u06dc\u06d8\u06ec\u06d7\u06d9\u06e0\u06dc\u06d8\u06e7\u06dc\u06e8\u06d8\u06e2\u06dc\u06db\u06e7\u06e1\u06e6\u06d8\u06e5\u06e4\u06e6\u06d8\u06ec"

    move v1, v2

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x7

    xor-int/2addr v4, v5

    xor-int/lit16 v4, v4, 0x3e5

    const/16 v5, 0x1b7

    const v6, 0x1d0e0e17

    xor-int/2addr v4, v5

    xor-int/2addr v4, v6

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e8\u06e5\u06d8\u06eb\u06eb\u06e6\u06d8\u06e0\u06e6\u06df\u06d8\u06d9\u06d8\u06d8\u06d7\u06e5\u06d8\u06d8\u06e6\u06dc\u06d6\u06e5\u06e1\u06d6\u06d7\u06df\u06dc\u06d8\u06da\u06d7\u06e5\u06d8\u06e1\u06db\u06eb\u06e2\u06da\u06db\u06e7\u06e4\u06e8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0O0;->OoooOoO:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    const-string v0, "\u06e1\u06e6\u06da\u06e4\u06d8\u06e6\u06e5\u06e7\u06e1\u06e2\u06e8\u06e7\u06e1\u06ec\u06d8\u06eb\u06e0\u06d8\u06dc\u06e7\u06d8\u06d6\u06db\u06d6\u06d8\u06db\u06da\u06e7\u06e0\u06e4\u06e5\u06d8\u06e5\u06d8\u06ec\u06e2\u06eb"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0O0;->OoooOoo:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0O0;->OoooOoO:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x2

    const-string v0, "\u06ec\u06da\u06e4\u06e4\u06e8\u06e8\u06e1\u06d9\u06d9\u06d7\u06e4\u06da\u06db\u06db\u06d7\u06db\u06e7\u06e2\u06e2\u06d9\u06eb\u06d8\u06e7\u06d8\u06df\u06e0\u06e7\u06dc\u06e6\u06e2\u06e7\u06d8\u06e0\u06d6\u06d9\u06e2\u06e6\u06dc\u06e8\u06d8\u06e6\u06e8\u06da\u06e6\u06df\u06e6\u06d8\u06d9\u06e8\u06df"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0O0;->OoooOoo:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    sub-int v4, v3, v1

    invoke-virtual {v0, v4, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    const-string v0, "\u06d6\u06dc\u06d6\u06e8\u06db\u06ec\u06e5\u06e1\u06e0\u06e2\u06d7\u06e1\u06d8\u06df\u06ec\u06e5\u06d8\u06e7\u06d7\u06da\u06e7\u06d7\u06e1\u06d8\u06dc\u06e2\u06e1\u06d8\u06e2\u06d9\u06e8\u06d8"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0O0;->OoooOoo:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooO0o0(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    const-string v0, "\u06d7\u06df\u06d6\u06e2\u06e2\u06df\u06e1\u06df\u06df\u06e2\u06e8\u06e4\u06df\u06e5\u06eb\u06e1\u06e5\u06d7\u06df\u06da\u06d6\u06d8\u06e7\u06ec\u06e7\u06d6\u06e1\u06e8\u06d8\u06e4\u06e5\u06e5\u06d9\u06e6\u06eb\u06e6\u06e2\u06e1\u06d8\u06eb\u06e7\u06e6\u06d8\u06eb\u06da\u06dc"

    goto :goto_0

    :sswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ac69db6 -> :sswitch_1
        -0x7904c794 -> :sswitch_4
        -0x6efa9c40 -> :sswitch_2
        -0x528d854 -> :sswitch_5
        0x9e8feee -> :sswitch_0
        0x79098641 -> :sswitch_3
    .end sparse-switch
.end method
