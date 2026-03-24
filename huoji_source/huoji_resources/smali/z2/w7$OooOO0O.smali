.class public Lz2/w7$OooOO0O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/y9$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/w7;->OooOo0(Landroid/content/Context;Ljava/lang/String;Lz2/w7$OooOOO0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/w7$OooOOO0;

.field public final synthetic OooO0O0:Lz2/w7;


# direct methods
.method public constructor <init>(Lz2/w7;Lz2/w7$OooOOO0;)V
    .locals 0

    iput-object p1, p0, Lz2/w7$OooOO0O;->OooO0O0:Lz2/w7;

    iput-object p2, p0, Lz2/w7$OooOO0O;->OooO00o:Lz2/w7$OooOOO0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Z)V
    .locals 1

    iget-object v0, p0, Lz2/w7$OooOO0O;->OooO00o:Lz2/w7$OooOOO0;

    invoke-interface {v0, p1}, Lz2/w7$OooOOO0;->OooO00o(Z)V

    iget-object p1, p0, Lz2/w7$OooOO0O;->OooO0O0:Lz2/w7;

    invoke-static {p1}, Lz2/w7;->OooO0O0(Lz2/w7;)Lz2/y9;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
