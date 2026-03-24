.class public interface abstract Lz2/qw;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO00o:Lz2/qw;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/qw$OooO00o;

    invoke-direct {v0}, Lz2/qw$OooO00o;-><init>()V

    sput-object v0, Lz2/qw;->OooO00o:Lz2/qw;

    return-void
.end method


# virtual methods
.method public abstract OooO00o(Lz2/ux;Lz2/sx;)Lz2/qx;
    .param p1    # Lz2/ux;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
