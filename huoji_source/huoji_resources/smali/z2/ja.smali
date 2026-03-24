.class public Lz2/ja;
.super Lz2/i3;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/ja$OooOOO;,
        Lz2/ja$OooOOOO;
    }
.end annotation


# static fields
.field public static final o0OO00O:I = 0xa

.field private static final o0OOO0o:I = 0x1337959

.field private static final o0Oo0oo:I = 0x5

.field private static final o0ooOOo:Ljava/lang/String;

.field private static final o0ooOoO:Lorg/slf4j/Logger;


# instance fields
.field private OoooOoO:Landroid/view/View;

.field private OoooOoo:Landroid/widget/LinearLayout;

.field private Ooooo00:Landroid/widget/LinearLayout;

.field private Ooooo0o:Landroid/widget/Button;

.field private OooooO0:Landroid/widget/Button;

.field private OooooOO:Landroid/widget/Button;

.field private OooooOo:Landroid/widget/TextView;

.field private Oooooo:Landroid/widget/RelativeLayout;

.field private Oooooo0:Landroid/widget/ScrollView;

.field private OoooooO:Landroid/widget/TextView;

.field private Ooooooo:Landroid/widget/ImageView;

.field private o00O0O:Z

.field private o00Oo0:Lz2/pa;

.field private o00Ooo:Lz2/vi;

.field private o00o0O:Lz2/rh;

.field public o00oO0O:Z

.field private o00oO0o:Lz2/ja$OooOOOO;

.field private o00ooo:I

.field private o0OoOo0:Landroid/widget/TextView;

.field public o0ooOO0:Z

.field private oo000o:Lz2/ja$OooOOO;

.field private ooOO:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lz2/ja;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/ja;->o0ooOOo:Ljava/lang/String;

    const-class v0, Lz2/ja;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lz2/ja;->o0ooOoO:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lz2/i3;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lz2/ja;->ooOO:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/ja;->o00O0O:Z

    iput v0, p0, Lz2/ja;->o00ooo:I

    iput-boolean v0, p0, Lz2/ja;->o00oO0O:Z

    iput-boolean v0, p0, Lz2/ja;->o0ooOO0:Z

    return-void
.end method

.method public static synthetic OooOo(Lz2/ja;)I
    .locals 2

    iget v0, p0, Lz2/ja;->o00ooo:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lz2/ja;->o00ooo:I

    return v0
.end method

.method public static synthetic OooOo0o(Lz2/ja;I)I
    .locals 0

    iput p1, p0, Lz2/ja;->o00ooo:I

    return p1
.end method

.method public static synthetic OooOoO(Lz2/ja;)Lz2/ja$OooOOOO;
    .locals 0

    iget-object p0, p0, Lz2/ja;->o00oO0o:Lz2/ja$OooOOOO;

    return-object p0
.end method

