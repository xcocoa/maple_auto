.class public Lz2/z2;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO:I = 0x2

.field public static final OooO0O0:I = 0x1

.field public static final OooO0OO:I = 0x2

.field public static final OooO0Oo:I = 0x3

.field public static final OooO0o:I = 0x5

.field public static final OooO0o0:I = 0x4

.field public static final OooO0oO:I = 0x6

.field public static final OooO0oo:I = 0x1

.field public static final OooOO0:I = 0x3

.field public static final OooOO0O:I = 0x4

.field public static final OooOO0o:I = 0x5

.field public static final OooOOO:Ljava/lang/String; = "key_key"

.field public static final OooOOO0:I = 0x6

.field public static final OooOOOO:Ljava/lang/String; = "key_value"

.field public static final OooOOOo:Ljava/lang/String; = "key_value_type"

.field public static final OooOOo0:Ljava/lang/String; = "key_op_type"


# instance fields
.field private OooO00o:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    return-void
.end method

.method public static OooOO0O()Lz2/z2;
    .locals 2

    new-instance v0, Lz2/z2;

    invoke-direct {v0}, Lz2/z2;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lz2/z2;->OooOo00(I)Lz2/z2;

    move-result-object v0

    return-object v0
.end method

.method public static OooOO0o(Ljava/lang/String;)Lz2/z2;
    .locals 1

    new-instance v0, Lz2/z2;

    invoke-direct {v0}, Lz2/z2;-><init>()V

    invoke-virtual {v0, p0}, Lz2/z2;->OooOOo(Ljava/lang/String;)Lz2/z2;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lz2/z2;->OooOo00(I)Lz2/z2;

    move-result-object p0

    return-object p0
.end method

.method public static OooOOO(Ljava/lang/String;)Lz2/z2;
    .locals 1

    new-instance v0, Lz2/z2;

    invoke-direct {v0}, Lz2/z2;-><init>()V

    invoke-virtual {v0, p0}, Lz2/z2;->OooOOo(Ljava/lang/String;)Lz2/z2;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lz2/z2;->OooOo00(I)Lz2/z2;

    move-result-object p0

    return-object p0
.end method

.method public static OooOOO0(Ljava/lang/String;)Lz2/z2;
    .locals 1

    new-instance v0, Lz2/z2;

    invoke-direct {v0}, Lz2/z2;-><init>()V

    invoke-virtual {v0, p0}, Lz2/z2;->OooOOo(Ljava/lang/String;)Lz2/z2;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lz2/z2;->OooOo00(I)Lz2/z2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public OooO(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public OooO00o(Z)Z
    .locals 2

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public OooO0O0()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    return-object v0
.end method

.method public OooO0OO(F)F
    .locals 1

    iget-object p1, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v0, "key_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public OooO0Oo(I)I
    .locals 2

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public OooO0o(J)J
    .locals 2

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public OooO0o0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooO0oO()I
    .locals 3

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_op_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public OooO0oo()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public OooOO0()I
    .locals 3

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public OooOOOO(Z)Lz2/z2;
    .locals 3

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public OooOOOo(F)Lz2/z2;
    .locals 3

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public OooOOo(Ljava/lang/String;)Lz2/z2;
    .locals 2

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public OooOOo0(I)Lz2/z2;
    .locals 3

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public OooOOoo(J)Lz2/z2;
    .locals 3

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public OooOo0(Ljava/util/Set;)Lz2/z2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lz2/z2;"
        }
    .end annotation

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v1

    :goto_0
    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public OooOo00(I)Lz2/z2;
    .locals 2

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_op_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public OooOo0O(Ljava/lang/String;)Lz2/z2;
    .locals 3

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public OooOo0o(I)Lz2/z2;
    .locals 2

    iget-object v0, p0, Lz2/z2;->OooO00o:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method
