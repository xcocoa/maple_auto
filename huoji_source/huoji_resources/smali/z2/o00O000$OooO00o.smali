.class public Lz2/o00O000$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/o00O000;->Oooo0o0(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final synthetic OoooOoO:Ljava/lang/Object;

.field private final synthetic OoooOoo:Ljava/lang/String;

.field private final synthetic Ooooo00:[Ljava/lang/Class;

.field private final synthetic Ooooo0o:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lz2/o00O000$OooO00o;->OoooOoO:Ljava/lang/Object;

    iput-object p2, p0, Lz2/o00O000$OooO00o;->OoooOoo:Ljava/lang/String;

    iput-object p3, p0, Lz2/o00O000$OooO00o;->Ooooo00:[Ljava/lang/Class;

    iput-object p4, p0, Lz2/o00O000$OooO00o;->Ooooo0o:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lz2/o00O000$OooO00o;->OoooOoO:Ljava/lang/Object;

    iget-object v1, p0, Lz2/o00O000$OooO00o;->OoooOoo:Ljava/lang/String;

    iget-object v4, p0, Lz2/o00O000$OooO00o;->Ooooo00:[Ljava/lang/Class;

    iget-object v5, p0, Lz2/o00O000$OooO00o;->Ooooo0o:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Lz2/o00O000;->OooOooO(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
