.class public final Lz2/oOo0oooO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0o0000;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/oOo0oooO$OooO0OO;,
        Lz2/oOo0oooO$OooO0O0;,
        Lz2/oOo0oooO$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/oO0o0000<",
        "TModel;TData;>;"
    }
.end annotation


# static fields
.field private static final OooO0O0:Ljava/lang/String; = "data:image"

.field private static final OooO0OO:Ljava/lang/String; = ";base64"


# instance fields
.field private final OooO00o:Lz2/oOo0oooO$OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oOo0oooO$OooO00o<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/oOo0oooO$OooO00o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oOo0oooO$OooO00o<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/oOo0oooO;->OooO00o:Lz2/oOo0oooO$OooO00o;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data:image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public OooO0O0(Ljava/lang/Object;IILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lz2/o0O0OOO0;",
            ")",
            "Lz2/oO0o0000$OooO00o<",
            "TData;>;"
        }
    .end annotation

    new-instance p2, Lz2/oO0o0000$OooO00o;

    new-instance p3, Lz2/g2;

    invoke-direct {p3, p1}, Lz2/g2;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lz2/oOo0oooO$OooO0O0;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lz2/oOo0oooO;->OooO00o:Lz2/oOo0oooO$OooO00o;

    invoke-direct {p4, p1, v0}, Lz2/oOo0oooO$OooO0O0;-><init>(Ljava/lang/String;Lz2/oOo0oooO$OooO00o;)V

    invoke-direct {p2, p3, p4}, Lz2/oO0o0000$OooO00o;-><init>(Lz2/o0O0O0Oo;Lz2/o0O0oo00;)V

    return-object p2
.end method
