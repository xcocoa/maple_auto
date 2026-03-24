.class public final Lcom/anythink/expressad/exoplayer/d/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/d/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/util/Comparator<",
        "Lcom/anythink/expressad/exoplayer/d/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/anythink/expressad/exoplayer/d/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:I

.field private final c:[Lcom/anythink/expressad/exoplayer/d/e$a;

.field private d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/anythink/expressad/exoplayer/d/e$1;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/d/e$1;-><init>()V

    sput-object v0, Lcom/anythink/expressad/exoplayer/d/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/d/e;->a:Ljava/lang/String;

    sget-object v0, Lcom/anythink/expressad/exoplayer/d/e$a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/anythink/expressad/exoplayer/d/e$a;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/d/e;->c:[Lcom/anythink/expressad/exoplayer/d/e$a;

    array-length p1, p1

    iput p1, p0, Lcom/anythink/expressad/exoplayer/d/e;->b:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/exoplayer/d/e$a;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/anythink/expressad/exoplayer/d/e$a;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/anythink/expressad/exoplayer/d/e$a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/anythink/expressad/exoplayer/d/e;-><init>(Ljava/lang/String;Z[Lcom/anythink/expressad/exoplayer/d/e$a;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;Z[Lcom/anythink/expressad/exoplayer/d/e$a;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/d/e;->a:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p3}, [Lcom/anythink/expressad/exoplayer/d/e$a;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, [Lcom/anythink/expressad/exoplayer/d/e$a;

    :cond_0
    invoke-static {p3, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/d/e;->c:[Lcom/anythink/expressad/exoplayer/d/e$a;

    array-length p1, p3

    iput p1, p0, Lcom/anythink/expressad/exoplayer/d/e;->b:I

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;[Lcom/anythink/expressad/exoplayer/d/e$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/anythink/expressad/exoplayer/d/e;-><init>(Ljava/lang/String;Z[Lcom/anythink/expressad/exoplayer/d/e$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/exoplayer/d/e$a;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/anythink/expressad/exoplayer/d/e$a;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/anythink/expressad/exoplayer/d/e$a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/anythink/expressad/exoplayer/d/e;-><init>(Ljava/lang/String;Z[Lcom/anythink/expressad/exoplayer/d/e$a;)V

    return-void
.end method

.method private varargs constructor <init>([Lcom/anythink/expressad/exoplayer/d/e$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/anythink/expressad/exoplayer/d/e;-><init>(Ljava/lang/String;[Lcom/anythink/expressad/exoplayer/d/e$a;)V

    return-void
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/d/e$a;Lcom/anythink/expressad/exoplayer/d/e$a;)I
    .locals 2

    sget-object v0, Lcom/anythink/expressad/exoplayer/b;->bh:Ljava/util/UUID;

    invoke-static {p0}, Lcom/anythink/expressad/exoplayer/d/e$a;->a(Lcom/anythink/expressad/exoplayer/d/e$a;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/d/e$a;->a(Lcom/anythink/expressad/exoplayer/d/e$a;)Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {p0}, Lcom/anythink/expressad/exoplayer/d/e$a;->a(Lcom/anythink/expressad/exoplayer/d/e$a;)Ljava/util/UUID;

    move-result-object p0

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/d/e$a;->a(Lcom/anythink/expressad/exoplayer/d/e$a;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/util/UUID;)Lcom/anythink/expressad/exoplayer/d/e$a;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/d/e;->c:[Lcom/anythink/expressad/exoplayer/d/e$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/anythink/expressad/exoplayer/d/e$a;->a(Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static a(Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/d/e;)Lcom/anythink/expressad/exoplayer/d/e;
    .locals 8
    .param p0    # Lcom/anythink/expressad/exoplayer/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/anythink/expressad/exoplayer/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/d/e;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/d/e;->c:[Lcom/anythink/expressad/exoplayer/d/e$a;

    array-length v4, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, p0, v5

    invoke-virtual {v6}, Lcom/anythink/expressad/exoplayer/d/e$a;->a()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :cond_2
    if-eqz p1, :cond_5

    if-nez v3, :cond_3

    iget-object p0, p1, Lcom/anythink/expressad/exoplayer/d/e;->a:Ljava/lang/String;

    move-object v3, p0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/d/e;->c:[Lcom/anythink/expressad/exoplayer/d/e$a;

    array-length v4, p1

    :goto_1
    if-ge v1, v4, :cond_5

    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcom/anythink/expressad/exoplayer/d/e$a;->a()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v5}, Lcom/anythink/expressad/exoplayer/d/e$a;->a(Lcom/anythink/expressad/exoplayer/d/e$a;)Ljava/util/UUID;

    move-result-object v6

    invoke-static {v0, p0, v6}, Lcom/anythink/expressad/exoplayer/d/e;->a(Ljava/util/ArrayList;ILjava/util/UUID;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    return-object v2

    :cond_6
    new-instance p0, Lcom/anythink/expressad/exoplayer/d/e;

    invoke-direct {p0, v3, v0}, Lcom/anythink/expressad/exoplayer/d/e;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method private static a(Ljava/util/ArrayList;ILjava/util/UUID;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/anythink/expressad/exoplayer/d/e$a;",
            ">;I",
            "Ljava/util/UUID;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/exoplayer/d/e$a;

    invoke-static {v2}, Lcom/anythink/expressad/exoplayer/d/e$a;->a(Lcom/anythink/expressad/exoplayer/d/e$a;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public final a(I)Lcom/anythink/expressad/exoplayer/d/e$a;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/d/e;->c:[Lcom/anythink/expressad/exoplayer/d/e$a;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/d/e;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/d/e;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/anythink/expressad/exoplayer/d/e;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/d/e;->c:[Lcom/anythink/expressad/exoplayer/d/e$a;

    invoke-direct {v0, p1, v1, v2}, Lcom/anythink/expressad/exoplayer/d/e;-><init>(Ljava/lang/String;Z[Lcom/anythink/expressad/exoplayer/d/e$a;)V

    return-object v0
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/anythink/expressad/exoplayer/d/e$a;

    check-cast p2, Lcom/anythink/expressad/exoplayer/d/e$a;

    sget-object v0, Lcom/anythink/expressad/exoplayer/b;->bh:Ljava/util/UUID;

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/d/e$a;->a(Lcom/anythink/expressad/exoplayer/d/e$a;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/anythink/expressad/exoplayer/d/e$a;->a(Lcom/anythink/expressad/exoplayer/d/e$a;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/d/e$a;->a(Lcom/anythink/expressad/exoplayer/d/e$a;)Ljava/util/UUID;

    move-result-object p1

    invoke-static {p2}, Lcom/anythink/expressad/exoplayer/d/e$a;->a(Lcom/anythink/expressad/exoplayer/d/e$a;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result p1

    return p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lcom/anythink/expressad/exoplayer/d/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/anythink/expressad/exoplayer/d/e;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/d/e;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/anythink/expressad/exoplayer/d/e;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/d/e;->c:[Lcom/anythink/expressad/exoplayer/d/e$a;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/d/e;->c:[Lcom/anythink/expressad/exoplayer/d/e$a;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/exoplayer/d/e;->d:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/d/e;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/d/e;->c:[Lcom/anythink/expressad/exoplayer/d/e$a;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/anythink/expressad/exoplayer/d/e;->d:I

    :cond_1
    iget v0, p0, Lcom/anythink/expressad/exoplayer/d/e;->d:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/d/e;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/d/e;->c:[Lcom/anythink/expressad/exoplayer/d/e$a;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
