.class public abstract Lz2/o000O000;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o00O00;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lz2/o000O000<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lz2/o00O00;"
    }
.end annotation


# static fields
.field private static final OoooOo0:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static OoooOoO:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static OoooOoo:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final Ooooo00:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static Ooooo0o:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final OooooO0:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static OooooOO:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static OooooOo:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Dialog;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Oooo:Landroid/app/Activity;

.field private Oooo0oo:Landroid/view/View;

.field public OoooO:Lz2/o000Oo0;

.field public OoooO0:Landroid/view/View;

.field private OoooO00:Landroid/content/Context;

.field public OoooO0O:Ljava/lang/Object;

.field private OoooOO0:Lz2/o0O0ooO;

.field private OoooOOO:Lorg/apache/http/HttpHost;

.field private OoooOOo:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private o000oOoO:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lz2/o000O000;->OoooOo0:[Ljava/lang/Class;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Class;

    const-class v4, Landroid/widget/AdapterView;

    aput-object v4, v2, v3

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v2, v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v6, v2, v7

    sput-object v2, Lz2/o000O000;->OoooOoO:[Ljava/lang/Class;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v6, Landroid/widget/AbsListView;

    aput-object v6, v2, v3

    aput-object v4, v2, v0

    sput-object v2, Lz2/o000O000;->OoooOoo:[Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/CharSequence;

    aput-object v2, v1, v3

    aput-object v4, v1, v0

    aput-object v4, v1, v5

    aput-object v4, v1, v7

    sput-object v1, Lz2/o000O000;->Ooooo00:[Ljava/lang/Class;

    new-array v1, v5, [Ljava/lang/Class;

    aput-object v4, v1, v3

    aput-object v4, v1, v0

    sput-object v1, Lz2/o000O000;->Ooooo0o:[Ljava/lang/Class;

    new-array v1, v0, [Ljava/lang/Class;

    aput-object v4, v1, v3

    sput-object v1, Lz2/o000O000;->OooooO0:[Ljava/lang/Class;

    new-array v1, v5, [Ljava/lang/Class;

    aput-object v4, v1, v3

    const-class v2, Landroid/graphics/Paint;

    aput-object v2, v1, v0

    sput-object v1, Lz2/o000O000;->OooooOO:[Ljava/lang/Class;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lz2/o000O000;->OooooOo:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz2/o000O000;->o000oOoO:I

    iput-object p1, p0, Lz2/o000O000;->Oooo:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz2/o000O000;->o000oOoO:I

    iput-object p2, p0, Lz2/o000O000;->Oooo0oo:Landroid/view/View;

    iput-object p2, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    iput-object p1, p0, Lz2/o000O000;->Oooo:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz2/o000O000;->o000oOoO:I

    iput-object p1, p0, Lz2/o000O000;->OoooO00:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz2/o000O000;->o000oOoO:I

    iput-object p1, p0, Lz2/o000O000;->Oooo0oo:Landroid/view/View;

    iput-object p1, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    return-void
.end method

.method private Oooo0OO(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lz2/o000O000;->Oooo0oo:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/o000O000;->Oooo:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private varargs Oooo0o([I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-direct {p0, v0}, Lz2/o000O000;->Oooo0OO(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private Oooo0o0(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lz2/o000O000;->Oooo0oo:Landroid/view/View;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lz2/o000O000;->Oooo:Landroid/app/Activity;

    if-eqz v0, :cond_1

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private OoooO()Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooOOo:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/view/View;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lz2/o000O000;->OoooOOo:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lz2/o000O000;->OoooOOo:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method private o000O(ZIZ)V
    .locals 2

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lz2/o000O000;->OoooOO0()Landroid/content/Context;

    move-result-object v1

    if-lez p2, :cond_0

    if-eqz p3, :cond_0

    int-to-float p2, p2

    invoke-static {v1, p2}, Lz2/o00O000;->OooOOO(Landroid/content/Context;F)I

    move-result p2

    :cond_0
    if-eqz p1, :cond_1

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object p1, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private o000O00O()Lz2/o00O000o;
    .locals 3

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    const v1, 0x40ff0002

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/o00O000o;

    if-nez v2, :cond_0

    new-instance v2, Lz2/o00O000o;

    invoke-direct {v2}, Lz2/o00O000o;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    const-string v0, "set scroll listenr"

    invoke-static {v0}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    :cond_0
    return-object v2
.end method


# virtual methods
.method public OooO(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lz2/o000O0O0;

    invoke-direct {v0}, Lz2/o000O0O0;-><init>()V

    invoke-virtual {v0, p3}, Lz2/o000OO0O;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/o000O0O0;

    invoke-virtual {v1, p4, p5}, Lz2/o000OO0O;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3, v0}, Lz2/o000O000;->OooO0oo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lz2/o000O0O0;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooO00o(Landroid/widget/Adapter;)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Adapter;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0(Landroid/widget/ExpandableListAdapter;)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ExpandableListAdapter;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooO0OO(Lz2/o000O0O0;)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/o000O0O0<",
            "TK;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/o000O000;->o0000(Lz2/o000OO0O;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooO0Oo(Ljava/lang/String;Ljava/lang/Class;JLz2/o000O0O0;)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;J",
            "Lz2/o000O0O0<",
            "TK;>;)TT;"
        }
    .end annotation

    invoke-virtual {p5, p2}, Lz2/o000OO0O;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz2/o000O0O0;

    invoke-virtual {p2, p1}, Lz2/o000OO0O;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000O0O0;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lz2/o000OO0O;->fileCache(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000O0O0;

    invoke-virtual {p1, p3, p4}, Lz2/o000OO0O;->expire(J)Ljava/lang/Object;

    invoke-virtual {p0, p5}, Lz2/o000O000;->OooO0OO(Lz2/o000O0O0;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooO0o(Ljava/lang/String;Ljava/lang/Class;Lz2/o000O0O0;)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lz2/o000O0O0<",
            "TK;>;)TT;"
        }
    .end annotation

    invoke-virtual {p3, p2}, Lz2/o000OO0O;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz2/o000O0O0;

    invoke-virtual {p2, p1}, Lz2/o000OO0O;->url(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p3}, Lz2/o000O000;->OooO0OO(Lz2/o000O0O0;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooO0o0(Ljava/lang/String;Ljava/lang/Class;JLjava/lang/Object;Ljava/lang/String;)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;J",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lz2/o000O0O0;

    invoke-direct {v0}, Lz2/o000O0O0;-><init>()V

    invoke-virtual {v0, p2}, Lz2/o000OO0O;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/o000O0O0;

    invoke-virtual {v1, p5, p6}, Lz2/o000OO0O;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lz2/o000O0O0;

    const/4 p6, 0x1

    invoke-virtual {p5, p6}, Lz2/o000OO0O;->fileCache(Z)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lz2/o000O0O0;

    invoke-virtual {p5, p3, p4}, Lz2/o000OO0O;->expire(J)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lz2/o000O000;->OooO0o(Ljava/lang/String;Ljava/lang/Class;Lz2/o000O0O0;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooO0oO(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lz2/o000O0O0;

    invoke-direct {v0}, Lz2/o000O0O0;-><init>()V

    invoke-virtual {v0, p2}, Lz2/o000OO0O;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/o000O0O0;

    invoke-virtual {v1, p3, p4}, Lz2/o000OO0O;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lz2/o000O000;->OooO0o(Ljava/lang/String;Ljava/lang/Class;Lz2/o000O0O0;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooO0oo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lz2/o000O0O0;)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lz2/o000O0O0<",
            "TK;>;)TT;"
        }
    .end annotation

    invoke-virtual {p4, p3}, Lz2/o000OO0O;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lz2/o000O0O0;

    invoke-virtual {p3, p1}, Lz2/o000OO0O;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000O0O0;

    invoke-virtual {p1, p2}, Lz2/o000OO0O;->params(Ljava/util/Map;)Ljava/lang/Object;

    invoke-virtual {p0, p4}, Lz2/o000O000;->OooO0OO(Lz2/o000O0O0;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0()Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Lz2/o000OO0O;->cancel()V

    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object v0

    return-object v0
.end method

.method public OooOO0O(I)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz2/o000O000;->OooOO0o(ILandroid/view/animation/Animation$AnimationListener;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0o(ILandroid/view/animation/Animation$AnimationListener;)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/animation/Animation$AnimationListener;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lz2/o000O000;->OoooOO0()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, p1}, Lz2/o000O000;->OooOOO0(Landroid/view/animation/Animation;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooOOO(Lz2/o000Oo0;)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o000Oo0;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lz2/o000O000;->OoooO:Lz2/o000Oo0;

    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooOOO0(Landroid/view/animation/Animation;)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooOOOO(I)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooOOOo(I)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooOOo(Ljava/lang/String;J)Lz2/o000O000;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    const-class v2, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v6}, Lz2/o000O000;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;JLjava/lang/Object;Ljava/lang/String;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooOOo0(I)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/o000O000;->OoooOO0()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooOOoo(Z)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooOo(Ljava/lang/Object;Ljava/lang/String;)Lz2/o000O000;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lz2/o00O000o;

    invoke-direct {v0}, Lz2/o00O000o;-><init>()V

    sget-object v1, Lz2/o000O000;->OoooOo0:[Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Lz2/o00O000o;->OooO0OO(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lz2/o00O000o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/o000O000;->OooOo0o(Landroid/view/View$OnClickListener;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooOo0()Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object v0

    return-object v0
.end method

.method public OooOo00()Lz2/o000O000;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/ImageView;

    const v2, 0x40ff0001

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object v0

    return-object v0
.end method

.method public OooOo0O(Z)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooOo0o(Landroid/view/View$OnClickListener;)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnClickListener;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooOoO()Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object v0

    return-object v0
.end method

.method public OooOoO0(Landroid/view/View;)Lz2/o000O000;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lz2/o000O000;->OoooO()Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000O000;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lz2/o000O000;->Oooo:Landroid/app/Activity;

    iput-object v0, p1, Lz2/o000O000;->Oooo:Landroid/app/Activity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p1
.end method

.method public OooOoOO(Ljava/lang/String;Ljava/lang/Class;Lz2/o000O0O0;)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lz2/o000O0O0<",
            "TK;>;)TT;"
        }
    .end annotation

    invoke-virtual {p3, p1}, Lz2/o000OO0O;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000O0O0;

    invoke-virtual {p1, p2}, Lz2/o000OO0O;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000O0O0;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lz2/o000OO0O;->method(I)Ljava/lang/Object;

    invoke-virtual {p0, p3}, Lz2/o000O000;->OooO0OO(Lz2/o000O0O0;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooOoo()Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lz2/o000O000;->OooooOo:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public OooOoo0(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lz2/o000O0O0;

    invoke-direct {v0}, Lz2/o000O0O0;-><init>()V

    invoke-virtual {v0, p3, p4}, Lz2/o000OO0O;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lz2/o000O000;->OooOoOO(Ljava/lang/String;Ljava/lang/Class;Lz2/o000O0O0;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooOooO(Landroid/app/Dialog;)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lz2/o000O000;->OooooOo:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public OooOooo(Ljava/lang/String;Ljava/io/File;Lz2/o000O0O0;)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lz2/o000O0O0<",
            "Ljava/io/File;",
            ">;)TT;"
        }
    .end annotation

    invoke-virtual {p3, p1}, Lz2/o000OO0O;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000O0O0;

    const-class v0, Ljava/io/File;

    invoke-virtual {p1, v0}, Lz2/o000OO0O;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000O0O0;

    invoke-virtual {p1, p2}, Lz2/o000OO0O;->targetFile(Ljava/io/File;)Ljava/lang/Object;

    invoke-virtual {p0, p3}, Lz2/o000O000;->OooO0OO(Lz2/o000O0O0;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public Oooo(I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lz2/o000O000;->OoooOO0()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lz2/o000OO00;->getMemoryCached(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public Oooo0(Z)Lz2/o000O000;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public Oooo000(Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lz2/o000O0O0;

    invoke-direct {v0}, Lz2/o000O0O0;-><init>()V

    invoke-virtual {v0, p3, p4}, Lz2/o000OO0O;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lz2/o000O000;->OooOooo(Ljava/lang/String;Ljava/io/File;Lz2/o000O0O0;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public Oooo00O(Z)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public Oooo00o(IZ)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/ExpandableListView;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public Oooo0O0(I)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/o000O000;->Oooo0OO(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/o000O000;->OooOoO0(Landroid/view/View;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public Oooo0oO()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public Oooo0oo(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    invoke-virtual {p0}, Lz2/o000O000;->OoooOO0()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lz2/o00O000;->OooOOo(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lz2/o00O000;->OooOo0O(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lz2/o000O000;->OoooOO0()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lz2/o00O000;->OooOOo(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lz2/o00O000;->OooOo0O(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public OoooO0(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {p1, p2}, Lz2/o000OO00;->getMemoryCached(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lz2/o000O000;->Oooo0oo(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, p2, v1, v2}, Lz2/o000OO00;->getResizedImage(Ljava/lang/String;[BIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public OoooO00(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz2/o000O000;->OoooO0(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public OoooO0O()Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method public OoooOO0()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lz2/o000O000;->Oooo:Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lz2/o000O000;->Oooo0oo:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lz2/o000O000;->OoooO00:Landroid/content/Context;

    return-object v0
.end method

.method public OoooOOO()Landroid/text/Editable;
    .locals 2

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public OoooOOo()Landroid/widget/ExpandableListView;
    .locals 1

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    check-cast v0, Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method public OoooOo0()Landroid/widget/Gallery;
    .locals 1

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    check-cast v0, Landroid/widget/Gallery;

    return-object v0
.end method

.method public OoooOoO()Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    return-object v0
.end method

.method public OoooOoo()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public Ooooo00()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method public Ooooo0o()Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public OooooO0()Landroid/widget/RatingBar;
    .locals 1

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    check-cast v0, Landroid/widget/RatingBar;

    return-object v0
.end method

.method public OooooOO()Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    check-cast v0, Landroid/widget/SeekBar;

    return-object v0
.end method

.method public OooooOo()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public Oooooo()Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    return-object v0
.end method

.method public Oooooo0()I
    .locals 2

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public OoooooO()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public Ooooooo(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public o000(F)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/RatingBar;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/RatingBar;

    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setRating(F)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o0000(Lz2/o000OO0O;)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/o000OO0O<",
            "*TK;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO:Lz2/o000Oo0;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lz2/o000OO0O;->auth(Lz2/o000Oo0;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lz2/o000O000;->OoooO0O:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lz2/o000OO0O;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lz2/o000O000;->OoooOO0:Lz2/o0O0ooO;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lz2/o000OO0O;->transformer(Lz2/o0O0ooO;)Ljava/lang/Object;

    :cond_2
    iget v0, p0, Lz2/o000O000;->o000oOoO:I

    invoke-virtual {p1, v0}, Lz2/o000OO0O;->policy(I)Ljava/lang/Object;

    iget-object v0, p0, Lz2/o000O000;->OoooOOO:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz2/o000O000;->OoooOOO:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lz2/o000OO0O;->proxy(Ljava/lang/String;I)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lz2/o000O000;->Oooo:Landroid/app/Activity;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lz2/o000OO0O;->async(Landroid/app/Activity;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lz2/o000O000;->OoooOO0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz2/o000OO0O;->async(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0}, Lz2/o000O000;->o000OoO()V

    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o00000(Ljava/lang/String;ZZ)Lz2/o000O000;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)TT;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lz2/o000O000;->o00000O0(Ljava/lang/String;ZZII)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000000(Ljava/lang/String;)Lz2/o000O000;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lz2/o000O000;->o00000O0(Ljava/lang/String;ZZII)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000000O(Ljava/lang/String;Lz2/o000OOo0;)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lz2/o000OOo0;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lz2/o000O000;->o000000o(Ljava/lang/String;Lz2/o000OOo0;Ljava/lang/String;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000000o(Ljava/lang/String;Lz2/o000OOo0;Ljava/lang/String;)Lz2/o000O000;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lz2/o000OOo0;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/o000O000;->Oooo:Landroid/app/Activity;

    invoke-virtual {p0}, Lz2/o000O000;->OoooOO0()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    iget-object v5, p0, Lz2/o000O000;->OoooO0O:Ljava/lang/Object;

    iget-object v6, p0, Lz2/o000O000;->OoooO:Lz2/o000Oo0;

    iget-object v8, p0, Lz2/o000O000;->OoooOOO:Lorg/apache/http/HttpHost;

    move-object v4, p1

    move-object v7, p2

    move-object v9, p3

    invoke-static/range {v1 .. v9}, Lz2/o000OO00;->async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Object;Lz2/o000Oo0;Lz2/o000OOo0;Lorg/apache/http/HttpHost;Ljava/lang/String;)V

    invoke-virtual {p0}, Lz2/o000O000;->o000OoO()V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o00000O(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;I)Lz2/o000O000;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII",
            "Landroid/graphics/Bitmap;",
            "I)TT;"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lz2/o000O000;->o00000OO(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IF)Lz2/o000O000;

    move-result-object v0

    return-object v0
.end method

.method public o00000O0(Ljava/lang/String;ZZII)Lz2/o000O000;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII)TT;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lz2/o000O000;->o00000O(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;I)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o00000OO(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IF)Lz2/o000O000;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII",
            "Landroid/graphics/Bitmap;",
            "IF)TT;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lz2/o000O000;->o00000Oo(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFILjava/lang/String;)Lz2/o000O000;

    move-result-object v0

    return-object v0
.end method

.method public o00000Oo(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFILjava/lang/String;)Lz2/o000O000;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII",
            "Landroid/graphics/Bitmap;",
            "IFI",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lz2/o000O000;->Oooo:Landroid/app/Activity;

    invoke-virtual/range {p0 .. p0}, Lz2/o000O000;->OoooOO0()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    const v13, 0x7f7fffff    # Float.MAX_VALUE

    iget-object v14, v0, Lz2/o000O000;->OoooO0O:Ljava/lang/Object;

    iget-object v15, v0, Lz2/o000O000;->OoooO:Lz2/o000Oo0;

    iget v1, v0, Lz2/o000O000;->o000oOoO:I

    move/from16 v16, v1

    iget-object v1, v0, Lz2/o000O000;->OoooOOO:Lorg/apache/http/HttpHost;

    move-object/from16 v18, v1

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v17, p9

    move-object/from16 v19, p10

    invoke-static/range {v2 .. v19}, Lz2/o000OO00;->async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lz2/o000Oo0;IILorg/apache/http/HttpHost;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lz2/o000O000;->o000OoO()V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object v1

    return-object v1
.end method

.method public o00000o0(Ljava/lang/String;ZZIILz2/o000OO00;)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII",
            "Lz2/o000OO00;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p6, p4}, Lz2/o000OO00;->targetWidth(I)Lz2/o000OO00;

    move-result-object p4

    invoke-virtual {p4, p5}, Lz2/o000OO00;->fallback(I)Lz2/o000OO00;

    move-result-object p4

    invoke-virtual {p4, p1}, Lz2/o000OO0O;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000OO00;

    invoke-virtual {p1, p2}, Lz2/o000OO0O;->memCache(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000OO00;

    invoke-virtual {p1, p3}, Lz2/o000OO0O;->fileCache(Z)Ljava/lang/Object;

    invoke-virtual {p0, p6}, Lz2/o000O000;->oo0o0Oo(Lz2/o000OO00;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o00000oO(Ljava/lang/String;)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/o000O000;->Oooo0oo(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o00000oo()Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    move-result-object v0

    return-object v0
.end method

.method public o0000O(Ljava/lang/Object;Ljava/lang/String;)Lz2/o000O000;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lz2/o00O000o;

    invoke-direct {v0}, Lz2/o00O000o;-><init>()V

    sget-object v1, Lz2/o000O000;->OoooOoO:[Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Lz2/o00O000o;->OooO0OO(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lz2/o00O000o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/o000O000;->o000OO(Landroid/widget/AdapterView$OnItemSelectedListener;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o0000O0(Landroid/widget/AdapterView$OnItemClickListener;)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public varargs o0000O00(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/o000O000;->Oooo:Landroid/app/Activity;

    :cond_0
    move-object v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lz2/o00O000;->OooOooO(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o0000O0O(Ljava/lang/Object;Ljava/lang/String;)Lz2/o000O000;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lz2/o00O000o;

    invoke-direct {v0}, Lz2/o00O000o;-><init>()V

    sget-object v1, Lz2/o000O000;->OoooOoO:[Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Lz2/o00O000o;->OooO0OO(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lz2/o00O000o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/o000O000;->o0000O0(Landroid/widget/AdapterView$OnItemClickListener;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o0000OO(Landroid/view/View$OnLongClickListener;)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnLongClickListener;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o0000OO0()Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object v0

    return-object v0
.end method

.method public o0000OOO(Ljava/lang/Object;Ljava/lang/String;)Lz2/o000O000;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lz2/o00O000o;

    invoke-direct {v0}, Lz2/o00O000o;-><init>()V

    sget-object v1, Lz2/o000O000;->OoooOo0:[Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Lz2/o00O000o;->OooO0OO(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lz2/o00O000o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/o000O000;->o0000OO(Landroid/view/View$OnLongClickListener;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o0000OOo(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lz2/o000O000;->Oooo0oo(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lz2/o00O000;->OooOoo0()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v4, 0x0

    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    move-object v3, v0

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {p2}, Lz2/o00O000;->OooO0o(Ljava/io/Closeable;)V

    invoke-static {p1}, Lz2/o00O000;->OooO0o(Ljava/io/Closeable;)V

    invoke-static {v0}, Lz2/o00O000;->OooO0o(Ljava/io/Closeable;)V

    invoke-static {v1}, Lz2/o00O000;->OooO0o(Ljava/io/Closeable;)V

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {p2}, Lz2/o00O000;->OooO0o(Ljava/io/Closeable;)V

    invoke-static {p1}, Lz2/o00O000;->OooO0o(Ljava/io/Closeable;)V

    invoke-static {v0}, Lz2/o00O000;->OooO0o(Ljava/io/Closeable;)V

    invoke-static {v1}, Lz2/o00O000;->OooO0o(Ljava/io/Closeable;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p1}, Lz2/o00O000;->OooOO0O(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-object v0
.end method

.method public o0000Oo(II)Lz2/o000O000;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->Oooo:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lz2/o000O000;->Ooooo0o:[Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, p1

    const-string v1, "overridePendingTransition"

    invoke-static/range {v0 .. v5}, Lz2/o00O000;->OooOooO(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o0000Oo0(FFFF)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lz2/o000O000;->OoooOO0()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lz2/o00O000;->OooOOO(Landroid/content/Context;F)I

    move-result p1

    invoke-static {v1, p2}, Lz2/o00O000;->OooOOO(Landroid/content/Context;F)I

    move-result p2

    invoke-static {v1, p3}, Lz2/o00O000;->OooOOO(Landroid/content/Context;F)I

    move-result p3

    invoke-static {v1, p4}, Lz2/o00O000;->OooOOO(Landroid/content/Context;F)I

    move-result p4

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o0000OoO(I)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    :goto_0
    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_2

    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Lz2/o000O000;->OooOoO0(Landroid/view/View;)Lz2/o000O000;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public o0000Ooo(Landroid/view/View;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x40ff0003

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lz2/o000O000;->Oooo:Landroid/app/Activity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lz2/o000O000;->OoooOO0()Landroid/content/Context;

    move-result-object p1

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method

.method public o0000o(I)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/o000O000;->Oooo0OO(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lz2/o000O000;->OoooO0O:Ljava/lang/Object;

    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o0000o0(I)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iput p1, p0, Lz2/o000O000;->o000oOoO:I

    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o0000o0O(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/Class;Lz2/o000O0O0;)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lz2/o000O0O0<",
            "TK;>;)TT;"
        }
    .end annotation

    invoke-virtual {p5, p1}, Lz2/o000OO0O;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000O0O0;

    invoke-virtual {p1, p4}, Lz2/o000OO0O;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000O0O0;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Lz2/o000OO0O;->method(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000O0O0;

    const-string p4, "Content-Type"

    invoke-virtual {p1, p4, p2}, Lz2/o000OO0O;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000O0O0;

    const-string p2, "%entity"

    invoke-virtual {p1, p2, p3}, Lz2/o000OO0O;->param(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p5}, Lz2/o000O000;->OooO0OO(Lz2/o000O0O0;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o0000o0o(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lz2/o000O0O0;)Lz2/o000O000;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lz2/o000O0O0<",
            "TK;>;)TT;"
        }
    .end annotation

    :try_start_0
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UTF-8"

    invoke-direct {v3, p2, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "application/json"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lz2/o000O000;->o0000o0O(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/Class;Lz2/o000O0O0;)Lz2/o000O000;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public o0000oO()Z
    .locals 1

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o0000oO0(Landroid/app/Dialog;)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lz2/o000O000;->OoooO0O:Ljava/lang/Object;

    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o0000oOO(Ljava/lang/Object;)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lz2/o000O000;->OoooO0O:Ljava/lang/Object;

    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o0000oOo(Ljava/lang/String;I)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lz2/o000O000;->OoooOOO:Lorg/apache/http/HttpHost;

    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o0000oo()Z
    .locals 2

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0000oo0(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/Class;Lz2/o000O0O0;)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lz2/o000O0O0<",
            "TK;>;)TT;"
        }
    .end annotation

    invoke-virtual {p5, p1}, Lz2/o000OO0O;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000O0O0;

    invoke-virtual {p1, p4}, Lz2/o000OO0O;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000O0O0;

    const/4 p4, 0x3

    invoke-virtual {p1, p4}, Lz2/o000OO0O;->method(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000O0O0;

    const-string p4, "Content-Type"

    invoke-virtual {p1, p4, p2}, Lz2/o000OO0O;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000O0O0;

    const-string p2, "%entity"

    invoke-virtual {p1, p2, p3}, Lz2/o000OO0O;->param(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p5}, Lz2/o000O000;->OooO0OO(Lz2/o000O0O0;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o0000ooO(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lz2/o000O0O0;)Lz2/o000O000;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lz2/o000O0O0<",
            "TK;>;)TT;"
        }
    .end annotation

    :try_start_0
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UTF-8"

    invoke-direct {v3, p2, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "application/json"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lz2/o000O000;->o0000oo0(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/Class;Lz2/o000O0O0;)Lz2/o000O000;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public o000O0(I)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000O00(I)Lz2/o000O000;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lz2/o000O000;->OooooO0:[Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    const-string v1, "setOverScrollMode"

    invoke-static/range {v0 .. v5}, Lz2/o00O000;->OooOooO(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000O000(Landroid/view/View;)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lz2/o000O000;->Oooo0oo:Landroid/view/View;

    iput-object p1, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    invoke-virtual {p0}, Lz2/o000O000;->o000OoO()V

    const/4 p1, 0x0

    iput-object p1, p0, Lz2/o000O000;->OoooO00:Landroid/content/Context;

    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000O0O()Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method public o000O0O0(IZLandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 0

    const/4 p2, -0x1

    invoke-static {p1, p2, p3, p4, p5}, Lz2/o00O000o;->OooOO0O(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public o000O0Oo(IIZLandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2, p4, p5, p6}, Lz2/o00O000o;->OooOO0O(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public o000O0o(Landroid/widget/AbsListView$OnScrollListener;)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lz2/o000O000;->o000O00O()Lz2/o00O000o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/o00O000o;->OooO0Oo(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000O0o0(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;F)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, p4, v0}, Lz2/o00O000o;->OooOOO0(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;FZ)Z

    move-result p1

    return p1
.end method

.method public o000O0oO(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;FZ)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lz2/o00O000o;->OooOOO0(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;FZ)Z

    move-result p1

    return p1
.end method

.method public o000O0oo(Landroid/app/Dialog;)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    sget-object v0, Lz2/o000O000;->OooooOo:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000OO(Landroid/widget/AdapterView$OnItemSelectedListener;)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView$OnItemSelectedListener;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000OO00(Lz2/o000O0O0;)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/o000O0O0<",
            "TK;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/o000O000;->OooO0OO(Lz2/o000O0O0;)Lz2/o000O000;

    invoke-virtual {p1}, Lz2/o000OO0O;->block()V

    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000OO0O(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 1

    instance-of v0, p3, Landroid/widget/ExpandableListView;

    if-nez v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lz2/o00O000o;->OooOO0o(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please use the other shouldDelay methods for expandable list."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o000OO0o(Ljava/lang/Object;)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000OOO(I)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000OOo(Ljava/io/File;ZILz2/o000OO00;)Lz2/o000O000;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "ZI",
            "Lz2/o000OO00;",
            ")TT;"
        }
    .end annotation

    if-nez p4, :cond_0

    new-instance p4, Lz2/o000OO00;

    invoke-direct {p4}, Lz2/o000OO00;-><init>()V

    :cond_0
    move-object v6, p4

    invoke-virtual {v6, p1}, Lz2/o000OO00;->file(Ljava/io/File;)Lz2/o000OO00;

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    goto :goto_0

    :cond_1
    move-object v1, p4

    :goto_0
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lz2/o000O000;->o00000o0(Ljava/lang/String;ZZIILz2/o000OO00;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public varargs o000OOo0(I[Ljava/lang/Object;)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lz2/o000O000;->OoooOO0()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/o000O000;->o000Oo00(Ljava/lang/CharSequence;)Lz2/o000O000;

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000OOoO(Landroid/text/Spanned;)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000Oo(I)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000Oo0(ILandroid/graphics/Paint;)Lz2/o000O000;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/Paint;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lz2/o000O000;->OooooOO:[Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    const/4 p1, 0x1

    aput-object p2, v5, p1

    const-string v1, "setLayerType"

    invoke-static/range {v0 .. v5}, Lz2/o00O000;->OooOooO(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000Oo00(Ljava/lang/CharSequence;)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000Oo0O(Ljava/lang/CharSequence;Z)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Z)TT;"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o00Ooo()Lz2/o000O000;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lz2/o000O000;->o000Oo00(Ljava/lang/CharSequence;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000Oo0o(Ljava/lang/Object;Ljava/lang/String;)Lz2/o000O000;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lz2/o00O000o;

    invoke-direct {v1}, Lz2/o00O000o;-><init>()V

    const/4 v2, 0x1

    sget-object v3, Lz2/o000O000;->Ooooo00:[Ljava/lang/Class;

    invoke-virtual {v1, p1, p2, v2, v3}, Lz2/o00O000o;->OooO0OO(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lz2/o00O000o;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000OoO()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o000O000;->OoooO:Lz2/o000Oo0;

    iput-object v0, p0, Lz2/o000O000;->OoooO0O:Ljava/lang/Object;

    iput-object v0, p0, Lz2/o000O000;->OoooOO0:Lz2/o0O0ooO;

    const/4 v1, 0x0

    iput v1, p0, Lz2/o000O000;->o000oOoO:I

    iput-object v0, p0, Lz2/o000O000;->OoooOOO:Lorg/apache/http/HttpHost;

    return-void
.end method

.method public o000OoOO(I)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lz2/o000O000;->OoooOO0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lz2/o000O000;->o000Oo(I)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000OoOo(F)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000Ooo(Ljava/lang/Object;Ljava/lang/String;)Lz2/o000O000;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lz2/o000O000;->o000O00O()Lz2/o00O000o;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lz2/o000O000;->OoooOoo:[Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, v1, v2}, Lz2/o00O000o;->OooO0OO(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lz2/o00O000o;

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000Ooo0(Lz2/o0O0ooO;)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0ooO;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lz2/o000O000;->OoooOO0:Lz2/o0O0ooO;

    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000OooO(Z)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lz2/o00O000;->OooooOO(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000Oooo(Landroid/graphics/Typeface;)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000o00()Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    move-result-object v0

    return-object v0
.end method

.method public o000o000(I)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000o00O(Ljava/lang/String;)Lz2/o000O000;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    invoke-virtual {p0, p1, v0, v1, v2}, Lz2/o000O000;->o000o00o(Ljava/lang/String;ZZI)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000o00o(Ljava/lang/String;ZZI)Lz2/o000O000;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZI)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v0, v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lz2/o000O000;->o000Oo0(ILandroid/graphics/Paint;)Lz2/o000O000;

    new-instance v0, Lz2/o00O00o0;

    iget-object v2, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    move-object v3, v2

    check-cast v3, Landroid/webkit/WebView;

    iget-object v5, p0, Lz2/o000O000;->OoooO0O:Ljava/lang/Object;

    move-object v2, v0

    move-object v4, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lz2/o00O00o0;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Object;ZZI)V

    invoke-virtual {v0}, Lz2/o00O00o0;->OooO0oo()V

    iput-object v1, p0, Lz2/o000O000;->OoooO0O:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000o0O0(IZ)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lz2/o000O000;->o000O(ZIZ)V

    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o000oOoO()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public o00O0O()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    return-object v0
.end method

.method public o00Oo0()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public o00Ooo()Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    move-result-object v0

    return-object v0
.end method

.method public o00o0O()Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->Oooo:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object v0

    return-object v0
.end method

.method public o00oO0O(Landroid/view/View;)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    invoke-virtual {p0}, Lz2/o000O000;->o000OoO()V

    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o00oO0o(I)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/o000O000;->Oooo0OO(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/o000O000;->o00oO0O(Landroid/view/View;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o00ooo(I)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lz2/o000O000;->o000O(ZIZ)V

    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o0O0O00(Ljava/io/File;I)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lz2/o000O000;->o000OOo(Ljava/io/File;ZILz2/o000OO00;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o0OO00O(Landroid/graphics/drawable/Drawable;)Lz2/o000O000;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x40ff0001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o0OOO0o(Landroid/graphics/Bitmap;)Lz2/o000O000;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x40ff0001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o0Oo0oo(Landroid/graphics/Bitmap;F)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "F)TT;"
        }
    .end annotation

    new-instance v0, Lz2/o000OO00;

    invoke-direct {v0}, Lz2/o000OO00;-><init>()V

    invoke-virtual {v0, p2}, Lz2/o000OO00;->ratio(F)Lz2/o000OO00;

    move-result-object p2

    invoke-virtual {p2, p1}, Lz2/o000OO00;->bitmap(Landroid/graphics/Bitmap;)Lz2/o000OO00;

    invoke-virtual {p0, v0}, Lz2/o000O000;->oo0o0Oo(Lz2/o000OO00;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o0OoO0o(ILjava/lang/Object;)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o0OoOo0()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public o0ooOO0(Ljava/lang/String;)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/o000O000;->Oooo0o0(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/o000O000;->o00oO0O(Landroid/view/View;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public varargs o0ooOOo([I)Lz2/o000O000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/o000O000;->Oooo0o([I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/o000O000;->o00oO0O(Landroid/view/View;)Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public o0ooOoO(I)Lz2/o000O000;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x40ff0001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    if-nez p1, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public oo000o(IZ)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lz2/o000O000;->o000O(ZIZ)V

    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public oo0o0Oo(Lz2/o000OO00;)Lz2/o000O000;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o000OO00;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lz2/o000OO00;->imageView(Landroid/widget/ImageView;)Lz2/o000OO00;

    invoke-virtual {p0, p1}, Lz2/o000O000;->o0000(Lz2/o000OO0O;)Lz2/o000O000;

    :cond_0
    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method

.method public ooOO()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lz2/o000O000;->OoooO0:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public oooo00o(I)Lz2/o000O000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v0}, Lz2/o000O000;->o000O(ZIZ)V

    invoke-virtual {p0}, Lz2/o000O000;->o000O0O()Lz2/o000O000;

    move-result-object p1

    return-object p1
.end method
