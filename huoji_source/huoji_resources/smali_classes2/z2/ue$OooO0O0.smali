.class public final Lz2/ue$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$OooO0o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation


# instance fields
.field public OooO00o:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lz2/ue$OooO0O0;-><init>()V

    return-void
.end method

.method private varargs OooO00o([I)V
    .locals 0

    iput-object p1, p0, Lz2/ue$OooO0O0;->OooO00o:[I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    iget-object v0, p0, Lz2/ue$OooO0O0;->OooO00o:[I

    array-length v1, v0

    rem-int/2addr p1, v1

    aget p1, v0, p1

    return p1
.end method
