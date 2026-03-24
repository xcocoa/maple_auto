.class public Lz2/oO0O00oO$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0oO000;
.implements Lz2/oO0O00oO$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oO0O00oO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/oO0oO000<",
        "Landroid/net/Uri;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lz2/oO0O00oO$OooO00o<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO00o:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/oO0O00oO$OooO0O0;->OooO00o:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 0

    return-void
.end method

.method public OooO0O0(Landroid/content/res/AssetManager;Ljava/lang/String;)Lz2/o0O0oo00;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")",
            "Lz2/o0O0oo00<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lz2/oo0oO0;

    invoke-direct {v0, p1, p2}, Lz2/oo0oO0;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public OooO0OO(Lz2/oOO00000;)Lz2/oO0o0000;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oOO00000;",
            ")",
            "Lz2/oO0o0000<",
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance p1, Lz2/oO0O00oO;

    iget-object v0, p0, Lz2/oO0O00oO$OooO0O0;->OooO00o:Landroid/content/res/AssetManager;

    invoke-direct {p1, v0, p0}, Lz2/oO0O00oO;-><init>(Landroid/content/res/AssetManager;Lz2/oO0O00oO$OooO00o;)V

    return-object p1
.end method
