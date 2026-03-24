.class public Lz2/l10$OooO00o;
.super Ljava/lang/ThreadLocal;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/l10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lz2/l10$OooO0o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/l10;


# direct methods
.method public constructor <init>(Lz2/l10;)V
    .locals 0

    iput-object p1, p0, Lz2/l10$OooO00o;->OooO00o:Lz2/l10;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()Lz2/l10$OooO0o;
    .locals 1

    new-instance v0, Lz2/l10$OooO0o;

    invoke-direct {v0}, Lz2/l10$OooO0o;-><init>()V

    return-object v0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz2/l10$OooO00o;->OooO00o()Lz2/l10$OooO0o;

    move-result-object v0

    return-object v0
.end method
