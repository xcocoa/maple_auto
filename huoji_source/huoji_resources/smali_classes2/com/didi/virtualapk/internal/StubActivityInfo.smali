.class public Lcom/didi/virtualapk/internal/StubActivityInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final MAX_COUNT_SINGLEINSTANCE:I = 0x8

.field public static final MAX_COUNT_SINGLETASK:I = 0x8

.field public static final MAX_COUNT_SINGLETOP:I = 0x8

.field public static final MAX_COUNT_STANDARD:I = 0x1

.field public static final STUB_ACTIVITY_SINGLEINSTANCE:Ljava/lang/String; = "%s.D$%d"

.field public static final STUB_ACTIVITY_SINGLETASK:Ljava/lang/String; = "%s.C$%d"

.field public static final STUB_ACTIVITY_SINGLETOP:Ljava/lang/String; = "%s.B$%d"

.field public static final STUB_ACTIVITY_STANDARD:Ljava/lang/String; = "%s.A$%d"

.field public static final corePackage:Ljava/lang/String; = "com.didi.virtualapk.core"


# instance fields
.field private mCachedStubActivity:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usedSingleInstanceStubActivity:I

.field public usedSingleTaskStubActivity:I

.field public usedSingleTopStubActivity:I

.field public final usedStandardStubActivity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedStandardStubActivity:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTopStubActivity:I

    iput v0, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTaskStubActivity:I

    iput v0, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleInstanceStubActivity:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->mCachedStubActivity:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getStubActivity(Ljava/lang/String;ILandroid/content/res/Resources$Theme;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->mCachedStubActivity:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-virtual {p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStubActivity, is transparent theme ? "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v3, "VA.StubActivityInfo"

    invoke-static {v3, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p3, v0, [Ljava/lang/Object;

    const-string v3, "com.didi.virtualapk.core"

    aput-object v3, p3, v1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p3, v4

    const-string v5, "%s.A$%d"

    invoke-static {v5, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_4

    if-eq p2, v4, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleInstanceStubActivity:I

    rem-int/lit8 p2, p2, 0x8

    add-int/2addr p2, v4

    iput p2, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleInstanceStubActivity:I

    new-array p3, v0, [Ljava/lang/Object;

    aput-object v3, p3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v4

    const-string p2, "%s.D$%d"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTaskStubActivity:I

    rem-int/lit8 p2, p2, 0x8

    add-int/2addr p2, v4

    iput p2, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTaskStubActivity:I

    new-array p3, v0, [Ljava/lang/Object;

    aput-object v3, p3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v4

    const-string p2, "%s.C$%d"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_3
    iget p2, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTopStubActivity:I

    rem-int/lit8 p2, p2, 0x8

    add-int/2addr p2, v4

    iput p2, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTopStubActivity:I

    new-array p3, v0, [Ljava/lang/Object;

    aput-object v3, p3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v4

    const-string p2, "%s.B$%d"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_4
    new-array p2, v0, [Ljava/lang/Object;

    aput-object v3, p2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-static {v5, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    if-eqz v2, :cond_5

    new-array p2, v0, [Ljava/lang/Object;

    aput-object v3, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-static {v5, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_5
    :goto_0
    iget-object p2, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->mCachedStubActivity:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    :array_0
    .array-data 4
        0x1010058
        0x1010054
    .end array-data
.end method
