.class public Lz2/o00O000o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/lang/Runnable;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;",
        "Ljava/lang/Runnable;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/text/TextWatcher;"
    }
.end annotation


# static fields
.field public static final o0OoOo0:I = 0x1

.field public static final ooOO:I = 0x2


# instance fields
.field private OoooOoO:Ljava/lang/Object;

.field private OoooOoo:Ljava/lang/String;

.field private Ooooo00:[Ljava/lang/Object;

.field private Ooooo0o:Z

.field private OooooO0:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private OooooOO:I

.field private OooooOo:I

.field private Oooooo:I

.field private Oooooo0:Landroid/widget/AbsListView$OnScrollListener;

.field private OoooooO:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private Ooooooo:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz2/o00O000o;->OooooOo:I

    iput-boolean v0, p0, Lz2/o00O000o;->Ooooooo:Z

    return-void
.end method

.method private OooO(Landroid/widget/ExpandableListView;I)V
    .locals 13

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x40ff0004

    invoke-virtual {p1, v1, v0}, Landroid/widget/ExpandableListView;->setTag(ILjava/lang/Object;)V

    if-nez p2, :cond_4

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-le v10, v0, :cond_0

    goto :goto_3

    :cond_0
    add-int v2, v10, p2

    invoke-virtual {p1, v2}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v4

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v5

    if-ltz v4, :cond_3

    invoke-virtual {p1, v10}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v12, v6, v2

    if-nez v12, :cond_3

    const/4 v2, -0x1

    if-ne v5, v2, :cond_1

    invoke-virtual {p1, v4}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    invoke-interface {v8, v4, v2, v11, p1}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_2

    :cond_1
    invoke-interface {v8, v4}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v5, v2, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    move-object v2, v8

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v11

    move-object v7, p1

    invoke-interface/range {v2 .. v7}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method private OooO00o(Landroid/widget/AbsListView;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    if-nez p2, :cond_0

    add-int/lit8 v2, v1, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lz2/o00O000o;->Oooooo:I

    if-eq v1, v0, :cond_1

    iput v1, p0, Lz2/o00O000o;->Oooooo:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-direct {p0, v0}, Lz2/o00O000o;->OooO0o([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lz2/o00O000o;->Oooooo:I

    :cond_1
    :goto_0
    return-void
.end method

.method private varargs OooO0o([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v1, p0, Lz2/o00O000o;->OoooOoo:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lz2/o00O000o;->Ooooo00:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p1

    :goto_0
    iget-object p1, p0, Lz2/o00O000o;->OoooOoO:Ljava/lang/Object;

    if-nez p1, :cond_1

    move-object v0, p0

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    iget-boolean v2, p0, Lz2/o00O000o;->Ooooo0o:Z

    const/4 v3, 0x1

    iget-object v4, p0, Lz2/o00O000o;->OooooO0:[Ljava/lang/Class;

    invoke-static/range {v0 .. v5}, Lz2/o00O000;->OooOooO(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    iget p1, p0, Lz2/o00O000o;->OooooOO:I

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lz2/o00O000o;->Ooooo00:[Ljava/lang/Object;

    aget-object v0, p1, v0

    check-cast v0, Ljava/io/File;

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object p1, p0, Lz2/o00O000o;->Ooooo00:[Ljava/lang/Object;

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v3, v4, v1, v2}, Lz2/o00O000;->OooO0O0(Ljava/io/File;JJ)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lz2/o00O000o;->Ooooo00:[Ljava/lang/Object;

    aget-object v0, p1, v0

    check-cast v0, Ljava/io/File;

    aget-object p1, p1, v1

    check-cast p1, [B

    invoke-static {v0, p1}, Lz2/o00O000;->OoooOo0(Ljava/io/File;[B)V

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private OooOO0(Landroid/widget/AbsListView;I)V
    .locals 8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x40ff0004

    invoke-virtual {p1, v1, v0}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    :goto_0
    if-le v3, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int v4, v3, p2

    int-to-long v4, v4

    invoke-virtual {p1, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    if-eqz v7, :cond_1

    long-to-int v5, v4

    invoke-interface {v2, v5, v6, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v6, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static OooOO0O(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p4, :cond_4

    invoke-static {p4}, Lz2/o000OO00;->isMemoryCached(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move-object p4, p3

    check-cast p4, Landroid/widget/AbsListView;

    const v1, 0x40ff0002

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$OnScrollListener;

    if-nez v2, :cond_1

    new-instance v2, Lz2/o00O000o;

    invoke-direct {v2}, Lz2/o00O000o;-><init>()V

    invoke-virtual {p4, v2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p3, v1, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_1
    const v1, 0x40ff0004

    invoke-virtual {p4, v1}, Landroid/widget/AbsListView;->getTag(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const/4 v2, 0x1

    if-ne p4, v2, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v3, p1

    instance-of p3, p3, Landroid/widget/ExpandableListView;

    if-eqz p3, :cond_3

    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v3

    :cond_3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return v2

    :cond_4
    :goto_0
    return v0
.end method

.method public static OooOO0o(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 1

    instance-of v0, p2, Landroid/widget/Gallery;

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lz2/o00O000o;->OooOOO(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, -0x2

    invoke-static {v0, p0, p1, p2, p3}, Lz2/o00O000o;->OooOO0O(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static OooOOO(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p3, :cond_4

    invoke-static {p3}, Lz2/o000OO00;->isMemoryCached(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    check-cast p2, Landroid/widget/Gallery;

    const p3, 0x40ff0004

    invoke-virtual {p2, p3}, Landroid/widget/Gallery;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    invoke-virtual {p2, p3, v1}, Landroid/widget/Gallery;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    new-instance v2, Lz2/o00O000o;

    invoke-direct {v2}, Lz2/o00O000o;-><init>()V

    invoke-virtual {v2, p2}, Lz2/o00O000o;->OooO0oO(Landroid/widget/Gallery;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {p2}, Landroid/widget/Gallery;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p2}, Landroid/widget/Gallery;->getLastVisiblePosition()I

    move-result p2

    sub-int/2addr p2, v2

    div-int/lit8 p2, p2, 0x2

    const/4 v2, 0x1

    add-int/2addr p2, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, p2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p2

    if-gez v3, :cond_2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    :cond_2
    if-lt p0, v3, :cond_3

    if-gt p0, v1, :cond_3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return v0

    :cond_3
    const/4 p0, 0x0

    invoke-virtual {p1, p3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return v2

    :cond_4
    :goto_1
    return v0
.end method

.method public static OooOOO0(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;FZ)Z
    .locals 0

    const/4 p3, -0x1

    invoke-static {p3, p0, p1, p2}, Lz2/o00O000o;->OooOO0o(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static OooOOOO(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 4

    if-eqz p0, :cond_7

    instance-of v0, p0, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    instance-of v2, p0, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast p0, Landroid/widget/ProgressBar;

    goto :goto_0

    :cond_0
    move-object p0, v3

    :goto_0
    const v2, 0x40ff0001

    if-eqz p2, :cond_1

    invoke-virtual {v0, v2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p0, :cond_7

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_2
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_3
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    instance-of p1, p0, Landroid/app/Dialog;

    if-eqz p1, :cond_6

    check-cast p0, Landroid/app/Dialog;

    new-instance p1, Lz2/o000;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lz2/o000;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_5

    invoke-virtual {p1, p0}, Lz2/o000O000;->o000O0oo(Landroid/app/Dialog;)Lz2/o000O000;

    goto :goto_1

    :cond_5
    invoke-virtual {p1, p0}, Lz2/o000O000;->OooOooO(Landroid/app/Dialog;)Lz2/o000O000;

    goto :goto_1

    :cond_6
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_7

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, p2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    if-eqz p2, :cond_7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setProgress(I)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public OooO0O0(Ljava/io/File;Ljava/io/File;)I
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public OooO0OO(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lz2/o00O000o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/o00O000o;"
        }
    .end annotation

    iput-object p1, p0, Lz2/o00O000o;->OoooOoO:Ljava/lang/Object;

    iput-object p2, p0, Lz2/o00O000o;->OoooOoo:Ljava/lang/String;

    iput-boolean p3, p0, Lz2/o00O000o;->Ooooo0o:Z

    iput-object p4, p0, Lz2/o00O000o;->OooooO0:[Ljava/lang/Class;

    return-object p0
.end method

.method public OooO0Oo(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lz2/o00O000o;->Oooooo0:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public OooO0o0()I
    .locals 1

    iget v0, p0, Lz2/o00O000o;->OooooOo:I

    return v0
.end method

.method public OooO0oO(Landroid/widget/Gallery;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/Gallery;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    iput-object v0, p0, Lz2/o00O000o;->OoooooO:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/o00O000o;->Ooooooo:Z

    invoke-virtual {p1, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public varargs OooO0oo(I[Ljava/lang/Object;)Lz2/o00O000o;
    .locals 0

    iput p1, p0, Lz2/o00O000o;->OooooOO:I

    iput-object p2, p0, Lz2/o00O000o;->Ooooo00:[Ljava/lang/Object;

    return-object p0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lz2/o00O000o;->OooO0O0(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lz2/o00O000o;->OooO0o([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-direct {p0, v0}, Lz2/o00O000o;->OooO0o([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    invoke-direct {p0, v0}, Lz2/o00O000o;->OooO0o([Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lz2/o00O000o;->OoooooO:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v4, :cond_0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-wide v8, p4

    invoke-interface/range {v4 .. v9}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    iget-boolean p2, p0, Lz2/o00O000o;->Ooooooo:Z

    if-eqz p2, :cond_4

    const p2, 0x40ff0004

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getTag(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eq p4, p3, :cond_4

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/AdapterView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p5

    :goto_0
    if-lt v1, p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int v2, p5, v1

    invoke-virtual {v0, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_3

    :cond_2
    invoke-interface {p4, v2, v0, p1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lz2/o00O000o;->OooO0o([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/o00O000o;->OoooooO:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget v0, p0, Lz2/o00O000o;->OooooOo:I

    invoke-direct {p0, p1, v0}, Lz2/o00O000o;->OooO00o(Landroid/widget/AbsListView;I)V

    iget-object v0, p0, Lz2/o00O000o;->Oooooo0:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iput p2, p0, Lz2/o00O000o;->OooooOo:I

    invoke-direct {p0, p1, p2}, Lz2/o00O000o;->OooO00o(Landroid/widget/AbsListView;I)V

    instance-of v0, p1, Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-direct {p0, v0, p2}, Lz2/o00O000o;->OooO(Landroid/widget/ExpandableListView;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lz2/o00O000o;->OooOO0(Landroid/widget/AbsListView;I)V

    :goto_0
    iget-object v0, p0, Lz2/o00O000o;->Oooooo0:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-direct {p0, v0}, Lz2/o00O000o;->OooO0o([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lz2/o00O000o;->OooO0o([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
