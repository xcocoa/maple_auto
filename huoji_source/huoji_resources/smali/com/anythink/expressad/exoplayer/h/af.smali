.class public final Lcom/anythink/expressad/exoplayer/h/af;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/anythink/expressad/exoplayer/h/af;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/anythink/expressad/exoplayer/h/af;


# instance fields
.field public final b:I

.field private final c:[Lcom/anythink/expressad/exoplayer/h/ae;

.field private d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/anythink/expressad/exoplayer/h/af;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/anythink/expressad/exoplayer/h/ae;

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/h/af;-><init>([Lcom/anythink/expressad/exoplayer/h/ae;)V

    sput-object v0, Lcom/anythink/expressad/exoplayer/h/af;->a:Lcom/anythink/expressad/exoplayer/h/af;

    new-instance v0, Lcom/anythink/expressad/exoplayer/h/af$1;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/h/af$1;-><init>()V

    sput-object v0, Lcom/anythink/expressad/exoplayer/h/af;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/h/af;->b:I

    new-array v0, v0, [Lcom/anythink/expressad/exoplayer/h/ae;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/af;->c:[Lcom/anythink/expressad/exoplayer/h/ae;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/anythink/expressad/exoplayer/h/af;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/af;->c:[Lcom/anythink/expressad/exoplayer/h/ae;

    const-class v2, Lcom/anythink/expressad/exoplayer/h/ae;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/exoplayer/h/ae;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lcom/anythink/expressad/exoplayer/h/ae;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/af;->c:[Lcom/anythink/expressad/exoplayer/h/ae;

    array-length p1, p1

    iput p1, p0, Lcom/anythink/expressad/exoplayer/h/af;->b:I

    return-void
.end method

.method private a()Z
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/af;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/exoplayer/h/ae;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/anythink/expressad/exoplayer/h/af;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/af;->c:[Lcom/anythink/expressad/exoplayer/h/ae;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final a(I)Lcom/anythink/expressad/exoplayer/h/ae;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/af;->c:[Lcom/anythink/expressad/exoplayer/h/ae;

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

    const-class v2, Lcom/anythink/expressad/exoplayer/h/af;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/anythink/expressad/exoplayer/h/af;

    iget v2, p0, Lcom/anythink/expressad/exoplayer/h/af;->b:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/h/af;->b:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/af;->c:[Lcom/anythink/expressad/exoplayer/h/ae;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/h/af;->c:[Lcom/anythink/expressad/exoplayer/h/ae;

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

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/af;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/af;->c:[Lcom/anythink/expressad/exoplayer/h/ae;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/h/af;->d:I

    :cond_0
    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/af;->d:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/anythink/expressad/exoplayer/h/af;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/anythink/expressad/exoplayer/h/af;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/af;->c:[Lcom/anythink/expressad/exoplayer/h/ae;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
