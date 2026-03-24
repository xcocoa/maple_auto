.class public Lz2/ob0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private OooO00o:Ljava/lang/String;

.field private OooO0O0:Ljava/lang/String;

.field private OooO0OO:Ljava/lang/String;

.field private OooO0Oo:Ljava/lang/reflect/Field;

.field private OooO0o:I

.field private OooO0o0:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/ob0;->OooO0O0:Ljava/lang/String;

    return-void
.end method

.method public OooO00o()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lz2/ob0;->OooO0Oo:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public OooO0O0()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lz2/ob0;->OooO0o0:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public OooO0OO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/ob0;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0Oo()I
    .locals 1

    iget v0, p0, Lz2/ob0;->OooO0o:I

    return v0
.end method

.method public OooO0o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/ob0;->OooO00o:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0o0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/ob0;->OooO0OO:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0oO(Ljava/lang/reflect/Field;)V
    .locals 0

    iput-object p1, p0, Lz2/ob0;->OooO0Oo:Ljava/lang/reflect/Field;

    return-void
.end method

.method public OooO0oo(Ljava/lang/reflect/Field;)V
    .locals 0

    iput-object p1, p0, Lz2/ob0;->OooO0o0:Ljava/lang/reflect/Field;

    return-void
.end method

.method public OooOO0(I)V
    .locals 0

    iput p1, p0, Lz2/ob0;->OooO0o:I

    return-void
.end method

.method public OooOO0O(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/ob0;->OooO0OO:Ljava/lang/String;

    return-void
.end method

.method public OooOO0o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/ob0;->OooO00o:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lz2/ob0;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lz2/ob0;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lz2/ob0;->OooO0Oo()I

    move-result p1

    iget v1, p0, Lz2/ob0;->OooO0o:I

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, Lz2/ob0;->OooO0o0()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lz2/ob0;->OooO0OO:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lz2/ob0;->OooO0o()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lz2/ob0;->OooO00o:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lz2/ob0;->OooO0OO()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lz2/ob0;->OooO0O0:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lz2/ob0;->OooO0o()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lz2/ob0;->OooO0O0:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lz2/ob0;->OooO0OO()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lz2/ob0;->OooO00o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
