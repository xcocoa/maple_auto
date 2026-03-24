.class public Lz2/oO0O0$OooO0o$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0O0$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/oO0O0$OooO0o;->OooO0OO(Lz2/oOO00000;)Lz2/oO0o0000;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/oO0O0$OooO0O0<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/oO0O0$OooO0o;


# direct methods
.method public constructor <init>(Lz2/oO0O0$OooO0o;)V
    .locals 0

    iput-object p1, p0, Lz2/oO0O0$OooO0o$OooO00o;->OooO00o:Lz2/oO0O0$OooO0o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public bridge synthetic OooO0O0([B)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lz2/oO0O0$OooO0o$OooO00o;->OooO0OO([B)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public OooO0OO([B)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
