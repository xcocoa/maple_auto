.class public Lorg/junit/experimental/max/MaxHistory$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/experimental/max/MaxHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/junit/runner/Description;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lorg/junit/experimental/max/MaxHistory;


# direct methods
.method private constructor <init>(Lorg/junit/experimental/max/MaxHistory;)V
    .locals 0

    iput-object p1, p0, Lorg/junit/experimental/max/MaxHistory$OooO0OO;->OoooOoO:Lorg/junit/experimental/max/MaxHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/junit/experimental/max/MaxHistory;Lorg/junit/experimental/max/MaxHistory$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/junit/experimental/max/MaxHistory$OooO0OO;-><init>(Lorg/junit/experimental/max/MaxHistory;)V

    return-void
.end method

.method private OooO0O0(Lorg/junit/runner/Description;)Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory$OooO0OO;->OoooOoO:Lorg/junit/experimental/max/MaxHistory;

    invoke-virtual {v0, p1}, Lorg/junit/experimental/max/MaxHistory;->getFailureTimestamp(Lorg/junit/runner/Description;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public OooO00o(Lorg/junit/runner/Description;Lorg/junit/runner/Description;)I
    .locals 2

    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory$OooO0OO;->OoooOoO:Lorg/junit/experimental/max/MaxHistory;

    invoke-virtual {v0, p1}, Lorg/junit/experimental/max/MaxHistory;->isNewTest(Lorg/junit/runner/Description;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory$OooO0OO;->OoooOoO:Lorg/junit/experimental/max/MaxHistory;

    invoke-virtual {v0, p2}, Lorg/junit/experimental/max/MaxHistory;->isNewTest(Lorg/junit/runner/Description;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-direct {p0, p2}, Lorg/junit/experimental/max/MaxHistory$OooO0OO;->OooO0O0(Lorg/junit/runner/Description;)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/junit/experimental/max/MaxHistory$OooO0OO;->OooO0O0(Lorg/junit/runner/Description;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory$OooO0OO;->OoooOoO:Lorg/junit/experimental/max/MaxHistory;

    invoke-virtual {v0, p1}, Lorg/junit/experimental/max/MaxHistory;->getTestDuration(Lorg/junit/runner/Description;)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory$OooO0OO;->OoooOoO:Lorg/junit/experimental/max/MaxHistory;

    invoke-virtual {v0, p2}, Lorg/junit/experimental/max/MaxHistory;->getTestDuration(Lorg/junit/runner/Description;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/junit/runner/Description;

    check-cast p2, Lorg/junit/runner/Description;

    invoke-virtual {p0, p1, p2}, Lorg/junit/experimental/max/MaxHistory$OooO0OO;->OooO00o(Lorg/junit/runner/Description;Lorg/junit/runner/Description;)I

    move-result p1

    return p1
.end method
