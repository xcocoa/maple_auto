.class public Lz2/f60$OooO00o$OooO00o;
.super Lz2/k90;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/f60$OooO00o;->OooOO0O(Lz2/i60;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO0oO:Lz2/i60;

.field public final synthetic OooO0oo:Lz2/f60$OooO00o;


# direct methods
.method public constructor <init>(Lz2/f60$OooO00o;Ljava/lang/Class;Lz2/i60;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iput-object p1, p0, Lz2/f60$OooO00o$OooO00o;->OooO0oo:Lz2/f60$OooO00o;

    iput-object p3, p0, Lz2/f60$OooO00o$OooO00o;->OooO0oO:Lz2/i60;

    invoke-direct {p0, p2}, Lz2/k90;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public OooOO0O(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public Oooo(Lz2/s90;)Lz2/w90;
    .locals 1

    invoke-super {p0, p1}, Lz2/k90;->Oooo(Lz2/s90;)Lz2/w90;

    move-result-object p1

    new-instance v0, Lz2/f60$OooO00o$OooO00o$OooO00o;

    invoke-direct {v0, p0, p1}, Lz2/f60$OooO00o$OooO00o$OooO00o;-><init>(Lz2/f60$OooO00o$OooO00o;Lz2/w90;)V

    return-object v0
.end method

.method public Oooo00O()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lz2/f60$OooO00o$OooO00o;->OooO0oO:Lz2/i60;

    invoke-virtual {v0}, Lz2/i60;->OooO0oo()[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lz2/f60$OooO00o$OooO00o;->OooO0oo:Lz2/f60$OooO00o;

    invoke-static {v1}, Lz2/f60$OooO00o;->OooO0O0(Lz2/f60$OooO00o;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lz2/g50;->OooO0o0([Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v1

    invoke-virtual {v1}, Lz2/x90;->OooOOO()Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public OoooO00(Lz2/s90;Ljava/lang/Object;)Lz2/w90;
    .locals 2

    iget-object v0, p0, Lz2/f60$OooO00o$OooO00o;->OooO0oo:Lz2/f60$OooO00o;

    iget-object v1, p0, Lz2/f60$OooO00o$OooO00o;->OooO0oO:Lz2/i60;

    invoke-static {v0, p1, v1, p2}, Lz2/f60$OooO00o;->OooO0OO(Lz2/f60$OooO00o;Lz2/s90;Lz2/i60;Ljava/lang/Object;)Lz2/w90;

    move-result-object p1

    return-object p1
.end method
