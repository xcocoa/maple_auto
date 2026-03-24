.class public Lz2/OooO0O0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public OooO00o:Landroid/view/View;

.field public OooO0O0:Lz2/OooOOOO;


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lz2/OooO0O0;->OooO00o:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance p2, Lz2/OooOOOO;

    iget-object v0, p0, Lz2/OooO0O0;->OooO00o:Landroid/view/View;

    invoke-direct {p2, p1, v0}, Lz2/OooOOOO;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object p2, p0, Lz2/OooO0O0;->OooO0O0:Lz2/OooOOOO;

    return-void
.end method

.method public static OooO00o(Landroid/view/View;Landroid/view/ViewGroup;I)Lz2/OooO0O0;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Lz2/OooO0O0;

    invoke-direct {p0, p1, p2}, Lz2/OooO0O0;-><init>(Landroid/view/ViewGroup;I)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz2/OooO0O0;

    return-object p0
.end method


# virtual methods
.method public OooO0O0()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lz2/OooO0O0;->OooO00o:Landroid/view/View;

    return-object v0
.end method

.method public OooO0OO()Lz2/OooOOOO;
    .locals 1

    iget-object v0, p0, Lz2/OooO0O0;->OooO0O0:Lz2/OooOOOO;

    return-object v0
.end method
