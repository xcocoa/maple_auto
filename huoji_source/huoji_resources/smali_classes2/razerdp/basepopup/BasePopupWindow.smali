.class public abstract Lrazerdp/basepopup/BasePopupWindow;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/me0;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lz2/xe0;
.implements Lz2/ze0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrazerdp/basepopup/BasePopupWindow$OooO;,
        Lrazerdp/basepopup/BasePopupWindow$OooOO0O;,
        Lrazerdp/basepopup/BasePopupWindow$OooOO0;,
        Lrazerdp/basepopup/BasePopupWindow$OooOo00;,
        Lrazerdp/basepopup/BasePopupWindow$OooOOOO;,
        Lrazerdp/basepopup/BasePopupWindow$OooOOO;,
        Lrazerdp/basepopup/BasePopupWindow$OooOOO0;,
        Lrazerdp/basepopup/BasePopupWindow$GravityMode;
    }
.end annotation


# static fields
.field private static final o00Oo0:Ljava/lang/String; = "BasePopupWindow"

.field public static o00Ooo:I = 0x0

.field public static o00o0O:Z = false

.field public static final synthetic o00oO0O:Z = false

.field public static final o00oO0o:I = -0x2

.field private static final o00ooo:I = 0x3

.field public static final oo000o:I = -0x1


# instance fields
.field private OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

.field private OoooOoo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private Ooooo00:Lz2/if0;

.field private Ooooo0o:Lz2/af0;

.field private OooooO0:Landroid/view/View;

.field private OooooOO:Landroid/view/View;

.field private volatile OooooOo:Z

.field private Oooooo:Landroid/widget/EditText;

.field private Oooooo0:I

.field private OoooooO:Lrazerdp/basepopup/BasePopupWindow$OooOO0;

.field private Ooooooo:Lrazerdp/basepopup/BasePopupWindow$OooOO0O;

.field public o00O0O:Ljava/lang/Object;

.field private o0OoOo0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private ooOO:Lrazerdp/basepopup/BasePopupWindow$OooO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lrazerdp/basepopup/BasePopupWindow;

    const-string v0, "#8f000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lrazerdp/basepopup/BasePopupWindow;->o00Ooo:I

    const/4 v0, 0x0

    sput-boolean v0, Lrazerdp/basepopup/BasePopupWindow;->o00o0O:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lrazerdp/basepopup/BasePopupWindow;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lrazerdp/basepopup/BasePopupWindow;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooOo:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoo:Ljava/lang/ref/WeakReference;

    if-nez p4, :cond_0

    invoke-direct {p0, p2, p3}, Lrazerdp/basepopup/BasePopupWindow;->Oooooo(II)V

    goto :goto_0

    :cond_0
    new-instance p1, Lrazerdp/basepopup/BasePopupWindow$OooO;

    const/4 p4, 0x0

    invoke-direct {p1, p0, p4}, Lrazerdp/basepopup/BasePopupWindow$OooO;-><init>(Lrazerdp/basepopup/BasePopupWindow;Lrazerdp/basepopup/BasePopupWindow$OooO00o;)V

    iput-object p1, p0, Lrazerdp/basepopup/BasePopupWindow;->ooOO:Lrazerdp/basepopup/BasePopupWindow$OooO;

    iput p2, p1, Lrazerdp/basepopup/BasePopupWindow$OooO;->OooO00o:I

    iput p3, p1, Lrazerdp/basepopup/BasePopupWindow$OooO;->OooO0O0:I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, -0x2

    invoke-direct {p0, p1, v0, v0, p2}, Lrazerdp/basepopup/BasePopupWindow;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method public static synthetic OooO0O0(Lrazerdp/basepopup/BasePopupWindow;)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    iget-object p0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public static synthetic OooO0Oo(Lrazerdp/basepopup/BasePopupWindow;)I
    .locals 0

    iget p0, p0, Lrazerdp/basepopup/BasePopupWindow;->Oooooo0:I

    return p0
.end method

.method public static synthetic OooOO0o(Lrazerdp/basepopup/BasePopupWindow;)I
    .locals 2

    iget v0, p0, Lrazerdp/basepopup/BasePopupWindow;->Oooooo0:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lrazerdp/basepopup/BasePopupWindow;->Oooooo0:I

    return v0
.end method