.method public static synthetic OooOoO0(Lz2/ja;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lz2/ja;->OoooooO:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic OooOoOO(Lz2/ja;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lz2/ja;->OoooOoo:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic OooOoo(Lz2/ja;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lz2/ja;->Ooooo00:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic OooOoo0(Lz2/ja;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lz2/ja;->Oooooo0:Landroid/widget/ScrollView;

    return-object p0
.end method

.method public static synthetic OooOooO()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/ja;->o0ooOOo:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic OooOooo(Lz2/ja;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lz2/ja;->Oooooo:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private Oooo()V
    .locals 3

    new-instance v0, Lz2/rh;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lz2/ja;->Oooooo:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2}, Lz2/rh;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lz2/ja;->o00o0O:Lz2/rh;

    new-instance v1, Lz2/ja$OooO00o;

    invoke-direct {v1, p0}, Lz2/ja$OooO00o;-><init>(Lz2/ja;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lz2/rh;->OooOO0(ILz2/nh;)V

    return-void
.end method

.method public static synthetic Oooo0(Lz2/ja;)V
    .locals 0

    invoke-direct {p0}, Lz2/ja;->Oooo0oO()V

    return-void
.end method

.method public static synthetic Oooo000(Lz2/ja;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lz2/ja;->Ooooooo:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic Oooo00O(Lz2/ja;)V
    .locals 0

    invoke-direct {p0}, Lz2/ja;->Oooooo0()V

    return-void
.end method

.method public static synthetic Oooo00o(Lz2/ja;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lz2/ja;->o0OoOo0:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic Oooo0O0(Lz2/ja;)Lz2/rh;
    .locals 0

    iget-object p0, p0, Lz2/ja;->o00o0O:Lz2/rh;

    return-object p0
.end method

.method public static synthetic Oooo0OO(Lz2/ja;)V
    .locals 0

    invoke-direct {p0}, Lz2/ja;->OoooOoo()V

    return-void
.end method

.method private Oooo0o()V
    .locals 2

    iget-object v0, p0, Lz2/ja;->oo000o:Lz2/ja$OooOOO;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lz2/ja;->o00ooo:I

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/ja;->oo000o:Lz2/ja$OooOOO;

    :cond_0
    return-void
.end method

.method public static synthetic Oooo0o0(Lz2/ja;)Lz2/vi;
    .locals 0

    iget-object p0, p0, Lz2/ja;->o00Ooo:Lz2/vi;

    return-object p0
.end method

.method private Oooo0oO()V
    .locals 2

    iget-object v0, p0, Lz2/ja;->Oooooo:Landroid/widget/RelativeLayout;

    new-instance v1, Lz2/ja$OooO0O0;

    invoke-direct {v1, p0}, Lz2/ja$OooO0O0;-><init>(Lz2/ja;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private OoooO()V
    .locals 4

    iget-object v0, p0, Lz2/ja;->OoooOoO:Landroid/view/View;

    const v1, 0x7f090477

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lz2/ja;->OoooOoo:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lz2/ja;->OoooOoO:Landroid/view/View;

    const v1, 0x7f09035f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lz2/ja;->Ooooo00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lz2/ja;->OoooOoO:Landroid/view/View;

    const v1, 0x7f090235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lz2/ja;->Ooooo0o:Landroid/widget/Button;

    iget-object v0, p0, Lz2/ja;->OoooOoO:Landroid/view/View;

    const v1, 0x7f090236

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lz2/ja;->OooooO0:Landroid/widget/Button;

    iget-object v0, p0, Lz2/ja;->OoooOoO:Landroid/view/View;

    const v1, 0x7f090233

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lz2/ja;->OoooOoO:Landroid/view/View;

    const v2, 0x7f090464

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lz2/ja;->OooooOo:Landroid/widget/TextView;

    iget-object v1, p0, Lz2/ja;->OoooOoO:Landroid/view/View;

    const v2, 0x7f0903de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lz2/ja;->Oooooo0:Landroid/widget/ScrollView;

    iget-object v1, p0, Lz2/ja;->OoooOoO:Landroid/view/View;

    const v2, 0x7f0903c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lz2/ja;->Oooooo:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lz2/ja;->OoooOoO:Landroid/view/View;

    const v2, 0x7f090458

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lz2/ja;->OoooooO:Landroid/widget/TextView;

    iget-object v1, p0, Lz2/ja;->OoooOoO:Landroid/view/View;

    const v2, 0x7f0902d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lz2/ja;->Ooooooo:Landroid/widget/ImageView;

    iget-object v1, p0, Lz2/ja;->OoooOoO:Landroid/view/View;

    const v2, 0x7f09045f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lz2/ja;->o0OoOo0:Landroid/widget/TextView;

    sget-boolean v1, Lz2/q7;->OooO0oO:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lz2/ja;->OooooOo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lz2/ja;->OooooO0()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lz2/w3;->OooOoo0(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lz2/ja;->OoooOoo:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    int-to-float v0, v0

    const v3, 0x3f666666    # 0.9f

    mul-float v0, v0, v3

    sub-float/2addr v2, v0

    float-to-int v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lz2/ja;->OoooOoo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private OoooO0()V
    .locals 2

    iget-object v0, p0, Lz2/ja;->Ooooo0o:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lz2/ja;->OooooO0:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lz2/ja;->OoooooO:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lz2/ja;->Ooooooo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lz2/ja;->OoooOoO:Landroid/view/View;

    const v1, 0x7f090233

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private OoooO00()V
    .locals 2

    const-string v0, "XJL_AD_TAG"

    const-string v1, "loadILFYAd: -- initData:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lz2/ja;->o00Oo0:Lz2/pa;

    invoke-virtual {v0}, Lz2/pa;->OooOo00()V

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/l10;->OooOo00(Ljava/lang/Object;)V

    return-void
.end method

.method private OoooO0O()V
    .locals 2

    iget-object v0, p0, Lz2/ja;->o00Oo0:Lz2/pa;

    invoke-virtual {v0}, Lz2/pa;->OooOo0O()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lz2/ja$OooO0OO;

    invoke-direct {v1, p0}, Lz2/ja$OooO0OO;-><init>(Lz2/ja;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private synthetic OoooOO0(I)V
    .locals 1

    const/16 v0, 0x65

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz2/ja;->o00O0O:Z

    :cond_0
    return-void
.end method

.method private synthetic OoooOOO()Landroid/widget/LinearLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lz2/ja;->o00Ooo:Lz2/vi;

    invoke-interface {v0}, Lz2/vi;->read()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private synthetic OoooOo0(Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lz2/ja;->o00Ooo:Lz2/vi;

    invoke-interface {v0}, Lz2/vi;->OooO00o()Ljava/lang/String;

    iget-object v0, p0, Lz2/ja;->OoooOoo:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lz2/ja;->OoooOoo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lz2/ja;->o00Ooo:Lz2/vi;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lz2/vi;->OooO0o0()Ljava/lang/String;

    iget-object p2, p0, Lz2/ja;->o00Ooo:Lz2/vi;

    invoke-interface {p2, p1}, Lz2/vi;->OooO0O0(Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string p2, "\u811a\u672c\u8bbe\u7f6e\u66f4\u65b0\u6210\u529f\uff01"

    invoke-static {p1, p2}, Lz2/dh;->OooO0OO(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    const-string p2, "\u811a\u672c\u8bbe\u7f6e\u66f4\u65b0\u5f02\u5e38\uff01"

    invoke-static {p1, p2}, Lz2/dh;->OooO0OO(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private OoooOoo()V
    .locals 5

    iget-boolean v0, p0, Lz2/ja;->o00oO0O:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lz2/ja;->o0ooOO0:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readUIP -- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getUiFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v4, v0}, Lz2/ii;->OooO0OO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lz2/vi;

    move-result-object v0

    iput-object v0, p0, Lz2/ja;->o00Ooo:Lz2/vi;

    iget-object v0, p0, Lz2/ja;->Ooooo00:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lz2/ja;->OoooOoo:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "\u6b63\u5728\u52a0\u8f7dUI\u754c\u9762..."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lz2/ja;->OoooOoo:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-boolean v1, p0, Lz2/ja;->o00oO0O:Z

    invoke-static {}, Lz2/e5;->OooO00o()Lz2/i40;

    move-result-object v0

    new-instance v1, Lz2/ja$OooOO0;

    invoke-direct {v1, p0}, Lz2/ja$OooOO0;-><init>(Lz2/ja;)V

    invoke-virtual {v0, v1}, Lz2/p40;->OooO0oO(Ljava/util/concurrent/Callable;)Lorg/jdeferred/Promise;

    move-result-object v0

    new-instance v1, Lz2/ja$OooO;

    invoke-direct {v1, p0}, Lz2/ja$OooO;-><init>(Lz2/ja;)V

    invoke-interface {v0, v1}, Lorg/jdeferred/Promise;->OooOOO(Lz2/y30;)Lorg/jdeferred/Promise;

    move-result-object v0

    new-instance v1, Lz2/ja$OooO0o;

    invoke-direct {v1, p0}, Lz2/ja$OooO0o;-><init>(Lz2/ja;)V

    invoke-interface {v0, v1}, Lorg/jdeferred/Promise;->OooOO0(Lz2/b40;)Lorg/jdeferred/Promise;

    return-void
.end method

.method private Ooooo00()V
    .locals 4

    invoke-static {}, Lz2/w7;->OooOO0()Lz2/w7;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/w7;->OooO0o0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lz2/w7;->OooOO0()Lz2/w7;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/w7;->OooO0Oo(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    iget v0, v0, Lz2/b7;->OooO0OO:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    iput v1, v0, Lz2/b7;->OooO0OO:I

    :cond_1
    const/16 v0, 0xa

    invoke-static {v0}, Lz2/y8;->OooOO0o(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :try_start_0
    const-string v0, "60ca42c49a602b54125a1982215d89ef"

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "9916101i1k1j981h14101j297j2f1425"

    const/4 v3, -0x5

    invoke-static {v2, v3}, Lz2/l8;->OooO00o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lz2/x8;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lz2/u8;->OooO00o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/base/AppContext;->OooO()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private OooooO0()V
    .locals 2

    sget-boolean v0, Lz2/q7;->OooO0oO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/ja;->OooooOo:Landroid/widget/TextView;

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v1

    invoke-virtual {v1}, Lz2/q7;->OooO0oO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private OooooOO()V
    .locals 2

    iget-object v0, p0, Lz2/ja;->o00Oo0:Lz2/pa;

    invoke-virtual {v0}, Lz2/pa;->OooOoO0()V

    invoke-static {}, Lz2/oi;->OooO0o()Lz2/oi;

    move-result-object v0

    invoke-virtual {v0}, Lz2/oi;->OooO0OO()Lz2/ni;

    move-result-object v0

    invoke-interface {v0}, Lz2/ni;->OooO0OO()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lz2/xb;->OooO0OO()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lz2/z9;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lz2/z9;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    :goto_0
    invoke-direct {p0}, Lz2/ja;->Ooooo00()V

    goto :goto_2

    :cond_1
    invoke-static {}, Lz2/xb;->OooO0OO()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lz2/xb;->OooO0o0()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lz2/oi;->OooO0o()Lz2/oi;

    move-result-object v0

    invoke-virtual {v0}, Lz2/oi;->OooO0OO()Lz2/ni;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lz2/ni;->OooO0O0(Landroid/app/Activity;)V

    :goto_2
    return-void
.end method

.method private OooooOo()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lz2/ja;->OooooOO()V

    goto :goto_0

    :cond_0
    new-instance v0, Lz2/aa;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lz2/ea;

    invoke-direct {v2, p0}, Lz2/ea;-><init>(Lz2/ja;)V

    invoke-direct {v0, v1, v2}, Lz2/aa;-><init>(Landroid/content/Context;Lz2/aa$OooO00o;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lz2/ja;->OooooOO()V

    :goto_0
    return-void
.end method

.method private Oooooo(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0}, Lz2/og;->isScriptStarted()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string p1, "\u811a\u672c\u8bbe\u7f6e\u66f4\u65b0\u5931\u8d25\uff0c\u811a\u672c\u8fd0\u884c\u4e2d\uff01"

    :goto_0
    invoke-static {v1, p1}, Lz2/dh;->OooO0OO(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u811a\u672c\u8bbe\u7f6e\u5185\u5bb9\u4e3a\u7a7a\uff01"

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lz2/a4;->OooOOO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateScriptSettings --> 1 \u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u8bbe\u7f6e\u66f4\u65b0 encoding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",scriptSetting="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p1}, Lz2/j4;->OooOo0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "script.cfg"

    invoke-static {v1, v2}, Lz2/k4;->OooO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v1

    invoke-virtual {v1}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, p1, v3}, Lz2/j4;->OooOo(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/cyjh/elfin/entity/Script;->setCfgFile(Ljava/io/File;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScriptSettings --> 2 \u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u8bbe\u7f6e\u66f4\u65b0 toUtf8Result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\ncfgFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",result="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    invoke-static {}, Lz2/e5;->OooO00o()Lz2/i40;

    move-result-object v0

    new-instance v1, Lz2/da;

    invoke-direct {v1, p0}, Lz2/da;-><init>(Lz2/ja;)V

    invoke-virtual {v0, v1}, Lz2/p40;->OooO0oO(Ljava/util/concurrent/Callable;)Lorg/jdeferred/Promise;

    move-result-object v0

    new-instance v1, Lz2/fa;

    invoke-direct {v1, p0, p1}, Lz2/fa;-><init>(Lz2/ja;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/jdeferred/Promise;->OooOOO(Lz2/y30;)Lorg/jdeferred/Promise;

    :cond_2
    :goto_1
    return-void
.end method

.method private Oooooo0()V
    .locals 3

    iget-object v0, p0, Lz2/ja;->oo000o:Lz2/ja$OooOOO;

    if-nez v0, :cond_0

    new-instance v0, Lz2/ja$OooOOO;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lz2/ja$OooOOO;-><init>(Lz2/ja;ILz2/ja$OooO00o;)V

    iput-object v0, p0, Lz2/ja;->oo000o:Lz2/ja$OooOOO;

    :cond_0
    iget-object v0, p0, Lz2/ja;->oo000o:Lz2/ja$OooOOO;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public OooOo00()I
    .locals 1

    const v0, 0x7f0c00f7

    return v0
.end method

.method public Oooo0oo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lz2/ja;->o00Oo0:Lz2/pa;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/pa;->OooOo0()V

    :cond_0
    return-void
.end method

.method public synthetic OoooOOo()Landroid/widget/LinearLayout;
    .locals 1

    invoke-direct {p0}, Lz2/ja;->OoooOOO()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public synthetic OoooOoO(Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/ja;->OoooOo0(Ljava/lang/String;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public Ooooo0o(Lz2/ja$OooOOOO;)V
    .locals 0

    iput-object p1, p0, Lz2/ja;->o00oO0o:Lz2/ja$OooOOOO;

    return-void
.end method

.method public synthetic o000oOoO(I)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/ja;->OoooOO0(I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lz2/i3;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lz2/ja;->OoooO00()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    invoke-static {}, Lz2/oi;->OooO0o()Lz2/oi;

    move-result-object p1

    invoke-virtual {p1}, Lz2/oi;->OooO0OO()Lz2/ni;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-interface {p1, p2}, Lz2/ni;->OooO0Oo(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    iget p1, p0, Lz2/ja;->o00ooo:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lz2/ja;->Oooo0o()V

    iget-object p1, p0, Lz2/ja;->Oooooo:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :goto_0
    :sswitch_1
    iget-object p1, p0, Lz2/ja;->o00o0O:Lz2/rh;

    invoke-virtual {p1}, Lz2/rh;->OooOO0O()V

    invoke-direct {p0}, Lz2/ja;->Oooo0o()V

    goto :goto_1

    :sswitch_2
    iput-boolean v0, p0, Lz2/ja;->o00O0O:Z

    invoke-direct {p0}, Lz2/ja;->OooooOo()V

    const/16 p1, 0xb

    invoke-static {p1}, Lz2/y8;->OooOO0o(I)V

    goto :goto_1

    :sswitch_3
    iput-boolean v0, p0, Lz2/ja;->o00O0O:Z

    invoke-direct {p0}, Lz2/ja;->OooooOo()V

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/q7;->OooO0o()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lz2/y8;->OooO00o(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090233 -> :sswitch_4
        0x7f090235 -> :sswitch_3
        0x7f090236 -> :sswitch_2
        0x7f0902d0 -> :sswitch_1
        0x7f090458 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lz2/i3;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-static {}, Lz2/ih;->OooO0Oo()Lz2/ih;

    move-result-object v0

    invoke-virtual {v0}, Lz2/ih;->OooO()V

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/l10;->OooOoO0(Ljava/lang/Object;)V

    iget-object v0, p0, Lz2/ja;->ooOO:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadILFYAd: -- onNativeAdLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XJL_AD_TAG"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "loadILFYAd: -- onPause"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMessageMainThread(Lcom/cyjh/elfin/entity/MsgItem;)V
    .locals 1
    .annotation runtime Lz2/r10;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/MsgItem;->getMsgType()I

    move-result p1

    const/16 v0, 0x3f0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2761

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2762

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lz2/n7;->OooO00o()Lz2/n7;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lz2/n7;->OooO0OO(Z)V

    invoke-direct {p0}, Lz2/ja;->OoooOoo()V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object p1, p0, Lz2/ja;->o00Ooo:Lz2/vi;

    invoke-interface {p1}, Lz2/vi;->OooO0Oo()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lz2/ja;->OoooOoo()V

    iget-object p1, p0, Lz2/ja;->o00Oo0:Lz2/pa;

    invoke-virtual {p1}, Lz2/pa;->OooOo()V

    invoke-static {}, Lz2/h7;->OooO0O0()V

    :goto_0
    return-void
.end method

.method public onMessageThreadMain(Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;)V
    .locals 5
    .annotation runtime Lz2/r10;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;->getExpireTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/q7;->OooO0o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/ii;->OooOOO(Ljava/lang/String;)V

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;->getExpireTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lz2/q7;->OooOO0o(J)V

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lz2/q7;->OooOOO(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;->getExpireTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;->getExpireTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lz2/q7;->OooOO0o(J)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lz2/ja;->OooooO0()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lz2/ja;->o00Oo0:Lz2/pa;

    invoke-virtual {v0}, Lz2/pa;->OooOo0o()V

    const-string v0, "XJL_AD_TAG"

    const-string v1, "loadILFYAd: -- onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceiveScriptUIEvent(Lz2/q3;)V
    .locals 7
    .annotation runtime Lz2/r10;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "onReceiveScriptUIEvent --> \u66f4\u65b0Script UI"

    invoke-static {v0, v1}, Lz2/a5;->OooO0O0(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lz2/ja;->OoooOoo()V

    iget-object v0, p0, Lz2/ja;->o00Oo0:Lz2/pa;

    invoke-virtual {v0}, Lz2/pa;->OooOo00()V

    invoke-virtual {p1}, Lz2/q3;->OooO00o()I

    move-result v0

    sget v1, Lz2/c7;->OooO0o:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    iget-boolean v0, v0, Lz2/b7;->OooO0O0:Z

    invoke-static {p1, v0}, Lz2/c9;->OooO0oO(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lz2/c9;->OooO0Oo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object p1

    invoke-virtual {p1}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object p1

    invoke-static {}, Lz2/bd;->OooO0o()Lz2/bd;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lz2/ja$OooOO0O;

    invoke-direct {v6, p0}, Lz2/ja$OooOO0O;-><init>(Lz2/ja;)V

    invoke-virtual/range {v1 .. v6}, Lz2/bd;->OooOO0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz2/bd$OooO00o;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    iget-boolean v0, v0, Lz2/b7;->OooO0O0:Z

    invoke-static {p1, v0}, Lz2/c9;->OooO0o(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    const-string v1, "script_version"

    invoke-virtual {v0, v1, p1}, Lz2/x4;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lz2/q3;->OooO00o()I

    move-result p1

    sget v0, Lz2/c7;->OooO:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lz2/ja;->ooOO:Landroid/os/Handler;

    new-instance v0, Lz2/ja$OooOOO0;

    invoke-direct {v0, p0}, Lz2/ja$OooOOO0;-><init>(Lz2/ja;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onReceiveSocketMessage(Lz2/eh;)V
    .locals 2
    .annotation runtime Lz2/r10;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p1}, Lz2/eh;->OooO0oO()I

    move-result v0

    const/16 v1, 0x2775

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2777

    if-eq v0, v1, :cond_1

    const/16 v1, 0x277b

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lz2/eh;->OooO0o0()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/ja;->Oooooo(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lz2/ja;->Ooooo0o:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    invoke-static {}, Lz2/r7;->OooO0o()Lz2/r7;

    move-result-object p1

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lz2/ja;->Ooooo0o:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    invoke-static {}, Lz2/r7;->OooO0o()Lz2/r7;

    move-result-object p1

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, v0}, Lz2/r7;->OooO0oO(I)V

    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lz2/ja;->o00Oo0:Lz2/pa;

    invoke-virtual {v0}, Lz2/pa;->OooOo()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/ja;->o00O0O:Z

    invoke-direct {p0}, Lz2/ja;->OooooO0()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lz2/i3;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lz2/ja;->OoooOoO:Landroid/view/View;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class p2, Lz2/pa;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lz2/pa;

    iput-object p1, p0, Lz2/ja;->o00Oo0:Lz2/pa;

    invoke-direct {p0}, Lz2/ja;->OoooO0O()V

    invoke-direct {p0}, Lz2/ja;->OoooO()V

    invoke-static {}, Lz2/qh;->OooO0O0()Lz2/qh;

    move-result-object p1

    invoke-virtual {p1}, Lz2/qh;->OooO0Oo()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "XJL_AD_TAG"

    const-string p2, "url isFreeAd:"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lz2/ja;->Oooo()V

    :cond_0
    invoke-direct {p0}, Lz2/ja;->OoooO0()V

    :cond_1
    invoke-direct {p0}, Lz2/ja;->OoooOoo()V

    return-void
.end method
