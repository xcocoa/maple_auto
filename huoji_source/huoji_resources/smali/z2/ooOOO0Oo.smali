.class public interface abstract Lz2/ooOOO0Oo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO00o:Lz2/ooOOO0Oo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OooO0O0:Lz2/ooOOO0Oo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/ooOOO0Oo$OooO00o;

    invoke-direct {v0}, Lz2/ooOOO0Oo$OooO00o;-><init>()V

    sput-object v0, Lz2/ooOOO0Oo;->OooO00o:Lz2/ooOOO0Oo;

    new-instance v0, Lz2/ooo0o$OooO00o;

    invoke-direct {v0}, Lz2/ooo0o$OooO00o;-><init>()V

    invoke-virtual {v0}, Lz2/ooo0o$OooO00o;->OooO0OO()Lz2/ooo0o;

    move-result-object v0

    sput-object v0, Lz2/ooOOO0Oo;->OooO0O0:Lz2/ooOOO0Oo;

    return-void
.end method


# virtual methods
.method public abstract OooO00o()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
