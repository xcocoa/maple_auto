.class public Lz2/w1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/x1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/w1$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/x1<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final OooO00o:Lz2/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/w1<",
            "*>;"
        }
    .end annotation
.end field

.field private static final OooO0O0:Lz2/y1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/y1<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/w1;

    invoke-direct {v0}, Lz2/w1;-><init>()V

    sput-object v0, Lz2/w1;->OooO00o:Lz2/w1;

    new-instance v0, Lz2/w1$OooO00o;

    invoke-direct {v0}, Lz2/w1$OooO00o;-><init>()V

    sput-object v0, Lz2/w1;->OooO0O0:Lz2/y1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO0O0()Lz2/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lz2/x1<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, Lz2/w1;->OooO00o:Lz2/w1;

    return-object v0
.end method

.method public static OooO0OO()Lz2/y1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lz2/y1<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, Lz2/w1;->OooO0O0:Lz2/y1;

    return-object v0
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;Lz2/x1$OooO00o;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
