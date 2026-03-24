.class public Lz2/fk$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/fk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lz2/fk$OooO;",
        ">;"
    }
.end annotation


# static fields
.field public static final OooO0O0:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Lz2/fk$OooO;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final OooO00o:Lz2/fk$OooO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/fk$OooO0O0;

    invoke-direct {v0}, Lz2/fk$OooO0O0;-><init>()V

    sput-object v0, Lz2/fk$OooO0O0;->OooO0O0:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/fk$OooO;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz2/fk$OooO;-><init>(Lz2/fk$OooO00o;)V

    iput-object v0, p0, Lz2/fk$OooO0O0;->OooO00o:Lz2/fk$OooO;

    return-void
.end method


# virtual methods
.method public OooO00o(FLz2/fk$OooO;Lz2/fk$OooO;)Lz2/fk$OooO;
    .locals 4

    iget-object v0, p0, Lz2/fk$OooO0O0;->OooO00o:Lz2/fk$OooO;

    iget v1, p2, Lz2/fk$OooO;->OooO00o:F

    iget v2, p3, Lz2/fk$OooO;->OooO00o:F

    invoke-static {v1, v2, p1}, Lz2/al;->OooO0Oo(FFF)F

    move-result v1

    iget v2, p2, Lz2/fk$OooO;->OooO0O0:F

    iget v3, p3, Lz2/fk$OooO;->OooO0O0:F

    invoke-static {v2, v3, p1}, Lz2/al;->OooO0Oo(FFF)F

    move-result v2

    iget p2, p2, Lz2/fk$OooO;->OooO0OO:F

    iget p3, p3, Lz2/fk$OooO;->OooO0OO:F

    invoke-static {p2, p3, p1}, Lz2/al;->OooO0Oo(FFF)F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lz2/fk$OooO;->OooO0O0(FFF)V

    iget-object p1, p0, Lz2/fk$OooO0O0;->OooO00o:Lz2/fk$OooO;

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lz2/fk$OooO;

    check-cast p3, Lz2/fk$OooO;

    invoke-virtual {p0, p1, p2, p3}, Lz2/fk$OooO0O0;->OooO00o(FLz2/fk$OooO;Lz2/fk$OooO;)Lz2/fk$OooO;

    move-result-object p1

    return-object p1
.end method