.method public static synthetic OooOOO(Lrazerdp/basepopup/BasePopupWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooOo:Z

    return p1
.end method

.method public static synthetic OooOOO0(Lrazerdp/basepopup/BasePopupWindow;Landroid/view/View;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lrazerdp/basepopup/BasePopupWindow;->o000O0o0(Landroid/view/View;ZZ)V

    return-void
.end method

.method public static synthetic OooOOOO(Lrazerdp/basepopup/BasePopupWindow;)Lz2/af0;
    .locals 0

    iget-object p0, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    return-object p0
.end method

.method public static synthetic OooOOOo(Lrazerdp/basepopup/BasePopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lrazerdp/basepopup/BasePopupWindow;->o0OoOo0:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private OooOOo()V
    .locals 2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow$OooOO0O;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OooO00o(Lrazerdp/basepopup/BasePopupWindow$OooOO0O;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;-><init>(Lrazerdp/basepopup/BasePopupWindow;Lrazerdp/basepopup/BasePopupWindow$OooO00o;)V

    iput-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow$OooOO0O;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OooO0O0()V

    return-void
.end method

.method private OooOOo0()V
    .locals 4

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooooO:Lrazerdp/basepopup/BasePopupWindow$OooOO0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OooO0OO()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->Oooo00o()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lrazerdp/basepopup/BasePopupWindow$OooOO0;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    new-instance v0, Lrazerdp/basepopup/BasePopupWindow$OooO0O0;

    invoke-direct {v0, p0}, Lrazerdp/basepopup/BasePopupWindow$OooO0O0;-><init>(Lrazerdp/basepopup/BasePopupWindow;)V

    invoke-direct {v1, v2, v3, v0}, Lrazerdp/basepopup/BasePopupWindow$OooOO0;-><init>(Landroid/view/View;ZLrazerdp/basepopup/BasePopupWindow$OooOo00;)V

    iput-object v1, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooooO:Lrazerdp/basepopup/BasePopupWindow$OooOO0;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OooO00o()V

    return-void
.end method

.method private OooOOoo()V
    .locals 0

    invoke-direct {p0}, Lrazerdp/basepopup/BasePopupWindow;->OooOOo0()V

    invoke-direct {p0}, Lrazerdp/basepopup/BasePopupWindow;->OooOOo()V

    return-void
.end method

.method private OooOo0()V
    .locals 1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->OoooOO0()Lrazerdp/basepopup/BasePopupWindow$OooOOOO;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->OoooOO0()Lrazerdp/basepopup/BasePopupWindow$OooOOOO;

    move-result-object v0

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupWindow$OooOOOO;->OooO0O0()V

    :cond_0
    return-void
.end method

.method private OooOo0O()Z
    .locals 2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->Oooo()Lrazerdp/basepopup/BasePopupWindow$OooOOOO;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->Oooo()Lrazerdp/basepopup/BasePopupWindow$OooOOOO;

    move-result-object v0

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupWindow$OooOOOO;->OooO00o()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooOo:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private OooOo0o(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0oo()Lrazerdp/basepopup/BasePopupWindow$OooOOO0;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0oo()Lrazerdp/basepopup/BasePopupWindow$OooOOO0;

    move-result-object v0

    iget-object v2, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooO0:Landroid/view/View;

    iget-object v3, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->OoooOOo()Landroid/view/animation/Animation;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->OoooOoO()Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0, v2, p1, v1}, Lrazerdp/basepopup/BasePopupWindow$OooOOO0;->OooO00o(Landroid/view/View;Landroid/view/View;Z)Z

    move-result v1

    :cond_2
    return v1
.end method

.method private OooOooO(Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lrazerdp/basepopup/BasePopupWindow;->o0ooOoO(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lz2/pe0;->OooO0o0()Lz2/pe0;

    move-result-object v0

    iget-object v0, v0, Lz2/pe0;->OooO00o:Lz2/pe0$OooO0O0;

    invoke-virtual {v0, p0, p1}, Lz2/pe0$OooO0O0;->OooO0OO(Lrazerdp/basepopup/BasePopupWindow;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private Oooooo(II)V
    .locals 3

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->Oooo00o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->OooOo00(Ljava/lang/Object;)Lrazerdp/basepopup/BasePopupWindow;

    new-instance v0, Lrazerdp/basepopup/BasePopupHelper;

    invoke-direct {v0, p0}, Lrazerdp/basepopup/BasePopupHelper;-><init>(Lz2/xe0;)V

    iput-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-direct {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o0Oo0oo(Lrazerdp/basepopup/BasePopupHelper;)V

    invoke-interface {p0}, Lz2/me0;->OooO00o()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooO0:Landroid/view/View;

    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1, v0}, Lrazerdp/basepopup/BasePopupHelper;->o00000O0(Landroid/view/View;)Lrazerdp/basepopup/BasePopupHelper;

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OoooO00()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "BasePopupWindow"

    const-string v1, "\u4e3a\u4e86\u66f4\u51c6\u786e\u7684\u9002\u914d\u60a8\u7684\u5e03\u5c40\uff0cBasePopupWindow\u5efa\u8bae\u60a8\u4f7f\u7528createPopupById()\u8fdb\u884cinflate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->oo000o()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooOO:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooO0:Landroid/view/View;

    iput-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooOO:Landroid/view/View;

    :cond_1
    invoke-virtual {p0, p1}, Lrazerdp/basepopup/BasePopupWindow;->o000O00O(I)Lrazerdp/basepopup/BasePopupWindow;

    invoke-virtual {p0, p2}, Lrazerdp/basepopup/BasePopupWindow;->o0000OOo(I)Lrazerdp/basepopup/BasePopupWindow;

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OoooO00()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p1}, Lrazerdp/basepopup/BasePopupHelper;->OoooO00()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object p2, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->OoooO00()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_2
    new-instance v0, Lz2/af0;

    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooO0:Landroid/view/View;

    iget-object v2, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-direct {v0, v1, p1, p2, v2}, Lz2/af0;-><init>(Landroid/view/View;IILrazerdp/basepopup/BasePopupHelper;)V

    iput-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, v1}, Lz2/qe0;->OooO00o(Lrazerdp/basepopup/BasePopupHelper;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o0000oOo(Z)Lrazerdp/basepopup/BasePopupWindow;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o0000ooO(I)Lrazerdp/basepopup/BasePopupWindow;

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o0000OO(I)Lrazerdp/basepopup/BasePopupHelper;

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p2}, Lrazerdp/basepopup/BasePopupHelper;->o0000OO0(I)Lrazerdp/basepopup/BasePopupHelper;

    invoke-direct {p0, p1, p2}, Lrazerdp/basepopup/BasePopupWindow;->Oooooo0(II)V

    invoke-direct {p0, p1, p2}, Lrazerdp/basepopup/BasePopupWindow;->o0OOO0o(II)V

    iget-object p1, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->o0ooOO0()Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrazerdp/basepopup/BasePopupHelper;->o0000Oo0(Landroid/view/animation/Animation;)Lrazerdp/basepopup/BasePopupHelper;

    move-result-object p1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->o0ooOOo()Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrazerdp/basepopup/BasePopupHelper;->o0000Oo(Landroid/animation/Animator;)Lrazerdp/basepopup/BasePopupHelper;

    move-result-object p1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->o00oO0o()Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrazerdp/basepopup/BasePopupHelper;->o00000O(Landroid/view/animation/Animation;)Lrazerdp/basepopup/BasePopupHelper;

    move-result-object p1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->o00oO0O()Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrazerdp/basepopup/BasePopupHelper;->o00000OO(Landroid/animation/Animator;)Lrazerdp/basepopup/BasePopupHelper;

    return-void
.end method

.method private Oooooo0(II)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    if-eq p2, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooO0:Landroid/view/View;

    if-eqz p1, :cond_3

    instance-of p2, p1, Landroid/widget/AdapterView;

    if-nez p2, :cond_3

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooO0:Landroid/view/View;

    new-instance p2, Lrazerdp/basepopup/BasePopupWindow$OooO00o;

    invoke-direct {p2, p0, v0}, Lrazerdp/basepopup/BasePopupWindow$OooO00o;-><init>(Lrazerdp/basepopup/BasePopupWindow;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private o000000(Landroid/view/View;ZZ)V
    .locals 5

    iget v0, p0, Lrazerdp/basepopup/BasePopupWindow;->Oooooo0:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "catch an exception on showing popupwindow ...now retrying to show ... retry count  >>  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lrazerdp/basepopup/BasePopupWindow;->Oooooo0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lrazerdp/util/log/PopupLog;->OooO0OO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    invoke-virtual {v0}, Lz2/af0;->OooO0OO()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    invoke-virtual {v0}, Lz2/qe0;->OooO0O0()V

    :cond_1
    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->Oooo00o()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    const/4 v4, 0x1

    if-lt v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    xor-int/2addr v1, v4

    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lrazerdp/basepopup/BasePopupWindow$OooO0OO;

    invoke-direct {v1, p0, p1, p2, p3}, Lrazerdp/basepopup/BasePopupWindow$OooO0OO;-><init>(Lrazerdp/basepopup/BasePopupWindow;Landroid/view/View;ZZ)V

    const-wide/16 p1, 0x15e

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public static o0000O(Z)V
    .locals 0

    sput-boolean p0, Lrazerdp/basepopup/BasePopupWindow;->o00o0O:Z

    invoke-static {p0}, Lrazerdp/util/log/PopupLog;->OooOOO0(Z)V

    return-void
.end method

.method private o000O0o0(Landroid/view/View;ZZ)V
    .locals 9

    const-string v0, "BasePopupWindow"

    invoke-direct {p0}, Lrazerdp/basepopup/BasePopupWindow;->OooOOoo()V

    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->Oooooo0()V

    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1, p1, p2}, Lrazerdp/basepopup/BasePopupHelper;->o0Oo0oo(Landroid/view/View;Z)V

    iget-object v2, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo00:Lz2/if0;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->OoooO0O()I

    move-result v6

    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0o()I

    move-result v7

    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0oO()I

    move-result v8

    move-object v3, p0

    move-object v5, p1

    invoke-interface/range {v2 .. v8}, Lz2/if0;->OooO00o(Lrazerdp/basepopup/BasePopupWindow;Landroid/widget/PopupWindow;Landroid/view/View;III)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->o00Oo0()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-object v3, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->o0ooOOo()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->OoooOOO()I

    move-result v4

    invoke-virtual {v3, p1, v2, v2, v4}, Lz2/af0;->OooOOo0(Landroid/view/View;III)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->OoooOOO()I

    move-result v4

    invoke-virtual {v3, p1, v4, v2, v2}, Lz2/af0;->OooOOo(Landroid/view/View;III)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->Oooo00o()Landroid/app/Activity;

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->Oooo00o()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, "can not get token from context,make sure that context is instance of activity"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    invoke-direct {p0, v3}, Lrazerdp/basepopup/BasePopupWindow;->OooOooO(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v4, v3, v2, v2, v2}, Lz2/af0;->OooOOo(Landroid/view/View;III)V

    :goto_0
    iget-object v3, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->OoooOOo()Landroid/view/animation/Animation;

    move-result-object v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v4}, Lrazerdp/basepopup/BasePopupHelper;->OoooOoO()Landroid/animation/Animator;

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v3, v4}, Lrazerdp/basepopup/BasePopupHelper;->OooO0O0(Z)V

    iget-object v3, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooOO:Landroid/view/View;

    if-eqz v3, :cond_8

    if-nez p3, :cond_8

    iget-object v3, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->OoooOOo()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->OoooOOo()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    iget-object v3, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooOO:Landroid/view/View;

    iget-object v4, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v4}, Lrazerdp/basepopup/BasePopupHelper;->OoooOOo()Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->OoooOoO()Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->OoooOoO()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    :cond_8
    :goto_3
    iget-object v3, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->ooOO()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lrazerdp/basepopup/BasePopupWindow;->Oooooo:Landroid/widget/EditText;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v3, p0, Lrazerdp/basepopup/BasePopupWindow;->Oooooo:Landroid/widget/EditText;

    const-wide/16 v4, 0x15e

    invoke-static {v3, v4, v5}, Lz2/lf0;->OooO0o(Landroid/view/View;J)V

    :cond_9
    iput v2, p0, Lrazerdp/basepopup/BasePopupWindow;->Oooooo0:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    invoke-direct {p0, p1, p2, p3}, Lrazerdp/basepopup/BasePopupWindow;->o000000(Landroid/view/View;ZZ)V

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v3, p1, v2

    invoke-static {v0, p1}, Lrazerdp/util/log/PopupLog;->OooO0OO(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method

.method private o000O0oO(Landroid/view/View;Z)V
    .locals 1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->o00Oo0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->Oooo00O()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1, p2}, Lrazerdp/basepopup/BasePopupHelper;->o0Oo0oo(Landroid/view/View;Z)V

    iget-object p1, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    invoke-virtual {p1}, Lz2/qe0;->update()V

    :cond_1
    :goto_0
    return-void
.end method

.method private o0O0O00()V
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow$OooOO0O;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OooO0o0()V

    :cond_0
    return-void
.end method

.method private o0OO00O()V
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooooO:Lrazerdp/basepopup/BasePopupWindow$OooOO0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupWindow$OooOO0;->OooO0Oo()V

    :cond_0
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooooOo()V

    return-void
.end method

.method private o0OOO0o(II)V
    .locals 5

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooO0:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo00:Lz2/if0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, v0, p1, p2}, Lz2/if0;->OooO0Oo(Lrazerdp/basepopup/BasePopupWindow;Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, -0x2

    if-ne p1, v1, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    :goto_1
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    if-ne p2, v1, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v3, 0x40000000    # 2.0f

    :goto_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooO0:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    :cond_3
    iget-object p1, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    iget-object p2, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooO0:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Lrazerdp/basepopup/BasePopupHelper;->o0000OOo(I)Lrazerdp/basepopup/BasePopupHelper;

    move-result-object p1

    iget-object p2, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooO0:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Lrazerdp/basepopup/BasePopupHelper;->o0000OOO(I)Lrazerdp/basepopup/BasePopupHelper;

    iget-object p1, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooO0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_4
    return-void
.end method

.method private o0Oo0oo(Lrazerdp/basepopup/BasePopupHelper;)V
    .locals 0

    invoke-virtual {p1, p0}, Lrazerdp/basepopup/BasePopupHelper;->o0O0O00(Lz2/ze0;)Lrazerdp/basepopup/BasePopupHelper;

    return-void
.end method


# virtual methods
.method public OooO()Z
    .locals 2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->o00oO0o()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->OooOoOO()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->o00oO0O()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public OooO0OO()Z
    .locals 1

    invoke-direct {p0}, Lrazerdp/basepopup/BasePopupWindow;->OooOo0O()Z

    move-result v0

    return v0
.end method

.method public OooO0o()V
    .locals 0

    return-void
.end method

.method public OooO0o0()V
    .locals 0

    return-void
.end method

.method public OooO0oO()Z
    .locals 9

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOoo()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooOO:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooOo:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOoo()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOoo()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooOO:Landroid/view/View;

    iget-object v6, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v6}, Lrazerdp/basepopup/BasePopupHelper;->OooOoo()Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOooo()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooOo:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOooo()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v4

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOooo()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :goto_0
    invoke-direct {p0}, Lrazerdp/basepopup/BasePopupWindow;->OooOo0()V

    iput-boolean v3, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooOo:Z

    goto :goto_1

    :cond_1
    move-wide v4, v1

    :goto_1
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooO0:Landroid/view/View;

    new-instance v6, Lrazerdp/basepopup/BasePopupWindow$OooO0o;

    invoke-direct {v6, p0}, Lrazerdp/basepopup/BasePopupWindow$OooO0o;-><init>(Lrazerdp/basepopup/BasePopupWindow;)V

    iget-object v7, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v7}, Lrazerdp/basepopup/BasePopupHelper;->OooOooO()J

    move-result-wide v7

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    invoke-virtual {v0, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    const/4 v6, 0x0

    cmp-long v7, v4, v1

    if-lez v7, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lrazerdp/basepopup/BasePopupHelper;->OooOO0o(Z)V

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-gtz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    return v3
.end method

.method public OooO0oo(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public OooOO0(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public OooOO0O()Z
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->o00O0O()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->OooOoOO()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public OooOo(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->Oooo00o()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lrazerdp/basepopup/BasePopupHelper;->Oooooo(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public OooOo00(Ljava/lang/Object;)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    invoke-static {}, Lz2/pe0;->OooO0o0()Lz2/pe0;

    move-result-object v0

    iget-object v0, v0, Lz2/pe0;->OooO00o:Lz2/pe0$OooO0O0;

    invoke-virtual {v0, p0, p1}, Lz2/pe0$OooO0O0;->OooO0O0(Lrazerdp/basepopup/BasePopupWindow;Ljava/lang/Object;)Lrazerdp/basepopup/BasePopupWindow;

    move-result-object p1

    return-object p1
.end method

.method public OooOoO(F)F
    .locals 1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->Oooo00o()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->Oooo00o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    return p1
.end method

.method public OooOoO0()V
    .locals 2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->ooOO:Lrazerdp/basepopup/BasePopupWindow$OooO;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lrazerdp/basepopup/BasePopupWindow$OooO;->OooO00o:I

    iget v0, v0, Lrazerdp/basepopup/BasePopupWindow$OooO;->OooO0O0:I

    invoke-direct {p0, v1, v0}, Lrazerdp/basepopup/BasePopupWindow;->Oooooo(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->ooOO:Lrazerdp/basepopup/BasePopupWindow$OooO;

    return-void
.end method

.method public OooOoOO()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->OooOoo0(Z)V

    return-void
.end method

.method public OooOoo()V
    .locals 2

    invoke-direct {p0}, Lrazerdp/basepopup/BasePopupWindow;->OooOo0O()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOoo()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooOO:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOoo()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_1
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOooo()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOooo()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->Oooooo:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->ooOO()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->Oooooo:Landroid/widget/EditText;

    invoke-static {v0}, Lz2/lf0;->OooO0O0(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    invoke-virtual {v0}, Lz2/qe0;->OooO0O0()V

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrazerdp/basepopup/BasePopupHelper;->OooOO0o(Z)V

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->o000OOo()V

    return-void
.end method

.method public OooOoo0(Z)V
    .locals 3

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lrazerdp/basepopup/BasePopupWindow;->Oooooo:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p1}, Lrazerdp/basepopup/BasePopupHelper;->ooOO()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lrazerdp/basepopup/BasePopupWindow;->Oooooo:Landroid/widget/EditText;

    invoke-static {p1}, Lz2/lf0;->OooO0O0(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object p1, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    invoke-virtual {p1}, Lz2/qe0;->dismiss()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "BasePopupWindow"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lrazerdp/util/log/PopupLog;->OooO0OO(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    invoke-virtual {v0}, Lz2/qe0;->dismiss()V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->OooOoo()V

    :goto_2
    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->o000OOo()V

    return-void
.end method

.method public OooOooo(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooO0:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public Oooo()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooOO:Landroid/view/View;

    return-object v0
.end method

.method public Oooo0()Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->Oooo0O0(Z)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public Oooo000()V
    .locals 2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOoo()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooOO:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOoo()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOooo()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOooo()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->Oooooo:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->ooOO()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->Oooooo:Landroid/widget/EditText;

    invoke-static {v0}, Lz2/lf0;->OooO0O0(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    invoke-virtual {v0}, Lz2/qe0;->OooO0O0()V

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrazerdp/basepopup/BasePopupHelper;->OooOO0o(Z)V

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->o000OOo()V

    return-void
.end method

.method public Oooo00O()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooO0:Landroid/view/View;

    return-object v0
.end method

.method public Oooo00o()Landroid/app/Activity;
    .locals 2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoo:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lz2/nf0;->OooO0oo(Landroid/content/Context;I)Landroid/app/Activity;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public Oooo0O0(Z)Landroid/view/animation/Animation;
    .locals 0

    invoke-static {p1}, Lz2/of0;->OooO00o(Z)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public Oooo0OO()Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->Oooo0o0(Z)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public Oooo0o()Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooOO:Landroid/view/View;

    invoke-static {v0}, Lz2/of0;->OooO0OO(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public Oooo0o0(Z)Landroid/view/animation/Animation;
    .locals 0

    invoke-static {p1}, Lz2/of0;->OooO0O0(Z)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public Oooo0oO()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOoo()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public Oooo0oo()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOooo()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public OoooO()Lrazerdp/basepopup/BasePopupWindow$OooOOO0;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0oo()Lrazerdp/basepopup/BasePopupWindow$OooOOO0;

    move-result-object v0

    return-object v0
.end method

.method public OoooO0()I
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0o()I

    move-result v0

    return v0
.end method

.method public OoooO00()I
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooO0:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->o000oOoO()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->o000oOoO()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooO0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public OoooO0O()I
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0oO()I

    move-result v0

    return v0
.end method

.method public OoooOO0()Lrazerdp/basepopup/BasePopupWindow$OooOOOO;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->Oooo()Lrazerdp/basepopup/BasePopupWindow$OooOOOO;

    move-result-object v0

    return-object v0
.end method

.method public OoooOOO()I
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OoooO0O()I

    move-result v0

    return v0
.end method

.method public OoooOOo()Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    return-object v0
.end method

.method public OoooOo0(FFFFIFIF)Landroid/view/animation/Animation;
    .locals 0

    invoke-static/range {p1 .. p8}, Lz2/of0;->OooO0Oo(FFFFIFIF)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public OoooOoO()I
    .locals 1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->Oooo00o()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lz2/mf0;->OooO0oO(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public OoooOoo()I
    .locals 1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->Oooo00o()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lz2/mf0;->OooO(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public Ooooo00()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OoooOOo()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public Ooooo0o()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OoooOoO()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public OooooO0(FFI)Landroid/view/animation/Animation;
    .locals 0

    invoke-static {p1, p2, p3}, Lz2/of0;->OooO0o0(FFI)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public OooooOO(III)Landroid/view/animation/Animation;
    .locals 0

    invoke-static {p1, p2, p3}, Lz2/of0;->OooO0o(III)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public OooooOo()I
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooO0:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OoooOOO()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OoooOOO()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooO0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method public OoooooO()Z
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->o00oO0o()Z

    move-result v0

    return v0
.end method

.method public Ooooooo()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->o00oO0O()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public o000(Z)Lrazerdp/basepopup/BasePopupWindow;
    .locals 2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    invoke-virtual {v0, v1, p1}, Lrazerdp/basepopup/BasePopupHelper;->o000OO(Landroid/widget/PopupWindow;Z)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000(I)Lrazerdp/basepopup/BasePopupWindow;
    .locals 2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lrazerdp/basepopup/BasePopupHelper;->o0000O0O(Landroid/graphics/drawable/Drawable;)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o00000(Z)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o000OOo(Z)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o000000O(Z)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lrazerdp/basepopup/BasePopupWindow;->o000000o(ZI)Lrazerdp/basepopup/BasePopupWindow;

    return-object p0
.end method

.method public o000000o(ZI)Lrazerdp/basepopup/BasePopupWindow;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    const/16 p2, 0x30

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    invoke-virtual {p0, p2}, Lrazerdp/basepopup/BasePopupWindow;->o000Oo0(I)Lrazerdp/basepopup/BasePopupWindow;

    return-object p0
.end method

.method public o00000O(Z)Lrazerdp/basepopup/BasePopupWindow;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lrazerdp/basepopup/BasePopupWindow;->o0000oOo(Z)Lrazerdp/basepopup/BasePopupWindow;

    return-object p0
.end method

.method public o00000O0(I)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o000000(I)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o00000OO(Z)Lrazerdp/basepopup/BasePopupWindow;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lrazerdp/basepopup/BasePopupWindow;->o0000oo0(Z)Lrazerdp/basepopup/BasePopupWindow;

    return-object p0
.end method

.method public o00000Oo(Z)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->OooOOO(Z)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o00000o0(Landroid/widget/EditText;Z)Lrazerdp/basepopup/BasePopupWindow;
    .locals 2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    invoke-virtual {v0, v1, p2}, Lrazerdp/basepopup/BasePopupHelper;->OooOOOO(Landroid/widget/PopupWindow;Z)Lrazerdp/basepopup/BasePopupHelper;

    iput-object p1, p0, Lrazerdp/basepopup/BasePopupWindow;->Oooooo:Landroid/widget/EditText;

    return-object p0
.end method

.method public o00000oO(I)Lrazerdp/basepopup/BasePopupWindow;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lrazerdp/basepopup/BasePopupWindow;->o00000oo(Landroid/graphics/drawable/Drawable;)Lrazerdp/basepopup/BasePopupWindow;

    move-result-object p1

    return-object p1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->Oooo00o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->Oooo00o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0
.end method

.method public o00000oo(Landroid/graphics/drawable/Drawable;)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o0000O0O(Landroid/graphics/drawable/Drawable;)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000O0(Lz2/gf0;)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->OooOOO0(Lz2/gf0;)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000O00(Landroid/view/View;)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o000000O(Landroid/view/View;)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000O0O(Z)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o000000o(Z)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000OO(Landroid/animation/Animator;)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o00000OO(Landroid/animation/Animator;)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000OO0(Landroid/view/animation/Animation;)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o00000O(Landroid/view/animation/Animation;)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000OOO(Lz2/if0;)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lrazerdp/basepopup/BasePopupWindow;",
            ">(",
            "Lz2/if0<",
            "TP;>;)",
            "Lrazerdp/basepopup/BasePopupWindow;"
        }
    .end annotation

    iput-object p1, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo00:Lz2/if0;

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o00000Oo(Lz2/if0;)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000OOo(I)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o0000OO0(I)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000Oo(I)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o0000Ooo(I)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000Oo0(Z)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o0ooOoO(Z)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000OoO(I)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o00000oO(I)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000Ooo(Z)Lrazerdp/basepopup/BasePopupWindow;
    .locals 2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    invoke-virtual {v0, v1, p1}, Lrazerdp/basepopup/BasePopupHelper;->OooOOOo(Landroid/widget/PopupWindow;Z)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000o(I)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o0000oo(I)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000o0(I)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o00000oo(I)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000o0O(I)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o0000(I)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000o0o(I)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o0000O00(I)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000oO(ZLrazerdp/basepopup/BasePopupWindow$OooOOO;)Lrazerdp/basepopup/BasePopupWindow;
    .locals 6

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->Oooo00o()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "\u65e0\u6cd5\u914d\u7f6e\u9ed8\u8ba4\u6a21\u7cca\u811a\u672c\uff0c\u56e0\u4e3acontext\u4e0d\u662factivity"

    aput-object p2, p1, v1

    const-string p2, "BasePopupWindow"

    invoke-static {p2, p1}, Lrazerdp/util/log/PopupLog;->OooO0OO(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 v3, 0x0

    if-eqz p1, :cond_3

    new-instance v3, Lz2/gf0;

    invoke-direct {v3}, Lz2/gf0;-><init>()V

    invoke-virtual {v3, v2}, Lz2/gf0;->OooOOOO(Z)Lz2/gf0;

    move-result-object p1

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v4, v5}, Lz2/gf0;->OooOO0(J)Lz2/gf0;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lz2/gf0;->OooOO0O(J)Lz2/gf0;

    if-eqz p2, :cond_1

    invoke-interface {p2, v3}, Lrazerdp/basepopup/BasePopupWindow$OooOOO;->OooO00o(Lz2/gf0;)V

    :cond_1
    invoke-direct {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->OooOooO(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const v4, 0x1020002

    if-ne p2, v4, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v3, p1}, Lz2/gf0;->OooOOO(Landroid/view/View;)Lz2/gf0;

    invoke-virtual {v3, v2}, Lz2/gf0;->OooOOOO(Z)Lz2/gf0;

    goto :goto_0

    :cond_2
    invoke-virtual {v3, p1}, Lz2/gf0;->OooOOO(Landroid/view/View;)Lz2/gf0;

    :cond_3
    :goto_0
    invoke-virtual {p0, v3}, Lrazerdp/basepopup/BasePopupWindow;->o0000O0(Lz2/gf0;)Lrazerdp/basepopup/BasePopupWindow;

    move-result-object p1

    return-object p1
.end method

.method public o0000oO0(Lrazerdp/basepopup/BasePopupWindow$OooOOO0;)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o0000oO(Lrazerdp/basepopup/BasePopupWindow$OooOOO0;)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000oOO(Lrazerdp/basepopup/BasePopupWindow$OooOOOO;)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o0000O0(Lrazerdp/basepopup/BasePopupWindow$OooOOOO;)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000oOo(Z)Lrazerdp/basepopup/BasePopupWindow;
    .locals 2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    invoke-virtual {v0, v1, p1}, Lrazerdp/basepopup/BasePopupHelper;->OooOOo(Landroid/widget/PopupWindow;Z)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000oo(Z)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lrazerdp/basepopup/BasePopupWindow;->o0000oO(ZLrazerdp/basepopup/BasePopupWindow$OooOOO;)Lrazerdp/basepopup/BasePopupWindow;

    move-result-object p1

    return-object p1
.end method

.method public o0000oo0(Z)Lrazerdp/basepopup/BasePopupWindow;
    .locals 2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    invoke-virtual {v0, v1, p1}, Lrazerdp/basepopup/BasePopupHelper;->o0OOO0o(Landroid/widget/PopupWindow;Z)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000ooO(I)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-object p0
.end method

.method public o000O(FF)V
    .locals 1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->o00Oo0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->Oooo00O()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lrazerdp/basepopup/BasePopupWindow;->o000O00O(I)Lrazerdp/basepopup/BasePopupWindow;

    move-result-object p1

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lrazerdp/basepopup/BasePopupWindow;->o0000OOo(I)Lrazerdp/basepopup/BasePopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lrazerdp/basepopup/BasePopupWindow;->o000O0oo()V

    :cond_1
    :goto_0
    return-void
.end method

.method public o000O0()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->OooOo0o(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lrazerdp/basepopup/BasePopupHelper;->o0000OoO(Z)Lrazerdp/basepopup/BasePopupHelper;

    invoke-direct {p0, v0, v2, v2}, Lrazerdp/basepopup/BasePopupWindow;->o000O0o0(Landroid/view/View;ZZ)V

    :cond_0
    return-void
.end method

.method public varargs o000O00(Landroid/view/View$OnClickListener;[Landroid/view/View;)V
    .locals 3

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public o000O000(I)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    sget-object v0, Lrazerdp/basepopup/BasePopupWindow$GravityMode;->RELATIVE_TO_ANCHOR:Lrazerdp/basepopup/BasePopupWindow$GravityMode;

    invoke-virtual {p0, v0, p1}, Lrazerdp/basepopup/BasePopupWindow;->o000OoO(Lrazerdp/basepopup/BasePopupWindow$GravityMode;I)Lrazerdp/basepopup/BasePopupWindow;

    move-result-object p1

    return-object p1
.end method

.method public o000O00O(I)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o0000OO(I)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o000O0O(Landroid/animation/Animator;)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o0000Oo(Landroid/animation/Animator;)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o000O0O0(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lrazerdp/basepopup/BasePopupWindow;->OooOo0o(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrazerdp/basepopup/BasePopupHelper;->o0000OoO(Z)Lrazerdp/basepopup/BasePopupHelper;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o000O0o0(Landroid/view/View;ZZ)V

    :cond_1
    return-void
.end method

.method public o000O0Oo(I)V
    .locals 2

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->Oooo00o()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrazerdp/basepopup/BasePopupWindow;->o000O0O0(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string p1, "BasePopupWindow"

    const-string v0, "can not get token from context,make sure that context is instance of activity"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public o000O0o(Z)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->OooOOoo(Z)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o000O0oo()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lrazerdp/basepopup/BasePopupWindow;->o000O0oO(Landroid/view/View;Z)V

    return-void
.end method

.method public o000OO(Z)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o00000(Z)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o000OO00(II)V
    .locals 1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->o00Oo0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->Oooo00O()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1, p2}, Lrazerdp/basepopup/BasePopupHelper;->o0000o0(II)Lrazerdp/basepopup/BasePopupHelper;

    iget-object p1, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lrazerdp/basepopup/BasePopupHelper;->o0000OoO(Z)Lrazerdp/basepopup/BasePopupHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Lrazerdp/basepopup/BasePopupWindow;->o000O0oO(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public o000OO0O(II)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->OooOo0o(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1, p1, p2}, Lrazerdp/basepopup/BasePopupHelper;->o0000o0(II)Lrazerdp/basepopup/BasePopupHelper;

    iget-object p1, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lrazerdp/basepopup/BasePopupHelper;->o0000OoO(Z)Lrazerdp/basepopup/BasePopupHelper;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p2, p1}, Lrazerdp/basepopup/BasePopupWindow;->o000O0o0(Landroid/view/View;ZZ)V

    :cond_0
    return-void
.end method

.method public o000OO0o(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->o00Oo0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->Oooo00O()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lrazerdp/basepopup/BasePopupWindow;->o000O0oO(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public o000OOo()V
    .locals 0

    invoke-direct {p0}, Lrazerdp/basepopup/BasePopupWindow;->o0OO00O()V

    invoke-direct {p0}, Lrazerdp/basepopup/BasePopupWindow;->o0O0O00()V

    return-void
.end method

.method public o000Oo0(I)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o0000o0o(I)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o000OoO(Lrazerdp/basepopup/BasePopupWindow$GravityMode;I)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1, p2}, Lrazerdp/basepopup/BasePopupHelper;->o0000O(Lrazerdp/basepopup/BasePopupWindow$GravityMode;I)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o000Ooo(Landroid/view/animation/Animation;)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o0000Oo0(Landroid/view/animation/Animation;)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o000oOoO()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OoooO0()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public o00O0O()Z
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->o0ooOO0()Z

    move-result v0

    return v0
.end method

.method public o00Oo0()Z
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooo0o:Lz2/af0;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public o00Ooo(Landroid/view/View;)Lrazerdp/basepopup/BasePopupWindow;
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow$OooOO0O;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupWindow$OooOO0O;->OooO0o0()V

    iput-object v1, p0, Lrazerdp/basepopup/BasePopupWindow;->Ooooooo:Lrazerdp/basepopup/BasePopupWindow$OooOO0O;

    :cond_0
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->o0OoOo0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    iput-object v1, p0, Lrazerdp/basepopup/BasePopupWindow;->o0OoOo0:Ljava/lang/ref/WeakReference;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->o0OoOo0:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public o00o0O(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public o00oO0O()Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o00oO0o()Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o00ooo(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public o0OoO0o(IIFF)V
    .locals 1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->o00Oo0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->Oooo00O()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0, p1, p2}, Lrazerdp/basepopup/BasePopupHelper;->o0000o0(II)Lrazerdp/basepopup/BasePopupHelper;

    iget-object p1, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lrazerdp/basepopup/BasePopupHelper;->o0000OoO(Z)Lrazerdp/basepopup/BasePopupHelper;

    float-to-int p1, p3

    invoke-virtual {p0, p1}, Lrazerdp/basepopup/BasePopupWindow;->o000O00O(I)Lrazerdp/basepopup/BasePopupWindow;

    move-result-object p1

    float-to-int p3, p4

    invoke-virtual {p1, p3}, Lrazerdp/basepopup/BasePopupWindow;->o0000OOo(I)Lrazerdp/basepopup/BasePopupWindow;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2}, Lrazerdp/basepopup/BasePopupWindow;->o000O0oO(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public o0OoOo0()Z
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->o0OoOo0()Z

    move-result v0

    return v0
.end method

.method public o0ooOO0()Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o0ooOOo()Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o0ooOoO(Landroid/app/Activity;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->Oooo()Lrazerdp/basepopup/BasePopupWindow$OooOOOO;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->Oooo()Lrazerdp/basepopup/BasePopupWindow$OooOOOO;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OooooOo:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public oo000o()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public oo0o0Oo(Ljava/lang/Object;)Lrazerdp/basepopup/BasePopupWindow;
    .locals 1

    invoke-static {}, Lz2/pe0;->OooO0o0()Lz2/pe0;

    move-result-object v0

    iget-object v0, v0, Lz2/pe0;->OooO00o:Lz2/pe0$OooO0O0;

    invoke-virtual {v0, p0, p1}, Lz2/pe0$OooO0O0;->OooO00o(Lrazerdp/basepopup/BasePopupWindow;Ljava/lang/Object;)Lrazerdp/basepopup/BasePopupWindow;

    move-result-object p1

    return-object p1
.end method

.method public ooOO()Z
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->o00oO0O()Z

    move-result v0

    return v0
.end method
