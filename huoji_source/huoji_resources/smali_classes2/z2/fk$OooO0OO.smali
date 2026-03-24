.class public Lz2/fk$OooO0OO;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/fk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0OO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lz2/fk;",
        "Lz2/fk$OooO;",
        ">;"
    }
.end annotation


# static fields
.field public static final OooO00o:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lz2/fk;",
            "Lz2/fk$OooO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz2/fk$OooO0OO;

    const-string v1, "circularReveal"

    invoke-direct {v0, v1}, Lz2/fk$OooO0OO;-><init>(Ljava/lang/String;)V

    sput-object v0, Lz2/fk$OooO0OO;->OooO00o:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lz2/fk$OooO;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/fk;)Lz2/fk$OooO;
    .locals 0

    invoke-interface {p1}, Lz2/fk;->getRevealInfo()Lz2/fk$OooO;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0(Lz2/fk;Lz2/fk$OooO;)V
    .locals 0

    invoke-interface {p1, p2}, Lz2/fk;->setRevealInfo(Lz2/fk$OooO;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lz2/fk;

    invoke-virtual {p0, p1}, Lz2/fk$OooO0OO;->OooO00o(Lz2/fk;)Lz2/fk$OooO;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lz2/fk;

    check-cast p2, Lz2/fk$OooO;

    invoke-virtual {p0, p1, p2}, Lz2/fk$OooO0OO;->OooO0O0(Lz2/fk;Lz2/fk$OooO;)V

    return-void
.end method
