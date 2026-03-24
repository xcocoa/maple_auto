.class public Lz2/o00oOoo$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o00oOoo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO00o"
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/o00oOoo;


# direct methods
.method private constructor <init>(Lz2/o00oOoo;)V
    .locals 0

    iput-object p1, p0, Lz2/o00oOoo$OooO00o;->OoooOoO:Lz2/o00oOoo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/o00oOoo;Lz2/o00oOoo$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/o00oOoo$OooO00o;-><init>(Lz2/o00oOoo;)V

    return-void
.end method

.method private OooO00o(Ljava/lang/String;Lorg/json/JSONObject;Lz2/o000O;)V
    .locals 2

    iget-object v0, p0, Lz2/o00oOoo$OooO00o;->OoooOoO:Lz2/o00oOoo;

    invoke-static {v0}, Lz2/o00oOoo;->OooOO0(Lz2/o00oOoo;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/o00oOoo$OooO00o;->OoooOoO:Lz2/o00oOoo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lz2/o00oOoo;->OooOO0O(Lz2/o00oOoo;Z)V

    iget-object v0, p0, Lz2/o00oOoo$OooO00o;->OoooOoO:Lz2/o00oOoo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lz2/o00oOoo;->OooOO0o(Lz2/o00oOoo;I)V

    iget-object v0, p0, Lz2/o00oOoo$OooO00o;->OoooOoO:Lz2/o00oOoo;

    invoke-virtual {v0, p1, p2, p3}, Lz2/o00oOoo;->OooOOOO(Ljava/lang/String;Lorg/json/JSONObject;Lz2/o000O;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO0O0(Ljava/lang/String;Ljava/lang/String;Lz2/o000O;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p3, 0x3e8

    if-le p1, p3, :cond_0

    iget-object p1, p0, Lz2/o00oOoo$OooO00o;->OoooOoO:Lz2/o00oOoo;

    invoke-static {p1}, Lz2/o00oOoo;->OooOOO0(Lz2/o00oOoo;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lz2/o000O0O0;

    invoke-direct {p3}, Lz2/o000O0O0;-><init>()V

    invoke-virtual {p3, p1}, Lz2/o000OO0O;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000O0O0;

    const-class v0, Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lz2/o000OO0O;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000O0O0;

    const-string v0, "marketCb"

    invoke-virtual {p1, p0, v0}, Lz2/o000OO0O;->handler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "html"

    invoke-virtual {p3, p1, p2}, Lz2/o000OO0O;->param(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lz2/o00oOoo$OooO00o;->OoooOoO:Lz2/o00oOoo;

    invoke-static {p1}, Lz2/o00oOoo;->OooO0oo(Lz2/o00oOoo;)Lz2/o000;

    move-result-object p1

    iget-object p2, p0, Lz2/o00oOoo$OooO00o;->OoooOoO:Lz2/o00oOoo;

    invoke-static {p2}, Lz2/o00oOoo;->OooO(Lz2/o00oOoo;)I

    move-result p2

    invoke-virtual {p1, p2}, Lz2/o000O000;->o0000o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1, p3}, Lz2/o000O000;->OooO0OO(Lz2/o000O0O0;)Lz2/o000O000;

    :cond_0
    return-void
.end method

.method public OooO0OO(Ljava/lang/String;Lorg/json/JSONObject;Lz2/o000O;)V
    .locals 2

    iget-object v0, p0, Lz2/o00oOoo$OooO00o;->OoooOoO:Lz2/o00oOoo;

    invoke-static {v0}, Lz2/o00oOoo;->OooO00o(Lz2/o00oOoo;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    const-string v0, "status"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "dialog"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lz2/o00oOoo$OooO00o;->OooO00o(Ljava/lang/String;Lorg/json/JSONObject;Lz2/o000O;)V

    :cond_1
    iget-object p1, p0, Lz2/o00oOoo$OooO00o;->OoooOoO:Lz2/o00oOoo;

    invoke-static {p1}, Lz2/o00oOoo;->OooO0O0(Lz2/o00oOoo;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    const-string v0, "fetch"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Lz2/o000O;->OooOoO()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_4

    iget-object p1, p0, Lz2/o00oOoo$OooO00o;->OoooOoO:Lz2/o00oOoo;

    invoke-static {p1, p3}, Lz2/o00oOoo;->OooO0oO(Lz2/o00oOoo;Z)V

    const/4 p1, 0x0

    const-string p3, "marketUrl"

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lz2/o000O0O0;

    invoke-direct {p2}, Lz2/o000O0O0;-><init>()V

    invoke-virtual {p2, p1}, Lz2/o000OO0O;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000O0O0;

    const-class p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lz2/o000OO0O;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o000O0O0;

    const-string p3, "detailCb"

    invoke-virtual {p1, p0, p3}, Lz2/o000OO0O;->handler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, p0, Lz2/o00oOoo$OooO00o;->OoooOoO:Lz2/o00oOoo;

    invoke-static {p1}, Lz2/o00oOoo;->OooO0oo(Lz2/o00oOoo;)Lz2/o000;

    move-result-object p1

    iget-object p3, p0, Lz2/o00oOoo$OooO00o;->OoooOoO:Lz2/o00oOoo;

    invoke-static {p3}, Lz2/o00oOoo;->OooO(Lz2/o00oOoo;)I

    move-result p3

    invoke-virtual {p1, p3}, Lz2/o000O000;->o0000o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1, p2}, Lz2/o000O000;->OooO0OO(Lz2/o000O0O0;)Lz2/o000O000;

    goto :goto_0

    :cond_2
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lz2/o000O;->OooOoo()Lz2/o000O;

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lz2/o00oOoo$OooO00o;->OooO00o(Ljava/lang/String;Lorg/json/JSONObject;Lz2/o000O;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 0

    const-string p4, "li"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "  "

    invoke-interface {p3, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    const-string p2, "\u2022"

    invoke-interface {p3, p2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    :cond_0
    const-string p1, "\n"

    :goto_0
    invoke-interface {p3, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x3

    if-eq p2, p1, :cond_2

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lz2/o00oOoo$OooO00o;->OoooOoO:Lz2/o00oOoo;

    invoke-static {p1}, Lz2/o00oOoo;->OooO00o(Lz2/o00oOoo;)Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lz2/o00oOoo$OooO00o;->OoooOoO:Lz2/o00oOoo;

    invoke-static {p2}, Lz2/o00oOoo;->OooOOO(Lz2/o00oOoo;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lz2/o00oOoo$OooO00o;->OoooOoO:Lz2/o00oOoo;

    invoke-static {p1}, Lz2/o00oOoo;->OooO00o(Lz2/o00oOoo;)Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lz2/o00oOoo$OooO00o;->OoooOoO:Lz2/o00oOoo;

    invoke-static {p2}, Lz2/o00oOoo;->OooO0Oo(Lz2/o00oOoo;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p1, p2}, Lz2/o00oOoo;->OooO0OO(Landroid/app/Activity;Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lz2/o00oOoo$OooO00o;->OoooOoO:Lz2/o00oOoo;

    invoke-static {p1}, Lz2/o00oOoo;->OooO00o(Lz2/o00oOoo;)Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lz2/o00oOoo$OooO00o;->OoooOoO:Lz2/o00oOoo;

    invoke-static {p2}, Lz2/o00oOoo;->OooO0o0(Lz2/o00oOoo;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lz2/o00oOoo;->OooO0o(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
