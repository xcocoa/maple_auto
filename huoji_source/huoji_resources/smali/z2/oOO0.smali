.class public Lz2/oOO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0o0000;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/oOO0$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/oO0o0000<",
        "Lz2/oOo0o0oO;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final OooO0O0:Lz2/o0O0OO0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0O0OO0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final OooO00o:Lz2/oO0Oo0o0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO0Oo0o0<",
            "Lz2/oOo0o0oO;",
            "Lz2/oOo0o0oO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    invoke-static {v1, v0}, Lz2/o0O0OO0;->OooO0oO(Ljava/lang/String;Ljava/lang/Object;)Lz2/o0O0OO0;

    move-result-object v0

    sput-object v0, Lz2/oOO0;->OooO0O0:Lz2/o0O0OO0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz2/oOO0;-><init>(Lz2/oO0Oo0o0;)V

    return-void
.end method

.method public constructor <init>(Lz2/oO0Oo0o0;)V
    .locals 0
    .param p1    # Lz2/oO0Oo0o0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Oo0o0<",
            "Lz2/oOo0o0oO;",
            "Lz2/oOo0o0oO;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/oOO0;->OooO00o:Lz2/oO0Oo0o0;

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lz2/oOo0o0oO;

    invoke-virtual {p0, p1}, Lz2/oOO0;->OooO0Oo(Lz2/oOo0o0oO;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic OooO0O0(Ljava/lang/Object;IILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lz2/oOo0o0oO;

    invoke-virtual {p0, p1, p2, p3, p4}, Lz2/oOO0;->OooO0OO(Lz2/oOo0o0oO;IILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public OooO0OO(Lz2/oOo0o0oO;IILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;
    .locals 0
    .param p1    # Lz2/oOo0o0oO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oOo0o0oO;",
            "II",
            "Lz2/o0O0OOO0;",
            ")",
            "Lz2/oO0o0000$OooO00o<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object p2, p0, Lz2/oOO0;->OooO00o:Lz2/oO0Oo0o0;

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3}, Lz2/oO0Oo0o0;->OooO0O0(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz2/oOo0o0oO;

    if-nez p2, :cond_0

    iget-object p2, p0, Lz2/oOO0;->OooO00o:Lz2/oO0Oo0o0;

    invoke-virtual {p2, p1, p3, p3, p1}, Lz2/oO0Oo0o0;->OooO0OO(Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p1, p2

    :cond_1
    :goto_0
    sget-object p2, Lz2/oOO0;->OooO0O0:Lz2/o0O0OO0;

    invoke-virtual {p4, p2}, Lz2/o0O0OOO0;->OooO0OO(Lz2/o0O0OO0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-instance p3, Lz2/oO0o0000$OooO00o;

    new-instance p4, Lz2/o0OO00OO;

    invoke-direct {p4, p1, p2}, Lz2/o0OO00OO;-><init>(Lz2/oOo0o0oO;I)V

    invoke-direct {p3, p1, p4}, Lz2/oO0o0000$OooO00o;-><init>(Lz2/o0O0O0Oo;Lz2/o0O0oo00;)V

    return-object p3
.end method

.method public OooO0Oo(Lz2/oOo0o0oO;)Z
    .locals 0
    .param p1    # Lz2/oOo0o0oO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method
