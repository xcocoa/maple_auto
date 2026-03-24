.class public abstract Lz2/sm;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO0O0:Lz2/sm;


# instance fields
.field private final OooO00o:Lz2/sm;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lz2/qm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lz2/qm;-><init>(Lz2/sm;II)V

    sput-object v0, Lz2/sm;->OooO0O0:Lz2/sm;

    return-void
.end method

.method public constructor <init>(Lz2/sm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/sm;->OooO00o:Lz2/sm;

    return-void
.end method


# virtual methods
.method public final OooO00o(II)Lz2/sm;
    .locals 1

    new-instance v0, Lz2/qm;

    invoke-direct {v0, p0, p1, p2}, Lz2/qm;-><init>(Lz2/sm;II)V

    return-object v0
.end method

.method public final OooO0O0(II)Lz2/sm;
    .locals 1

    new-instance v0, Lz2/nm;

    invoke-direct {v0, p0, p1, p2}, Lz2/nm;-><init>(Lz2/sm;II)V

    return-object v0
.end method

.method public abstract OooO0OO(Lz2/do;[B)V
.end method

.method public final OooO0Oo()Lz2/sm;
    .locals 1

    iget-object v0, p0, Lz2/sm;->OooO00o:Lz2/sm;

    return-object v0
.end method
