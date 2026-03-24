.class public Lcom/android/volley/Request$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/Request;->OooO(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Ljava/lang/String;

.field public final synthetic OoooOoo:J

.field public final synthetic Ooooo00:Lcom/android/volley/Request;


# direct methods
.method public constructor <init>(Lcom/android/volley/Request;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/Request$OooO00o;->Ooooo00:Lcom/android/volley/Request;

    iput-object p2, p0, Lcom/android/volley/Request$OooO00o;->OoooOoO:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/volley/Request$OooO00o;->OoooOoo:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/volley/Request$OooO00o;->Ooooo00:Lcom/android/volley/Request;

    invoke-static {v0}, Lcom/android/volley/Request;->OooO00o(Lcom/android/volley/Request;)Lz2/o0OOO0o$OooO00o;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/Request$OooO00o;->OoooOoO:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/volley/Request$OooO00o;->OoooOoo:J

    invoke-virtual {v0, v1, v2, v3}, Lz2/o0OOO0o$OooO00o;->OooO00o(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/volley/Request$OooO00o;->Ooooo00:Lcom/android/volley/Request;

    invoke-static {v0}, Lcom/android/volley/Request;->OooO00o(Lcom/android/volley/Request;)Lz2/o0OOO0o$OooO00o;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/o0OOO0o$OooO00o;->OooO0O0(Ljava/lang/String;)V

    return-void
.end method
