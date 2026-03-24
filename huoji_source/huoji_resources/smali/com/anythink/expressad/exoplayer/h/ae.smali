.class public final Lcom/anythink/expressad/exoplayer/h/ae;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/anythink/expressad/exoplayer/h/ae;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field private final b:[Lcom/anythink/expressad/exoplayer/m;

.field private c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/anythink/expressad/exoplayer/h/ae$1;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/h/ae$1;-><init>()V

    sput-object v0, Lcom/anythink/expressad/exoplayer/h/ae;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    new-array v0, v0, [Lcom/anythink/expressad/exoplayer/m;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/ae;->b:[Lcom/anythink/expressad/exoplayer/m;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/ae;->b:[Lcom/anythink/expressad/exoplayer/m;

    const-class v2, Lcom/anythink/expressad/exoplayer/m;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/exoplayer/m;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lcom/anythink/expressad/exoplayer/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/ae;->b:[Lcom/anythink/expressad/exoplayer/m;

    iput v0, p0, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/exoplayer/m;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/ae;->b:[Lcom/anythink/expressad/exoplayer/m;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final a(I)Lcom/anythink/expressad/exoplayer/m;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/ae;->b:[Lcom/anythink/expressad/exoplayer/m;

    aget-object p1, v0, p1

    return-object p1
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

    const-class v2, Lcom/anythink/expressad/exoplayer/h/ae;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/anythink/expressad/exoplayer/h/ae;

    iget v2, p0, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/ae;->b:[Lcom/anythink/expressad/exoplayer/m;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/h/ae;->b:[Lcom/anythink/expressad/exoplayer/m;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/ae;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/ae;->b:[Lcom/anythink/expressad/exoplayer/m;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iput v0, p0, Lcom/anythink/expressad/exoplayer/h/ae;->c:I

    :cond_0
    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/ae;->c:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/ae;->b:[Lcom/anythink/expressad/exoplayer/m;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
