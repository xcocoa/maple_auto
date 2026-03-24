.class public Lz2/o000OO0O$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/o000OO0O;->showProgress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/o000OO0O;

.field private final synthetic OoooOoo:Ljava/lang/Object;

.field private final synthetic Ooooo00:Z


# direct methods
.method public constructor <init>(Lz2/o000OO0O;Ljava/lang/Object;Z)V
    .locals 0

    iput-object p1, p0, Lz2/o000OO0O$OooO00o;->OoooOoO:Lz2/o000OO0O;

    iput-object p2, p0, Lz2/o000OO0O$OooO00o;->OoooOoo:Ljava/lang/Object;

    iput-boolean p3, p0, Lz2/o000OO0O$OooO00o;->Ooooo00:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lz2/o000OO0O$OooO00o;->OoooOoo:Ljava/lang/Object;

    iget-object v1, p0, Lz2/o000OO0O$OooO00o;->OoooOoO:Lz2/o000OO0O;

    invoke-static {v1}, Lz2/o000OO0O;->access$0(Lz2/o000OO0O;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lz2/o000OO0O$OooO00o;->Ooooo00:Z

    invoke-static {v0, v1, v2}, Lz2/o00O000o;->OooOOOO(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method
