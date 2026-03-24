.class public final Lz2/bp$OooO0OO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0OO"
.end annotation


# instance fields
.field private final OooO00o:I

.field private final OooO0O0:[Lz2/bp$OooO0O0;


# direct methods
.method private constructor <init>(ILz2/bp$OooO0O0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz2/bp$OooO0OO;->OooO00o:I

    const/4 p1, 0x1

    new-array p1, p1, [Lz2/bp$OooO0O0;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iput-object p1, p0, Lz2/bp$OooO0OO;->OooO0O0:[Lz2/bp$OooO0O0;

    return-void
.end method

.method public synthetic constructor <init>(ILz2/bp$OooO0O0;Lz2/bp$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/bp$OooO0OO;-><init>(ILz2/bp$OooO0O0;)V

    return-void
.end method

.method private constructor <init>(ILz2/bp$OooO0O0;Lz2/bp$OooO0O0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz2/bp$OooO0OO;->OooO00o:I

    const/4 p1, 0x2

    new-array p1, p1, [Lz2/bp$OooO0O0;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    aput-object p3, p1, p2

    iput-object p1, p0, Lz2/bp$OooO0OO;->OooO0O0:[Lz2/bp$OooO0O0;

    return-void
.end method

.method public synthetic constructor <init>(ILz2/bp$OooO0O0;Lz2/bp$OooO0O0;Lz2/bp$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lz2/bp$OooO0OO;-><init>(ILz2/bp$OooO0O0;Lz2/bp$OooO0O0;)V

    return-void
.end method


# virtual methods
.method public final OooO00o()[Lz2/bp$OooO0O0;
    .locals 1

    iget-object v0, p0, Lz2/bp$OooO0OO;->OooO0O0:[Lz2/bp$OooO0O0;

    return-object v0
.end method

.method public final OooO0O0()I
    .locals 1

    iget v0, p0, Lz2/bp$OooO0OO;->OooO00o:I

    return v0
.end method
