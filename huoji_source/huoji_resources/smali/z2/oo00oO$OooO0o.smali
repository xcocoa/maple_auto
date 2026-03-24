.class public final Lz2/oo00oO$OooO0o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oo00oO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0o"
.end annotation


# instance fields
.field private final OooO00o:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lz2/oo00oO$OooO0OO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lz2/t2;->OooO0o(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lz2/oo00oO$OooO0o;->OooO00o:Ljava/util/Queue;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lz2/oo00oO$OooO0o;->OooO00o:Ljava/util/Queue;

    new-instance v2, Lz2/oo00oO$OooO0OO;

    invoke-direct {v2}, Lz2/oo00oO$OooO0OO;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO00o(II)Lz2/oo00oO$OooO0OO;
    .locals 2

    iget-object v0, p0, Lz2/oo00oO$OooO0o;->OooO00o:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/oo00oO$OooO0OO;

    iget-object v1, p0, Lz2/oo00oO$OooO0o;->OooO00o:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iput p1, v0, Lz2/oo00oO$OooO0OO;->OoooOoo:I

    iput p2, v0, Lz2/oo00oO$OooO0OO;->OoooOoO:I

    return-object v0
.end method
