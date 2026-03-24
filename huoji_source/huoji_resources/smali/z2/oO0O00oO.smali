.class public Lz2/oO0O00oO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0o0000;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/oO0O00oO$OooO0O0;,
        Lz2/oO0O00oO$OooO0OO;,
        Lz2/oO0O00oO$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/oO0o0000<",
        "Landroid/net/Uri;",
        "TData;>;"
    }
.end annotation


# static fields
.field private static final OooO0OO:Ljava/lang/String; = "android_asset"

.field private static final OooO0Oo:Ljava/lang/String; = "file:///android_asset/"

.field private static final OooO0o0:I = 0x16


# instance fields
.field private final OooO00o:Landroid/content/res/AssetManager;

.field private final OooO0O0:Lz2/oO0O00oO$OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO0O00oO$OooO00o<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lz2/oO0O00oO$OooO00o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Lz2/oO0O00oO$OooO00o<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/oO0O00oO;->OooO00o:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lz2/oO0O00oO;->OooO0O0:Lz2/oO0O00oO$OooO00o;

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lz2/oO0O00oO;->OooO0Oo(Landroid/net/Uri;)Z

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

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lz2/oO0O00oO;->OooO0OO(Landroid/net/Uri;IILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public OooO0OO(Landroid/net/Uri;IILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;
    .locals 1
    .param p1    # Landroid/net/Uri;
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
            "Landroid/net/Uri;",
            "II",
            "Lz2/o0O0OOO0;",
            ")",
            "Lz2/oO0o0000$OooO00o<",
            "TData;>;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    sget p3, Lz2/oO0O00oO;->OooO0o0:I

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lz2/oO0o0000$OooO00o;

    new-instance p4, Lz2/g2;

    invoke-direct {p4, p1}, Lz2/g2;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lz2/oO0O00oO;->OooO0O0:Lz2/oO0O00oO$OooO00o;

    iget-object v0, p0, Lz2/oO0O00oO;->OooO00o:Landroid/content/res/AssetManager;

    invoke-interface {p1, v0, p2}, Lz2/oO0O00oO$OooO00o;->OooO0O0(Landroid/content/res/AssetManager;Ljava/lang/String;)Lz2/o0O0oo00;

    move-result-object p1

    invoke-direct {p3, p4, p1}, Lz2/oO0o0000$OooO00o;-><init>(Lz2/o0O0O0Oo;Lz2/o0O0oo00;)V

    return-object p3
.end method

.method public OooO0Oo(Landroid/net/Uri;)Z
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "android_asset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
