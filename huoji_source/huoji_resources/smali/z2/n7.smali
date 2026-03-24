.class public Lz2/n7;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooO0O0:Lz2/n7;


# instance fields
.field private OooO00o:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/n7;

    invoke-direct {v0}, Lz2/n7;-><init>()V

    sput-object v0, Lz2/n7;->OooO0O0:Lz2/n7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o()Lz2/n7;
    .locals 1

    sget-object v0, Lz2/n7;->OooO0O0:Lz2/n7;

    return-object v0
.end method


# virtual methods
.method public OooO0O0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/n7;->OooO00o:Z

    return v0
.end method

.method public OooO0OO(Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/n7;->OooO00o:Z

    return-void
.end method
